Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.13?download=true
inline.NumInlined: 2499
inline.NumDeleted: 1027
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvNtCslLuZgPVt6hg_3ide10join_lines10join_lines:bb.a
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit: ; preds = %bb.b
  %i.o = add nuw i32 %i.m, 1
  store i32 %i.o, ptr %i.l, align 4, !noalias !509
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan11syntax_textNtB2_10SyntaxText3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i, ptr noundef nonnull %.val42)
  invoke void @_RINvMNtCs9GitHPCrz2Q_5rowan11syntax_textNtB3_10SyntaxText5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFromNtNtCsuAhG64lL82_9text_size4size8TextSizeEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, i32 noundef %3)
          to label %bb.g unwind label %bb.e

bb.d:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit55
  %.sroa.7.0 = phi i32 [ %i.ap, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit55 ], [ %4, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi i32 [ %i.aj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit55 ], [ %3, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.520.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 0, ptr %i.p, align 8
  %i.q = invoke { i64, ptr } @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode16covering_element(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i32 noundef %.sroa.0.0, i32 noundef %.sroa.7.0)
          to label %bb.u unwind label %.thread79  ; 2 uses

bb.e:                                             ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val47 = load ptr, ptr %i.i, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val47, i64 48 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !noundef !10
  %i.u = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.u, ptr %i.s, align 4
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val47) #41
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit unwind label %bb.ap

bb.g:                                             ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit
  %.val46 = load ptr, ptr %i.i, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val46, i64 48 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !noundef !10
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.w, align 4
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit51

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val46) #41
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit51 unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.q, %bb.m, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit51
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val45 = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val45, i64 48 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !noundef !10
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val45) #41
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit unwind label %bb.ap

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit51: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.af = invoke { i32, i32 } @_RNvMNtCs9GitHPCrz2Q_5rowan11syntax_textNtB2_10SyntaxText9find_char(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, i32 noundef 10)
          to label %bb.k unwind label %bb.i       ; 2 uses

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit51
  %i.ag = extractvalue { i32, i32 } %i.af, 0
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = extractvalue { i32, i32 } %i.af, 1
  %i.aj = add i32 %i.ai, %3                       ; 3 uses
  %.not = icmp eq i32 %i.aj, -1
  br i1 %.not, label %bb.q, label %bb.r, !prof !14

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.517.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 0, ptr %i.ak, align 8
  invoke void @_RNvMs2_NtCs6oosyzwIepl_6ide_db9text_editNtB5_15TextEditBuilder6finish(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h)
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.val44 = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val44, i64 48 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !noundef !10
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr %i.al, align 4
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.o, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit54

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val44) #41
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit54

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit54: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit65, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit54
  ret void

bb.q:                                             ; preds = %bb.l
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #44
          to label %bb.t unwind label %bb.i

bb.r:                                             ; preds = %bb.l
  %i.ap = add nuw i32 %i.aj, 1
  %.val43 = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val43, i64 48 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !noundef !10
  %i.as = add i32 %i.ar, -1                       ; 2 uses
  store i32 %i.as, ptr %i.aq, align 4
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.s, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit55

bb.s:                                             ; preds = %bb.r
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val43) #41
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit55

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit55: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.d

bb.t:                                             ; preds = %bb.q
  unreachable

.thread79:                                        ; preds = %bb.at, %bb.ak, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.u:                                             ; preds = %bb.d
  %i.au = extractvalue { i64, ptr } %i.q, 0
  %i.av = extractvalue { i64, ptr } %i.q, 1       ; 11 uses
  %i.aw = trunc nuw i64 %i.au to i1
  br i1 %i.aw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.av, ptr %i.d, align 8
  invoke fastcc void @_RNvNtCslLuZgPVt6hg_3ide10join_lines15remove_newlines(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, i32 noundef %.sroa.0.0, i32 noundef %.sroa.7.0)
          to label %bb.as unwind label %bb.aq

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 6 uses
  %i.ay = load i32, ptr %i.ax, align 4, !noalias !510, !noundef !10 ; 2 uses
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %bb.y, label %bb.x, !prof !14

bb.x:                                             ; preds = %bb.w
  %i.ba = add nuw i32 %i.ay, 1
  store i32 %i.ba, ptr %i.ax, align 4, !noalias !510
  invoke void @_RNvMso_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokens3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.av)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit unwind label %bb.aa

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #44
          to label %.noexc57 unwind label %bb.aa

.noexc57:                                         ; preds = %bb.y
  unreachable

.body:                                            ; preds = %bb.ag, %bb.ah, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i.i, %bb.aa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit ], [ %i.be, %bb.aa ], [ %i.bw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i.i ], [ %i.bw, %bb.ah ], [ %i.bw, %bb.ag ] ; 2 uses
  %i.bb = load i32, ptr %i.ax, align 4, !noundef !10
  %i.bc = add i32 %i.bb, -1                       ; 2 uses
  store i32 %i.bc, ptr %i.ax, align 4
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.z, label %.thread

bb.z:                                             ; preds = %.body
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.av) #41
          to label %.thread unwind label %bb.ap

bb.aa:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.sink.split.i.i7.i.i.i.i, %bb.y, %bb.x
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit: ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.52.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit68, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !511
  invoke void @_RNvXsp_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokensNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.ab
  %i.bf = load i64, ptr %i.a, align 8, !range !20, !noalias !511, !noundef !10 ; 2 uses
  %.not5.i = icmp eq i64 %i.bf, 2
  br i1 %.not5.i, label %.loopexit93, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc59, %.noexc61
  %i.bg = phi i64 [ %i.bq, %.noexc61 ], [ %i.bf, %.noexc59 ]
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.52.0..sroa_idx.i.a, align 8, !noalias !511 ; 10 uses
  %i.bh = trunc nuw i64 %i.bg to i1
  br i1 %i.bh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 48 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !noalias !512, !noundef !10
  %i.bk = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 4, !noalias !512
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB14_6cursor10SyntaxNodeNtB1S_11SyntaxTokenEIB10_INtNtB14_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2J_11SyntaxTokenB35_EEuINtNtNtBa_3ops12control_flow11ControlFlowB3W_ENvYB2B_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2B_B3W_QNCNvNtCslLuZgPVt6hg_3ide10join_lines10join_lines0E0E0B6R_.exit.sink.split.i.i, label %.noexc60

bb.ad:                                            ; preds = %.lr.ph.i
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !511
  switch i64 %.sroa.52.0.copyload.i, label %bb.af [
    i64 2, label %.noexc60
    i64 0, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 48 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !noalias !513, !noundef !10
  %i.bo = add i32 %i.bn, -1                       ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 4, !noalias !513
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB14_6cursor10SyntaxNodeNtB1S_11SyntaxTokenEIB10_INtNtB14_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2J_11SyntaxTokenB35_EEuINtNtNtBa_3ops12control_flow11ControlFlowB3W_ENvYB2B_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2B_B3W_QNCNvNtCslLuZgPVt6hg_3ide10join_lines10join_lines0E0E0B6R_.exit.sink.split.i.i, label %.noexc60

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB14_6cursor10SyntaxNodeNtB1S_11SyntaxTokenEIB10_INtNtB14_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2J_11SyntaxTokenB35_EEuINtNtNtBa_3ops12control_flow11ControlFlowB3W_ENvYB2B_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2B_B3W_QNCNvNtCslLuZgPVt6hg_3ide10join_lines10join_lines0E0E0B6R_.exit.sink.split.i.i: ; preds = %bb.ae, %bb.ac
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i) #41
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB14_6cursor10SyntaxNodeNtB1S_11SyntaxTokenEIB10_INtNtB14_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2J_11SyntaxTokenB35_EEuINtNtNtBa_3ops12control_flow11ControlFlowB3W_ENvYB2B_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2B_B3W_QNCNvNtCslLuZgPVt6hg_3ide10join_lines10join_lines0E0E0B6R_.exit.sink.split.i.i, %bb.ae, %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !511
  invoke void @_RNvXsp_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokensNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc61:                                         ; preds = %.noexc60
  %i.bq = load i64, ptr %i.a, align 8, !range !20, !noalias !511, !noundef !10 ; 2 uses
  %.not.i = icmp eq i64 %i.bq, 2
  br i1 %.not.i, label %.loopexit93, label %.lr.ph.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.al, %bb.am
  %.pn = phi { ptr, i32 } [ %i.cp, %bb.al ], [ %i.cp, %bb.am ], [ %lpad.loopexit.split-lp113, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtCslLuZgPVt6hg_3ide10join_lines10join_lines0EEB6M_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #43
          to label %.body unwind label %bb.ap

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc60, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB14_6cursor10SyntaxNodeNtB1S_11SyntaxTokenEIB10_INtNtB14_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2J_11SyntaxTokenB35_EEuINtNtNtBa_3ops12control_flow11ControlFlowB3W_ENvYB2B_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2B_B3W_QNCNvNtCslLuZgPVt6hg_3ide10join_lines10join_lines0E0E0B6R_.exit.sink.split.i.i, %bb.ao, %bb.ab
  %lpad.loopexit.split-lp113 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit

bb.af:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.6.0.copyload.i, ptr %i.e, align 8
  invoke fastcc void @_RNvNtCslLuZgPVt6hg_3ide10join_lines15remove_newlines(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i32 noundef %.sroa.0.0, i32 noundef %.sroa.7.0)
          to label %bb.an unwind label %bb.al

.loopexit93:                                      ; preds = %.noexc59, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !511
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  call void @llvm.experimental.noalias.scope.decl(metadata !516)
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.br, align 8, !alias.scope !518, !nonnull !10, !noundef !10 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 48 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !noalias !518, !noundef !10
  %i.bu = add i32 %i.bt, -1                       ; 2 uses
  store i32 %i.bu, ptr %i.bs, align 4, !noalias !518
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i: ; preds = %.loopexit93
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i.i.i.i) #41
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.i.i.i.i unwind label %bb.ag, !noalias !518

bb.ag:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.bx, align 8, !range !20, !alias.scope !518, !noundef !10
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val5.i.i.i.i = load ptr, ptr %i.by, align 8, !alias.scope !518 ; 3 uses
  %i.bz = icmp eq i64 %.val4.i.i.i.i, 2
  br i1 %i.bz, label %.body, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i) ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 48 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !noalias !519, !noundef !10
  %i.cc = add i32 %i.cb, -1                       ; 2 uses
  store i32 %i.cc, ptr %i.ca, align 4, !noalias !519
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i.i, label %.body

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.ah
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5.i.i.i.i) #41
          to label %.body unwind label %bb.aj, !noalias !518

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i, %.loopexit93
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val2.i.i.i.i = load i64, ptr %i.ce, align 8, !range !20, !alias.scope !518, !noundef !10
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val3.i.i.i.i = load ptr, ptr %i.cf, align 8, !alias.scope !518 ; 3 uses
  %i.cg = icmp eq i64 %.val2.i.i.i.i, 2
  br i1 %i.cg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtCslLuZgPVt6hg_3ide10join_lines10join_lines0EEB6M_.exit, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i.i.i) ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 48 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !noalias !520, !noundef !10
  %i.cj = add i32 %i.ci, -1                       ; 2 uses
  store i32 %i.cj, ptr %i.ch, align 4, !noalias !520
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.sink.split.i.i7.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtCslLuZgPVt6hg_3ide10join_lines10join_lines0EEB6M_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.sink.split.i.i7.i.i.i.i: ; preds = %bb.ai
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i.i.i.i) #41
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtCslLuZgPVt6hg_3ide10join_lines10join_lines0EEB6M_.exit unwind label %bb.aa

bb.aj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !518
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtCslLuZgPVt6hg_3ide10join_lines10join_lines0EEB6M_.exit: ; preds = %bb.ai, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.sink.split.i.i7.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cm = load i32, ptr %i.ax, align 4, !noundef !10
  %i.cn = add i32 %i.cm, -1                       ; 2 uses
  store i32 %i.cn, ptr %i.ax, align 4
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.ak, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit65

bb.ak:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtCslLuZgPVt6hg_3ide10join_lines10join_lines0EEB6M_.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.av) #41
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit65 unwind label %.thread79

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit65: ; preds = %bb.ak, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtCslLuZgPVt6hg_3ide10join_lines10join_lines0EEB6M_.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @_RNvMs2_NtCs6oosyzwIepl_6ide_db9text_editNtB5_15TextEditBuilder6finish(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

bb.al:                                            ; preds = %bb.af
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 48 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !noundef !10
  %i.cs = add i32 %i.cr, -1                       ; 2 uses
  store i32 %i.cs, ptr %i.cq, align 4
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.am, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i) #41
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit unwind label %bb.ap

bb.an:                                            ; preds = %bb.af
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 48 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !noundef !10
  %i.cw = add i32 %i.cv, -1                       ; 2 uses
  store i32 %i.cw, ptr %i.cu, align 4
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.ao, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit68

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i) #41
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit68: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ab

bb.ap:                                            ; preds = %bb.ar, %bb.am, %bb.z, %bb.j, %bb.f, %.thread, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.aq:                                            ; preds = %bb.v
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !noundef !10
  %i.dc = add i32 %i.db, -1                       ; 2 uses
  store i32 %i.dc, ptr %i.da, align 4
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.ar, label %.thread

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.av) #41
          to label %.thread unwind label %bb.ap

bb.as:                                            ; preds = %bb.v
  %i.de = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !noundef !10
  %i.dg = add i32 %i.df, -1                       ; 2 uses
  store i32 %i.dg, ptr %i.de, align 4
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.at, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit72

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.av) #41
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit72 unwind label %.thread79

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit72: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit65

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit: ; preds = %bb.i, %bb.j, %bb.e, %bb.f, %.thread
  %.pn34.pn = phi { ptr, i32 } [ %.pn3477, %.thread ], [ %i.aa, %bb.i ], [ %i.r, %bb.e ], [ %i.r, %bb.f ], [ %i.aa, %bb.j ]
  resume { ptr, i32 } %.pn34.pn

.thread:                                          ; preds = %bb.aq, %bb.ar, %.body, %bb.z, %.thread79
  %.pn3477 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread79 ], [ %.pn.pn, %.body ], [ %.pn.pn, %bb.z ], [ %i.cz, %bb.ar ], [ %i.cz, %bb.aq ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db9text_edit15TextEditBuilderECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #43
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECslLuZgPVt6hg_3ide.exit unwind label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCslLuZgPVt6hg_3ide10join_lines15remove_newlines(ptr noalias nofree noundef nonnull readonly captures(none) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !594 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [1 x i8], align 1                 ; 3 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [1 x i8], align 1                 ; 3 uses
  %i.s = alloca [1 x i8], align 1                 ; 3 uses
  %i.t = alloca [1 x i8], align 1                 ; 3 uses
  %i.u = alloca [8 x i8], align 8                 ; 6 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [8 x i8], align 8                 ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
end_hunk_0
