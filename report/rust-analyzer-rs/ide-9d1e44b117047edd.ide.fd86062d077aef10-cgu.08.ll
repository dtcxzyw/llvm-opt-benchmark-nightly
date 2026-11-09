Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.08?download=true
inline.NumInlined: 2573
inline.NumDeleted: 1226
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs0_NtCslLuZgPVt6hg_3ide12static_indexNtB5_11StaticIndex8add_file:bb.a
bb.z:                                             ; preds = %bb.y
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCslLuZgPVt6hg_3ide14folding_ranges4FoldEEB1c_.exit: ; preds = %bb.x
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCslLuZgPVt6hg_3ide14folding_ranges4FoldENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
  br label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit97, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCslLuZgPVt6hg_3ide14folding_ranges4FoldEEB1c_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  ret void

bb.ab:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.val60 = load ptr, ptr %i.v, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val60, i64 48 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !noalias !2401, !noundef !9 ; 2 uses
  %i.cx = icmp eq i32 %i.cw, -1
  br i1 %i.cx, label %bb.ad, label %bb.ac, !prof !16

bb.ac:                                            ; preds = %bb.ab
  %i.cy = add nuw i32 %i.cw, 1
  store i32 %i.cy, ptr %i.cv, align 4, !noalias !2401
  invoke void @_RNvMso_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokens3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull %.val60)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit unwind label %bb.q

bb.ad:                                            ; preds = %bb.ab
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #35
          to label %.noexc70 unwind label %bb.q

.noexc70:                                         ; preds = %bb.ad
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit: ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.da = getelementptr inbounds nuw i8, ptr %i.r, i64 93
  store i8 2, ptr %i.da, align 1
  store <4 x i8> <i8 1, i8 1, i8 1, i8 0>, ptr %i.cz, align 8
  store i64 0, ptr %i.r, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 1, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 5, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 1, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 5, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i64 0, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.r, i64 92
  store i8 1, ptr %i.dg, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store ptr @27, ptr %i.dh, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store i64 66394, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.di = load i32, ptr %i.ab, align 4, !noundef !9 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i32 %i.di, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  store i64 0, ptr %i.dk, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dm = load ptr, ptr %i.ac, align 8, !nonnull !9, !align !13, !noundef !9
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.dl, ptr %i.p, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.dm, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.dn, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.w, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.ab, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.r, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.u, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr %i.t, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store ptr %i.aa, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store ptr %i.dk, ptr %i.dw, align 8
  %i.dx = invoke { i32, i32 } @_RINvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB6_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE18file_to_module_defNtCs4sl5YdnrCxp_3vfs6FileIdECslLuZgPVt6hg_3ide(ptr noundef nonnull align 8 %i.w, i32 noundef %i.di)
          to label %bb.ae unwind label %.thread133 ; 2 uses

.thread133:                                       ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit, %bb.an, %bb.ah, %bb.aj, %bb.am, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.sink.split.i.i7.i.i.i.i
  %.sroa.027.1 = phi i1 [ true, %bb.aj ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.sink.split.i.i7.i.i.i.i ], [ true, %bb.an ], [ true, %bb.am ], [ true, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit ], [ true, %bb.ah ]
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ae:                                            ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit
  %i.dz = extractvalue { i32, i32 } %i.dx, 0      ; 2 uses
  %i.ea = extractvalue { i32, i32 } %i.dx, 1
  %.not33 = icmp eq i32 %i.dz, 0
  br i1 %.not33, label %bb.ap, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eb = load ptr, ptr %i.v, align 8, !nonnull !9, !noundef !9 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 60
  %i.ed = load i8, ptr %i.ec, align 4, !range !14, !noundef !9
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.ah, label %bb.ag, !prof !16

bb.ag:                                            ; preds = %bb.af
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  %i.eg = load i32, ptr %i.ef, align 8, !noundef !9
  br label %.noexc71

bb.ah:                                            ; preds = %bb.af
  %i.eh = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.eb)
          to label %.noexc71 unwind label %.thread133

.noexc71:                                         ; preds = %bb.ah, %bb.ag
  %.sroa.0.0.i = phi i32 [ %i.eg, %bb.ag ], [ %i.eh, %bb.ah ] ; 4 uses
  %i.ei = load i64, ptr %i.eb, align 8, !range !17, !noundef !9
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ek = trunc nuw i64 %i.ei to i1
  %i.el = load ptr, ptr %i.ej, align 8, !nonnull !9, !noundef !9 ; 2 uses
  br i1 %i.ek, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.noexc71
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i64, ptr %i.em, align 8, !noundef !9 ; 2 uses
  %i.eo = icmp ugt i64 %i.en, 4294967295
  %i.ep = shl nuw i64 %i.en, 32
  %.sroa.09.0.insert.insert.i.i = select i1 %i.eo, i64 513, i64 %i.ep ; 2 uses
  %i.eq = trunc i64 %.sroa.09.0.insert.insert.i.i to i1
  br i1 %i.eq, label %bb.aj, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i, !prof !16

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 2, ptr %i.c, align 1
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @425) #39
          to label %.noexc72 unwind label %.thread133

.noexc72:                                         ; preds = %bb.aj
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i: ; preds = %bb.ai
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  br label %bb.al

bb.ak:                                            ; preds = %.noexc71
  %i.er = load i32, ptr %i.el, align 8, !noundef !9
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %.sroa.02.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i ], [ %i.er, %bb.ak ]
  %i.es = add i32 %.sroa.02.0.i, %.sroa.0.0.i     ; 3 uses
  %.not.i = icmp ugt i32 %.sroa.0.0.i, %i.es
  br i1 %.not.i, label %bb.am, label %bb.an, !prof !16

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #39
          to label %.noexc73 unwind label %.thread133

.noexc73:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i8 3, ptr %i.o, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.dz, ptr %.sroa.418.0..sroa_idx, align 4
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %i.ea, ptr %.sroa.519.0..sroa_idx, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i32 %.sroa.0.0.i, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  store i32 %i.es, ptr %i.eu, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr %i.v, ptr %i.ev, align 8
  invoke fastcc void @_RNCNvMs0_NtCslLuZgPVt6hg_3ide12static_indexNtB7_11StaticIndex8add_files_0B9_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.p, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.o, i32 noundef %.sroa.0.0.i, i32 noundef %i.es, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v)
          to label %bb.ao unwind label %.thread133

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ae, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  %.sroa.52.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ez = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.fc = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.fd = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  br label %bb.aq

bb.aq:                                            ; preds = %.backedge, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2402
  invoke void @_RNvXsp_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokensNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %.noexc76 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc76:                                         ; preds = %bb.aq
  %i.fe = load i64, ptr %i.b, align 8, !range !15, !noalias !2402, !noundef !9 ; 2 uses
  %.not5.i = icmp eq i64 %i.fe, 2
  br i1 %.not5.i, label %.loopexit150, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc76, %.noexc78
  %i.ff = phi i64 [ %i.fp, %.noexc78 ], [ %i.fe, %.noexc76 ]
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i.a, align 8, !noalias !2402 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2402 ; 10 uses
  %i.fg = trunc nuw i64 %i.ff to i1
  br i1 %i.fg, label %bb.ar, label %_RNCNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB7_10SyntaxNode23descendants_with_tokens0CslLuZgPVt6hg_3ide.exit.i.i

bb.ar:                                            ; preds = %.lr.ph.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 48 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !noalias !2403, !noundef !9
  %i.fj = add i32 %i.fi, -1                       ; 2 uses
  store i32 %i.fj, ptr %i.fh, align 4, !noalias !2403
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB14_6cursor10SyntaxNodeNtB1S_11SyntaxTokenEIB10_INtNtB14_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2J_11SyntaxTokenB35_EEuINtNtNtBa_3ops12control_flow11ControlFlowB3W_ENvYB2B_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2B_B3W_QNCNvMs0_NtCslLuZgPVt6hg_3ide12static_indexNtB6T_11StaticIndex8add_file0E0E0B6V_.exit.sink.split.i.i, label %.noexc77

_RNCNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB7_10SyntaxNode23descendants_with_tokens0CslLuZgPVt6hg_3ide.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i64 %.sroa.52.0.copyload.i, 2
  br i1 %.not.i.i, label %.noexc77, label %bb.as

bb.as:                                            ; preds = %_RNCNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB7_10SyntaxNode23descendants_with_tokens0CslLuZgPVt6hg_3ide.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %2 = trunc nuw i64 %.sroa.52.0.copyload.i to i1
  br i1 %2, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 48 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !noalias !2404, !noundef !9
  %i.fn = add i32 %i.fm, -1                       ; 2 uses
  store i32 %i.fn, ptr %i.fl, align 4, !noalias !2404
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB14_6cursor10SyntaxNodeNtB1S_11SyntaxTokenEIB10_INtNtB14_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2J_11SyntaxTokenB35_EEuINtNtNtBa_3ops12control_flow11ControlFlowB3W_ENvYB2B_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2B_B3W_QNCNvMs0_NtCslLuZgPVt6hg_3ide12static_indexNtB6T_11StaticIndex8add_file0E0E0B6V_.exit.sink.split.i.i, label %.noexc77

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB14_6cursor10SyntaxNodeNtB1S_11SyntaxTokenEIB10_INtNtB14_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2J_11SyntaxTokenB35_EEuINtNtNtBa_3ops12control_flow11ControlFlowB3W_ENvYB2B_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2B_B3W_QNCNvMs0_NtCslLuZgPVt6hg_3ide12static_indexNtB6T_11StaticIndex8add_file0E0E0B6V_.exit.sink.split.i.i: ; preds = %bb.at, %bb.ar
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i) #38
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc77:                                         ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB14_6cursor10SyntaxNodeNtB1S_11SyntaxTokenEIB10_INtNtB14_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2J_11SyntaxTokenB35_EEuINtNtNtBa_3ops12control_flow11ControlFlowB3W_ENvYB2B_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2B_B3W_QNCNvMs0_NtCslLuZgPVt6hg_3ide12static_indexNtB6T_11StaticIndex8add_file0E0E0B6V_.exit.sink.split.i.i, %bb.at, %_RNCNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB7_10SyntaxNode23descendants_with_tokens0CslLuZgPVt6hg_3ide.exit.i.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2402
  invoke void @_RNvXsp_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokensNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc78:                                         ; preds = %.noexc77
  %i.fp = load i64, ptr %i.b, align 8, !range !15, !noalias !2402, !noundef !9 ; 2 uses
  %.not.i74 = icmp eq i64 %i.fp, 2
  br i1 %.not.i74, label %.loopexit150, label %.lr.ph.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit102, %bb.bl
  %.pn41 = phi { ptr, i32 } [ %.pn39, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit102 ], [ %.pn39, %bb.bl ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvMs0_NtCslLuZgPVt6hg_3ide12static_indexNtB6O_11StaticIndex8add_file0EEB6Q_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.n) #34
          to label %.thread unwind label %bb.cd

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc77, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB14_6cursor10SyntaxNodeNtB1S_11SyntaxTokenEIB10_INtNtB14_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2J_11SyntaxTokenB35_EEuINtNtNtBa_3ops12control_flow11ControlFlowB3W_ENvYB2B_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2B_B3W_QNCNvMs0_NtCslLuZgPVt6hg_3ide12static_indexNtB6T_11StaticIndex8add_file0E0E0B6V_.exit.sink.split.i.i, %.invoke, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %.sroa.6.0.copyload.i, ptr %i.m, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 60
  %i.fr = load i8, ptr %i.fq, align 4, !range !14, !noundef !9
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.aw, label %bb.av, !prof !16

bb.av:                                            ; preds = %bb.au
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 56
  %i.fu = load i32, ptr %i.ft, align 8, !noundef !9
  br label %.noexc87

bb.aw:                                            ; preds = %bb.au
  %i.fv = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.sroa.6.0.copyload.i)
          to label %.noexc87 unwind label %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc87:                                         ; preds = %bb.aw, %bb.av
  %.sroa.0.0.i80 = phi i32 [ %i.fu, %bb.av ], [ %i.fv, %bb.aw ] ; 4 uses
  %i.fw = load i64, ptr %.sroa.6.0.copyload.i, align 8, !range !17, !noundef !9
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 8
  %i.fy = trunc nuw i64 %i.fw to i1
  %i.fz = load ptr, ptr %i.fx, align 8, !nonnull !9, !noundef !9 ; 2 uses
  br i1 %i.fy, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %.noexc87
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !noundef !9 ; 2 uses
  %i.gc = icmp ugt i64 %i.gb, 4294967295
  %i.gd = shl nuw i64 %i.gb, 32
  %.sroa.09.0.insert.insert.i.i83 = select i1 %i.gc, i64 513, i64 %i.gd ; 2 uses
  %i.ge = trunc i64 %.sroa.09.0.insert.insert.i.i83 to i1
  br i1 %i.ge, label %bb.ay, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i84, !prof !16

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @425) #39
          to label %.noexc88 unwind label %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc88:                                         ; preds = %bb.ay
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i84: ; preds = %bb.ax
  %.sroa.6.0.extract.shift.i.i.i85 = lshr i64 %.sroa.09.0.insert.insert.i.i83, 32
  %.sroa.6.0.extract.trunc.i.i.i86 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i85 to i32
  br label %bb.ba

bb.az:                                            ; preds = %.noexc87
  %i.gf = load i32, ptr %i.fz, align 8, !noundef !9
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i84
  %.sroa.02.0.i81 = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i86, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i84 ], [ %i.gf, %bb.az ]
  %i.gg = add i32 %.sroa.02.0.i81, %.sroa.0.0.i80 ; 3 uses
  %.not.i82 = icmp ugt i32 %.sroa.0.0.i80, %i.gg
  br i1 %.not.i82, label %bb.bb, label %bb.bm, !prof !16

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #39
          to label %.noexc89 unwind label %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc89:                                         ; preds = %bb.bb
  unreachable

.loopexit150:                                     ; preds = %.noexc76, %.noexc78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2402
  call void @llvm.experimental.noalias.scope.decl(metadata !2405)
  call void @llvm.experimental.noalias.scope.decl(metadata !2406)
  call void @llvm.experimental.noalias.scope.decl(metadata !2407)
  call void @llvm.experimental.noalias.scope.decl(metadata !2408)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.gh, align 8, !alias.scope !2409, !nonnull !9, !noundef !9 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 48 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !noalias !2409, !noundef !9
  %i.gk = add i32 %i.gj, -1                       ; 2 uses
  store i32 %i.gk, ptr %i.gi, align 4, !noalias !2409
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i: ; preds = %.loopexit150
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i.i.i.i) #38
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.i.i.i.i unwind label %bb.bc, !noalias !2409

bb.bc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.gn, align 8, !range !15, !alias.scope !2409, !noundef !9
  %i.go = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.val5.i.i.i.i = load ptr, ptr %i.go, align 8, !alias.scope !2409 ; 3 uses
  %i.gp = icmp eq i64 %.val4.i.i.i.i, 2
  br i1 %i.gp, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i) ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 48 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !noalias !2410, !noundef !9
  %i.gs = add i32 %i.gr, -1                       ; 2 uses
  store i32 %i.gs, ptr %i.gq, align 4, !noalias !2410
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i.i, label %.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.bd
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5.i.i.i.i) #38
          to label %.thread unwind label %bb.bf, !noalias !2409

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i, %.loopexit150
  %i.gu = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val2.i.i.i.i = load i64, ptr %i.gu, align 8, !range !15, !alias.scope !2409, !noundef !9
  %i.gv = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.val3.i.i.i.i = load ptr, ptr %i.gv, align 8, !alias.scope !2409 ; 3 uses
  %i.gw = icmp eq i64 %.val2.i.i.i.i, 2
  br i1 %i.gw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvMs0_NtCslLuZgPVt6hg_3ide12static_indexNtB6O_11StaticIndex8add_file0EEB6Q_.exit, label %bb.be

bb.be:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i.i.i) ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 48 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !noalias !2411, !noundef !9
  %i.gz = add i32 %i.gy, -1                       ; 2 uses
  store i32 %i.gz, ptr %i.gx, align 4, !noalias !2411
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.sink.split.i.i7.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvMs0_NtCslLuZgPVt6hg_3ide12static_indexNtB6O_11StaticIndex8add_file0EEB6Q_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.sink.split.i.i7.i.i.i.i: ; preds = %bb.be
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i.i.i.i) #38
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvMs0_NtCslLuZgPVt6hg_3ide12static_indexNtB6O_11StaticIndex8add_file0EEB6Q_.exit unwind label %.thread133

bb.bf:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i.i
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !2409
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvMs0_NtCslLuZgPVt6hg_3ide12static_indexNtB6O_11StaticIndex8add_file0EEB6Q_.exit: ; preds = %bb.be, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECslLuZgPVt6hg_3ide.exit.sink.split.i.i7.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false)
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !2412, !noundef !9 ; 3 uses
  %i.he = load i64, ptr %0, align 8, !range !22, !alias.scope !2412, !noundef !9
  %i.hf = icmp eq i64 %i.hd, %i.he
  br i1 %i.hf, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvMs0_NtCslLuZgPVt6hg_3ide12static_indexNtB6O_11StaticIndex8add_file0EEB6Q_.exit
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCslLuZgPVt6hg_3ide12static_index17StaticIndexedFileE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.bj unwind label %bb.bh, !noalias !2413

bb.bh:                                            ; preds = %bb.bg
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide12static_index17StaticIndexedFileEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h) #34
          to label %.thread147 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.bj:                                            ; preds = %bb.bg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvMs0_NtCslLuZgPVt6hg_3ide12static_indexNtB6O_11StaticIndex8add_file0EEB6Q_.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !alias.scope !2412, !nonnull !9, !noundef !9
  %i.hk = getelementptr inbounds nuw [56 x i8], ptr %i.hj, i64 %i.hd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hk, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false)
  %i.hl = add i64 %i.hd, 1
  store i64 %i.hl, ptr %i.hc, align 8, !alias.scope !2412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.val49 = load ptr, ptr %i.v, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.val49, i64 48 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !noundef !9
  %i.ho = add i32 %i.hn, -1                       ; 2 uses
  store i32 %i.ho, ptr %i.hm, align 4
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %bb.bk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit97

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val49) #38
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit97 unwind label %bb.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit97: ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8Xq8PKFYOms_3hir9semantics9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(272) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.aa

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit102: ; preds = %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body108, %bb.bs
  %.pn39 = phi { ptr, i32 } [ %.pn, %.body108 ], [ %.pn, %bb.bs ], [ %lpad.loopexit.split-lp188, %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.val56 = load ptr, ptr %i.m, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.val56, i64 48 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !noundef !9
  %i.hs = add i32 %i.hr, -1                       ; 2 uses
  store i32 %i.hs, ptr %i.hq, align 4
  %i.ht = icmp eq i32 %i.hs, 0
end_hunk_0
