Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.02?download=true
inline.NumInlined: 5059
inline.NumDeleted: 1707
begin_hunk_0_@_RNvMs_NtNtCsileJQcQObtj_7hir_def9item_tree5lowerNtB4_15UseTreeLowering14lower_use_tree:bb.a
          to label %bb.y unwind label %bb.t

bb.w:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i8 -1, ptr %i.bp, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w
  %i.bq = invoke noundef nonnull ptr @_RNvXskX_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7UseTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t)
          to label %bb.ad unwind label %bb.ac     ; 3 uses

bb.y:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.bs = load i8, ptr %i.br, align 8, !range !3490, !noundef !4
  %.not66 = icmp eq i8 %i.bs, -1
  br i1 %.not66, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.x

bb.aa:                                            ; preds = %bb.y
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !noundef !4
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.ab, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECsileJQcQObtj_7hir_def.exit104

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.at) #35
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECsileJQcQObtj_7hir_def.exit104 unwind label %bb.o

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECsileJQcQObtj_7hir_def.exit104: ; preds = %bb.ab, %bb.aa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEECsileJQcQObtj_7hir_def.exit146
  %i.bx = load i32, ptr %i.u, align 4, !noundef !4
  %i.by = add i32 %i.bx, -1                       ; 2 uses
  store i32 %i.by, ptr %i.u, align 4
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECsileJQcQObtj_7hir_def.exit105.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECsileJQcQObtj_7hir_def.exit105

bb.ac:                                            ; preds = %bb.ak, %bb.aj, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit, %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ad:                                            ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !4 ; 4 uses
  %i.cd = icmp ult i64 %i.cc, 1152921504606846976
  call void @llvm.assume(i1 %i.cd)
  call void @llvm.experimental.noalias.scope.decl(metadata !4416)
  %i.ce = load i64, ptr %1, align 8, !range !2851, !alias.scope !4416, !noundef !4
  %i.cf = icmp eq i64 %i.cc, %i.ce
  br i1 %i.cf, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.ai unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !noalias !4416, !noundef !4
  %i.cj = add i32 %i.ci, -1                       ; 2 uses
  store i32 %i.cj, ptr %i.ch, align 4, !noalias !4416
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bq) #35
          to label %.thread unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.ai:                                            ; preds = %bb.ae, %bb.ad
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !4416, !nonnull !4, !noundef !4
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cc
  store ptr %i.bq, ptr %i.co, align 8
  %i.cp = add nuw nsw i64 %i.cc, 1
  store i64 %i.cp, ptr %i.cb, align 8, !alias.scope !4416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 4 uses
  %i.cr = load i32, ptr %i.cq, align 4, !noundef !4 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, -1
  br i1 %i.cs, label %bb.ak, label %bb.aj, !prof !42

bb.aj:                                            ; preds = %bb.ai
  %i.ct = add nuw i32 %i.cr, 1
  store i32 %i.ct, ptr %i.cq, align 4
  %i.cu = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %i.at)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit unwind label %bb.ac

bb.ak:                                            ; preds = %bb.ai
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #33
          to label %.noexc109 unwind label %bb.ac

.noexc109:                                        ; preds = %bb.ak
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit: ; preds = %bb.aj
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.cu, ptr %i.cv, align 8
  store ptr %1, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %4, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cw = invoke { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSNtNtCsileJQcQObtj_7hir_def9item_tree7UseTreeEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1G_8adapters10filter_map9FilterMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB3w_9generated5nodes7UseTreeENCNvMs_NtBS_5lowerNtB4Q_15UseTreeLowering14lower_use_tree0EEBU_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.p)
          to label %bb.al unwind label %bb.ac     ; 2 uses

bb.al:                                            ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit
  %i.cx = extractvalue { ptr, i64 } %i.cw, 0      ; 2 uses
  %i.cy = extractvalue { ptr, i64 } %i.cw, 1      ; 2 uses
  store ptr %i.cx, ptr %i.q, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.cy, ptr %i.cz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.415.0.copyload = load i8, ptr %.sroa.415.0..sroa_idx, align 8 ; 2 uses
  %.not67 = icmp eq i8 %.sroa.415.0.copyload, -1
  br i1 %.not67, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %.sroa.415.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i8 %.sroa.415.0.copyload, ptr %.sroa.415.0..sroa_idx16, align 8
  %.sroa.518.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.518.0..sroa_idx19, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.518.0..sroa_idx, i64 15, i1 false)
  %i.da = invoke fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.aq unwind label %bb.ap

bb.an:                                            ; preds = %bb.al, %bb.aq
  %.sroa.013.0 = phi ptr [ %i.da, %bb.aq ], [ null, %bb.al ]
  store i64 2, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.013.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cx, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cy, ptr %.sroa.612.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.db = load i32, ptr %i.cq, align 4, !noundef !4
  %i.dc = add i32 %i.db, -1                       ; 2 uses
  store i32 %i.dc, ptr %i.cq, align 4
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.ao, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECsileJQcQObtj_7hir_def.exit111

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.at) #35
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECsileJQcQObtj_7hir_def.exit111 unwind label %bb.o

bb.ap:                                            ; preds = %bb.am
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCsileJQcQObtj_7hir_def9item_tree7UseTreeEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.q) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEECsileJQcQObtj_7hir_def.exit unwind label %bb.ar

bb.aq:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.an

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECsileJQcQObtj_7hir_def.exit111: ; preds = %bb.ao, %bb.an, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9item_tree11ImportAliasEEB11_.exit144
  %i.df = load i32, ptr %i.u, align 4, !noundef !4
  %i.dg = add i32 %i.df, -1                       ; 2 uses
  store i32 %i.dg, ptr %i.u, align 4
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECsileJQcQObtj_7hir_def.exit105.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECsileJQcQObtj_7hir_def.exit105

bb.ar:                                            ; preds = %bb.di, %bb.cz, %bb.co, %bb.as, %bb.s, %bb.n, %.body131, %bb.da, %bb.dc, %bb.ap
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34
  unreachable

.thread:                                          ; preds = %bb.af, %bb.ag, %bb.ac
  %eh.lpad-body107 = phi { ptr, i32 } [ %i.ca, %bb.ac ], [ %i.cg, %bb.ag ], [ %i.cg, %bb.af ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.dk = load i8, ptr %i.dj, align 8, !range !3490, !alias.scope !4419, !noundef !4
  %i.dl = icmp eq i8 %i.dk, -1
  br i1 %i.dl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEECsileJQcQObtj_7hir_def.exit, label %bb.as

bb.as:                                            ; preds = %.thread
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEECsileJQcQObtj_7hir_def.exit unwind label %bb.ar

bb.at:                                            ; preds = %bb.r
  %i.dm = icmp ne ptr %i.bf, null                 ; 5 uses
  %i.dn = icmp eq ptr %i.bf, null
  br i1 %i.dn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.do = getelementptr inbounds nuw i8, ptr %i.bf, i64 48 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !noundef !4
  %i.dq = add i32 %i.dp, -1                       ; 2 uses
  store i32 %i.dq, ptr %i.do, align 4
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.av, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bf) #35
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit unwind label %bb.o

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.au, %bb.at, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ds = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4PathECsileJQcQObtj_7hir_def(ptr nonnull %2)
          to label %bb.aw unwind label %bb.o      ; 2 uses

bb.aw:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit
  %.not55 = icmp eq ptr %i.ds, null
  br i1 %.not55, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !4, !noundef !4
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !nonnull !4, !align !239, !noundef !4
  invoke void @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath8from_src(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.n, ptr noundef nonnull %i.du, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.dw, ptr noundef nonnull %i.ds, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4)
          to label %bb.ba unwind label %bb.o

bb.ay:                                            ; preds = %bb.aw
  %i.dx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i8 -1, ptr %i.dx, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.bb, %bb.ay
  %i.dy = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes6RenameECsileJQcQObtj_7hir_def(ptr nonnull %2)
          to label %bb.be unwind label %.thread165 ; 6 uses

bb.ba:                                            ; preds = %bb.ax
  %i.dz = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ea = load i8, ptr %i.dz, align 8, !range !3490, !noundef !4
  %.not56 = icmp eq i8 %i.ea, -1
  br i1 %.not56, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.az

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEECsileJQcQObtj_7hir_def.exit146

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEECsileJQcQObtj_7hir_def.exit146: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9item_tree11ImportAliasEEB11_.exit, %bb.dh, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECsileJQcQObtj_7hir_def.exit104

.thread165:                                       ; preds = %bb.bx, %bb.bq, %bb.az, %bb.bw
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread160

bb.bd:                                            ; preds = %bb.df, %bb.dg
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.be:                                            ; preds = %bb.az
  %.not57.not.not = icmp eq ptr %i.dy, null
  br i1 %.not57.not.not, label %.thread168, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.eb = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4NameECsileJQcQObtj_7hir_def(ptr nonnull %i.dy)
          to label %bb.bi unwind label %bb.bg     ; 6 uses

bb.bg:                                            ; preds = %bb.bn, %bb.bf
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body.i115

.body.i115:                                       ; preds = %bb.bl, %bb.bk, %bb.bg
  %eh.lpad-body.i116 = phi { ptr, i32 } [ %i.ec, %bb.bg ], [ %i.ei, %bb.bl ], [ %i.ei, %bb.bk ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 48 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !noundef !4
  %i.ef = add i32 %i.ee, -1                       ; 2 uses
  store i32 %i.ef, ptr %i.ed, align 4
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.bh, label %.thread160

bb.bh:                                            ; preds = %.body.i115
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.dy) #35
          to label %.thread160 unwind label %bb.br

bb.bi:                                            ; preds = %bb.bf
  %.not.i117 = icmp eq ptr %i.eb, null
  br i1 %.not.i117, label %bb.bp, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.eb, ptr %i.e, align 8
  %i.eh = invoke noundef nonnull ptr @_RNvXs8_NtCs33K2ylI4knu_10hir_expand4nameNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameNtB5_6AsName7as_name(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.bm unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 48 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !noundef !4
  %i.el = add i32 %i.ek, -1                       ; 2 uses
  store i32 %i.el, ptr %i.ej, align 4
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.bl, label %.body.i115

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.eb) #35
          to label %.body.i115 unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bj
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 48 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !noundef !4
  %i.ep = add i32 %i.eo, -1                       ; 2 uses
  store i32 %i.ep, ptr %i.en, align 4
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.bn, label %_RNCNCNvMs_NtNtCsileJQcQObtj_7hir_def9item_tree5lowerNtB8_15UseTreeLowering14lower_use_trees_00Bc_.exit.i

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.eb) #35
          to label %_RNCNCNvMs_NtNtCsileJQcQObtj_7hir_def9item_tree5lowerNtB8_15UseTreeLowering14lower_use_trees_00Bc_.exit.i unwind label %bb.bg

bb.bo:                                            ; preds = %bb.bl
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34
  unreachable

_RNCNCNvMs_NtNtCsileJQcQObtj_7hir_def9item_tree5lowerNtB8_15UseTreeLowering14lower_use_trees_00Bc_.exit.i: ; preds = %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bp

bb.bp:                                            ; preds = %_RNCNCNvMs_NtNtCsileJQcQObtj_7hir_def9item_tree5lowerNtB8_15UseTreeLowering14lower_use_trees_00Bc_.exit.i, %bb.bi
  %.sroa.0.0.i = phi ptr [ null, %bb.bi ], [ %i.eh, %_RNCNCNvMs_NtNtCsileJQcQObtj_7hir_def9item_tree5lowerNtB8_15UseTreeLowering14lower_use_trees_00Bc_.exit.i ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dy, i64 48 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !noundef !4
  %i.eu = add i32 %i.et, -1                       ; 2 uses
  store i32 %i.eu, ptr %i.es, align 4
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.dy) #35
          to label %bb.bs unwind label %.thread165

bb.br:                                            ; preds = %bb.bh
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.bs:                                            ; preds = %bb.bq, %bb.bp
  br i1 %i.dm, label %bb.bt, label %.thread168

.thread168:                                       ; preds = %bb.be, %bb.bs
  %.val79 = phi i64 [ 1, %bb.bs ], [ 0, %bb.be ]  ; 4 uses
  %.val80 = phi ptr [ %.sroa.0.0.i, %bb.bs ], [ undef, %bb.be ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ex, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  store i64 %.val79, ptr %i.m, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %.val80, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.fa = zext i1 %i.dm to i8
  store i8 %i.fa, ptr %i.ez, align 8
  %i.fb = trunc nuw i64 %.val79 to i1
  br i1 %i.fb, label %bb.by, label %bb.bz

bb.bt:                                            ; preds = %bb.bs
  store i64 -1, ptr %0, align 8
  %i.fc = icmp eq ptr %.sroa.0.0.i, null
  br i1 %i.fc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9item_tree11ImportAliasEEB11_.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fd = ptrtoint ptr %.sroa.0.0.i to i64
  %i.fe = and i64 %i.fd, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.fe, 0
  %i.ff = getelementptr i8, ptr %.sroa.0.0.i, i64 -9 ; 5 uses
  %.not1.i.i.i.i.i = icmp eq ptr %i.ff, null
  %.not.i.i.i.i.i = or i1 %.not1.i.i.i.i.i, %.not.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9item_tree11ImportAliasEEB11_.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ff, ptr %i.d, align 8
  %i.fg = load atomic i64, ptr %i.ff acquire, align 8
  %i.fh = icmp eq i64 %i.fg, 2
  br i1 %i.fh, label %bb.bw, label %.noexc121, !prof !42

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %.noexc121 unwind label %.thread165

.noexc121:                                        ; preds = %bb.bw, %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ff, ptr %i.c, align 8
  %i.fi = atomicrmw sub ptr %i.ff, i64 1 release, align 8, !noalias !4422
  %i.fj = icmp eq i64 %i.fi, 1
  br i1 %i.fj, label %bb.bx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECsileJQcQObtj_7hir_def.exit.i.i.i.i.i

bb.bx:                                            ; preds = %.noexc121
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE9drop_slowCs39E2wp1vf7X_6intern(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #35
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECsileJQcQObtj_7hir_def.exit.i.i.i.i.i unwind label %.thread165

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECsileJQcQObtj_7hir_def.exit.i.i.i.i.i: ; preds = %bb.bx, %.noexc121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9item_tree11ImportAliasEEB11_.exit

bb.by:                                            ; preds = %.thread168
  %i.fk = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.fl = load i8, ptr %i.fk, align 8, !range !3490 ; 2 uses
  %.not60 = icmp eq i8 %i.fl, -1
  %or.cond = select i1 %i.dm, i1 true, i1 %.not60
  br i1 %or.cond, label %bb.cp, label %bb.cc

bb.bz:                                            ; preds = %.thread168
  br i1 %i.dm, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fm = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.fn = load i8, ptr %i.fm, align 8, !range !3490, !noundef !4
  %.not = icmp eq i8 %i.fn, -1
  br i1 %.not, label %.thread210, label %bb.cc

.thread210:                                       ; preds = %bb.ca
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9item_tree11ImportAliasEEB11_.exit144

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.fp = load i8, ptr %i.fo, align 8, !range !3490, !noundef !4 ; 2 uses
  %.not58 = icmp eq i8 %i.fp, -1                  ; 3 uses
  br i1 %.not58, label %.noexc, label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit

bb.cc:                                            ; preds = %bb.by, %bb.ca
  %5 = xor i1 %i.dm, true
  call void @llvm.assume(i1 %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  %i.fq = invoke noundef nonnull ptr @_RNvXskX_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7UseTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t)
          to label %bb.cr unwind label %bb.cq     ; 3 uses

_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit:     ; preds = %.noexc, %.noexc75, %bb.cb
  %i.fr = invoke noundef nonnull ptr @_RNvXskX_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7UseTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t)
          to label %bb.cf unwind label %.body125.thread179 ; 3 uses

.noexc:                                           ; preds = %bb.cb
  %i.fs = load atomic i64, ptr @_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt5LEVEL monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.fs, 0
  br i1 %.not.i, label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit, label %bb.cd, !prof !14

bb.cd:                                            ; preds = %.noexc
  %i.ft = icmp slt i64 %i.fs, 0
  br i1 %i.ft, label %bb.ce, label %.noexc75

.noexc75:                                         ; preds = %bb.ce, %bb.cd
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit8hit_cold(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 15)
          to label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit unwind label %.body125.thread179

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit13add_to_survey(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 15)
          to label %.noexc75 unwind label %.body125.thread179

.body125.thread179:                               ; preds = %.noexc75, %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit, %bb.ce
  %lpad.thr_comm177 = landingpad { ptr, i32 }
          cleanup
  br label %.body125.thread

.body125:                                         ; preds = %bb.cl
  %lpad.thr_comm.split-lp178 = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cf:                                            ; preds = %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !4 ; 4 uses
  %i.fw = icmp ult i64 %i.fv, 1152921504606846976
  call void @llvm.assume(i1 %i.fw)
  call void @llvm.experimental.noalias.scope.decl(metadata !4429)
  %i.fx = load i64, ptr %1, align 8, !range !2851, !alias.scope !4429, !noundef !4
  %i.fy = icmp eq i64 %i.fv, %i.fx
  br i1 %i.fy, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.ck unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 48 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !noalias !4429, !noundef !4
  %i.gc = add i32 %i.gb, -1                       ; 2 uses
  store i32 %i.gc, ptr %i.ga, align 4, !noalias !4429
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.ci, label %.body125.thread

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.fr) #35
          to label %.body125.thread unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.ck:                                            ; preds = %bb.cg, %bb.cf
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !alias.scope !4429, !nonnull !4, !noundef !4
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.fv
  store ptr %i.fr, ptr %i.gh, align 8
  %i.gi = add nuw nsw i64 %i.fv, 1
  store i64 %i.gi, ptr %i.fu, align 8, !alias.scope !4429
  br i1 %.not58, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %.sroa.432.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i8 %i.fp, ptr %.sroa.432.0..sroa_idx33, align 8
  %.sroa.535.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.h, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.535.0..sroa_idx36, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.535.0..sroa_idx, i64 15, i1 false)
  %i.gj = invoke fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.h)
          to label %bb.cn unwind label %.body125

bb.cm:                                            ; preds = %bb.ck, %bb.cn
  %.sroa.030.0 = phi ptr [ %i.gj, %bb.cn ], [ null, %bb.ck ]
  store i64 1, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.030.0, ptr %.sroa.428.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9item_tree11ImportAliasEEB11_.exit144

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.cm

.body125.thread:                                  ; preds = %bb.ci, %bb.ch, %.body125.thread179
  %eh.lpad-body126176 = phi { ptr, i32 } [ %lpad.thr_comm177, %.body125.thread179 ], [ %i.fz, %bb.ch ], [ %i.fz, %bb.ci ] ; 2 uses
  br i1 %.not58, label %bb.da, label %bb.co

bb.co:                                            ; preds = %.body125.thread
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %bb.da unwind label %bb.ar

bb.cp:                                            ; preds = %bb.by
  store i64 -1, ptr %0, align 8
  %.not62 = icmp eq i8 %i.fl, -1
  br i1 %.not62, label %.critedge, label %bb.db

bb.cq:                                            ; preds = %bb.cw, %bb.cc
  %.sroa.048.0 = phi i1 [ false, %bb.cw ], [ true, %bb.cc ]
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %.body131

.body131:                                         ; preds = %bb.ct, %bb.cu, %bb.cq
  %.sroa.048.0.lpad-body = phi i1 [ %.sroa.048.0, %bb.cq ], [ true, %bb.cu ], [ true, %bb.ct ]
  %eh.lpad-body132 = phi { ptr, i32 } [ %i.gk, %bb.cq ], [ %i.gq, %bb.cu ], [ %i.gq, %bb.ct ] ; 2 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9item_tree11ImportAliasEEB11_(i64 %.val79, ptr %.val80) #30
          to label %bb.cy unwind label %bb.ar

bb.cr:                                            ; preds = %bb.cc
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !noundef !4 ; 4 uses
  %i.gn = icmp ult i64 %i.gm, 1152921504606846976
  call void @llvm.assume(i1 %i.gn)
  call void @llvm.experimental.noalias.scope.decl(metadata !4432)
  %i.go = load i64, ptr %1, align 8, !range !2851, !alias.scope !4432, !noundef !4
  %i.gp = icmp eq i64 %i.gm, %i.go
  br i1 %i.gp, label %bb.cs, label %bb.cw

bb.cs:                                            ; preds = %bb.cr
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.cw unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fq, i64 48 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !noalias !4432, !noundef !4
  %i.gt = add i32 %i.gs, -1                       ; 2 uses
  store i32 %i.gt, ptr %i.gr, align 4, !noalias !4432
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.cu, label %.body131

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.fq) #35
          to label %.body131 unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.cw:                                            ; preds = %bb.cs, %bb.cr
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !alias.scope !4432, !nonnull !4, !noundef !4
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gm
  store ptr %i.fq, ptr %i.gy, align 8
  %i.gz = add nuw nsw i64 %i.gm, 1
  store i64 %i.gz, ptr %i.gl, align 8, !alias.scope !4432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  %i.ha = invoke fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.j)
          to label %bb.cx unwind label %bb.cq

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 0, ptr %0, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ha, ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val79, ptr %.sroa.543.0..sroa_idx, align 8
  %.sroa.644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.val80, ptr %.sroa.644.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9item_tree11ImportAliasEEB11_.exit144

bb.cy:                                            ; preds = %.body131
  br i1 %.sroa.048.0.lpad-body, label %bb.cz, label %.body

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %.body unwind label %bb.ar

bb.da:                                            ; preds = %.body125, %bb.co, %.body125.thread
  %.pn.ph = phi { ptr, i32 } [ %lpad.thr_comm.split-lp178, %.body125 ], [ %eh.lpad-body126176, %bb.co ], [ %eh.lpad-body126176, %.body125.thread ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9item_tree11ImportAliasEEB11_(i64 0, ptr %.val80) #30
          to label %.body unwind label %bb.ar

bb.db:                                            ; preds = %bb.cp
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ex)
          to label %..critedge_crit_edge unwind label %bb.dc
end_hunk_0
