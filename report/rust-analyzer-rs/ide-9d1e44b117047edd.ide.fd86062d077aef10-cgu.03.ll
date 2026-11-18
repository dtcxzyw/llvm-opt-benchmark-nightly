Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.03?download=true
inline.NumInlined: 2470
inline.NumDeleted: 1160
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors:bb.a
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #58
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit28: ; preds = %bb.a, %bb.i, %bb.h
  %.sroa.0.0 = phi ptr [ %.val23, %bb.i ], [ %.val23, %bb.h ], [ %2, %bb.a ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store <8 x i16> <i16 159, i16 212, i16 211, i16 319, i16 309, i16 241, i16 254, i16 226>, ptr %i.av, align 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <8 x i16> <i16 198, i16 214, i16 209, i16 232, i16 324, i16 284, i16 243, i16 233>, ptr %i.bb, align 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store <8 x i16> <i16 305, i16 296, i16 215, i16 234, i16 293, i16 312, i16 197, i16 203>, ptr %i.bc, align 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store <4 x i16> <i16 246, i16 314, i16 291, i16 190>, ptr %i.bd, align 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store i16 238, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 58
  store i16 234, ptr %i.bf, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 48 ; 15 uses
  %i.bh = load i32, ptr %i.bg, align 4, !noundef !23 ; 3 uses
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %bb.e, label %bb.n, !prof !29

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit28
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #58
          to label %.noexc26 unwind label %bb.m

.noexc26:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !noundef !23
  %i.bm = add i32 %i.bl, -1                       ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 8
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit unwind label %bb.in

bb.h:                                             ; preds = %bb.c
  %i.bo = add nuw i32 %i.az, 1
  store i32 %i.bo, ptr %i.ay, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !noundef !23
  %i.br = add i32 %i.bq, -1                       ; 2 uses
  store i32 %i.br, ptr %i.bp, align 8
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit28

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #55
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit28

bb.j:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !noundef !23
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 8
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit29

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #55
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit29

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit36: ; preds = %bb.io, %bb.ip, %.body43, %bb.ac, %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.m ], [ %eh.lpad-body44, %.body43 ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body44, %bb.ac ], [ %i.abi, %bb.ip ], [ %i.abi, %bb.io ] ; 2 uses
  %i.bx = load i32, ptr %i.bg, align 4, !noundef !23
  %i.by = add i32 %i.bx, -1                       ; 2 uses
  store i32 %i.by, ptr %i.bg, align 4
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit

bb.l:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit36
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit unwind label %bb.in

bb.m:                                             ; preds = %bb.il, %bb.e, %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB7_3map3MapINtNtB15_10successors10SuccessorsNtNtB1x_6cursor10SyntaxNodeNvMs4_B3O_B3M_6parentENvYB1s_INtNtBb_7convert4FromB3M_E4fromEENtNtNtB9_6traits8iterator8Iterator4findNCNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors0EB5W_.exit.thread
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit36

bb.n:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit28
  %i.cb = add nuw i32 %i.bh, 1                    ; 2 uses
  store i32 %i.cb, ptr %i.bg, align 4
  %i.cc = icmp eq i32 %i.cb, -1
  br i1 %i.cc, label %bb.o, label %.lr.ph.split.us.i.i.i.i.i, !prof !29

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #58
          to label %.noexc31 unwind label %bb.io

.noexc31:                                         ; preds = %bb.o
  unreachable

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %bb.n
  %i.cd = add nuw i32 %i.bh, 2
  store i32 %i.cd, ptr %i.bg, align 4
  store i64 1, ptr %i.at, align 8, !alias.scope !4719
  %i.ce = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  store i64 1, ptr %i.cf, align 8, !alias.scope !4719
  %i.cg = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  store ptr %.sroa.0.0, ptr %i.cg, align 8, !alias.scope !4719
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4724)
  store ptr null, ptr %i.ce, align 8, !alias.scope !4725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !4726
  store ptr %.sroa.0.0, ptr %i.as, align 8, !noalias !4726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !4727
  %i.ch = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.as)
          to label %.noexc.i.us.i.i.i.i.i unwind label %bb.s, !noalias !4726

.noexc.i.us.i.i.i.i.i:                            ; preds = %.lr.ph.split.us.i.i.i.i.i
  store i16 %i.ch, ptr %i.ar, align 2, !noalias !4727
  %i.ci = invoke noundef zeroext i1 @_RNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNtB5_13SliceContains14slice_containsCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.ar, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(60) %i.av, i64 noundef 30)
          to label %bb.p unwind label %bb.s, !noalias !4728

bb.p:                                             ; preds = %.noexc.i.us.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !4727
  br i1 %i.ci, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB7_3map3MapINtNtB15_10successors10SuccessorsNtNtB1x_6cursor10SyntaxNodeNvMs4_B3O_B3M_6parentENvYB1s_INtNtBb_7convert4FromB3M_E4fromEENtNtNtB9_6traits8iterator8Iterator4findNCNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors0EB5W_.exit.thread493, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = load i32, ptr %i.bg, align 4, !noalias !4728, !noundef !23
  %i.ck = add i32 %i.cj, -1                       ; 2 uses
  store i32 %i.ck, ptr %i.bg, align 4, !noalias !4728
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.r, label %.thread

.thread:                                          ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !4726
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  br label %bb.w

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0) #55
          to label %bb.v unwind label %bb.x

bb.s:                                             ; preds = %.noexc.i.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre.i.i.i.i.i = load i32, ptr %i.bg, align 4, !noalias !4728
  %i.cn = add i32 %.pre.i.i.i.i.i, -1             ; 2 uses
  store i32 %i.cn, ptr %i.bg, align 4, !noalias !4728
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.t, label %.body

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0) #55
          to label %.body unwind label %bb.u, !noalias !4728

bb.u:                                             ; preds = %bb.t
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !4728
  unreachable

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB7_3map3MapINtNtB15_10successors10SuccessorsNtNtB1x_6cursor10SyntaxNodeNvMs4_B3O_B3M_6parentENvYB1s_INtNtBb_7convert4FromB3M_E4fromEENtNtNtB9_6traits8iterator8Iterator4findNCNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors0EB5W_.exit.thread493: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !4726
  br label %bb.y

bb.v:                                             ; preds = %bb.r
  %.pre = load i64, ptr %i.cf, align 8, !range !41, !alias.scope !4729
  %i.cq = trunc nuw i64 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !4726
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  br i1 %i.cq, label %bb.w, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB7_3map3MapINtNtB15_10successors10SuccessorsNtNtB1x_6cursor10SyntaxNodeNvMs4_B3O_B3M_6parentENvYB1s_INtNtBb_7convert4FromB3M_E4fromEENtNtNtB9_6traits8iterator8Iterator4findNCNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors0EB5W_.exit.thread

bb.w:                                             ; preds = %.thread, %bb.v
  %i.cr = invoke noundef ptr @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1F_B1D_6parentENvYINtNtB1H_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBc_7convert4FromB1D_E4fromENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4v_4find5checkB2J_NCNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors0E0INtNtNtBc_3ops12control_flow11ControlFlowB2J_EEB5J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(60) %i.av)
          to label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB7_3map3MapINtNtB15_10successors10SuccessorsNtNtB1x_6cursor10SyntaxNodeNvMs4_B3O_B3M_6parentENvYB1s_INtNtBb_7convert4FromB3M_E4fromEENtNtNtB9_6traits8iterator8Iterator4findNCNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors0EB5W_.exit unwind label %bb.x ; 2 uses

bb.x:                                             ; preds = %bb.w, %bb.r
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %bb.t, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.cs, %bb.x ], [ %i.cm, %bb.t ], [ %i.cm, %bb.s ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtBI_7sources4once4OnceINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtBG_3map3MapINtNtB1i_10successors10SuccessorsNtNtB1K_6cursor10SyntaxNodeNvMs4_B41_B3Z_6parentENvYB1F_INtNtB4_7convert4FromB3Z_E4fromEEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(32) %i.at) #52
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit36 unwind label %bb.in

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB7_3map3MapINtNtB15_10successors10SuccessorsNtNtB1x_6cursor10SyntaxNodeNvMs4_B3O_B3M_6parentENvYB1s_INtNtBb_7convert4FromB3M_E4fromEENtNtNtB9_6traits8iterator8Iterator4findNCNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors0EB5W_.exit: ; preds = %bb.w
  %.not12 = icmp eq ptr %i.cr, null
  br i1 %.not12, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB7_3map3MapINtNtB15_10successors10SuccessorsNtNtB1x_6cursor10SyntaxNodeNvMs4_B3O_B3M_6parentENvYB1s_INtNtBb_7convert4FromB3M_E4fromEENtNtNtB9_6traits8iterator8Iterator4findNCNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors0EB5W_.exit.thread, label %bb.y

bb.y:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB7_3map3MapINtNtB15_10successors10SuccessorsNtNtB1x_6cursor10SyntaxNodeNvMs4_B3O_B3M_6parentENvYB1s_INtNtBb_7convert4FromB3M_E4fromEENtNtNtB9_6traits8iterator8Iterator4findNCNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors0EB5W_.exit.thread493, %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB7_3map3MapINtNtB15_10successors10SuccessorsNtNtB1x_6cursor10SyntaxNodeNvMs4_B3O_B3M_6parentENvYB1s_INtNtBb_7convert4FromB3M_E4fromEENtNtNtB9_6traits8iterator8Iterator4findNCNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors0EB5W_.exit
  %.sroa.0.0.i1.i496 = phi ptr [ %.sroa.0.0, %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB7_3map3MapINtNtB15_10successors10SuccessorsNtNtB1x_6cursor10SyntaxNodeNvMs4_B3O_B3M_6parentENvYB1s_INtNtBb_7convert4FromB3M_E4fromEENtNtNtB9_6traits8iterator8Iterator4findNCNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors0EB5W_.exit.thread493 ], [ %i.cr, %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB7_3map3MapINtNtB15_10successors10SuccessorsNtNtB1x_6cursor10SyntaxNodeNvMs4_B3O_B3M_6parentENvYB1s_INtNtBb_7convert4FromB3M_E4fromEENtNtNtB9_6traits8iterator8Iterator4findNCNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors0EB5W_.exit ] ; 39 uses
  store ptr %.sroa.0.0.i1.i496, ptr %i.au, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtBI_7sources4once4OnceINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtBG_3map3MapINtNtB1i_10successors10SuccessorsNtNtB1K_6cursor10SyntaxNodeNvMs4_B41_B3Z_6parentENvYB1F_INtNtB4_7convert4FromB3Z_E4fromEEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(32) %i.at)
          to label %bb.ad unwind label %bb.ab

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB7_3map3MapINtNtB15_10successors10SuccessorsNtNtB1x_6cursor10SyntaxNodeNvMs4_B3O_B3M_6parentENvYB1s_INtNtBb_7convert4FromB3M_E4fromEENtNtNtB9_6traits8iterator8Iterator4findNCNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors0EB5W_.exit.thread: ; preds = %bb.v, %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB7_3map3MapINtNtB15_10successors10SuccessorsNtNtB1x_6cursor10SyntaxNodeNvMs4_B3O_B3M_6parentENvYB1s_INtNtBb_7convert4FromB3M_E4fromEENtNtNtB9_6traits8iterator8Iterator4findNCNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors0EB5W_.exit
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtBI_7sources4once4OnceINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtBG_3map3MapINtNtB1i_10successors10SuccessorsNtNtB1K_6cursor10SyntaxNodeNvMs4_B41_B3Z_6parentENvYB1F_INtNtB4_7convert4FromB3Z_E4fromEEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(32) %i.at)
          to label %bb.z unwind label %bb.m

bb.z:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB7_3map3MapINtNtB15_10successors10SuccessorsNtNtB1x_6cursor10SyntaxNodeNvMs4_B3O_B3M_6parentENvYB1s_INtNtBb_7convert4FromB3M_E4fromEENtNtNtB9_6traits8iterator8Iterator4findNCNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors0EB5W_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.ct = load i32, ptr %i.bg, align 4, !noundef !23
  %i.cu = add i32 %i.ct, -1                       ; 2 uses
  store i32 %i.cu, ptr %i.bg, align 4
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.aa, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit29

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0) #55
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit29

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit29: ; preds = %bb.im, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit59, %bb.aa, %bb.z, %bb.j, %bb.k
  ret void

bb.ab:                                            ; preds = %bb.ey, %.invoke1183, %.invoke, %bb.ai, %bb.aq, %bb.bv, %bb.ce, %bb.do, %bb.ik, %bb.ie, %bb.id, %bb.y
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body43

.body43:                                          ; preds = %bb.eu, %bb.ev, %bb.ab, %bb.ih, %bb.ii, %.body1328, %bb.gr, %.body1245, %bb.fb, %.body82, %bb.dq, %bb.dk, %bb.dl, %.body220, %bb.cg, %bb.ca, %bb.cb, %bb.as, %.body362, %bb.am, %bb.an, %bb.ae, %bb.af
  %eh.lpad-body44 = phi { ptr, i32 } [ %i.du, %bb.am ], [ %eh.lpad-body221, %.body220 ], [ %eh.lpad-body363, %.body362 ], [ %i.dg, %bb.ae ], [ %i.aas, %bb.ih ], [ %i.dg, %bb.af ], [ %i.du, %bb.an ], [ %eh.lpad-body1329, %.body1328 ], [ %i.il, %bb.ca ], [ %i.nb, %bb.dk ], [ %eh.lpad-body83, %.body82 ], [ %eh.lpad-body1246, %.body1245 ], [ %eh.lpad-body363, %bb.as ], [ %i.il, %bb.cb ], [ %eh.lpad-body221, %bb.cg ], [ %i.nb, %bb.dl ], [ %eh.lpad-body83, %bb.dq ], [ %eh.lpad-body1246, %bb.fb ], [ %eh.lpad-body1329, %bb.gr ], [ %i.aas, %bb.ii ], [ %i.cw, %bb.ab ], [ %i.rr, %bb.ev ], [ %i.rr, %bb.eu ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i1.i496) ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i496, i64 48 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !noundef !23
  %i.cz = add i32 %i.cy, -1                       ; 2 uses
  store i32 %i.cz, ptr %i.cx, align 4
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.ac, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit36

bb.ac:                                            ; preds = %.body43
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i1.i496) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit36 unwind label %bb.in

bb.ad:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.experimental.noalias.scope.decl(metadata !4730)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i1.i496) ]
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i496, i64 48 ; 60 uses
  %i.dc = load i32, ptr %i.db, align 4, !noundef !23 ; 2 uses
  %i.dd = icmp eq i32 %i.dc, -1
  br i1 %i.dd, label %.invoke, label %.noexc38, !prof !29

.invoke:                                          ; preds = %bb.et, %bb.dj, %bb.bz, %bb.al, %bb.ad
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #58
          to label %.cont unwind label %bb.ab

.cont:                                            ; preds = %.invoke
  unreachable

.noexc38:                                         ; preds = %bb.ad
  %i.de = add nuw i32 %i.dc, 1
  store i32 %i.de, ptr %i.db, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %.sroa.0.0.i1.i496, ptr %i.p, align 8
  %i.df = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %.noexc38
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load i32, ptr %i.db, align 4, !noundef !23
  %i.di = add i32 %i.dh, -1                       ; 2 uses
  store i32 %i.di, ptr %i.db, align 4
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.af, label %.body43

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i1.i496) #55
          to label %.body43 unwind label %bb.aj

bb.ag:                                            ; preds = %.noexc38
  %i.dk = icmp eq i16 %i.df, 159
  br i1 %i.dk, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dl = load i32, ptr %i.db, align 4, !noundef !23
  %i.dm = add i32 %i.dl, -1                       ; 3 uses
  store i32 %i.dm, ptr %i.db, align 4
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i1.i496) #55
          to label %thread-pre-split unwind label %bb.ab

bb.aj:                                            ; preds = %bb.af
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !4731
  store ptr %.sroa.0.0.i1.i496, ptr %i.aq, align 8, !noalias !4731
  %i.dp = invoke noundef ptr @_RNvMsm_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7ArgList4args(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aq)
          to label %bb.at unwind label %.thread542, !noalias !4731, !inline_history !4647

thread-pre-split:                                 ; preds = %bb.ai
  %.pr = load i32, ptr %i.db, align 4
  br label %bb.al

bb.al:                                            ; preds = %thread-pre-split, %bb.ah
  %i.dq = phi i32 [ %.pr, %thread-pre-split ], [ %i.dm, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.dr = icmp eq i32 %i.dq, -1
  br i1 %i.dr, label %.invoke, label %.noexc40, !prof !29

.noexc40:                                         ; preds = %bb.al
  %i.ds = add nuw i32 %i.dq, 1
  store i32 %i.ds, ptr %i.db, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %.sroa.0.0.i1.i496, ptr %i.q, align 8
  %i.dt = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %bb.ao unwind label %bb.am

bb.am:                                            ; preds = %.noexc40
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load i32, ptr %i.db, align 4, !noundef !23
  %i.dw = add i32 %i.dv, -1                       ; 2 uses
  store i32 %i.dw, ptr %i.db, align 4
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.an, label %.body43

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i1.i496) #55
          to label %.body43 unwind label %bb.ar

bb.ao:                                            ; preds = %.noexc40
  %i.dy = icmp eq i16 %i.dt, 212
  br i1 %i.dy, label %bb.bx, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dz = load i32, ptr %i.db, align 4, !noundef !23
  %i.ea = add i32 %i.dz, -1                       ; 3 uses
  store i32 %i.ea, ptr %i.db, align 4
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.aq, label %bb.bz

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i1.i496) #55
          to label %thread-pre-split548 unwind label %bb.ab

bb.ar:                                            ; preds = %bb.an
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53
  unreachable

.body362:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit48.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i49.i, %.body.i239, %bb.bi, %.thread542, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i40.i
  %eh.lpad-body363 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit48.i ], [ %.pn.i286, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i ], [ %.pn.i286, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i40.i ], [ %lpad.thr_comm.split-lp, %bb.bi ], [ %eh.lpad-body.i240, %.body.i239 ], [ %lpad.thr_comm, %.thread542 ], [ %lpad.thr_comm.split-lp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i49.i ] ; 2 uses
  %i.ed = load i32, ptr %i.db, align 4, !noalias !4730, !noundef !23
  %i.ee = add i32 %i.ed, -1                       ; 2 uses
  store i32 %i.ee, ptr %i.db, align 4, !noalias !4730
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.as, label %.body43

bb.as:                                            ; preds = %.body362
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i1.i496) #55
          to label %.body43 unwind label %bb.bw

bb.at:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !4732)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4733
  invoke void @_RINvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB6_9generated5nodes4ExprENtCscFGNKo4Sl5v_9itertools9Itertools13array_windowsKj2_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.x, ptr noundef %i.dp)
          to label %.noexc361 unwind label %.thread542, !inline_history !4651

.noexc361:                                        ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4734
  invoke void @_RNvXs_NtCscFGNKo4Sl5v_9itertools10array_implINtB4_12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB13_9generated5nodes4ExprEKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.x)
          to label %.noexc.i243 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4733, !inline_history !4651

.noexc.i243:                                      ; preds = %.noexc361
  %i.eg = load i64, ptr %i.t, align 8, !range !36, !noalias !4734, !noundef !23 ; 3 uses
  %.not54.i.i244 = icmp eq i64 %i.eg, -1
  br i1 %.not54.i.i244, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Exprj2_EECslLuZgPVt6hg_3ide.exit.i, label %.lr.ph.i.i245

.lr.ph.i.i245:                                    ; preds = %.noexc.i243
  %.sroa.5.0..sroa_idx.i.i246 = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i247 = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx12.i.i248 = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  br i1 %3, label %.lr.ph.split.us.i.i338, label %.lr.ph.split.i.i249

.lr.ph.split.us.i.i338:                           ; preds = %.lr.ph.i.i245, %.noexc28.i350
  %i.eh = phi i64 [ %i.fh, %.noexc28.i350 ], [ %i.eg, %.lr.ph.i.i245 ]
  %.sroa.5.0.copyload.us.i.i339 = load ptr, ptr %.sroa.5.0..sroa_idx.i.i246, align 8, !noalias !4734, !nonnull !23, !noundef !23 ; 12 uses
  %.sroa.6.0.copyload.us.i.i340 = load i64, ptr %.sroa.6.0..sroa_idx.i.i247, align 8, !noalias !4734
  %.sroa.7.0.copyload.us.i.i341 = load ptr, ptr %.sroa.7.0..sroa_idx12.i.i248, align 8, !noalias !4734 ; 8 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.us.i.i339, i64 60
  %i.ej = load i8, ptr %i.ei, align 4, !range !47, !noalias !4735, !noundef !23
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.av, label %bb.au, !prof !29

bb.au:                                            ; preds = %.lr.ph.split.us.i.i338
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.us.i.i339, i64 56
  %i.em = load i32, ptr %i.el, align 8, !noalias !4735, !noundef !23
  br label %.noexc.i.us.i.i342

bb.av:                                            ; preds = %.lr.ph.split.us.i.i338
  %i.en = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.sroa.5.0.copyload.us.i.i339)
          to label %.noexc.i.us.i.i342 unwind label %.loopexit.split.us.i.i359, !noalias !4735, !inline_history !4651

.noexc.i.us.i.i342:                               ; preds = %bb.av, %bb.au
  %.sroa.0.0.i.i.i.us.i.i343 = phi i32 [ %i.em, %bb.au ], [ %i.en, %bb.av ] ; 3 uses
  %i.eo = load i64, ptr %.sroa.5.0.copyload.us.i.i339, align 8, !range !41, !noalias !4735, !noundef !23
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.us.i.i339, i64 8
  %i.eq = trunc nuw i64 %i.eo to i1
  %i.er = load ptr, ptr %i.ep, align 8, !noalias !4735, !nonnull !23, !noundef !23 ; 2 uses
  br i1 %i.eq, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.noexc.i.us.i.i342
  %i.es = load i32, ptr %i.er, align 8, !noalias !4735, !noundef !23
  br label %bb.ay

bb.ax:                                            ; preds = %.noexc.i.us.i.i342
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !noalias !4735, !noundef !23 ; 2 uses
  %i.ev = icmp ugt i64 %i.eu, 4294967295
  %i.ew = shl nuw i64 %i.eu, 32
  %.sroa.09.0.insert.insert.i.i.i.i.us.i.i354 = select i1 %i.ev, i64 513, i64 %i.ew ; 2 uses
  %i.ex = trunc i64 %.sroa.09.0.insert.insert.i.i.i.i.us.i.i354 to i1
  br i1 %i.ex, label %.split.us.i.i358, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.us.i.i355, !prof !29

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.us.i.i355: ; preds = %bb.ax
  %.sroa.6.0.extract.shift.i.i.i.i.i.us.i.i356 = lshr i64 %.sroa.09.0.insert.insert.i.i.i.i.us.i.i354, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.us.i.i357 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i.i.us.i.i356 to i32
  br label %bb.ay

bb.ay:                                            ; preds = %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.us.i.i355, %bb.aw
  %.sroa.02.0.i.i.i.us.i.i344 = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i.i.us.i.i357, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.us.i.i355 ], [ %i.es, %bb.aw ]
  %i.ey = add i32 %.sroa.02.0.i.i.i.us.i.i344, %.sroa.0.0.i.i.i.us.i.i343 ; 2 uses
  %.not.i.i.i.us.i.i345 = icmp ugt i32 %.sroa.0.0.i.i.i.us.i.i343, %i.ey
  br i1 %.not.i.i.i.us.i.i345, label %.invoke.i.i.i315, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i346, !prof !29

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i346: ; preds = %bb.ay
  %.not1.i.i.us.i.i347 = icmp ugt i32 %.sroa.0.0.i.i.i.us.i.i343, %4
  %.not.i.us.i.i348 = icmp ugt i32 %5, %i.ey
  %or.cond.i.i349 = or i1 %.not1.i.i.us.i.i347, %.not.i.us.i.i348
  br i1 %or.cond.i.i349, label %_RNCINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprINtB10_11AstChildrenBU_EE0B6_.exit.thread.i.us.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Exprj2_EECslLuZgPVt6hg_3ide.exit.i

_RNCINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprINtB10_11AstChildrenBU_EE0B6_.exit.thread.i.us.i.i: ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i346
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.us.i.i339, i64 48 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 8, !noalias !4736, !noundef !23
  %i.fb = add i32 %i.fa, -1                       ; 2 uses
  store i32 %i.fb, ptr %i.ez, align 8, !noalias !4736
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.us.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.us.i.i: ; preds = %_RNCINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprINtB10_11AstChildrenBU_EE0B6_.exit.thread.i.us.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.copyload.us.i.i339) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i unwind label %.split68.us.i.i353, !noalias !4736, !inline_history !4651

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.us.i.i, %_RNCINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprINtB10_11AstChildrenBU_EE0B6_.exit.thread.i.us.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.us.i.i341) ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.us.i.i341, i64 48 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !noalias !4736, !noundef !23
  %i.ff = add i32 %i.fe, -1                       ; 2 uses
  store i32 %i.ff, ptr %i.fd, align 4, !noalias !4736
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.1.i.i.i.us.i.i, label %.noexc27.i352

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.1.i.i.i.us.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.7.0.copyload.us.i.i341) #55
          to label %.noexc27.i352 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4733, !inline_history !4651

.noexc27.i352:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.1.i.i.i.us.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4734
  invoke void @_RNvXs_NtCscFGNKo4Sl5v_9itertools10array_implINtB4_12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB13_9generated5nodes4ExprEKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.x)
          to label %.noexc28.i350 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4733, !inline_history !4651

.noexc28.i350:                                    ; preds = %.noexc27.i352
  %i.fh = load i64, ptr %i.t, align 8, !range !36, !noalias !4734, !noundef !23 ; 2 uses
  %.not.us.i.i351 = icmp eq i64 %i.fh, -1
  br i1 %.not.us.i.i351, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Exprj2_EECslLuZgPVt6hg_3ide.exit.i, label %.lr.ph.split.us.i.i338

.loopexit.split.us.i.i359:                        ; preds = %bb.av
  %lpad.loopexit.us.i.i360 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i322

.split68.us.i.i353:                               ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.us.i.i
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.lr.ph.split.i.i249:                              ; preds = %.lr.ph.i.i245, %.noexc30.i306
  %i.fj = phi i64 [ %i.gq, %.noexc30.i306 ], [ %i.eg, %.lr.ph.i.i245 ]
  %.sroa.5.0.copyload.i.i250 = load ptr, ptr %.sroa.5.0..sroa_idx.i.i246, align 8, !noalias !4734 ; 7 uses
  %.sroa.6.0.copyload.i.i251 = load i64, ptr %.sroa.6.0..sroa_idx.i.i247, align 8, !noalias !4734
  %.sroa.7.0.copyload.i.i252 = load ptr, ptr %.sroa.7.0..sroa_idx12.i.i248, align 8, !noalias !4734, !nonnull !23, !noundef !23 ; 13 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i.i252, i64 60
  %i.fl = load i8, ptr %i.fk, align 4, !range !47, !noalias !4735, !noundef !23
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.ba, label %bb.az, !prof !29

.split.us.i.i358:                                 ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4737
  br label %.invoke3.i.i.i331

bb.az:                                            ; preds = %.lr.ph.split.i.i249
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i.i252, i64 56
  %i.fo = load i32, ptr %i.fn, align 8, !noalias !4735, !noundef !23
  br label %.noexc10.i.i.i253

bb.ba:                                            ; preds = %.lr.ph.split.i.i249
  %i.fp = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.sroa.7.0.copyload.i.i252)
          to label %.noexc10.i.i.i253 unwind label %.loopexit.split.i.i336, !noalias !4735, !inline_history !4651

.noexc10.i.i.i253:                                ; preds = %bb.ba, %bb.az
  %.sroa.0.0.i2.i.i.i.i254 = phi i32 [ %i.fo, %bb.az ], [ %i.fp, %bb.ba ] ; 3 uses
  %i.fq = load i64, ptr %.sroa.7.0.copyload.i.i252, align 8, !range !41, !noalias !4735, !noundef !23
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i.i252, i64 8
  %i.fs = trunc nuw i64 %i.fq to i1
  %i.ft = load ptr, ptr %i.fr, align 8, !noalias !4735, !nonnull !23, !noundef !23 ; 2 uses
  br i1 %i.fs, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %.noexc10.i.i.i253
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !noalias !4735, !noundef !23 ; 2 uses
  %i.fw = icmp ugt i64 %i.fv, 4294967295
  %i.fx = shl nuw i64 %i.fv, 32
  %.sroa.09.0.insert.insert.i.i5.i.i.i.i327 = select i1 %i.fw, i64 513, i64 %i.fx ; 2 uses
  %i.fy = trunc i64 %.sroa.09.0.insert.insert.i.i5.i.i.i.i327 to i1
  br i1 %i.fy, label %bb.bc, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i6.i.i.i.i328, !prof !29

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4737
  br label %.invoke3.i.i.i331

.invoke3.i.i.i331:                                ; preds = %bb.bc, %.split.us.i.i358
  %.sroa.5.0.copyload53.i.i332 = phi ptr [ %.sroa.5.0.copyload.us.i.i339, %.split.us.i.i358 ], [ %.sroa.5.0.copyload.i.i250, %bb.bc ]
  %.sroa.7.0.copyload40.i.i333 = phi ptr [ %.sroa.7.0.copyload.us.i.i341, %.split.us.i.i358 ], [ %.sroa.7.0.copyload.i.i252, %bb.bc ]
  %.sink.i.i.i334 = phi ptr [ %i.s, %.split.us.i.i358 ], [ %i.r, %bb.bc ] ; 2 uses
  store i8 2, ptr %.sink.i.i.i334, align 1, !noalias !4737
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noundef nonnull %.sink.i.i.i334, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #57
          to label %.cont4.i.i.i335 unwind label %.loopexit.split-lp.i.i318, !noalias !4735, !inline_history !4651

.cont4.i.i.i335:                                  ; preds = %.invoke3.i.i.i331
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i6.i.i.i.i328: ; preds = %bb.bb
  %.sroa.6.0.extract.shift.i.i.i7.i.i.i.i329 = lshr i64 %.sroa.09.0.insert.insert.i.i5.i.i.i.i327, 32
  %.sroa.6.0.extract.trunc.i.i.i8.i.i.i.i330 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i7.i.i.i.i329 to i32
  br label %bb.be

bb.bd:                                            ; preds = %.noexc10.i.i.i253
  %i.fz = load i32, ptr %i.ft, align 8, !noalias !4735, !noundef !23
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i6.i.i.i.i328
end_hunk_0
begin_hunk_1_@_RNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors:bb.a
bb.bg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i10.i.i.i.i.i
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !4736, !inline_history !4651
  unreachable

bb.bh:                                            ; preds = %.loopexit.i.i322
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !4735, !inline_history !4651
  unreachable

.noexc29.i309:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.1.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4734
  invoke void @_RNvXs_NtCscFGNKo4Sl5v_9itertools10array_implINtB4_12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB13_9generated5nodes4ExprEKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.x)
          to label %.noexc30.i306 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4733, !inline_history !4651

.noexc30.i306:                                    ; preds = %.noexc29.i309
  %i.gq = load i64, ptr %i.t, align 8, !range !36, !noalias !4734, !noundef !23 ; 2 uses
  %.not.i.i307 = icmp eq i64 %i.gq, -1
  br i1 %.not.i.i307, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Exprj2_EECslLuZgPVt6hg_3ide.exit.i, label %.lr.ph.split.i.i249

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc27.i352, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.1.i.i.i.us.i.i, %.noexc29.i309, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.1.i.i.i.i.i, %.noexc361
  %lpad.loopexit.split-lp1984 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i239

.body.i239:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.i.i322, %bb.bf, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i10.i.i.i.i.i
  %eh.lpad-body.i240 = phi { ptr, i32 } [ %lpad.phi.i.i325, %.loopexit.i.i322 ], [ %.us-phi70.i.i312, %bb.bf ], [ %.us-phi70.i.i312, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i10.i.i.i.i.i ], [ %lpad.loopexit.split-lp1984, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools10array_impl12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1x_9generated5nodes4ExprEKj2_EECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(56) %i.x) #52
          to label %.body362 unwind label %bb.br, !noalias !4733, !inline_history !4651

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Exprj2_EECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit9.i.i.i.i257, %.noexc30.i306, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i346, %.noexc28.i350, %.noexc.i243
  %.sroa.13458.0532 = phi ptr [ undef, %.noexc.i243 ], [ undef, %.noexc28.i350 ], [ %.sroa.7.0.copyload.us.i.i341, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i346 ], [ %.sroa.7.0.copyload.i.i252, %.noexc30.i306 ], [ %.sroa.7.0.copyload.i.i252, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit9.i.i.i.i257 ] ; 10 uses
  %.sroa.11457.0530 = phi i64 [ undef, %.noexc.i243 ], [ undef, %.noexc28.i350 ], [ %.sroa.6.0.copyload.us.i.i340, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i346 ], [ %.sroa.6.0.copyload.i.i251, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit9.i.i.i.i257 ], [ undef, %.noexc30.i306 ]
  %.sroa.9456.0528 = phi ptr [ undef, %.noexc.i243 ], [ %.sroa.5.0.copyload.us.i.i339, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i346 ], [ %.sroa.5.0.copyload.us.i.i339, %.noexc28.i350 ], [ %.sroa.5.0.copyload.i.i250, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit9.i.i.i.i257 ], [ undef, %.noexc30.i306 ] ; 10 uses
  %.sroa.0453.0525 = phi i64 [ -1, %.noexc.i243 ], [ -1, %.noexc28.i350 ], [ %i.eh, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i346 ], [ %i.fj, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit9.i.i.i.i257 ], [ -1, %.noexc30.i306 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4734
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools10array_impl12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1x_9generated5nodes4ExprEKj2_EECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(56) %i.x)
          to label %bb.bj unwind label %bb.bi, !noalias !4733, !inline_history !4651

.thread542:                                       ; preds = %bb.ak, %bb.at, %bb.bn, %bb.bs, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i43.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body362

bb.bi:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Exprj2_EECslLuZgPVt6hg_3ide.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not13.i274 = icmp eq i64 %.sroa.0453.0525, -1
  br i1 %.not13.i274, label %.body362, label %bb.bu

bb.bj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Exprj2_EECslLuZgPVt6hg_3ide.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4733
  %.not8.i283 = icmp eq i64 %.sroa.0453.0525, -1
  br i1 %.not8.i283, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4733
  store i64 %.sroa.0453.0525, ptr %i.w, align 8, !noalias !4733
  %i.gr = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %.sroa.9456.0528, ptr %i.gr, align 8, !noalias !4733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4733
  store i64 %.sroa.11457.0530, ptr %i.v, align 8, !noalias !4733
  %i.gs = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %.sroa.13458.0532, ptr %i.gs, align 8, !noalias !4733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4733
  invoke fastcc void @_RNvNtCslLuZgPVt6hg_3ide9move_item13replace_nodes(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.u, i32 noundef %4, i32 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gs)
          to label %bb.bp unwind label %bb.bo, !noalias !4733, !inline_history !4651

bb.bl:                                            ; preds = %bb.bj
  %i.gt = getelementptr i8, ptr %.sroa.0.0.i1.i496, i64 16
  %.val26.i297 = load ptr, ptr %i.gt, align 8, !noalias !4733, !noundef !23 ; 3 uses
  %.not.i34.i298 = icmp eq ptr %.val26.i297, null
  br i1 %.not.i34.i298, label %bb.bt, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gu = getelementptr inbounds nuw i8, ptr %.val26.i297, i64 48 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !noalias !4733, !noundef !23 ; 2 uses
  %i.gw = icmp eq i32 %i.gv, -1
  br i1 %i.gw, label %bb.bn, label %bb.bs, !prof !29

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #58
          to label %.noexc35.i301 unwind label %.thread542, !noalias !4733, !inline_history !4651

.noexc35.i301:                                    ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bk
  %i.gx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13458.0532) ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.13458.0532, i64 48 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !noalias !4733, !noundef !23
  %i.ha = add i32 %i.gz, -1                       ; 2 uses
  store i32 %i.ha, ptr %i.gy, align 4, !noalias !4733
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i: ; preds = %bb.bo
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.13458.0532) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i unwind label %bb.br, !noalias !4733, !inline_history !4651

bb.bp:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !4738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !4733
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13458.0532) ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.13458.0532, i64 48 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !noalias !4733, !noundef !23
  %i.he = add i32 %i.hd, -1                       ; 2 uses
  store i32 %i.he, ptr %i.hc, align 4, !noalias !4733
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i37.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit39.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i37.i: ; preds = %bb.bp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.13458.0532) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit39.i unwind label %bb.bq, !noalias !4733, !inline_history !4651

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit39.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i37.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4733
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9456.0528) ]
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.9456.0528, i64 48 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !noalias !4733, !noundef !23
  %i.hi = add i32 %i.hh, -1                       ; 2 uses
  store i32 %i.hi, ptr %i.hg, align 4, !noalias !4733
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i43.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit45.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.bo, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i, %bb.bq
  %.pn.i286 = phi { ptr, i32 } [ %i.ho, %bb.bq ], [ %i.gx, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i ], [ %i.gx, %bb.bo ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9456.0528) ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.9456.0528, i64 48 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !noalias !4733, !noundef !23
  %i.hm = add i32 %i.hl, -1                       ; 2 uses
  store i32 %i.hm, ptr %i.hk, align 4, !noalias !4733
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i40.i, label %.body362

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i40.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.9456.0528) #55
          to label %.body362 unwind label %bb.br, !noalias !4733, !inline_history !4651

bb.bq:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i37.i
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i43.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit39.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.9456.0528) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit45.i unwind label %.thread542, !noalias !4733, !inline_history !4651

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit45.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i43.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4733
  br label %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprINtBY_11AstChildrenBS_EEB4_.exit

bb.br:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i49.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i46.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i40.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i.i, %.body.i239
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !4733, !inline_history !4651
  unreachable

bb.bs:                                            ; preds = %bb.bm
  %i.hq = add nuw i32 %i.gv, 1
  store i32 %i.hq, ptr %i.gu, align 4, !noalias !4733
  invoke fastcc void @_RNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, i64 noundef 0, ptr noundef nonnull %.val26.i297, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5)
          to label %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprINtBY_11AstChildrenBS_EEB4_.exit unwind label %.thread542, !noalias !4738, !inline_history !4651

bb.bt:                                            ; preds = %bb.bl
  store i64 -1, ptr %0, align 8, !alias.scope !4732
  br label %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprINtBY_11AstChildrenBS_EEB4_.exit

bb.bu:                                            ; preds = %bb.bi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13458.0532) ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.13458.0532, i64 48 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !noalias !4733, !noundef !23
  %i.ht = add i32 %i.hs, -1                       ; 2 uses
  store i32 %i.ht, ptr %i.hr, align 4, !noalias !4733
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i46.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit48.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i46.i: ; preds = %bb.bu
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.13458.0532) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit48.i unwind label %bb.br, !noalias !4733, !inline_history !4651

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit48.i: ; preds = %bb.bu, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i46.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9456.0528) ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.9456.0528, i64 48 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !noalias !4733, !noundef !23
  %i.hx = add i32 %i.hw, -1                       ; 2 uses
  store i32 %i.hx, ptr %i.hv, align 4, !noalias !4733
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i49.i, label %.body362

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECslLuZgPVt6hg_3ide.exit.sink.split.i49.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit48.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.9456.0528) #55
          to label %.body362 unwind label %bb.br, !noalias !4733, !inline_history !4651

_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprINtBY_11AstChildrenBS_EEB4_.exit: ; preds = %bb.bt, %bb.bs, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit45.i
  %i.hz = load i32, ptr %i.db, align 4, !noundef !23
  %i.ia = add i32 %i.hz, -1                       ; 2 uses
  store i32 %i.ia, ptr %i.db, align 4
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %bb.bv, label %.noexc42

bb.bv:                                            ; preds = %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprINtBY_11AstChildrenBS_EEB4_.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i1.i496) #55
          to label %.noexc42 unwind label %bb.ab

.noexc42:                                         ; preds = %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprINtBY_11AstChildrenBS_EEB4_.exit, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !4731
  br label %_RNvNtCslLuZgPVt6hg_3ide9move_item17move_in_direction.exit

bb.bw:                                            ; preds = %bb.as, %bb.cg, %bb.dq, %bb.fb, %bb.gr, %bb.ii
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !4730, !inline_history !4647
  unreachable

bb.bx:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.id = load i32, ptr %i.db, align 4, !noalias !4731, !noundef !23 ; 2 uses
  %i.ie = icmp eq i32 %i.id, -1
  br i1 %i.ie, label %.invoke1184, label %bb.by, !prof !29

bb.by:                                            ; preds = %bb.bx
  %i.if = add nuw i32 %i.id, 1
  store i32 %i.if, ptr %i.db, align 4, !noalias !4731
  %i.ig = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.sroa.0.0.i1.i496)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit234 unwind label %.thread597

.invoke1184:                                      ; preds = %bb.bx, %bb.cz
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #58
          to label %.cont1185 unwind label %.thread597

.cont1185:                                        ; preds = %.invoke1184
  unreachable

thread-pre-split548:                              ; preds = %bb.aq
  %.pr549 = load i32, ptr %i.db, align 4
  br label %bb.bz

bb.bz:                                            ; preds = %thread-pre-split548, %bb.ap
  %i.ih = phi i32 [ %.pr549, %thread-pre-split548 ], [ %i.ea, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ii = icmp eq i32 %i.ih, -1
  br i1 %i.ii, label %.invoke, label %.noexc45, !prof !29

.noexc45:                                         ; preds = %bb.bz
  %i.ij = add nuw i32 %i.ih, 1
  store i32 %i.ij, ptr %i.db, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %.sroa.0.0.i1.i496, ptr %i.y, align 8
  %i.ik = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %bb.cc unwind label %bb.ca

bb.ca:                                            ; preds = %.noexc45
  %i.il = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.im = load i32, ptr %i.db, align 4, !noundef !23
  %i.in = add i32 %i.im, -1                       ; 2 uses
  store i32 %i.in, ptr %i.db, align 4
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %bb.cb, label %.body43

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i1.i496) #55
          to label %.body43 unwind label %bb.cf

bb.cc:                                            ; preds = %.noexc45
  %i.ip = icmp eq i16 %i.ik, 211
  br i1 %i.ip, label %bb.dh, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.iq = load i32, ptr %i.db, align 4, !noundef !23
  %i.ir = add i32 %i.iq, -1                       ; 3 uses
  store i32 %i.ir, ptr %i.db, align 4
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.ce, label %bb.dj

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i1.i496) #55
          to label %thread-pre-split603 unwind label %bb.ab

bb.cf:                                            ; preds = %bb.cb
  %i.it = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53
  unreachable

.body220:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit48.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i49.i, %.body.i97, %bb.cv, %.thread597, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i40.i
  %eh.lpad-body221 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp596, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit48.i ], [ %.pn.i144, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i ], [ %.pn.i144, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i40.i ], [ %lpad.thr_comm.split-lp596, %bb.cv ], [ %eh.lpad-body.i98, %.body.i97 ], [ %lpad.thr_comm595, %.thread597 ], [ %lpad.thr_comm.split-lp596, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i49.i ] ; 2 uses
  %i.iu = load i32, ptr %i.db, align 4, !noalias !4730, !noundef !23
  %i.iv = add i32 %i.iu, -1                       ; 2 uses
  store i32 %i.iv, ptr %i.db, align 4, !noalias !4730
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.cg, label %.body43

bb.cg:                                            ; preds = %.body220
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i1.i496) #55
          to label %.body43 unwind label %bb.bw

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit234: ; preds = %bb.by
  call void @llvm.experimental.noalias.scope.decl(metadata !4739)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !4740
  invoke void @_RINvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB6_9generated5nodes12GenericParamENtCscFGNKo4Sl5v_9itertools9Itertools13array_windowsKj2_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.af, ptr noundef %i.ig)
          to label %.noexc219 unwind label %.thread597, !inline_history !4665

.noexc219:                                        ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !4741
  invoke void @_RNvXs_NtCscFGNKo4Sl5v_9itertools10array_implINtB4_12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB13_9generated5nodes12GenericParamEKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.af)
          to label %.noexc.i101 unwind label %.loopexit.split-lp666.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4740, !inline_history !4665

.noexc.i101:                                      ; preds = %.noexc219
  %i.ix = load i64, ptr %i.ab, align 8, !range !35, !noalias !4741, !noundef !23 ; 3 uses
  %.not54.i.i102 = icmp eq i64 %i.ix, -1
  br i1 %.not54.i.i102, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamj2_EECslLuZgPVt6hg_3ide.exit.i, label %.lr.ph.i.i103

.lr.ph.i.i103:                                    ; preds = %.noexc.i101
  %.sroa.5.0..sroa_idx.i.i104 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i105 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx12.i.i106 = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  br i1 %3, label %.lr.ph.split.us.i.i196, label %.lr.ph.split.i.i107

.lr.ph.split.us.i.i196:                           ; preds = %.lr.ph.i.i103, %.noexc28.i208
  %i.iy = phi i64 [ %i.jy, %.noexc28.i208 ], [ %i.ix, %.lr.ph.i.i103 ]
  %.sroa.5.0.copyload.us.i.i197 = load ptr, ptr %.sroa.5.0..sroa_idx.i.i104, align 8, !noalias !4741, !nonnull !23, !noundef !23 ; 12 uses
  %.sroa.6.0.copyload.us.i.i198 = load i64, ptr %.sroa.6.0..sroa_idx.i.i105, align 8, !noalias !4741
  %.sroa.7.0.copyload.us.i.i199 = load ptr, ptr %.sroa.7.0..sroa_idx12.i.i106, align 8, !noalias !4741 ; 8 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.us.i.i197, i64 60
  %i.ja = load i8, ptr %i.iz, align 4, !range !47, !noalias !4742, !noundef !23
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %bb.ci, label %bb.ch, !prof !29

bb.ch:                                            ; preds = %.lr.ph.split.us.i.i196
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.us.i.i197, i64 56
  %i.jd = load i32, ptr %i.jc, align 8, !noalias !4742, !noundef !23
  br label %.noexc.i.us.i.i200

bb.ci:                                            ; preds = %.lr.ph.split.us.i.i196
  %i.je = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.sroa.5.0.copyload.us.i.i197)
          to label %.noexc.i.us.i.i200 unwind label %.loopexit.split.us.i.i217, !noalias !4742, !inline_history !4665

.noexc.i.us.i.i200:                               ; preds = %bb.ci, %bb.ch
  %.sroa.0.0.i.i.i.us.i.i201 = phi i32 [ %i.jd, %bb.ch ], [ %i.je, %bb.ci ] ; 3 uses
  %i.jf = load i64, ptr %.sroa.5.0.copyload.us.i.i197, align 8, !range !41, !noalias !4742, !noundef !23
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.us.i.i197, i64 8
  %i.jh = trunc nuw i64 %i.jf to i1
  %i.ji = load ptr, ptr %i.jg, align 8, !noalias !4742, !nonnull !23, !noundef !23 ; 2 uses
  br i1 %i.jh, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %.noexc.i.us.i.i200
  %i.jj = load i32, ptr %i.ji, align 8, !noalias !4742, !noundef !23
  br label %bb.cl

bb.ck:                                            ; preds = %.noexc.i.us.i.i200
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jl = load i64, ptr %i.jk, align 8, !noalias !4742, !noundef !23 ; 2 uses
  %i.jm = icmp ugt i64 %i.jl, 4294967295
  %i.jn = shl nuw i64 %i.jl, 32
  %.sroa.09.0.insert.insert.i.i.i.i.us.i.i212 = select i1 %i.jm, i64 513, i64 %i.jn ; 2 uses
  %i.jo = trunc i64 %.sroa.09.0.insert.insert.i.i.i.i.us.i.i212 to i1
  br i1 %i.jo, label %.split.us.i.i216, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.us.i.i213, !prof !29

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.us.i.i213: ; preds = %bb.ck
  %.sroa.6.0.extract.shift.i.i.i.i.i.us.i.i214 = lshr i64 %.sroa.09.0.insert.insert.i.i.i.i.us.i.i212, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.us.i.i215 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i.i.us.i.i214 to i32
  br label %bb.cl

bb.cl:                                            ; preds = %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.us.i.i213, %bb.cj
  %.sroa.02.0.i.i.i.us.i.i202 = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i.i.us.i.i215, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.us.i.i213 ], [ %i.jj, %bb.cj ]
  %i.jp = add i32 %.sroa.02.0.i.i.i.us.i.i202, %.sroa.0.0.i.i.i.us.i.i201 ; 2 uses
  %.not.i.i.i.us.i.i203 = icmp ugt i32 %.sroa.0.0.i.i.i.us.i.i201, %i.jp
  br i1 %.not.i.i.i.us.i.i203, label %.invoke.i.i.i173, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i204, !prof !29

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i204: ; preds = %bb.cl
  %.not1.i.i.us.i.i205 = icmp ugt i32 %.sroa.0.0.i.i.i.us.i.i201, %4
  %.not.i.us.i.i206 = icmp ugt i32 %5, %i.jp
  %or.cond.i.i207 = or i1 %.not1.i.i.us.i.i205, %.not.i.us.i.i206
  br i1 %or.cond.i.i207, label %_RNCINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamINtB10_11AstChildrenBU_EE0B6_.exit.thread.i.us.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamj2_EECslLuZgPVt6hg_3ide.exit.i

_RNCINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamINtB10_11AstChildrenBU_EE0B6_.exit.thread.i.us.i.i: ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i204
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.us.i.i197, i64 48 ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 8, !noalias !4743, !noundef !23
  %i.js = add i32 %i.jr, -1                       ; 2 uses
  store i32 %i.js, ptr %i.jq, align 8, !noalias !4743
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.us.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.us.i.i: ; preds = %_RNCINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamINtB10_11AstChildrenBU_EE0B6_.exit.thread.i.us.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.copyload.us.i.i197) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i unwind label %.split68.us.i.i211, !noalias !4743, !inline_history !4665

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.us.i.i, %_RNCINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamINtB10_11AstChildrenBU_EE0B6_.exit.thread.i.us.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.us.i.i199) ]
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.us.i.i199, i64 48 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !noalias !4743, !noundef !23
  %i.jw = add i32 %i.jv, -1                       ; 2 uses
  store i32 %i.jw, ptr %i.ju, align 4, !noalias !4743
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.1.i.i.i.us.i.i, label %.noexc27.i210

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.1.i.i.i.us.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.7.0.copyload.us.i.i199) #55
          to label %.noexc27.i210 unwind label %.loopexit.split-lp666.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4740, !inline_history !4665

.noexc27.i210:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.1.i.i.i.us.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !4741
  invoke void @_RNvXs_NtCscFGNKo4Sl5v_9itertools10array_implINtB4_12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB13_9generated5nodes12GenericParamEKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.af)
          to label %.noexc28.i208 unwind label %.loopexit.split-lp666.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4740, !inline_history !4665

.noexc28.i208:                                    ; preds = %.noexc27.i210
  %i.jy = load i64, ptr %i.ab, align 8, !range !35, !noalias !4741, !noundef !23 ; 2 uses
  %.not.us.i.i209 = icmp eq i64 %i.jy, -1
  br i1 %.not.us.i.i209, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamj2_EECslLuZgPVt6hg_3ide.exit.i, label %.lr.ph.split.us.i.i196

.loopexit.split.us.i.i217:                        ; preds = %bb.ci
  %lpad.loopexit.us.i.i218 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i180

.split68.us.i.i211:                               ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.us.i.i
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

.lr.ph.split.i.i107:                              ; preds = %.lr.ph.i.i103, %.noexc30.i164
  %i.ka = phi i64 [ %i.lh, %.noexc30.i164 ], [ %i.ix, %.lr.ph.i.i103 ]
  %.sroa.5.0.copyload.i.i108 = load ptr, ptr %.sroa.5.0..sroa_idx.i.i104, align 8, !noalias !4741 ; 7 uses
  %.sroa.6.0.copyload.i.i109 = load i64, ptr %.sroa.6.0..sroa_idx.i.i105, align 8, !noalias !4741
  %.sroa.7.0.copyload.i.i110 = load ptr, ptr %.sroa.7.0..sroa_idx12.i.i106, align 8, !noalias !4741, !nonnull !23, !noundef !23 ; 13 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i.i110, i64 60
  %i.kc = load i8, ptr %i.kb, align 4, !range !47, !noalias !4742, !noundef !23
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %bb.cn, label %bb.cm, !prof !29

.split.us.i.i216:                                 ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !4744
  br label %.invoke3.i.i.i189

bb.cm:                                            ; preds = %.lr.ph.split.i.i107
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i.i110, i64 56
  %i.kf = load i32, ptr %i.ke, align 8, !noalias !4742, !noundef !23
  br label %.noexc10.i.i.i111
end_hunk_1
begin_hunk_2_@_RNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors:bb.a

bb.cu:                                            ; preds = %.loopexit.i.i180
  %i.lg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !4742, !inline_history !4665
  unreachable

.noexc29.i167:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.1.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !4741
  invoke void @_RNvXs_NtCscFGNKo4Sl5v_9itertools10array_implINtB4_12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB13_9generated5nodes12GenericParamEKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.af)
          to label %.noexc30.i164 unwind label %.loopexit.split-lp666.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4740, !inline_history !4665

.noexc30.i164:                                    ; preds = %.noexc29.i167
  %i.lh = load i64, ptr %i.ab, align 8, !range !35, !noalias !4741, !noundef !23 ; 2 uses
  %.not.i.i165 = icmp eq i64 %i.lh, -1
  br i1 %.not.i.i165, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamj2_EECslLuZgPVt6hg_3ide.exit.i, label %.lr.ph.split.i.i107

.loopexit.split-lp666.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc27.i210, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.1.i.i.i.us.i.i, %.noexc29.i167, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.1.i.i.i.i.i, %.noexc219
  %lpad.loopexit.split-lp2013 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i97

.body.i97:                                        ; preds = %.loopexit.split-lp666.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.i.i180, %bb.cs, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i10.i.i.i.i.i
  %eh.lpad-body.i98 = phi { ptr, i32 } [ %lpad.phi.i.i183, %.loopexit.i.i180 ], [ %.us-phi70.i.i170, %bb.cs ], [ %.us-phi70.i.i170, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i10.i.i.i.i.i ], [ %lpad.loopexit.split-lp2013, %.loopexit.split-lp666.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools10array_impl12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1x_9generated5nodes12GenericParamEKj2_EECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(56) %i.af) #52
          to label %.body220 unwind label %bb.dd, !noalias !4740, !inline_history !4665

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamj2_EECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit9.i.i.i.i115, %.noexc30.i164, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i204, %.noexc28.i208, %.noexc.i101
  %.sroa.0434.0582 = phi i64 [ -1, %.noexc.i101 ], [ -1, %.noexc28.i208 ], [ %i.iy, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i204 ], [ %i.ka, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit9.i.i.i.i115 ], [ -1, %.noexc30.i164 ] ; 3 uses
  %.sroa.9437.0580 = phi ptr [ undef, %.noexc.i101 ], [ %.sroa.5.0.copyload.us.i.i197, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i204 ], [ %.sroa.5.0.copyload.us.i.i197, %.noexc28.i208 ], [ %.sroa.5.0.copyload.i.i108, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit9.i.i.i.i115 ], [ undef, %.noexc30.i164 ] ; 10 uses
  %.sroa.11438.0578 = phi i64 [ undef, %.noexc.i101 ], [ undef, %.noexc28.i208 ], [ %.sroa.6.0.copyload.us.i.i198, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i204 ], [ %.sroa.6.0.copyload.i.i109, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit9.i.i.i.i115 ], [ undef, %.noexc30.i164 ]
  %.sroa.13439.0576 = phi ptr [ undef, %.noexc.i101 ], [ undef, %.noexc28.i208 ], [ %.sroa.7.0.copyload.us.i.i199, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i204 ], [ %.sroa.7.0.copyload.i.i110, %.noexc30.i164 ], [ %.sroa.7.0.copyload.i.i110, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit9.i.i.i.i115 ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4741
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools10array_impl12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1x_9generated5nodes12GenericParamEKj2_EECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(56) %i.af)
          to label %bb.cw unwind label %bb.cv, !noalias !4740, !inline_history !4665

.thread597:                                       ; preds = %.invoke1184, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit234, %bb.by, %bb.de, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i43.i
  %lpad.thr_comm595 = landingpad { ptr, i32 }
          cleanup
  br label %.body220

bb.cv:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamj2_EECslLuZgPVt6hg_3ide.exit.i
  %lpad.thr_comm.split-lp596 = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not13.i132 = icmp eq i64 %.sroa.0434.0582, -1
  br i1 %.not13.i132, label %.body220, label %bb.dg

bb.cw:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamj2_EECslLuZgPVt6hg_3ide.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !4740
  %.not8.i141 = icmp eq i64 %.sroa.0434.0582, -1
  br i1 %.not8.i141, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !4740
  store i64 %.sroa.0434.0582, ptr %i.ae, align 8, !noalias !4740
  %i.li = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr %.sroa.9437.0580, ptr %i.li, align 8, !noalias !4740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !4740
  store i64 %.sroa.11438.0578, ptr %i.ad, align 8, !noalias !4740
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr %.sroa.13439.0576, ptr %i.lj, align 8, !noalias !4740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !4740
  invoke fastcc void @_RNvNtCslLuZgPVt6hg_3ide9move_item13replace_nodes(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ac, i32 noundef %4, i32 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.li, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.lj)
          to label %bb.db unwind label %bb.da, !noalias !4740, !inline_history !4665

bb.cy:                                            ; preds = %bb.cw
  %i.lk = getelementptr i8, ptr %.sroa.0.0.i1.i496, i64 16
  %.val.i155 = load ptr, ptr %i.lk, align 8, !noalias !4740, !noundef !23 ; 3 uses
  %.not.i34.i156 = icmp eq ptr %.val.i155, null
  br i1 %.not.i34.i156, label %bb.df, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ll = getelementptr inbounds nuw i8, ptr %.val.i155, i64 48 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !noalias !4740, !noundef !23 ; 2 uses
  %i.ln = icmp eq i32 %i.lm, -1
  br i1 %i.ln, label %.invoke1184, label %bb.de, !prof !29

bb.da:                                            ; preds = %bb.cx
  %i.lo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13439.0576) ]
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.13439.0576, i64 48 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4, !noalias !4740, !noundef !23
  %i.lr = add i32 %i.lq, -1                       ; 2 uses
  store i32 %i.lr, ptr %i.lp, align 4, !noalias !4740
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.i: ; preds = %bb.da
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.13439.0576) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i unwind label %bb.dd, !noalias !4740, !inline_history !4665

bb.db:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false), !noalias !4745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !4740
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13439.0576) ]
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.13439.0576, i64 48 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !noalias !4740, !noundef !23
  %i.lv = add i32 %i.lu, -1                       ; 2 uses
  store i32 %i.lv, ptr %i.lt, align 4, !noalias !4740
  %i.lw = icmp eq i32 %i.lv, 0
  br i1 %i.lw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i37.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit39.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i37.i: ; preds = %bb.db
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.13439.0576) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit39.i unwind label %bb.dc, !noalias !4740, !inline_history !4665

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit39.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i37.i, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !4740
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9437.0580) ]
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.9437.0580, i64 48 ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4, !noalias !4740, !noundef !23
  %i.lz = add i32 %i.ly, -1                       ; 2 uses
  store i32 %i.lz, ptr %i.lx, align 4, !noalias !4740
  %i.ma = icmp eq i32 %i.lz, 0
  br i1 %i.ma, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i43.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit45.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.da, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.i, %bb.dc
  %.pn.i144 = phi { ptr, i32 } [ %i.mf, %bb.dc ], [ %i.lo, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.i ], [ %i.lo, %bb.da ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9437.0580) ]
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.9437.0580, i64 48 ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 4, !noalias !4740, !noundef !23
  %i.md = add i32 %i.mc, -1                       ; 2 uses
  store i32 %i.md, ptr %i.mb, align 4, !noalias !4740
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i40.i, label %.body220

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i40.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.9437.0580) #55
          to label %.body220 unwind label %bb.dd, !noalias !4740, !inline_history !4665

bb.dc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i37.i
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i43.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit39.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.9437.0580) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit45.i unwind label %.thread597, !noalias !4740, !inline_history !4665

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit45.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i43.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !4740
  br label %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamINtBY_11AstChildrenBS_EEB4_.exit

bb.dd:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i49.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i46.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i40.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i.i, %.body.i97
  %i.mg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !4740, !inline_history !4665
  unreachable

bb.de:                                            ; preds = %bb.cz
  %i.mh = add nuw i32 %i.lm, 1
  store i32 %i.mh, ptr %i.ll, align 4, !noalias !4740
  invoke fastcc void @_RNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, i64 noundef 0, ptr noundef nonnull %.val.i155, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5)
          to label %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamINtBY_11AstChildrenBS_EEB4_.exit unwind label %.thread597, !noalias !4745, !inline_history !4665

bb.df:                                            ; preds = %bb.cy
  store i64 -1, ptr %0, align 8, !alias.scope !4739
  br label %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamINtBY_11AstChildrenBS_EEB4_.exit

bb.dg:                                            ; preds = %bb.cv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13439.0576) ]
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.13439.0576, i64 48 ; 2 uses
  %i.mj = load i32, ptr %i.mi, align 4, !noalias !4740, !noundef !23
  %i.mk = add i32 %i.mj, -1                       ; 2 uses
  store i32 %i.mk, ptr %i.mi, align 4, !noalias !4740
  %i.ml = icmp eq i32 %i.mk, 0
  br i1 %i.ml, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i46.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit48.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i46.i: ; preds = %bb.dg
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.13439.0576) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit48.i unwind label %bb.dd, !noalias !4740, !inline_history !4665

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit48.i: ; preds = %bb.dg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i46.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9437.0580) ]
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.9437.0580, i64 48 ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 4, !noalias !4740, !noundef !23
  %i.mo = add i32 %i.mn, -1                       ; 2 uses
  store i32 %i.mo, ptr %i.mm, align 4, !noalias !4740
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i49.i, label %.body220

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECslLuZgPVt6hg_3ide.exit.sink.split.i49.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit48.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.9437.0580) #55
          to label %.body220 unwind label %bb.dd, !noalias !4740, !inline_history !4665

_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamINtBY_11AstChildrenBS_EEB4_.exit: ; preds = %bb.df, %bb.de, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECslLuZgPVt6hg_3ide.exit45.i
  %i.mq = load i32, ptr %i.db, align 4, !noundef !23
  %i.mr = add i32 %i.mq, -1                       ; 2 uses
  store i32 %i.mr, ptr %i.db, align 4
  %i.ms = icmp eq i32 %i.mr, 0
  br i1 %i.ms, label %.invoke1183, label %_RNvNtCslLuZgPVt6hg_3ide9move_item17move_in_direction.exit

.invoke1183:                                      ; preds = %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundINtBY_11AstChildrenBS_EEB4_.exit, %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantINtBY_11AstChildrenBS_EEB4_.exit, %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgINtBY_11AstChildrenBS_EEB4_.exit, %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamINtBY_11AstChildrenBS_EEB4_.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i1.i496) #55
          to label %_RNvNtCslLuZgPVt6hg_3ide9move_item17move_in_direction.exit unwind label %bb.ab

bb.dh:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.mt = load i32, ptr %i.db, align 4, !noalias !4731, !noundef !23 ; 2 uses
  %i.mu = icmp eq i32 %i.mt, -1
  br i1 %i.mu, label %.invoke1186, label %bb.di, !prof !29

bb.di:                                            ; preds = %bb.dh
  %i.mv = add nuw i32 %i.mt, 1
  store i32 %i.mv, ptr %i.db, align 4, !noalias !4731
  %i.mw = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.sroa.0.0.i1.i496)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit unwind label %.thread649

.invoke1186:                                      ; preds = %bb.dh, %bb.ej
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #58
          to label %.cont1187 unwind label %.thread649

.cont1187:                                        ; preds = %.invoke1186
  unreachable

thread-pre-split603:                              ; preds = %bb.ce
  %.pr604 = load i32, ptr %i.db, align 4
  br label %bb.dj

bb.dj:                                            ; preds = %thread-pre-split603, %bb.cd
  %i.mx = phi i32 [ %.pr604, %thread-pre-split603 ], [ %i.ir, %bb.cd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.my = icmp eq i32 %i.mx, -1
  br i1 %i.my, label %.invoke, label %.noexc48, !prof !29

.noexc48:                                         ; preds = %bb.dj
  %i.mz = add nuw i32 %i.mx, 1
  store i32 %i.mz, ptr %i.db, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %.sroa.0.0.i1.i496, ptr %i.ag, align 8
  %i.na = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag)
          to label %bb.dm unwind label %bb.dk

bb.dk:                                            ; preds = %.noexc48
  %i.nb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nc = load i32, ptr %i.db, align 4, !noundef !23
  %i.nd = add i32 %i.nc, -1                       ; 2 uses
  store i32 %i.nd, ptr %i.db, align 4
  %i.ne = icmp eq i32 %i.nd, 0
  br i1 %i.ne, label %bb.dl, label %.body43

bb.dl:                                            ; preds = %bb.dk
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i1.i496) #55
          to label %.body43 unwind label %bb.dp

bb.dm:                                            ; preds = %.noexc48
  %i.nf = icmp eq i16 %i.na, 319
  br i1 %i.nf, label %bb.er, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ng = load i32, ptr %i.db, align 4, !noundef !23
  %i.nh = add i32 %i.ng, -1                       ; 3 uses
  store i32 %i.nh, ptr %i.db, align 4
  %i.ni = icmp eq i32 %i.nh, 0
  br i1 %i.ni, label %bb.do, label %bb.et

bb.do:                                            ; preds = %bb.dn
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i1.i496) #55
          to label %thread-pre-split655 unwind label %bb.ab

bb.dp:                                            ; preds = %bb.dl
  %i.nj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53
  unreachable

.body82:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit48.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i49.i, %.body.i, %bb.ef, %.thread649, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i40.i
  %eh.lpad-body83 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp648, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit48.i ], [ %.pn.i78, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i ], [ %.pn.i78, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i40.i ], [ %lpad.thr_comm.split-lp648, %bb.ef ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm647, %.thread649 ], [ %lpad.thr_comm.split-lp648, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i49.i ] ; 2 uses
  %i.nk = load i32, ptr %i.db, align 4, !noalias !4730, !noundef !23
  %i.nl = add i32 %i.nk, -1                       ; 2 uses
  store i32 %i.nl, ptr %i.db, align 4, !noalias !4730
  %i.nm = icmp eq i32 %i.nl, 0
  br i1 %i.nm, label %bb.dq, label %.body43

bb.dq:                                            ; preds = %.body82
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i1.i496) #55
          to label %.body43 unwind label %bb.bw

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit: ; preds = %bb.di
  call void @llvm.experimental.noalias.scope.decl(metadata !4746)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !4747
  invoke void @_RINvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB6_9generated5nodes10GenericArgENtCscFGNKo4Sl5v_9itertools9Itertools13array_windowsKj2_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.an, ptr noundef %i.mw)
          to label %.noexc81 unwind label %.thread649, !inline_history !4679

.noexc81:                                         ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !4748
  invoke void @_RNvXs_NtCscFGNKo4Sl5v_9itertools10array_implINtB4_12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB13_9generated5nodes10GenericArgEKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.an)
          to label %.noexc.i unwind label %.loopexit.split-lp677.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4747, !inline_history !4679

.noexc.i:                                         ; preds = %.noexc81
  %i.nn = load i64, ptr %i.aj, align 8, !range !34, !noalias !4748, !noundef !23 ; 3 uses
  %.not54.i.i = icmp eq i64 %i.nn, -1
  br i1 %.not54.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgj2_EECslLuZgPVt6hg_3ide.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc.i
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  br i1 %3, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %.noexc28.i
  %i.no = phi i64 [ %i.oo, %.noexc28.i ], [ %i.nn, %.lr.ph.i.i ]
  %.sroa.5.0.copyload.us.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !4748, !nonnull !23, !noundef !23 ; 12 uses
  %.sroa.6.0.copyload.us.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !4748
  %.sroa.7.0.copyload.us.i.i = load ptr, ptr %.sroa.7.0..sroa_idx12.i.i, align 8, !noalias !4748 ; 8 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.us.i.i, i64 60
  %i.nq = load i8, ptr %i.np, align 4, !range !47, !noalias !4749, !noundef !23
  %i.nr = trunc nuw i8 %i.nq to i1
  br i1 %i.nr, label %bb.ds, label %bb.dr, !prof !29

bb.dr:                                            ; preds = %.lr.ph.split.us.i.i
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.us.i.i, i64 56
  %i.nt = load i32, ptr %i.ns, align 8, !noalias !4749, !noundef !23
  br label %.noexc.i.us.i.i

bb.ds:                                            ; preds = %.lr.ph.split.us.i.i
  %i.nu = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.sroa.5.0.copyload.us.i.i)
          to label %.noexc.i.us.i.i unwind label %.loopexit.split.us.i.i, !noalias !4749, !inline_history !4679

.noexc.i.us.i.i:                                  ; preds = %bb.ds, %bb.dr
  %.sroa.0.0.i.i.i.us.i.i = phi i32 [ %i.nt, %bb.dr ], [ %i.nu, %bb.ds ] ; 3 uses
  %i.nv = load i64, ptr %.sroa.5.0.copyload.us.i.i, align 8, !range !41, !noalias !4749, !noundef !23
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.us.i.i, i64 8
  %i.nx = trunc nuw i64 %i.nv to i1
  %i.ny = load ptr, ptr %i.nw, align 8, !noalias !4749, !nonnull !23, !noundef !23 ; 2 uses
  br i1 %i.nx, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %.noexc.i.us.i.i
  %i.nz = load i32, ptr %i.ny, align 8, !noalias !4749, !noundef !23
  br label %bb.dv

bb.du:                                            ; preds = %.noexc.i.us.i.i
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.ob = load i64, ptr %i.oa, align 8, !noalias !4749, !noundef !23 ; 2 uses
  %i.oc = icmp ugt i64 %i.ob, 4294967295
  %i.od = shl nuw i64 %i.ob, 32
  %.sroa.09.0.insert.insert.i.i.i.i.us.i.i = select i1 %i.oc, i64 513, i64 %i.od ; 2 uses
  %i.oe = trunc i64 %.sroa.09.0.insert.insert.i.i.i.i.us.i.i to i1
  br i1 %i.oe, label %.split.us.i.i, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.us.i.i, !prof !29

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.us.i.i: ; preds = %bb.du
  %.sroa.6.0.extract.shift.i.i.i.i.i.us.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i.i.us.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.us.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i.i.us.i.i to i32
  br label %bb.dv

bb.dv:                                            ; preds = %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.us.i.i, %bb.dt
  %.sroa.02.0.i.i.i.us.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i.i.us.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.us.i.i ], [ %i.nz, %bb.dt ]
  %i.of = add i32 %.sroa.02.0.i.i.i.us.i.i, %.sroa.0.0.i.i.i.us.i.i ; 2 uses
  %.not.i.i.i.us.i.i = icmp ugt i32 %.sroa.0.0.i.i.i.us.i.i, %i.of
  br i1 %.not.i.i.i.us.i.i, label %.invoke.i.i.i, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i, !prof !29

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i: ; preds = %bb.dv
  %.not1.i.i.us.i.i = icmp ugt i32 %.sroa.0.0.i.i.i.us.i.i, %4
  %.not.i.us.i.i = icmp ugt i32 %5, %i.of
  %or.cond.i.i = or i1 %.not1.i.i.us.i.i, %.not.i.us.i.i
  br i1 %or.cond.i.i, label %_RNCINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgINtB10_11AstChildrenBU_EE0B6_.exit.thread.i.us.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgj2_EECslLuZgPVt6hg_3ide.exit.i

_RNCINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgINtB10_11AstChildrenBU_EE0B6_.exit.thread.i.us.i.i: ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.us.i.i, i64 48 ; 2 uses
  %i.oh = load i32, ptr %i.og, align 8, !noalias !4750, !noundef !23
  %i.oi = add i32 %i.oh, -1                       ; 2 uses
  store i32 %i.oi, ptr %i.og, align 8, !noalias !4750
  %i.oj = icmp eq i32 %i.oi, 0
  br i1 %i.oj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.us.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.us.i.i: ; preds = %_RNCINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgINtB10_11AstChildrenBU_EE0B6_.exit.thread.i.us.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.copyload.us.i.i) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i unwind label %.split68.us.i.i, !noalias !4750, !inline_history !4679

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.us.i.i, %_RNCINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgINtB10_11AstChildrenBU_EE0B6_.exit.thread.i.us.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.us.i.i) ]
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.us.i.i, i64 48 ; 2 uses
  %i.ol = load i32, ptr %i.ok, align 4, !noalias !4750, !noundef !23
  %i.om = add i32 %i.ol, -1                       ; 2 uses
  store i32 %i.om, ptr %i.ok, align 4, !noalias !4750
  %i.on = icmp eq i32 %i.om, 0
  br i1 %i.on, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.1.i.i.i.us.i.i, label %.noexc27.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.1.i.i.i.us.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.7.0.copyload.us.i.i) #55
          to label %.noexc27.i unwind label %.loopexit.split-lp677.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4747, !inline_history !4679

.noexc27.i:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.1.i.i.i.us.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !4748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !4748
  invoke void @_RNvXs_NtCscFGNKo4Sl5v_9itertools10array_implINtB4_12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB13_9generated5nodes10GenericArgEKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.an)
          to label %.noexc28.i unwind label %.loopexit.split-lp677.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4747, !inline_history !4679

.noexc28.i:                                       ; preds = %.noexc27.i
  %i.oo = load i64, ptr %i.aj, align 8, !range !34, !noalias !4748, !noundef !23 ; 2 uses
  %.not.us.i.i = icmp eq i64 %i.oo, -1
  br i1 %.not.us.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgj2_EECslLuZgPVt6hg_3ide.exit.i, label %.lr.ph.split.us.i.i

.loopexit.split.us.i.i:                           ; preds = %bb.ds
  %lpad.loopexit.us.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i

.split68.us.i.i:                                  ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.us.i.i
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %.noexc30.i
  %i.oq = phi i64 [ %i.px, %.noexc30.i ], [ %i.nn, %.lr.ph.i.i ]
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !4748 ; 7 uses
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !4748
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx12.i.i, align 8, !noalias !4748, !nonnull !23, !noundef !23 ; 13 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i.i, i64 60
  %i.os = load i8, ptr %i.or, align 4, !range !47, !noalias !4749, !noundef !23
  %i.ot = trunc nuw i8 %i.os to i1
  br i1 %i.ot, label %bb.dx, label %bb.dw, !prof !29

.split.us.i.i:                                    ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !4751
  br label %.invoke3.i.i.i

bb.dw:                                            ; preds = %.lr.ph.split.i.i
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i.i, i64 56
  %i.ov = load i32, ptr %i.ou, align 8, !noalias !4749, !noundef !23
  br label %.noexc10.i.i.i
end_hunk_2
begin_hunk_3_@_RNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors:bb.a
  %i.pv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !4750, !inline_history !4679
  unreachable

bb.ee:                                            ; preds = %.loopexit.i.i
  %i.pw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !4749, !inline_history !4679
  unreachable

.noexc29.i:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.1.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !4748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !4748
  invoke void @_RNvXs_NtCscFGNKo4Sl5v_9itertools10array_implINtB4_12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB13_9generated5nodes10GenericArgEKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.an)
          to label %.noexc30.i unwind label %.loopexit.split-lp677.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4747, !inline_history !4679

.noexc30.i:                                       ; preds = %.noexc29.i
  %i.px = load i64, ptr %i.aj, align 8, !range !34, !noalias !4748, !noundef !23 ; 2 uses
  %.not.i.i = icmp eq i64 %i.px, -1
  br i1 %.not.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgj2_EECslLuZgPVt6hg_3ide.exit.i, label %.lr.ph.split.i.i

.loopexit.split-lp677.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc27.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.1.i.i.i.us.i.i, %.noexc29.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.1.i.i.i.i.i, %.noexc81
  %lpad.loopexit.split-lp2042 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp677.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.i.i, %bb.ec, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i10.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi.i.i, %.loopexit.i.i ], [ %.us-phi70.i.i, %bb.ec ], [ %.us-phi70.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i10.i.i.i.i.i ], [ %lpad.loopexit.split-lp2042, %.loopexit.split-lp677.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools10array_impl12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1x_9generated5nodes10GenericArgEKj2_EECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(56) %i.an) #52
          to label %.body82 unwind label %bb.en, !noalias !4747, !inline_history !4679

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgj2_EECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit9.i.i.i.i, %.noexc30.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i, %.noexc28.i, %.noexc.i
  %.sroa.0421.0634 = phi i64 [ -1, %.noexc.i ], [ -1, %.noexc28.i ], [ %i.no, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i ], [ %i.oq, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit9.i.i.i.i ], [ -1, %.noexc30.i ] ; 3 uses
  %.sroa.9.0632 = phi ptr [ undef, %.noexc.i ], [ %.sroa.5.0.copyload.us.i.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i ], [ %.sroa.5.0.copyload.us.i.i, %.noexc28.i ], [ %.sroa.5.0.copyload.i.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit9.i.i.i.i ], [ undef, %.noexc30.i ] ; 10 uses
  %.sroa.11.0630 = phi i64 [ undef, %.noexc.i ], [ undef, %.noexc28.i ], [ %.sroa.6.0.copyload.us.i.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i ], [ %.sroa.6.0.copyload.i.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit9.i.i.i.i ], [ undef, %.noexc30.i ]
  %.sroa.13.0628 = phi ptr [ undef, %.noexc.i ], [ undef, %.noexc28.i ], [ %.sroa.7.0.copyload.us.i.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i ], [ %.sroa.7.0.copyload.i.i, %.noexc30.i ], [ %.sroa.7.0.copyload.i.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit9.i.i.i.i ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !4748
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools10array_impl12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1x_9generated5nodes10GenericArgEKj2_EECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(56) %i.an)
          to label %bb.eg unwind label %bb.ef, !noalias !4747, !inline_history !4679

.thread649:                                       ; preds = %.invoke1186, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit, %bb.di, %bb.eo, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i43.i
  %lpad.thr_comm647 = landingpad { ptr, i32 }
          cleanup
  br label %.body82

bb.ef:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgj2_EECslLuZgPVt6hg_3ide.exit.i
  %lpad.thr_comm.split-lp648 = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not13.i = icmp eq i64 %.sroa.0421.0634, -1
  br i1 %.not13.i, label %.body82, label %bb.eq

bb.eg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgj2_EECslLuZgPVt6hg_3ide.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !4747
  %.not8.i = icmp eq i64 %.sroa.0421.0634, -1
  br i1 %.not8.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !4747
  store i64 %.sroa.0421.0634, ptr %i.am, align 8, !noalias !4747
  %i.py = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store ptr %.sroa.9.0632, ptr %i.py, align 8, !noalias !4747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !4747
  store i64 %.sroa.11.0630, ptr %i.al, align 8, !noalias !4747
  %i.pz = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  store ptr %.sroa.13.0628, ptr %i.pz, align 8, !noalias !4747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !4747
  invoke fastcc void @_RNvNtCslLuZgPVt6hg_3ide9move_item13replace_nodes(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ak, i32 noundef %4, i32 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.py, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.pz)
          to label %bb.el unwind label %bb.ek, !noalias !4747, !inline_history !4679

bb.ei:                                            ; preds = %bb.eg
  %i.qa = getelementptr i8, ptr %.sroa.0.0.i1.i496, i64 16
  %.val.i80 = load ptr, ptr %i.qa, align 8, !noalias !4747, !noundef !23 ; 3 uses
  %.not.i34.i = icmp eq ptr %.val.i80, null
  br i1 %.not.i34.i, label %bb.ep, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.qb = getelementptr inbounds nuw i8, ptr %.val.i80, i64 48 ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 4, !noalias !4747, !noundef !23 ; 2 uses
  %i.qd = icmp eq i32 %i.qc, -1
  br i1 %i.qd, label %.invoke1186, label %bb.eo, !prof !29

bb.ek:                                            ; preds = %bb.eh
  %i.qe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0628) ]
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.13.0628, i64 48 ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4, !noalias !4747, !noundef !23
  %i.qh = add i32 %i.qg, -1                       ; 2 uses
  store i32 %i.qh, ptr %i.qf, align 4, !noalias !4747
  %i.qi = icmp eq i32 %i.qh, 0
  br i1 %i.qi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.i: ; preds = %bb.ek
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.13.0628) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i unwind label %bb.en, !noalias !4747, !inline_history !4679

bb.el:                                            ; preds = %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !noalias !4752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !4747
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0628) ]
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.13.0628, i64 48 ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !noalias !4747, !noundef !23
  %i.ql = add i32 %i.qk, -1                       ; 2 uses
  store i32 %i.ql, ptr %i.qj, align 4, !noalias !4747
  %i.qm = icmp eq i32 %i.ql, 0
  br i1 %i.qm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i37.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit39.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i37.i: ; preds = %bb.el
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.13.0628) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit39.i unwind label %bb.em, !noalias !4747, !inline_history !4679

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit39.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i37.i, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !4747
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0632) ]
  %i.qn = getelementptr inbounds nuw i8, ptr %.sroa.9.0632, i64 48 ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 4, !noalias !4747, !noundef !23
  %i.qp = add i32 %i.qo, -1                       ; 2 uses
  store i32 %i.qp, ptr %i.qn, align 4, !noalias !4747
  %i.qq = icmp eq i32 %i.qp, 0
  br i1 %i.qq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i43.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit45.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.ek, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.i, %bb.em
  %.pn.i78 = phi { ptr, i32 } [ %i.qv, %bb.em ], [ %i.qe, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.i ], [ %i.qe, %bb.ek ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0632) ]
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.9.0632, i64 48 ; 2 uses
  %i.qs = load i32, ptr %i.qr, align 4, !noalias !4747, !noundef !23
  %i.qt = add i32 %i.qs, -1                       ; 2 uses
  store i32 %i.qt, ptr %i.qr, align 4, !noalias !4747
  %i.qu = icmp eq i32 %i.qt, 0
  br i1 %i.qu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i40.i, label %.body82

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i40.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.9.0632) #55
          to label %.body82 unwind label %bb.en, !noalias !4747, !inline_history !4679

bb.em:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i37.i
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i43.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit39.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.9.0632) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit45.i unwind label %.thread649, !noalias !4747, !inline_history !4679

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit45.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i43.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !4747
  br label %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgINtBY_11AstChildrenBS_EEB4_.exit

bb.en:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i49.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i46.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i40.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i.i, %.body.i
  %i.qw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !4747, !inline_history !4679
  unreachable

bb.eo:                                            ; preds = %bb.ej
  %i.qx = add nuw i32 %i.qc, 1
  store i32 %i.qx, ptr %i.qb, align 4, !noalias !4747
  invoke fastcc void @_RNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, i64 noundef 0, ptr noundef nonnull %.val.i80, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5)
          to label %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgINtBY_11AstChildrenBS_EEB4_.exit unwind label %.thread649, !noalias !4752, !inline_history !4679

bb.ep:                                            ; preds = %bb.ei
  store i64 -1, ptr %0, align 8, !alias.scope !4746
  br label %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgINtBY_11AstChildrenBS_EEB4_.exit

bb.eq:                                            ; preds = %bb.ef
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0628) ]
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.13.0628, i64 48 ; 2 uses
  %i.qz = load i32, ptr %i.qy, align 4, !noalias !4747, !noundef !23
  %i.ra = add i32 %i.qz, -1                       ; 2 uses
  store i32 %i.ra, ptr %i.qy, align 4, !noalias !4747
  %i.rb = icmp eq i32 %i.ra, 0
  br i1 %i.rb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i46.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit48.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i46.i: ; preds = %bb.eq
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.13.0628) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit48.i unwind label %bb.en, !noalias !4747, !inline_history !4679

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit48.i: ; preds = %bb.eq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i46.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0632) ]
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.9.0632, i64 48 ; 2 uses
  %i.rd = load i32, ptr %i.rc, align 4, !noalias !4747, !noundef !23
  %i.re = add i32 %i.rd, -1                       ; 2 uses
  store i32 %i.re, ptr %i.rc, align 4, !noalias !4747
  %i.rf = icmp eq i32 %i.re, 0
  br i1 %i.rf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i49.i, label %.body82

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TypeArgECslLuZgPVt6hg_3ide.exit.sink.split.i49.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit48.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.9.0632) #55
          to label %.body82 unwind label %bb.en, !noalias !4747, !inline_history !4679

_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgINtBY_11AstChildrenBS_EEB4_.exit: ; preds = %bb.ep, %bb.eo, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgECslLuZgPVt6hg_3ide.exit45.i
  %i.rg = load i32, ptr %i.db, align 4, !noundef !23
  %i.rh = add i32 %i.rg, -1                       ; 2 uses
  store i32 %i.rh, ptr %i.db, align 4
  %i.ri = icmp eq i32 %i.rh, 0
  br i1 %i.ri, label %.invoke1183, label %_RNvNtCslLuZgPVt6hg_3ide9move_item17move_in_direction.exit

bb.er:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.rj = load i32, ptr %i.db, align 4, !noalias !4731, !noundef !23 ; 2 uses
  %i.rk = icmp eq i32 %i.rj, -1
  br i1 %i.rk, label %.noexc31.i.invoke, label %bb.es, !prof !29

bb.es:                                            ; preds = %bb.er
  %i.rl = add nuw i32 %i.rj, 1
  store i32 %i.rl, ptr %i.db, align 4, !noalias !4731
  %i.rm = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.sroa.0.0.i1.i496)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit1190 unwind label %bb.fa

thread-pre-split655:                              ; preds = %bb.do
  %.pr656 = load i32, ptr %i.db, align 4
  br label %bb.et

bb.et:                                            ; preds = %thread-pre-split655, %bb.dn
  %i.rn = phi i32 [ %.pr656, %thread-pre-split655 ], [ %i.nh, %bb.dn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.ro = icmp eq i32 %i.rn, -1
  br i1 %i.ro, label %.invoke, label %.noexc51, !prof !29

.noexc51:                                         ; preds = %bb.et
  %i.rp = add nuw i32 %i.rn, 1
  store i32 %i.rp, ptr %i.db, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %.sroa.0.0.i1.i496, ptr %i.o, align 8
  %i.rq = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o)
          to label %bb.ew unwind label %bb.eu

bb.eu:                                            ; preds = %.noexc51
  %i.rr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rs = load i32, ptr %i.db, align 4, !noundef !23
  %i.rt = add i32 %i.rs, -1                       ; 2 uses
  store i32 %i.rt, ptr %i.db, align 4
  %i.ru = icmp eq i32 %i.rt, 0
  br i1 %i.ru, label %bb.ev, label %.body43

bb.ev:                                            ; preds = %bb.eu
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i1.i496) #55
          to label %.body43 unwind label %bb.ez

bb.ew:                                            ; preds = %.noexc51
  %i.rv = icmp eq i16 %i.rq, 309
  br i1 %i.rv, label %bb.gn, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.rw = load i32, ptr %i.db, align 4, !noundef !23
  %i.rx = add i32 %i.rw, -1                       ; 2 uses
  store i32 %i.rx, ptr %i.db, align 4
  %i.ry = icmp eq i32 %i.rx, 0
  br i1 %i.ry, label %bb.ey, label %bb.gp

bb.ey:                                            ; preds = %bb.ex
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i1.i496) #55
          to label %bb.gp unwind label %bb.ab

bb.ez:                                            ; preds = %bb.ev
  %i.rz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.fa:                                            ; preds = %.noexc31.i.invoke, %bb.gi, %bb.gg, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit1190, %bb.es
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %.body1245

.body1245:                                        ; preds = %.body.i1194, %bb.fv, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i, %bb.ge, %.noexc39.i, %bb.gm, %bb.fa
  %eh.lpad-body1246 = phi { ptr, i32 } [ %i.sa, %bb.fa ], [ %.pn.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i ], [ %.pn.i, %bb.ge ], [ %lpad.thr_comm.split-lp.i, %bb.fv ], [ %eh.lpad-body.i1195, %.body.i1194 ], [ %lpad.thr_comm.split-lp.i, %.noexc39.i ], [ %lpad.thr_comm.split-lp.i, %bb.gm ] ; 2 uses
  %i.sb = load i32, ptr %i.db, align 4, !noalias !4730, !noundef !23
  %i.sc = add i32 %i.sb, -1                       ; 2 uses
  store i32 %i.sc, ptr %i.db, align 4, !noalias !4730
  %i.sd = icmp eq i32 %i.sc, 0
  br i1 %i.sd, label %bb.fb, label %.body43

bb.fb:                                            ; preds = %.body1245
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i1.i496) #55
          to label %.body43 unwind label %bb.bw

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit1190: ; preds = %bb.es
  call void @llvm.experimental.noalias.scope.decl(metadata !4753)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4754
  invoke void @_RINvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB6_9generated5nodes7VariantENtCscFGNKo4Sl5v_9itertools9Itertools13array_windowsKj2_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.n, ptr noundef %i.rm)
          to label %.noexc1241 unwind label %bb.fa, !inline_history !4693

.noexc1241:                                       ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit1190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4755
  invoke void @_RNvXs_NtCscFGNKo4Sl5v_9itertools10array_implINtB4_12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB13_9generated5nodes7VariantEKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n)
          to label %.noexc.i1196 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4754, !inline_history !4693

.noexc.i1196:                                     ; preds = %.noexc1241
  %i.se = load ptr, ptr %i.j, align 8, !noalias !4755, !noundef !23 ; 3 uses
  %.not36.i.i = icmp eq ptr %i.se, null
  br i1 %.not36.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variantj2_EECslLuZgPVt6hg_3ide.exit.i, label %.lr.ph.i.i1197

.lr.ph.i.i1197:                                   ; preds = %.noexc.i1196
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br i1 %3, label %.lr.ph.split.us.i.i1224, label %.lr.ph.split.i.i1198

.lr.ph.split.us.i.i1224:                          ; preds = %.lr.ph.i.i1197, %.noexc24.i
  %i.sf = phi ptr [ %i.tg, %.noexc24.i ], [ %i.se, %.lr.ph.i.i1197 ] ; 11 uses
  %.sroa.511.0.copyload.us.i.i = load i64, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !4755
  %i.sg = inttoptr i64 %.sroa.511.0.copyload.us.i.i to ptr ; 8 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sf, i64 60
  %i.si = load i8, ptr %i.sh, align 4, !range !47, !noalias !4756, !noundef !23
  %i.sj = trunc nuw i8 %i.si to i1
  br i1 %i.sj, label %bb.fd, label %bb.fc, !prof !29

bb.fc:                                            ; preds = %.lr.ph.split.us.i.i1224
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sf, i64 56
  %i.sl = load i32, ptr %i.sk, align 8, !noalias !4756, !noundef !23
  br label %.noexc.i.us.i.i1225

bb.fd:                                            ; preds = %.lr.ph.split.us.i.i1224
  %i.sm = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.sf)
          to label %.noexc.i.us.i.i1225 unwind label %.loopexit.split.us.i.i1239, !noalias !4756, !inline_history !4693

.noexc.i.us.i.i1225:                              ; preds = %bb.fd, %bb.fc
  %.sroa.0.0.i.i.i.us.i.i1226 = phi i32 [ %i.sl, %bb.fc ], [ %i.sm, %bb.fd ] ; 3 uses
  %i.sn = load i64, ptr %i.sf, align 8, !range !41, !noalias !4756, !noundef !23
  %i.so = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.sp = trunc nuw i64 %i.sn to i1
  %i.sq = load ptr, ptr %i.so, align 8, !noalias !4756, !nonnull !23, !noundef !23 ; 2 uses
  br i1 %i.sp, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %.noexc.i.us.i.i1225
  %i.sr = load i32, ptr %i.sq, align 8, !noalias !4756, !noundef !23
  br label %bb.fg

bb.ff:                                            ; preds = %.noexc.i.us.i.i1225
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.st = load i64, ptr %i.ss, align 8, !noalias !4756, !noundef !23 ; 2 uses
  %i.su = icmp ugt i64 %i.st, 4294967295
  %i.sv = shl nuw i64 %i.st, 32
  %.sroa.09.0.insert.insert.i.i.i.i.us.i.i1234 = select i1 %i.su, i64 513, i64 %i.sv ; 2 uses
  %i.sw = trunc i64 %.sroa.09.0.insert.insert.i.i.i.i.us.i.i1234 to i1
  br i1 %i.sw, label %.split.us.i.i1238, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.us.i.i1235, !prof !29

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.us.i.i1235: ; preds = %bb.ff
  %.sroa.6.0.extract.shift.i.i.i.i.i.us.i.i1236 = lshr i64 %.sroa.09.0.insert.insert.i.i.i.i.us.i.i1234, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.us.i.i1237 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i.i.us.i.i1236 to i32
  br label %bb.fg

bb.fg:                                            ; preds = %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.us.i.i1235, %bb.fe
  %.sroa.02.0.i.i.i.us.i.i1227 = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i.i.us.i.i1237, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.us.i.i1235 ], [ %i.sr, %bb.fe ]
  %i.sx = add i32 %.sroa.02.0.i.i.i.us.i.i1227, %.sroa.0.0.i.i.i.us.i.i1226 ; 2 uses
  %.not.i.i.i.us.i.i1228 = icmp ugt i32 %.sroa.0.0.i.i.i.us.i.i1226, %i.sx
  br i1 %.not.i.i.i.us.i.i1228, label %.invoke.i.i.i1209, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i1229, !prof !29

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i1229: ; preds = %bb.fg
  %.not1.i.i.us.i.i1230 = icmp ugt i32 %.sroa.0.0.i.i.i.us.i.i1226, %4
  %.not.i.us.i.i1231 = icmp ugt i32 %5, %i.sx
  %or.cond.i.i1232 = or i1 %.not1.i.i.us.i.i1230, %.not.i.us.i.i1231
  br i1 %or.cond.i.i1232, label %_RNCINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantINtB10_11AstChildrenBU_EE0B6_.exit.thread.i.us.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variantj2_EECslLuZgPVt6hg_3ide.exit.i

_RNCINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantINtB10_11AstChildrenBU_EE0B6_.exit.thread.i.us.i.i: ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i1229
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sf, i64 48 ; 2 uses
  %i.sz = load i32, ptr %i.sy, align 8, !noalias !4757, !noundef !23
  %i.ta = add i32 %i.sz, -1                       ; 2 uses
  store i32 %i.ta, ptr %i.sy, align 8, !noalias !4757
  %i.tb = icmp eq i32 %i.ta, 0
  br i1 %i.tb, label %bb.fh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i

bb.fh:                                            ; preds = %_RNCINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantINtB10_11AstChildrenBU_EE0B6_.exit.thread.i.us.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.sf) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i unwind label %.split48.us.i.i, !noalias !4757, !inline_history !4693

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i: ; preds = %bb.fh, %_RNCINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantINtB10_11AstChildrenBU_EE0B6_.exit.thread.i.us.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sg) ]
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sg, i64 48 ; 2 uses
  %i.td = load i32, ptr %i.tc, align 4, !noalias !4757, !noundef !23
  %i.te = add i32 %i.td, -1                       ; 2 uses
  store i32 %i.te, ptr %i.tc, align 4, !noalias !4757
  %i.tf = icmp eq i32 %i.te, 0
  br i1 %i.tf, label %bb.fi, label %.noexc23.i

bb.fi:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.sg) #55
          to label %.noexc23.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4754, !inline_history !4693

.noexc23.i:                                       ; preds = %bb.fi, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4755
  invoke void @_RNvXs_NtCscFGNKo4Sl5v_9itertools10array_implINtB4_12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB13_9generated5nodes7VariantEKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n)
          to label %.noexc24.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4754, !inline_history !4693

.noexc24.i:                                       ; preds = %.noexc23.i
  %i.tg = load ptr, ptr %i.j, align 8, !noalias !4755, !noundef !23 ; 2 uses
  %.not.us.i.i1233 = icmp eq ptr %i.tg, null
  br i1 %.not.us.i.i1233, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variantj2_EECslLuZgPVt6hg_3ide.exit.i, label %.lr.ph.split.us.i.i1224

.loopexit.split.us.i.i1239:                       ; preds = %bb.fd
  %lpad.loopexit.us.i.i1240 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i1212

.split48.us.i.i:                                  ; preds = %bb.fh
  %i.th = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

.lr.ph.split.i.i1198:                             ; preds = %.lr.ph.i.i1197, %.noexc26.i
  %i.ti = phi ptr [ %i.uw, %.noexc26.i ], [ %i.se, %.lr.ph.i.i1197 ] ; 6 uses
  %.sroa.511.0.copyload.i.i = load i64, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !4755
  %i.tj = inttoptr i64 %.sroa.511.0.copyload.i.i to ptr ; 14 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tj) ]
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 60
  %i.tl = load i8, ptr %i.tk, align 4, !range !47, !noalias !4756, !noundef !23
  %i.tm = trunc nuw i8 %i.tl to i1
  br i1 %i.tm, label %bb.fk, label %bb.fj, !prof !29

.split.us.i.i1238:                                ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4758
  br label %.invoke3.i.i.i1219

bb.fj:                                            ; preds = %.lr.ph.split.i.i1198
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tj, i64 56
end_hunk_3
begin_hunk_4_@_RNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors:bb.a
  %i.ut = icmp eq i32 %i.us, 0
  br i1 %i.ut, label %bb.fs, label %.body.i1194

bb.fs:                                            ; preds = %bb.fr
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.us-phi49.i.i) #55
          to label %.body.i1194 unwind label %bb.ft, !noalias !4757, !inline_history !4693

bb.ft:                                            ; preds = %bb.fs
  %i.uu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !4757, !inline_history !4693
  unreachable

bb.fu:                                            ; preds = %.loopexit.i.i1212
  %i.uv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !4756, !inline_history !4693
  unreachable

.noexc25.i:                                       ; preds = %bb.fq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4755
  invoke void @_RNvXs_NtCscFGNKo4Sl5v_9itertools10array_implINtB4_12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB13_9generated5nodes7VariantEKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n)
          to label %.noexc26.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4754, !inline_history !4693

.noexc26.i:                                       ; preds = %.noexc25.i
  %i.uw = load ptr, ptr %i.j, align 8, !noalias !4755, !noundef !23 ; 2 uses
  %.not.i.i1208 = icmp eq ptr %i.uw, null
  br i1 %.not.i.i1208, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variantj2_EECslLuZgPVt6hg_3ide.exit.i, label %.lr.ph.split.i.i1198

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc23.i, %bb.fi, %.noexc25.i, %bb.fq, %.noexc1241
  %lpad.loopexit.split-lp2071 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1194

.body.i1194:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fs, %bb.fr, %.loopexit.i.i1212
  %eh.lpad-body.i1195 = phi { ptr, i32 } [ %lpad.phi.i.i1213, %.loopexit.i.i1212 ], [ %.us-phi50.i.i, %bb.fr ], [ %.us-phi50.i.i, %bb.fs ], [ %lpad.loopexit.split-lp2071, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools10array_impl12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1x_9generated5nodes7VariantEKj2_EECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(40) %i.n) #52
          to label %.body1245 unwind label %bb.gh, !noalias !4754, !inline_history !4693

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variantj2_EECslLuZgPVt6hg_3ide.exit.i: ; preds = %.noexc26.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit9.i.i.i.i1203, %.noexc24.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i1229, %.noexc.i1196
  %.sroa.9.069.i = phi ptr [ undef, %.noexc.i1196 ], [ undef, %.noexc24.i ], [ %i.sg, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i1229 ], [ %i.tj, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit9.i.i.i.i1203 ], [ %i.tj, %.noexc26.i ] ; 9 uses
  %.sroa.044.066.i = phi ptr [ null, %.noexc.i1196 ], [ null, %.noexc24.i ], [ %i.sf, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i1229 ], [ null, %.noexc26.i ], [ %i.ti, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit9.i.i.i.i1203 ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4755
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools10array_impl12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1x_9generated5nodes7VariantEKj2_EECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(40) %i.n)
          to label %bb.fw unwind label %bb.fv, !noalias !4754, !inline_history !4693

bb.fv:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variantj2_EECslLuZgPVt6hg_3ide.exit.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not13.i1206 = icmp eq ptr %.sroa.044.066.i, null
  br i1 %.not13.i1206, label %.body1245, label %bb.gk

bb.fw:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variantj2_EECslLuZgPVt6hg_3ide.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4754
  %.not8.i1207 = icmp eq ptr %.sroa.044.066.i, null
  br i1 %.not8.i1207, label %bb.fx, label %bb.gb

bb.fx:                                            ; preds = %bb.fw
  %i.ux = getelementptr i8, ptr %.sroa.0.0.i1.i496, i64 16
  %.val.i = load ptr, ptr %i.ux, align 8, !noalias !4754, !noundef !23 ; 3 uses
  %.not.i30.i = icmp eq ptr %.val.i, null
  br i1 %.not.i30.i, label %bb.gj, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.uy = getelementptr inbounds nuw i8, ptr %.val.i, i64 48 ; 2 uses
  %i.uz = load i32, ptr %i.uy, align 4, !noalias !4754, !noundef !23 ; 2 uses
  %i.va = icmp eq i32 %i.uz, -1
  br i1 %i.va, label %.noexc31.i.invoke, label %bb.gi, !prof !29

.noexc31.i.invoke:                                ; preds = %bb.er, %bb.fy
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #58
          to label %.noexc31.i.cont unwind label %bb.fa, !inline_history !4693

.noexc31.i.cont:                                  ; preds = %.noexc31.i.invoke
  unreachable

bb.fz:                                            ; preds = %bb.gb
  %i.vb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.9.069.i, i64 48 ; 2 uses
  %i.vd = load i32, ptr %i.vc, align 4, !noalias !4754, !noundef !23
  %i.ve = add i32 %i.vd, -1                       ; 2 uses
  store i32 %i.ve, ptr %i.vc, align 4, !noalias !4754
  %i.vf = icmp eq i32 %i.ve, 0
  br i1 %i.vf, label %bb.ga, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i

bb.ga:                                            ; preds = %bb.fz
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.9.069.i) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i unwind label %bb.gh, !noalias !4754, !inline_history !4693

bb.gb:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4754
  store ptr %.sroa.044.066.i, ptr %i.m, align 8, !noalias !4754
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4754
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.069.i) ]
  store ptr %.sroa.9.069.i, ptr %i.l, align 8, !noalias !4754
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4754
  invoke fastcc void @_RNvNtCslLuZgPVt6hg_3ide9move_item13replace_nodes(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.k, i32 noundef %4, i32 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %bb.gc unwind label %bb.fz, !noalias !4754, !inline_history !4693

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !4759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4754
  %i.vg = getelementptr inbounds nuw i8, ptr %.sroa.9.069.i, i64 48 ; 2 uses
  %i.vh = load i32, ptr %i.vg, align 4, !noalias !4754, !noundef !23
  %i.vi = add i32 %i.vh, -1                       ; 2 uses
  store i32 %i.vi, ptr %i.vg, align 4, !noalias !4754
  %i.vj = icmp eq i32 %i.vi, 0
  br i1 %i.vj, label %bb.gd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit34.i

bb.gd:                                            ; preds = %bb.gc
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.9.069.i) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit34.i unwind label %bb.gf, !noalias !4754, !inline_history !4693

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.gf, %bb.ga, %bb.fz
  %.pn.i = phi { ptr, i32 } [ %i.vo, %bb.gf ], [ %i.vb, %bb.ga ], [ %i.vb, %bb.fz ] ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.sroa.044.066.i, i64 48 ; 2 uses
  %i.vl = load i32, ptr %i.vk, align 4, !noalias !4754, !noundef !23
  %i.vm = add i32 %i.vl, -1                       ; 2 uses
  store i32 %i.vm, ptr %i.vk, align 4, !noalias !4754
  %i.vn = icmp eq i32 %i.vm, 0
  br i1 %i.vn, label %bb.ge, label %.body1245

bb.ge:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.044.066.i) #55
          to label %.body1245 unwind label %bb.gh, !noalias !4754, !inline_history !4693

bb.gf:                                            ; preds = %bb.gd
  %i.vo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit34.i: ; preds = %bb.gd, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4754
  %i.vp = getelementptr inbounds nuw i8, ptr %.sroa.044.066.i, i64 48 ; 2 uses
  %i.vq = load i32, ptr %i.vp, align 4, !noalias !4754, !noundef !23
  %i.vr = add i32 %i.vq, -1                       ; 2 uses
  store i32 %i.vr, ptr %i.vp, align 4, !noalias !4754
  %i.vs = icmp eq i32 %i.vr, 0
  br i1 %i.vs, label %bb.gg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit38.i

bb.gg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit34.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.044.066.i) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit38.i unwind label %bb.fa, !inline_history !4693

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit38.i: ; preds = %bb.gg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit34.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4754
  br label %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantINtBY_11AstChildrenBS_EEB4_.exit

bb.gh:                                            ; preds = %bb.gm, %bb.gl, %bb.ge, %bb.ga, %.body.i1194
  %i.vt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !4754, !inline_history !4693
  unreachable

bb.gi:                                            ; preds = %bb.fy
  %i.vu = add nuw i32 %i.uz, 1
  store i32 %i.vu, ptr %i.uy, align 4, !noalias !4754
  invoke fastcc void @_RNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, i64 noundef 0, ptr noundef nonnull %.val.i, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5)
          to label %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantINtBY_11AstChildrenBS_EEB4_.exit unwind label %bb.fa, !inline_history !4693

bb.gj:                                            ; preds = %bb.fx
  store i64 -1, ptr %0, align 8, !alias.scope !4753
  br label %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantINtBY_11AstChildrenBS_EEB4_.exit

bb.gk:                                            ; preds = %bb.fv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.069.i) ]
  %i.vv = getelementptr inbounds nuw i8, ptr %.sroa.9.069.i, i64 48 ; 2 uses
  %i.vw = load i32, ptr %i.vv, align 4, !noalias !4754, !noundef !23
  %i.vx = add i32 %i.vw, -1                       ; 2 uses
  store i32 %i.vx, ptr %i.vv, align 4, !noalias !4754
  %i.vy = icmp eq i32 %i.vx, 0
  br i1 %i.vy, label %bb.gl, label %.noexc39.i

bb.gl:                                            ; preds = %bb.gk
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.9.069.i) #55
          to label %.noexc39.i unwind label %bb.gh, !noalias !4754, !inline_history !4693

.noexc39.i:                                       ; preds = %bb.gl, %bb.gk
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.044.066.i, i64 48 ; 2 uses
  %i.wa = load i32, ptr %i.vz, align 4, !noalias !4754, !noundef !23
  %i.wb = add i32 %i.wa, -1                       ; 2 uses
  store i32 %i.wb, ptr %i.vz, align 4, !noalias !4754
  %i.wc = icmp eq i32 %i.wb, 0
  br i1 %i.wc, label %bb.gm, label %.body1245

bb.gm:                                            ; preds = %.noexc39.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.044.066.i) #55
          to label %.body1245 unwind label %bb.gh, !noalias !4754, !inline_history !4693

_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantINtBY_11AstChildrenBS_EEB4_.exit: ; preds = %bb.gj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit38.i, %bb.gi
  %i.wd = load i32, ptr %i.db, align 4, !noundef !23
  %i.we = add i32 %i.wd, -1                       ; 2 uses
  store i32 %i.we, ptr %i.db, align 4
  %i.wf = icmp eq i32 %i.we, 0
  br i1 %i.wf, label %.invoke1183, label %_RNvNtCslLuZgPVt6hg_3ide9move_item17move_in_direction.exit

bb.gn:                                            ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.wg = load i32, ptr %i.db, align 4, !noalias !4731, !noundef !23 ; 2 uses
  %i.wh = icmp eq i32 %i.wg, -1
  br i1 %i.wh, label %.noexc31.i1279.invoke, label %bb.go, !prof !29

bb.go:                                            ; preds = %bb.gn
  %i.wi = add nuw i32 %i.wg, 1
  store i32 %i.wi, ptr %i.db, align 4, !noalias !4731
  %i.wj = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.sroa.0.0.i1.i496)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit1249 unwind label %bb.gq

bb.gp:                                            ; preds = %bb.ex, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !4731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !4731
  br i1 %3, label %bb.id, label %bb.ie

bb.gq:                                            ; preds = %.noexc31.i1279.invoke, %bb.hy, %bb.hw, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit1249, %bb.go
  %i.wk = landingpad { ptr, i32 }
          cleanup
  br label %.body1328

.body1328:                                        ; preds = %.body.i1252, %bb.hl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i, %bb.hu, %.noexc39.i1274, %bb.ic, %bb.gq
  %eh.lpad-body1329 = phi { ptr, i32 } [ %i.wk, %bb.gq ], [ %.pn.i1276, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i ], [ %.pn.i1276, %bb.hu ], [ %lpad.thr_comm.split-lp.i1272, %bb.hl ], [ %eh.lpad-body.i1253, %.body.i1252 ], [ %lpad.thr_comm.split-lp.i1272, %.noexc39.i1274 ], [ %lpad.thr_comm.split-lp.i1272, %bb.ic ] ; 2 uses
  %i.wl = load i32, ptr %i.db, align 4, !noalias !4730, !noundef !23
  %i.wm = add i32 %i.wl, -1                       ; 2 uses
  store i32 %i.wm, ptr %i.db, align 4, !noalias !4730
  %i.wn = icmp eq i32 %i.wm, 0
  br i1 %i.wn, label %bb.gr, label %.body43

bb.gr:                                            ; preds = %.body1328
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i1.i496) #55
          to label %.body43 unwind label %bb.bw

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit1249: ; preds = %bb.go
  call void @llvm.experimental.noalias.scope.decl(metadata !4760)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4761
  invoke void @_RINvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB6_9generated5nodes9TypeBoundENtCscFGNKo4Sl5v_9itertools9Itertools13array_windowsKj2_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noundef %i.wj)
          to label %.noexc1324 unwind label %bb.gq, !inline_history !4707

.noexc1324:                                       ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit1249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4762
  invoke void @_RNvXs_NtCscFGNKo4Sl5v_9itertools10array_implINtB4_12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB13_9generated5nodes9TypeBoundEKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %.noexc.i1256 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i1250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4761, !inline_history !4707

.noexc.i1256:                                     ; preds = %.noexc1324
  %i.wo = load ptr, ptr %i.c, align 8, !noalias !4762, !noundef !23 ; 3 uses
  %.not36.i.i1257 = icmp eq ptr %i.wo, null
  br i1 %.not36.i.i1257, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundj2_EECslLuZgPVt6hg_3ide.exit.i, label %.lr.ph.i.i1258

.lr.ph.i.i1258:                                   ; preds = %.noexc.i1256
  %.sroa.511.0..sroa_idx.i.i1259 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %3, label %.lr.ph.split.us.i.i1303, label %.lr.ph.split.i.i1260

.lr.ph.split.us.i.i1303:                          ; preds = %.lr.ph.i.i1258, %.noexc24.i1314
  %i.wp = phi ptr [ %i.xq, %.noexc24.i1314 ], [ %i.wo, %.lr.ph.i.i1258 ] ; 11 uses
  %.sroa.511.0.copyload.us.i.i1304 = load i64, ptr %.sroa.511.0..sroa_idx.i.i1259, align 8, !noalias !4762
  %i.wq = inttoptr i64 %.sroa.511.0.copyload.us.i.i1304 to ptr ; 8 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wp, i64 60
  %i.ws = load i8, ptr %i.wr, align 4, !range !47, !noalias !4763, !noundef !23
  %i.wt = trunc nuw i8 %i.ws to i1
  br i1 %i.wt, label %bb.gt, label %bb.gs, !prof !29

bb.gs:                                            ; preds = %.lr.ph.split.us.i.i1303
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wp, i64 56
  %i.wv = load i32, ptr %i.wu, align 8, !noalias !4763, !noundef !23
  br label %.noexc.i.us.i.i1305

bb.gt:                                            ; preds = %.lr.ph.split.us.i.i1303
  %i.ww = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.wp)
          to label %.noexc.i.us.i.i1305 unwind label %.loopexit.split.us.i.i1322, !noalias !4763, !inline_history !4707

.noexc.i.us.i.i1305:                              ; preds = %bb.gt, %bb.gs
  %.sroa.0.0.i.i.i.us.i.i1306 = phi i32 [ %i.wv, %bb.gs ], [ %i.ww, %bb.gt ] ; 3 uses
  %i.wx = load i64, ptr %i.wp, align 8, !range !41, !noalias !4763, !noundef !23
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  %i.wz = trunc nuw i64 %i.wx to i1
  %i.xa = load ptr, ptr %i.wy, align 8, !noalias !4763, !nonnull !23, !noundef !23 ; 2 uses
  br i1 %i.wz, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %.noexc.i.us.i.i1305
  %i.xb = load i32, ptr %i.xa, align 8, !noalias !4763, !noundef !23
  br label %bb.gw

bb.gv:                                            ; preds = %.noexc.i.us.i.i1305
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xa, i64 8
  %i.xd = load i64, ptr %i.xc, align 8, !noalias !4763, !noundef !23 ; 2 uses
  %i.xe = icmp ugt i64 %i.xd, 4294967295
  %i.xf = shl nuw i64 %i.xd, 32
  %.sroa.09.0.insert.insert.i.i.i.i.us.i.i1317 = select i1 %i.xe, i64 513, i64 %i.xf ; 2 uses
  %i.xg = trunc i64 %.sroa.09.0.insert.insert.i.i.i.i.us.i.i1317 to i1
  br i1 %i.xg, label %.split.us.i.i1321, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.us.i.i1318, !prof !29

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.us.i.i1318: ; preds = %bb.gv
  %.sroa.6.0.extract.shift.i.i.i.i.i.us.i.i1319 = lshr i64 %.sroa.09.0.insert.insert.i.i.i.i.us.i.i1317, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.us.i.i1320 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i.i.us.i.i1319 to i32
  br label %bb.gw

bb.gw:                                            ; preds = %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.us.i.i1318, %bb.gu
  %.sroa.02.0.i.i.i.us.i.i1307 = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i.i.us.i.i1320, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.us.i.i1318 ], [ %i.xb, %bb.gu ]
  %i.xh = add i32 %.sroa.02.0.i.i.i.us.i.i1307, %.sroa.0.0.i.i.i.us.i.i1306 ; 2 uses
  %.not.i.i.i.us.i.i1308 = icmp ugt i32 %.sroa.0.0.i.i.i.us.i.i1306, %i.xh
  br i1 %.not.i.i.i.us.i.i1308, label %.invoke.i.i.i1286, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i1309, !prof !29

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i1309: ; preds = %bb.gw
  %.not1.i.i.us.i.i1310 = icmp ugt i32 %.sroa.0.0.i.i.i.us.i.i1306, %4
  %.not.i.us.i.i1311 = icmp ugt i32 %5, %i.xh
  %or.cond.i.i1312 = or i1 %.not1.i.i.us.i.i1310, %.not.i.us.i.i1311
  br i1 %or.cond.i.i1312, label %_RNCINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundINtB10_11AstChildrenBU_EE0B6_.exit.thread.i.us.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundj2_EECslLuZgPVt6hg_3ide.exit.i

_RNCINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundINtB10_11AstChildrenBU_EE0B6_.exit.thread.i.us.i.i: ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i.us.i.i1309
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wp, i64 48 ; 2 uses
  %i.xj = load i32, ptr %i.xi, align 8, !noalias !4764, !noundef !23
  %i.xk = add i32 %i.xj, -1                       ; 2 uses
  store i32 %i.xk, ptr %i.xi, align 8, !noalias !4764
  %i.xl = icmp eq i32 %i.xk, 0
  br i1 %i.xl, label %bb.gx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i

bb.gx:                                            ; preds = %_RNCINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundINtB10_11AstChildrenBU_EE0B6_.exit.thread.i.us.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.wp) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i unwind label %.split48.us.i.i1316, !noalias !4764, !inline_history !4707

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i: ; preds = %bb.gx, %_RNCINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundINtB10_11AstChildrenBU_EE0B6_.exit.thread.i.us.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wq) ]
  %i.xm = getelementptr inbounds nuw i8, ptr %i.wq, i64 48 ; 2 uses
  %i.xn = load i32, ptr %i.xm, align 4, !noalias !4764, !noundef !23
  %i.xo = add i32 %i.xn, -1                       ; 2 uses
  store i32 %i.xo, ptr %i.xm, align 4, !noalias !4764
  %i.xp = icmp eq i32 %i.xo, 0
  br i1 %i.xp, label %bb.gy, label %.noexc23.i1313

bb.gy:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.wq) #55
          to label %.noexc23.i1313 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i1250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4761, !inline_history !4707

.noexc23.i1313:                                   ; preds = %bb.gy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i.i.i.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4762
  invoke void @_RNvXs_NtCscFGNKo4Sl5v_9itertools10array_implINtB4_12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB13_9generated5nodes9TypeBoundEKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %.noexc24.i1314 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i1250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4761, !inline_history !4707

.noexc24.i1314:                                   ; preds = %.noexc23.i1313
  %i.xq = load ptr, ptr %i.c, align 8, !noalias !4762, !noundef !23 ; 2 uses
  %.not.us.i.i1315 = icmp eq ptr %i.xq, null
  br i1 %.not.us.i.i1315, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundj2_EECslLuZgPVt6hg_3ide.exit.i, label %.lr.ph.split.us.i.i1303

.loopexit.split.us.i.i1322:                       ; preds = %bb.gt
  %lpad.loopexit.us.i.i1323 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i1291

.split48.us.i.i1316:                              ; preds = %bb.gx
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

.lr.ph.split.i.i1260:                             ; preds = %.lr.ph.i.i1258, %.noexc26.i1281
  %i.xs = phi ptr [ %i.zg, %.noexc26.i1281 ], [ %i.wo, %.lr.ph.i.i1258 ] ; 6 uses
  %.sroa.511.0.copyload.i.i1261 = load i64, ptr %.sroa.511.0..sroa_idx.i.i1259, align 8, !noalias !4762
  %i.xt = inttoptr i64 %.sroa.511.0.copyload.i.i1261 to ptr ; 14 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xt) ]
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 60
  %i.xv = load i8, ptr %i.xu, align 4, !range !47, !noalias !4763, !noundef !23
  %i.xw = trunc nuw i8 %i.xv to i1
  br i1 %i.xw, label %bb.ha, label %bb.gz, !prof !29

.split.us.i.i1321:                                ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4765
  br label %.invoke3.i.i.i1298

bb.gz:                                            ; preds = %.lr.ph.split.i.i1260
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xt, i64 56
  %i.xy = load i32, ptr %i.xx, align 8, !noalias !4763, !noundef !23
  br label %.noexc10.i.i.i1262

bb.ha:                                            ; preds = %.lr.ph.split.i.i1260
  %i.xz = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.xt)
          to label %.noexc10.i.i.i1262 unwind label %.loopexit.split.i.i1301, !noalias !4763, !inline_history !4707

.noexc10.i.i.i1262:                               ; preds = %bb.ha, %bb.gz
  %.sroa.0.0.i2.i.i.i.i1263 = phi i32 [ %i.xy, %bb.gz ], [ %i.xz, %bb.ha ] ; 3 uses
  %i.ya = load i64, ptr %i.xt, align 8, !range !41, !noalias !4763, !noundef !23
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  %i.yc = trunc nuw i64 %i.ya to i1
  %i.yd = load ptr, ptr %i.yb, align 8, !noalias !4763, !nonnull !23, !noundef !23 ; 2 uses
  br i1 %i.yc, label %bb.hb, label %bb.hd

bb.hb:                                            ; preds = %.noexc10.i.i.i1262
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %i.yf = load i64, ptr %i.ye, align 8, !noalias !4763, !noundef !23 ; 2 uses
  %i.yg = icmp ugt i64 %i.yf, 4294967295
  %i.yh = shl nuw i64 %i.yf, 32
  %.sroa.09.0.insert.insert.i.i5.i.i.i.i1294 = select i1 %i.yg, i64 513, i64 %i.yh ; 2 uses
  %i.yi = trunc i64 %.sroa.09.0.insert.insert.i.i5.i.i.i.i1294 to i1
  br i1 %i.yi, label %bb.hc, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i6.i.i.i.i1295, !prof !29

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4765
  br label %.invoke3.i.i.i1298

.invoke3.i.i.i1298:                               ; preds = %bb.hc, %.split.us.i.i1321
end_hunk_4
begin_hunk_5_@_RNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors:bb.a
  %i.zh = getelementptr i8, ptr %.sroa.0.0.i1.i496, i64 16
  %.val.i1277 = load ptr, ptr %i.zh, align 8, !noalias !4761, !noundef !23 ; 3 uses
  %.not.i30.i1278 = icmp eq ptr %.val.i1277, null
  br i1 %.not.i30.i1278, label %bb.hz, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.zi = getelementptr inbounds nuw i8, ptr %.val.i1277, i64 48 ; 2 uses
  %i.zj = load i32, ptr %i.zi, align 4, !noalias !4761, !noundef !23 ; 2 uses
  %i.zk = icmp eq i32 %i.zj, -1
  br i1 %i.zk, label %.noexc31.i1279.invoke, label %bb.hy, !prof !29

.noexc31.i1279.invoke:                            ; preds = %bb.gn, %bb.ho
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #58
          to label %.noexc31.i1279.cont unwind label %bb.gq, !inline_history !4707

.noexc31.i1279.cont:                              ; preds = %.noexc31.i1279.invoke
  unreachable

bb.hp:                                            ; preds = %bb.hr
  %i.zl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %.sroa.9.069.i1270, i64 48 ; 2 uses
  %i.zn = load i32, ptr %i.zm, align 4, !noalias !4761, !noundef !23
  %i.zo = add i32 %i.zn, -1                       ; 2 uses
  store i32 %i.zo, ptr %i.zm, align 4, !noalias !4761
  %i.zp = icmp eq i32 %i.zo, 0
  br i1 %i.zp, label %bb.hq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i

bb.hq:                                            ; preds = %bb.hp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.9.069.i1270) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i unwind label %bb.hx, !noalias !4761, !inline_history !4707

bb.hr:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4761
  store ptr %.sroa.044.066.i1271, ptr %i.f, align 8, !noalias !4761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4761
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.069.i1270) ]
  store ptr %.sroa.9.069.i1270, ptr %i.e, align 8, !noalias !4761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4761
  invoke fastcc void @_RNvNtCslLuZgPVt6hg_3ide9move_item13replace_nodes(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.d, i32 noundef %4, i32 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.hs unwind label %bb.hp, !noalias !4761, !inline_history !4707

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !4766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4761
  %i.zq = getelementptr inbounds nuw i8, ptr %.sroa.9.069.i1270, i64 48 ; 2 uses
  %i.zr = load i32, ptr %i.zq, align 4, !noalias !4761, !noundef !23
  %i.zs = add i32 %i.zr, -1                       ; 2 uses
  store i32 %i.zs, ptr %i.zq, align 4, !noalias !4761
  %i.zt = icmp eq i32 %i.zs, 0
  br i1 %i.zt, label %bb.ht, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit34.i

bb.ht:                                            ; preds = %bb.hs
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.9.069.i1270) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit34.i unwind label %bb.hv, !noalias !4761, !inline_history !4707

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.hv, %bb.hq, %bb.hp
  %.pn.i1276 = phi { ptr, i32 } [ %i.zy, %bb.hv ], [ %i.zl, %bb.hq ], [ %i.zl, %bb.hp ] ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.sroa.044.066.i1271, i64 48 ; 2 uses
  %i.zv = load i32, ptr %i.zu, align 4, !noalias !4761, !noundef !23
  %i.zw = add i32 %i.zv, -1                       ; 2 uses
  store i32 %i.zw, ptr %i.zu, align 4, !noalias !4761
  %i.zx = icmp eq i32 %i.zw, 0
  br i1 %i.zx, label %bb.hu, label %.body1328

bb.hu:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.044.066.i1271) #55
          to label %.body1328 unwind label %bb.hx, !noalias !4761, !inline_history !4707

bb.hv:                                            ; preds = %bb.ht
  %i.zy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit34.i: ; preds = %bb.ht, %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4761
  %i.zz = getelementptr inbounds nuw i8, ptr %.sroa.044.066.i1271, i64 48 ; 2 uses
  %i.aaa = load i32, ptr %i.zz, align 4, !noalias !4761, !noundef !23
  %i.aab = add i32 %i.aaa, -1                     ; 2 uses
  store i32 %i.aab, ptr %i.zz, align 4, !noalias !4761
  %i.aac = icmp eq i32 %i.aab, 0
  br i1 %i.aac, label %bb.hw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit38.i

bb.hw:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit34.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.044.066.i1271) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit38.i unwind label %bb.gq, !inline_history !4707

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit38.i: ; preds = %bb.hw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit34.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4761
  br label %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundINtBY_11AstChildrenBS_EEB4_.exit

bb.hx:                                            ; preds = %bb.ic, %bb.ib, %bb.hu, %bb.hq, %.body.i1252
  %i.aad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !4761, !inline_history !4707
  unreachable

bb.hy:                                            ; preds = %bb.ho
  %i.aae = add nuw i32 %i.zj, 1
  store i32 %i.aae, ptr %i.zi, align 4, !noalias !4761
  invoke fastcc void @_RNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, i64 noundef 0, ptr noundef nonnull %.val.i1277, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5)
          to label %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundINtBY_11AstChildrenBS_EEB4_.exit unwind label %bb.gq, !inline_history !4707

bb.hz:                                            ; preds = %bb.hn
  store i64 -1, ptr %0, align 8, !alias.scope !4760
  br label %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundINtBY_11AstChildrenBS_EEB4_.exit

bb.ia:                                            ; preds = %bb.hl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.069.i1270) ]
  %i.aaf = getelementptr inbounds nuw i8, ptr %.sroa.9.069.i1270, i64 48 ; 2 uses
  %i.aag = load i32, ptr %i.aaf, align 4, !noalias !4761, !noundef !23
  %i.aah = add i32 %i.aag, -1                     ; 2 uses
  store i32 %i.aah, ptr %i.aaf, align 4, !noalias !4761
  %i.aai = icmp eq i32 %i.aah, 0
  br i1 %i.aai, label %bb.ib, label %.noexc39.i1274

bb.ib:                                            ; preds = %bb.ia
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.9.069.i1270) #55
          to label %.noexc39.i1274 unwind label %bb.hx, !noalias !4761, !inline_history !4707

.noexc39.i1274:                                   ; preds = %bb.ib, %bb.ia
  %i.aaj = getelementptr inbounds nuw i8, ptr %.sroa.044.066.i1271, i64 48 ; 2 uses
  %i.aak = load i32, ptr %i.aaj, align 4, !noalias !4761, !noundef !23
  %i.aal = add i32 %i.aak, -1                     ; 2 uses
  store i32 %i.aal, ptr %i.aaj, align 4, !noalias !4761
  %i.aam = icmp eq i32 %i.aal, 0
  br i1 %i.aam, label %bb.ic, label %.body1328

bb.ic:                                            ; preds = %.noexc39.i1274
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.044.066.i1271) #55
          to label %.body1328 unwind label %bb.hx, !noalias !4761, !inline_history !4707

_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundINtBY_11AstChildrenBS_EEB4_.exit: ; preds = %bb.hz, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit38.i, %bb.hy
  %i.aan = load i32, ptr %i.db, align 4, !noundef !23
  %i.aao = add i32 %i.aan, -1                     ; 2 uses
  store i32 %i.aao, ptr %i.db, align 4
  %i.aap = icmp eq i32 %i.aao, 0
  br i1 %i.aap, label %.invoke1183, label %_RNvNtCslLuZgPVt6hg_3ide9move_item17move_in_direction.exit

bb.id:                                            ; preds = %bb.gp
  %i.aaq = invoke noundef ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode12next_sibling(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au)
          to label %.noexc55 unwind label %bb.ab, !inline_history !4647 ; 2 uses

.noexc55:                                         ; preds = %bb.id
  %.not22.i = icmp eq ptr %i.aaq, null
  br i1 %.not22.i, label %bb.if, label %bb.ig

bb.ie:                                            ; preds = %bb.gp
  %i.aar = invoke noundef ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode12prev_sibling(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au)
          to label %.noexc56 unwind label %bb.ab, !inline_history !4647 ; 2 uses

.noexc56:                                         ; preds = %bb.ie
  %.not21.i = icmp eq ptr %i.aar, null
  br i1 %.not21.i, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %.noexc56, %.noexc55
  store i64 -1, ptr %0, align 8, !alias.scope !4730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !4731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !4731
  br label %_RNvNtCslLuZgPVt6hg_3ide9move_item17move_in_direction.exit

bb.ig:                                            ; preds = %.noexc56, %.noexc55
  %.sroa.011.0.i = phi ptr [ %i.aar, %.noexc56 ], [ %i.aaq, %.noexc55 ] ; 5 uses
  store ptr %.sroa.011.0.i, ptr %i.ao, align 8, !noalias !4731
  invoke fastcc void @_RNvNtCslLuZgPVt6hg_3ide9move_item13replace_nodes(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ap, i32 noundef %4, i32 noundef %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao)
          to label %bb.ij unwind label %bb.ih, !noalias !4730, !inline_history !4647

bb.ih:                                            ; preds = %bb.ig
  %i.aas = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i, i64 48 ; 2 uses
  %i.aau = load i32, ptr %i.aat, align 4, !noalias !4730, !noundef !23
  %i.aav = add i32 %i.aau, -1                     ; 2 uses
  store i32 %i.aav, ptr %i.aat, align 4, !noalias !4730
  %i.aaw = icmp eq i32 %i.aav, 0
  br i1 %i.aaw, label %bb.ii, label %.body43

bb.ii:                                            ; preds = %bb.ih
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.011.0.i) #55
          to label %.body43 unwind label %bb.bw

bb.ij:                                            ; preds = %bb.ig
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 32, i1 false), !noalias !4767
  %i.aax = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i, i64 48 ; 2 uses
  %i.aay = load i32, ptr %i.aax, align 4, !noundef !23
  %i.aaz = add i32 %i.aay, -1                     ; 2 uses
  store i32 %i.aaz, ptr %i.aax, align 4
  %i.aba = icmp eq i32 %i.aaz, 0
  br i1 %i.aba, label %bb.ik, label %.noexc57

bb.ik:                                            ; preds = %bb.ij
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.011.0.i) #55
          to label %.noexc57 unwind label %bb.ab

.noexc57:                                         ; preds = %bb.ij, %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !4731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !4731
  br label %_RNvNtCslLuZgPVt6hg_3ide9move_item17move_in_direction.exit

_RNvNtCslLuZgPVt6hg_3ide9move_item17move_in_direction.exit: ; preds = %.invoke1183, %.noexc57, %bb.if, %.noexc42, %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamINtBY_11AstChildrenBS_EEB4_.exit, %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgINtBY_11AstChildrenBS_EEB4_.exit, %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantINtBY_11AstChildrenBS_EEB4_.exit, %_RINvNtCslLuZgPVt6hg_3ide9move_item20swap_sibling_in_listNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundINtBY_11AstChildrenBS_EEB4_.exit
  %i.abb = load i32, ptr %i.db, align 4, !noundef !23
  %i.abc = add i32 %i.abb, -1                     ; 2 uses
  store i32 %i.abc, ptr %i.db, align 4
  %i.abd = icmp eq i32 %i.abc, 0
  br i1 %i.abd, label %bb.il, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit59

bb.il:                                            ; preds = %_RNvNtCslLuZgPVt6hg_3ide9move_item17move_in_direction.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i1.i496) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit59 unwind label %bb.m

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit59: ; preds = %_RNvNtCslLuZgPVt6hg_3ide9move_item17move_in_direction.exit, %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.abe = load i32, ptr %i.bg, align 4, !noundef !23
  %i.abf = add i32 %i.abe, -1                     ; 2 uses
  store i32 %i.abf, ptr %i.bg, align 4
  %i.abg = icmp eq i32 %i.abf, 0
  br i1 %i.abg, label %bb.im, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit29

bb.im:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit59
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0) #55
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit29

bb.in:                                            ; preds = %bb.ip, %bb.ac, %bb.l, %bb.g, %.body
  %i.abh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.io:                                            ; preds = %bb.o
  %i.abi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abj = load i32, ptr %i.bg, align 4, !noundef !23
  %i.abk = add i32 %i.abj, -1                     ; 2 uses
  store i32 %i.abk, ptr %i.bg, align 4
  %i.abl = icmp eq i32 %i.abk, 0
  br i1 %i.abl, label %bb.ip, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit36

bb.ip:                                            ; preds = %bb.io
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit36 unwind label %bb.in

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit36, %bb.l, %bb.f, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.f ], [ %i.bj, %bb.g ], [ %.pn, %bb.l ], [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit36 ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCslLuZgPVt6hg_3ide9move_item9move_item(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !4779 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = alloca [160 x i8], align 8               ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [272 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @53, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) @53, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) @53, i64 32, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) @53, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) @53, i64 32, i1 false)
  store ptr %1, ptr %i.h, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %1, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr @7, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %i.d, i64 160, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @53, i64 32, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @53, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i32, ptr %i.n, align 4, !noundef !23
  %i.p = invoke noundef nonnull ptr @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl19parse_guess_edition(ptr noundef nonnull align 8 %i.m, i32 noundef %i.o)
          to label %bb.c unwind label %bb.b       ; 6 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECslLuZgPVt6hg_3ide.exit: ; preds = %.body, %bb.g, %bb.b
  %.pn = phi { ptr, i32 } [ %i.q, %bb.b ], [ %eh.lpad-body, %bb.g ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8Xq8PKFYOms_3hir9semantics9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(272) %i.h) #52
          to label %bb.ac unwind label %bb.ab

bb.b:                                             ; preds = %.invoke, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECslLuZgPVt6hg_3ide.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.p, ptr %i.g, align 8
  %i.r = load i32, ptr %2, align 4, !noundef !23  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = load i32, ptr %i.s, align 4, !noundef !23 ; 3 uses
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = invoke { i64, ptr } @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode16covering_element(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, i32 noundef %i.r, i32 noundef %i.t)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode15token_at_offset(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, i32 noundef %i.r)
          to label %bb.j unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4.sink.split.i.i, %bb.p, %bb.j, %bb.i, %bb.e, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.u, %bb.v, %.body.thread.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.ba, %bb.u ], [ %i.ba, %bb.v ], [ %eh.lpad-body13.i.i, %.body.thread.i.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !noundef !23
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.x, align 4
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECslLuZgPVt6hg_3ide.exit

bb.g:                                             ; preds = %.body
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.p) #55
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECslLuZgPVt6hg_3ide.exit unwind label %bb.ab

bb.h:                                             ; preds = %bb.d
  %i.ab = extractvalue { i64, ptr } %i.v, 0
  %i.ac = extractvalue { i64, ptr } %i.v, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  br label %bb.i

bb.i:                                             ; preds = %bb.y, %bb.h
  %.sroa.4.1 = phi ptr [ %i.ac, %bb.h ], [ %i.bn, %bb.y ]
  %.sroa.0.1 = phi i64 [ %i.ab, %bb.h ], [ 1, %bb.y ]
  invoke fastcc void @_RNvNtCslLuZgPVt6hg_3ide9move_item14find_ancestors(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %0, i64 noundef %.sroa.0.1, ptr noundef nonnull %.sroa.4.1, i1 noundef zeroext %3, i32 noundef %i.r, i32 noundef %i.t)
          to label %bb.aa unwind label %bb.f

bb.j:                                             ; preds = %bb.e
  invoke void @_RINvMs2_NtCs9GitHPCrz2Q_5rowan13utility_typesINtB6_13TokenAtOffsetNtNtB8_6cursor11SyntaxTokenE3mapNvYINtNtB8_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtCshzWfHUSfYae_4core7convert4FromB12_E4fromB1B_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %bb.k unwind label %bb.f

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !alias.scope !4781
  %i.ad = invoke noundef ptr @_RNvXs3_NtCs9GitHPCrz2Q_5rowan13utility_typesINtB5_13TokenAtOffsetINtNtB7_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc.i.i unwind label %.body.thread14.i.i, !noalias !4780 ; 5 uses

.body.thread14.i.i:                               ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.noexc.i.i:                                       ; preds = %bb.k
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4782
  store ptr %i.ad, ptr %i.a, align 8, !noalias !4782
  %i.af = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc.i.i.i.i unwind label %bb.m, !noalias !4780

.noexc.i.i.i.i:                                   ; preds = %bb.l
  %switch.tableidx = add nsw i16 %i.af, -150      ; 2 uses
  %i.ag = icmp ult i16 %switch.tableidx, 8
  br i1 %i.ag, label %switch.lookup, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !noalias !4780, !noundef !23
  %i.ak = add i32 %i.aj, -1                       ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 4, !noalias !4780
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.n, label %.body.thread.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ad) #55
          to label %.body.thread.i.i unwind label %bb.o, !noalias !4780

bb.o:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !4780
  unreachable

end_hunk_5
