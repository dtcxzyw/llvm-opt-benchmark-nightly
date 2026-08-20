inline.NumInlined: 3013
inline.NumDeleted: 1056
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvNtCslLuZgPVt6hg_3ide15goto_definition15goto_definition:bb.a
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 88
  br label %bb.cs

._crit_edge:                                      ; preds = %.backedge, %bb.co
  invoke void @_RNvXsG_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.fm)
          to label %bb.cq unwind label %bb.cp

bb.cp:                                            ; preds = %._crit_edge
  %i.qj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.fm)
          to label %.thread460 unwind label %bb.cr

bb.cq:                                            ; preds = %._crit_edge
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.fm)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1g_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_EECslLuZgPVt6hg_3ide.exit unwind label %.thread465

bb.cr:                                            ; preds = %bb.cp
  %i.qk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit279: ; preds = %.loopexit546, %.loopexit.split-lp547, %.body178.thread, %bb.ss, %.body178
  %.pn73 = phi { ptr, i32 } [ %.pn71509, %.body178.thread ], [ %.pn71, %.body178 ], [ %.pn71509, %bb.ss ], [ %lpad.loopexit548, %.loopexit546 ], [ %lpad.loopexit.split-lp549, %.loopexit.split-lp547 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1g_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_EECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(48) %i.fm) #46
          to label %.thread460 unwind label %bb.bc

.loopexit546:                                     ; preds = %.invoke1901
  %lpad.loopexit548 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit279

.loopexit.split-lp547:                            ; preds = %bb.na
  %lpad.loopexit.split-lp549 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit279

bb.cs:                                            ; preds = %.lr.ph, %.backedge
  %i.ql = phi i64 [ %i.nh, %.lr.ph ], [ %i.aow, %.backedge ] ; 2 uses
  %i.qm = add i64 %i.ql, 1
  store i64 %i.qm, ptr %i.nf, align 8
  %i.qn = load i64, ptr %i.fm, align 8, !alias.scope !2383, !noalias !2386, !noundef !4
  %i.qo = icmp ugt i64 %i.qn, 1
  %i.qp = load ptr, ptr %i.nk, align 8, !alias.scope !2383, !noalias !2386, !nonnull !4
  %.sink11.i = select i1 %i.qo, ptr %i.qp, ptr %i.nk
  %i.qq = getelementptr inbounds nuw [24 x i8], ptr %.sink11.i, i64 %i.ql ; 2 uses
  %.sroa.0415.0.copyload = load ptr, ptr %i.qq, align 8 ; 15 uses
  %.sroa.4416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.4416.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !2388
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0415.0.copyload) ]
  %i.qr = getelementptr i8, ptr %.sroa.0415.0.copyload, i64 16 ; 4 uses
  %.val117.i = load ptr, ptr %i.qr, align 8, !noalias !2388, !noundef !4 ; 6 uses
  %.not.i.i173 = icmp eq ptr %.val117.i, null
  br i1 %.not.i.i173, label %.thread471, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.qs = getelementptr inbounds nuw i8, ptr %.val117.i, i64 48 ; 8 uses
  %i.qt = load i32, ptr %i.qs, align 4, !noalias !2388, !noundef !4 ; 3 uses
  %i.qu = icmp eq i32 %i.qt, -1
  br i1 %i.qu, label %.invoke2331, label %bb.cu, !prof !12

bb.cu:                                            ; preds = %bb.ct
  %i.qv = add nuw i32 %i.qt, 1
  store i32 %i.qv, ptr %i.qs, align 4, !noalias !2388
  %i.qw = getelementptr i8, ptr %.val117.i, i64 16
  %.val116.i = load ptr, ptr %i.qw, align 8, !noalias !2388, !noundef !4 ; 9 uses
  %.not.i124.i = icmp eq ptr %.val116.i, null
  br i1 %.not.i124.i, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit125.thread.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qx = getelementptr inbounds nuw i8, ptr %.val116.i, i64 48 ; 12 uses
  %i.qy = load i32, ptr %i.qx, align 4, !noalias !2388, !noundef !4 ; 2 uses
  %i.qz = icmp eq i32 %i.qy, -1
  br i1 %i.qz, label %bb.cw, label %bb.cy, !prof !12

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #44
          to label %.noexc.i unwind label %.loopexit.split-lp, !noalias !2388

.noexc.i:                                         ; preds = %bb.cw
  unreachable

.loopexit510:                                     ; preds = %bb.dd
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp:                               ; preds = %bb.cw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit510, %.loopexit.split-lp, %bb.da, %bb.cz
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.rf, %bb.cz ], [ %i.rf, %bb.da ], [ %lpad.loopexit, %.loopexit510 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ra = load i32, ptr %i.qs, align 4, !noalias !2388, !noundef !4
  %i.rb = add i32 %i.ra, -1                       ; 2 uses
  store i32 %i.rb, ptr %i.qs, align 4, !noalias !2388
  %i.rc = icmp eq i32 %i.rb, 0
  br i1 %i.rc, label %bb.cx, label %.body178.thread

bb.cx:                                            ; preds = %.body.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val117.i) #48
          to label %.body178.thread unwind label %bb.fb, !noalias !2388

bb.cy:                                            ; preds = %bb.cv
  %i.rd = add nuw i32 %i.qy, 1
  store i32 %i.rd, ptr %i.qx, align 4, !noalias !2388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !2388
  store ptr %.val116.i, ptr %i.bl, align 8, !noalias !2388
  %i.re = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bl)
          to label %bb.db unwind label %bb.cz, !noalias !2388

bb.cz:                                            ; preds = %bb.cy
  %i.rf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rg = load i32, ptr %i.qx, align 4, !noalias !2388, !noundef !4
  %i.rh = add i32 %i.rg, -1                       ; 2 uses
  store i32 %i.rh, ptr %i.qx, align 4, !noalias !2388
  %i.ri = icmp eq i32 %i.rh, 0
  br i1 %i.ri, label %bb.da, label %.body.i

bb.da:                                            ; preds = %bb.cz
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val116.i) #48
          to label %.body.i unwind label %bb.de, !noalias !2388

bb.db:                                            ; preds = %bb.cy
  %i.rj = icmp eq i16 %i.re, 245
  br i1 %i.rj, label %bb.dg, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.rk = load i32, ptr %i.qx, align 4, !noalias !2388, !noundef !4
  %i.rl = add i32 %i.rk, -1                       ; 2 uses
  store i32 %i.rl, ptr %i.qx, align 4, !noalias !2388
  %i.rm = icmp eq i32 %i.rl, 0
  br i1 %i.rm, label %bb.dd, label %.thread.i

bb.dd:                                            ; preds = %bb.dc
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val116.i) #48
          to label %.thread.i unwind label %.loopexit510, !noalias !2388

bb.de:                                            ; preds = %bb.da
  %i.rn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !2388
  unreachable

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit125.thread.i: ; preds = %.thread.i, %bb.cu
  %i.ro = phi i32 [ %i.qt, %bb.cu ], [ %i.rq, %.thread.i ] ; 2 uses
  store i32 %i.ro, ptr %i.qs, align 8, !noalias !2388
  %i.rp = icmp eq i32 %i.ro, 0
  br i1 %i.rp, label %bb.df, label %.thread471

bb.df:                                            ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit125.thread.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val117.i) #48
          to label %.thread471 unwind label %.loopexit511

.thread.i:                                        ; preds = %bb.dd, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !2388
  %.pre.i = load i32, ptr %i.qs, align 8, !noalias !2388
  %i.rq = add i32 %.pre.i, -1
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit125.thread.i

bb.dg:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !2388
  store ptr %.val116.i, ptr %i.dl, align 8, !noalias !2388
  %i.rr = load i32, ptr %i.qs, align 8, !noalias !2388, !noundef !4
  %i.rs = add i32 %i.rr, -1                       ; 2 uses
  store i32 %i.rs, ptr %i.qs, align 8, !noalias !2388
  %i.rt = icmp eq i32 %i.rs, 0
  br i1 %i.rt, label %bb.dh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit130.i

bb.dh:                                            ; preds = %bb.dg
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val117.i) #48
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit130.i unwind label %bb.dk, !noalias !2388

bb.di:                                            ; preds = %bb.gw, %bb.eb, %bb.dk
  %.pn85.i = phi { ptr, i32 } [ %i.rx, %bb.dk ], [ %i.vy, %bb.gw ], [ %.pn.i, %bb.eb ] ; 2 uses
  %i.ru = load i32, ptr %i.qx, align 4, !noalias !2388, !noundef !4
  %i.rv = add i32 %i.ru, -1                       ; 2 uses
  store i32 %i.rv, ptr %i.qx, align 4, !noalias !2388
  %i.rw = icmp eq i32 %i.rv, 0
  br i1 %i.rw, label %bb.dj, label %.body178.thread

bb.dj:                                            ; preds = %bb.di
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val116.i) #48
          to label %.body178.thread unwind label %bb.fb, !noalias !2388

bb.dk:                                            ; preds = %bb.hf, %bb.hb, %bb.gz, %bb.gt, %bb.gs, %bb.gq, %bb.gm, %.noexc136.i, %bb.gg, %bb.gf, %bb.dz, %bb.dy, %bb.dw, %bb.dv, %bb.dt, %_RNvMs1z_Cs8Xq8PKFYOms_3hirNtB6_8Callable4kind.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit130.i, %bb.dh
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit130.i: ; preds = %bb.dh, %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !2388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !2388
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl31resolve_method_call_as_callable(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.dj, ptr noundef nonnull align 8 %i.gg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dl)
          to label %bb.dl unwind label %bb.dk, !noalias !2388

bb.dl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit130.i
  %i.ry = load i32, ptr %i.nl, align 8, !range !2391, !noalias !2388, !noundef !4
  %.not62.i = icmp eq i32 %i.ry, -1
  br i1 %.not62.i, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dk, ptr noundef nonnull align 8 dereferenceable(80) %i.dj, i64 80, i1 false), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !2388
  %i.rz = load i8, ptr %i.nm, align 8, !range !175, !alias.scope !2392, !noalias !2395, !noundef !4
  switch i8 %i.rz, label %default.unreachable [
    i8 0, label %bb.dn
    i8 1, label %bb.dq
    i8 2, label %bb.dq
    i8 3, label %bb.dq
    i8 4, label %bb.dq
    i8 5, label %bb.do
  ]

default.unreachable:                              ; preds = %bb.dm
  unreachable

bb.dn:                                            ; preds = %bb.dm
  %i.sa = load i32, ptr %i.no, align 4, !range !143, !alias.scope !2392, !noalias !2395, !noundef !4
  %i.sb = load <2 x i32>, ptr %i.np, align 8, !alias.scope !2392, !noalias !2395
  %i.sc = icmp eq i32 %i.sa, 0
  br i1 %i.sc, label %_RNvMs1z_Cs8Xq8PKFYOms_3hirNtB6_8Callable4kind.exit.i, label %bb.dq

bb.do:                                            ; preds = %bb.dm
  %i.sd = load i8, ptr %i.nn, align 1, !range !178, !alias.scope !2392, !noalias !2395, !noundef !4
  %i.se = load <2 x i32>, ptr %i.no, align 4, !alias.scope !2392, !noalias !2395
  %i.sf = zext nneg i8 %i.sd to i32
  %i.sg = shl nuw nsw i32 %i.sf, 8
  %i.sh = or disjoint i32 %i.sg, 1
  br label %_RNvMs1z_Cs8Xq8PKFYOms_3hirNtB6_8Callable4kind.exit.i

bb.dp:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !2388
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dm, %bb.dm, %bb.dm, %bb.dm, %bb.dn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit.i, %bb.du, %bb.dp
  %.sroa.32.1 = phi i64 [ undef, %bb.dp ], [ undef, %bb.du ], [ %.sroa.32.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit.i ], [ undef, %bb.dn ], [ undef, %bb.dm ], [ undef, %bb.dm ], [ undef, %bb.dm ], [ undef, %bb.dm ] ; 2 uses
  %.sroa.31.1 = phi ptr [ undef, %bb.dp ], [ undef, %bb.du ], [ %.sroa.31.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit.i ], [ undef, %bb.dn ], [ undef, %bb.dm ], [ undef, %bb.dm ], [ undef, %bb.dm ], [ undef, %bb.dm ] ; 2 uses
  %.sroa.0375.1 = phi i64 [ -1, %bb.dp ], [ -1, %bb.du ], [ %.sroa.0375.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit.i ], [ -1, %bb.dn ], [ -1, %bb.dm ], [ -1, %bb.dm ], [ -1, %bb.dm ], [ -1, %bb.dm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !2388
  %i.si = load i32, ptr %i.qx, align 4, !noalias !2388, !noundef !4
  %i.sj = add i32 %i.si, -1                       ; 2 uses
  store i32 %i.sj, ptr %i.qx, align 4, !noalias !2388
  %i.sk = icmp eq i32 %i.sj, 0
  br i1 %i.sk, label %bb.dr, label %bb.hh

bb.dr:                                            ; preds = %bb.dq
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val116.i) #48
          to label %bb.hh unwind label %.loopexit511

_RNvMs1z_Cs8Xq8PKFYOms_3hirNtB6_8Callable4kind.exit.i: ; preds = %bb.do, %bb.dn
  %.sroa.19.sroa.0.0.insert.insert.i = phi i32 [ 0, %bb.dn ], [ %i.sh, %bb.do ]
  %i.sl = phi <2 x i32> [ %i.sb, %bb.dn ], [ %i.se, %bb.do ]
  store i32 %.sroa.19.sroa.0.0.insert.insert.i, ptr %i.bn, align 4, !noalias !2388
  store <2 x i32> %i.sl, ptr %.sroa.25.12..sroa_idx.i, align 4, !noalias !2388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !2388
  %i.sm = load ptr, ptr %i.ga, align 8, !noalias !2388, !nonnull !4, !align !68, !noundef !4
  invoke void @_RNvXsT_Cs8Xq8PKFYOms_3hirNtB5_8FunctionNtB5_11AsAssocItem13as_assoc_item(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.di, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.bn, ptr noundef nonnull %i.sm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @28)
          to label %bb.ds unwind label %bb.dk, !noalias !2388

bb.ds:                                            ; preds = %_RNvMs1z_Cs8Xq8PKFYOms_3hirNtB6_8Callable4kind.exit.i
  %i.sn = load i8, ptr %i.di, align 4, !range !2397, !noalias !2388, !noundef !4
  %.not63.i = icmp eq i8 %i.sn, -1
  br i1 %.not63.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dh, ptr noundef nonnull align 4 dereferenceable(12) %i.di, i64 12, i1 false), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !2388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !2388
  invoke void @_RNvMs1z_Cs8Xq8PKFYOms_3hirNtB6_8Callable11return_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.dk)
          to label %bb.dv unwind label %bb.dk, !noalias !2388

bb.du:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !2388
  br label %bb.dq

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !2388
  %i.so = load ptr, ptr %i.ga, align 8, !noalias !2388, !nonnull !4, !align !68, !noundef !4
  %i.sp = invoke { i32, i32 } @_RNvXs1N_Cs8Xq8PKFYOms_3hirNtB6_4TypeNtB6_8HasCrate5krate(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dg, ptr noundef nonnull %i.so, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @28)
          to label %bb.dw unwind label %bb.dk, !noalias !2388 ; 2 uses

bb.dw:                                            ; preds = %bb.dv
  %i.sq = extractvalue { i32, i32 } %i.sp, 0
  %i.sr = extractvalue { i32, i32 } %i.sp, 1
  store ptr %i.ga, ptr %i.df, align 8, !noalias !2388
  store i32 %i.sq, ptr %i.nq, align 8, !noalias !2388
  store i32 %i.sr, ptr %i.nr, align 4, !noalias !2388
  %i.ss = load ptr, ptr %i.ga, align 8, !noalias !2388, !nonnull !4, !align !68, !noundef !4
  invoke void @_RNvMs10_Cs8Xq8PKFYOms_3hirNtB6_9AssocItem9container(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.bm, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.dh, ptr noundef nonnull %i.ss, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @28)
          to label %bb.dx unwind label %bb.dk, !noalias !2388

bb.dx:                                            ; preds = %bb.dw
  %i.st = load i32, ptr %i.bm, align 4, !range !143, !noalias !2388, !noundef !4
  %.not64.i = icmp eq i32 %i.st, 2
  br i1 %.not64.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !2388
  %i.su = load ptr, ptr %i.ga, align 8, !noalias !2388, !nonnull !4, !align !68, !noundef !4
  invoke void @_RNvMs1j_Cs8Xq8PKFYOms_3hirNtB6_4Impl7self_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.de, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.bm, ptr noundef nonnull %i.su, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @28)
          to label %bb.gp unwind label %bb.dk, !noalias !2388

bb.dz:                                            ; preds = %bb.dx
  %i.sv = load i32, ptr %i.nv, align 4, !range !1966, !noalias !2388, !noundef !4 ; 3 uses
  %i.sw = load i32, ptr %i.nw, align 4, !noalias !2388, !noundef !4 ; 3 uses
  %i.sx = load ptr, ptr %i.ga, align 8, !noalias !2388, !nonnull !4, !align !68, !noundef !4
  %i.sy = invoke noundef nonnull ptr @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function4name(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.bn, ptr noundef nonnull %i.sx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @28)
          to label %bb.ea unwind label %bb.dk, !noalias !2388 ; 7 uses

bb.ea:                                            ; preds = %bb.dz
  %i.sz = icmp eq ptr %i.sy, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols4into10SYMBOL_STR
  br i1 %i.sz, label %bb.ee, label %bb.ed

bb.eb:                                            ; preds = %bb.eq, %bb.fe, %bb.fv, %bb.ec
  %.pn.i = phi { ptr, i32 } [ %i.ta, %bb.ec ], [ %i.ut, %bb.fv ], [ %i.ui, %bb.fe ], [ %i.ty, %bb.eq ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide(ptr nonnull %i.sy) #46
          to label %bb.di unwind label %bb.fb, !noalias !2388

bb.ec:                                            ; preds = %bb.gl, %bb.gi, %bb.ga, %bb.fy, %bb.fs, %bb.fn, %bb.fj, %bb.fh, %bb.ey, %bb.ev, %bb.et, %bb.en, %bb.el, %bb.ek, %bb.ei, %bb.eg, %bb.ee
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.ed:                                            ; preds = %bb.ea
  %i.tb = icmp eq ptr %i.sy, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols8try_into10SYMBOL_STR
  br i1 %i.tb, label %bb.ei, label %bb.eh

bb.ee:                                            ; preds = %bb.ea
  %i.tc = invoke { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs17core_convert_Into(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.df)
          to label %bb.ef unwind label %bb.ec, !noalias !2388 ; 2 uses

bb.ef:                                            ; preds = %bb.ee
  %i.td = extractvalue { i32, i32 } %i.tc, 0
  %i.te = extractvalue { i32, i32 } %i.tc, 1
  %i.tf = icmp eq i32 %i.te, %i.sw
  %i.tg = icmp eq i32 %i.td, %i.sv
  %or.cond88.i = select i1 %i.tg, i1 %i.tf, i1 false
  br i1 %or.cond88.i, label %bb.eg, label %.thread49.i

bb.eg:                                            ; preds = %bb.ef
  %i.th = invoke { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs17core_convert_From(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.df)
          to label %bb.ft unwind label %bb.ec, !noalias !2388 ; 2 uses

bb.eh:                                            ; preds = %bb.ed
  %i.ti = icmp eq ptr %i.sy, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols9to_string10SYMBOL_STR
  br i1 %i.ti, label %bb.el, label %.thread49.i

bb.ei:                                            ; preds = %bb.ed
  %i.tj = invoke { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs20core_convert_TryInto(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.df)
          to label %bb.ej unwind label %bb.ec, !noalias !2388 ; 2 uses

bb.ej:                                            ; preds = %bb.ei
  %i.tk = extractvalue { i32, i32 } %i.tj, 0
  %i.tl = extractvalue { i32, i32 } %i.tj, 1
  %i.tm = icmp eq i32 %i.tl, %i.sw
  %i.tn = icmp eq i32 %i.tk, %i.sv
  %or.cond89.i = select i1 %i.tn, i1 %i.tm, i1 false
  br i1 %or.cond89.i, label %bb.ek, label %.thread49.i

bb.ek:                                            ; preds = %bb.ej
  %i.to = invoke { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs20core_convert_TryFrom(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.df)
          to label %bb.fc unwind label %bb.ec, !noalias !2388 ; 2 uses

bb.el:                                            ; preds = %bb.eh
  %i.tp = invoke { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs21alloc_string_ToString(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.df)
          to label %bb.em unwind label %bb.ec, !noalias !2388 ; 2 uses

bb.em:                                            ; preds = %bb.el
  %i.tq = extractvalue { i32, i32 } %i.tp, 0
  %i.tr = extractvalue { i32, i32 } %i.tp, 1
  %i.ts = icmp eq i32 %i.tr, %i.sw
  %i.tt = icmp eq i32 %i.tq, %i.sv
  %or.cond90.i = select i1 %i.tt, i1 %i.ts, i1 false
  br i1 %or.cond90.i, label %bb.en, label %.thread49.i

bb.en:                                            ; preds = %bb.em
  %i.tu = invoke { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs16core_fmt_Display(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.df)
          to label %bb.eo unwind label %bb.ec, !noalias !2388 ; 2 uses

bb.eo:                                            ; preds = %bb.en
  %i.tv = extractvalue { i32, i32 } %i.tu, 0      ; 3 uses
  %i.tw = extractvalue { i32, i32 } %i.tu, 1      ; 2 uses
  %.not65.i = icmp eq i32 %i.tv, 0
  br i1 %.not65.i, label %.thread49.i, label %bb.ep

end_hunk_0
begin_hunk_1_@_RNvNtCslLuZgPVt6hg_3ide15goto_definition15goto_definition:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !2388
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fp, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !2388
  br label %.thread49.i

bb.fm:                                            ; preds = %bb.fj
  %i.un = load i32, ptr %i.oc, align 8, !range !2391, !noalias !2388, !noundef !4
  %.not72.i = icmp eq i32 %i.un, -1
  br i1 %.not72.i, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cf, ptr noundef nonnull align 8 dereferenceable(40) %i.ce, i64 40, i1 false), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !2388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oe, ptr noundef nonnull align 8 dereferenceable(24) %i.od, i64 24, i1 false), !noalias !2388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false), !noalias !2388
  invoke void @_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl25resolve_trait_impl_methodANtB8_4Typej2_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.cl, ptr noundef nonnull align 8 %i.gg, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ck, i32 noundef %i.uf, i32 noundef %i.ug, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.cm, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.cj)
          to label %bb.fq unwind label %bb.ec, !noalias !2388

bb.fo:                                            ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !2388
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fq, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %bb.fl

bb.fq:                                            ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !2388
  %i.uo = load i8, ptr %i.cl, align 4, !range !1660, !noalias !2388, !noundef !4
  %.not73.i = icmp eq i8 %i.uo, 2
  br i1 %.not73.i, label %bb.fp, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bt, ptr noundef nonnull align 4 dereferenceable(12) %i.cl, i64 12, i1 false), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !2388
  br label %bb.fs

bb.fs:                                            ; preds = %bb.ge, %bb.fr, %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !2388
  %i.up = load ptr, ptr %i.ga, align 8, !noalias !2388, !nonnull !4, !align !68, !noundef !4
  invoke void @_RNvXsT_Cs8Xq8PKFYOms_3hirNtB5_8FunctionNtB5_11AsAssocItem13as_assoc_item(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.bu, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.bt, ptr noundef nonnull %i.up, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @28)
          to label %bb.gh unwind label %bb.ec, !noalias !2388

bb.ft:                                            ; preds = %bb.eg
  %i.uq = extractvalue { i32, i32 } %i.th, 0      ; 3 uses
  %i.ur = extractvalue { i32, i32 } %i.th, 1      ; 2 uses
  %.not74.i = icmp eq i32 %i.uq, 0
  br i1 %.not74.i, label %.thread49.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !2388
  %i.us = load ptr, ptr %i.ga, align 8, !noalias !2388, !nonnull !4, !align !68, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !2388
  store ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols4from10SYMBOL_STR, ptr %i.cv, align 8, !noalias !2388
  invoke void @_RINvMsD_Cs8Xq8PKFYOms_3hirNtB6_5Trait8functionRNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.cw, i32 noundef %i.uq, i32 noundef %i.ur, ptr noundef nonnull %i.us, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @28, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cv)
          to label %bb.fw unwind label %bb.fv, !noalias !2388

bb.fv:                                            ; preds = %bb.fu
  %i.ut = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.fw:                                            ; preds = %bb.fu
  %i.uu = load i8, ptr %i.cw, align 4, !range !1660, !noalias !2388, !noundef !4
  %.not75.i = icmp eq i8 %i.uu, 2
  br i1 %.not75.i, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !2388
  br label %.thread49.i

bb.fy:                                            ; preds = %bb.fw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cu, ptr noundef nonnull align 4 dereferenceable(12) %i.cw, i64 12, i1 false), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !2388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !2388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !2388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.of, ptr noundef nonnull align 8 dereferenceable(12) %i.ns, i64 12, i1 false), !noalias !2388
  %i.uv = load ptr, ptr %i.dg, align 8, !noalias !2388, !nonnull !4, !noundef !4
  store ptr %i.uv, ptr %i.cs, align 8, !noalias !2388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !2388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !2388
  %i.uw = load ptr, ptr %i.ga, align 8, !noalias !2388, !nonnull !4, !align !68, !noundef !4
  invoke void @_RNvMs1z_Cs8Xq8PKFYOms_3hirNtB6_8Callable14receiver_param(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.dk, ptr noundef nonnull %i.uw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @28)
          to label %bb.fz unwind label %bb.ec, !noalias !2388

bb.fz:                                            ; preds = %bb.fy
  %i.ux = load i32, ptr %i.og, align 8, !range !2391, !noalias !2388, !noundef !4
  %.not76.i = icmp eq i32 %i.ux, -1
  br i1 %.not76.i, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cq, ptr noundef nonnull align 8 dereferenceable(40) %i.cp, i64 40, i1 false), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !2388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oi, ptr noundef nonnull align 8 dereferenceable(24) %i.oh, i64 24, i1 false), !noalias !2388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false), !noalias !2388
  invoke void @_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl25resolve_trait_impl_methodANtB8_4Typej2_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ct, ptr noundef nonnull align 8 %i.gg, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.cs, i32 noundef %i.uq, i32 noundef %i.ur, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.cr)
          to label %bb.gd unwind label %bb.ec, !noalias !2388

bb.gb:                                            ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !2388
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gd, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br label %.thread49.i

bb.gd:                                            ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !2388
  %i.uy = load i8, ptr %i.ct, align 4, !range !1660, !noalias !2388, !noundef !4
  %.not77.i = icmp eq i8 %i.uy, 2
  br i1 %.not77.i, label %bb.gc, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bt, ptr noundef nonnull align 4 dereferenceable(12) %i.ct, i64 12, i1 false), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br label %bb.fs

.thread49.i:                                      ; preds = %bb.eh, %bb.ej, %bb.ef, %bb.gj, %bb.gk, %bb.ft, %bb.fc, %bb.eo, %bb.em, %bb.gc, %bb.fx, %bb.fl, %bb.fg, %bb.ex, %bb.es
  %i.uz = ptrtoint ptr %i.sy to i64
  %i.va = and i64 %i.uz, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.va, 0
  br i1 %.not.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit.i, label %bb.gf

bb.gf:                                            ; preds = %.thread49.i
  %i.vb = getelementptr i8, ptr %i.sy, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vb) ]
  %i.vc = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCslLuZgPVt6hg_3ide(ptr noundef nonnull %i.vb)
          to label %.noexc135.i unwind label %bb.dk, !noalias !2388

.noexc135.i:                                      ; preds = %bb.gf
  %i.vd = sub nsw i64 0, %i.vc
  %i.ve = getelementptr inbounds i8, ptr %i.vb, i64 %i.vd ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !2388
  store ptr %i.ve, ptr %i.bk, align 8, !noalias !2388
  %i.vf = load atomic i64, ptr %i.ve acquire, align 8, !noalias !2388
  %i.vg = icmp eq i64 %i.vf, 2
  br i1 %i.vg, label %bb.gg, label %.noexc136.i, !prof !12

bb.gg:                                            ; preds = %.noexc135.i
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bk)
          to label %.noexc136.i unwind label %bb.dk, !noalias !2388

.noexc136.i:                                      ; preds = %bb.gg, %.noexc135.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !2388
  store ptr %i.ve, ptr %i.bj, align 8, !noalias !2388
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %.noexc137.i unwind label %bb.dk, !noalias !2388

.noexc137.i:                                      ; preds = %.noexc136.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !2388
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit.i

bb.gh:                                            ; preds = %bb.fs
  %i.vh = load i8, ptr %i.bu, align 4, !range !2397, !noalias !2388, !noundef !4
  %.not78.i = icmp eq i8 %i.vh, -1
  br i1 %.not78.i, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bs, ptr noundef nonnull align 4 dereferenceable(12) %i.bu, i64 12, i1 false), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !2388
  %i.vi = load ptr, ptr %i.ga, align 8, !noalias !2388, !nonnull !4, !align !68, !noundef !4
  %i.vj = invoke { i32, i32 } @_RNvMs10_Cs8Xq8PKFYOms_3hirNtB6_9AssocItem17implemented_trait(ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.bs, ptr noundef nonnull %i.vi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @28)
          to label %bb.gk unwind label %bb.ec, !noalias !2388

bb.gj:                                            ; preds = %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !2388
  br label %.thread49.i

bb.gk:                                            ; preds = %bb.gi
  %i.vk = extractvalue { i32, i32 } %i.vj, 0
  %.not79.i = icmp eq i32 %i.vk, 0
  br i1 %.not79.i, label %.thread49.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !2388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.oj, ptr noundef nonnull align 4 dereferenceable(12) %i.bt, i64 12, i1 false), !noalias !2388
  store i8 5, ptr %i.br, align 8, !noalias !2388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !2388
  invoke void @_RNvNtCslLuZgPVt6hg_3ide15goto_definition10def_to_nav(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bq, ptr noundef nonnull align 8 %i.ga, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.br)
          to label %bb.gm unwind label %bb.ec, !noalias !2388

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.gu, %bb.gp, %bb.gs, %bb.hd, %bb.gy, %.noexc137.i, %.thread49.i
  %.sroa.32.0 = phi i64 [ undef, %.thread49.i ], [ undef, %.noexc137.i ], [ undef, %bb.gp ], [ undef, %bb.gy ], [ %.sroa.32.2, %bb.hd ], [ undef, %bb.gs ], [ undef, %bb.gu ]
  %.sroa.31.0 = phi ptr [ undef, %.thread49.i ], [ undef, %.noexc137.i ], [ undef, %bb.gp ], [ undef, %bb.gy ], [ %.sroa.31.2, %bb.hd ], [ undef, %bb.gs ], [ undef, %bb.gu ]
  %.sroa.0375.0 = phi i64 [ -1, %.thread49.i ], [ -1, %.noexc137.i ], [ -1, %bb.gp ], [ -1, %bb.gy ], [ %.sroa.0375.2, %bb.hd ], [ -1, %bb.gs ], [ -1, %bb.gu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !2388
  br label %bb.dq

bb.gm:                                            ; preds = %bb.gl
  %.sroa.0375.0.copyload376 = load i64, ptr %i.bq, align 8 ; 2 uses
  %.sroa.31.0.copyload378 = load ptr, ptr %.sroa.31.0..sroa_idx377, align 8 ; 2 uses
  %.sroa.32.0.copyload380 = load i64, ptr %.sroa.32.0..sroa_idx379, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !2388
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide(ptr nonnull %i.sy)
          to label %bb.gn unwind label %bb.dk, !noalias !2388

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !2388
  %i.vl = load i32, ptr %i.qx, align 4, !noalias !2388, !noundef !4
  %i.vm = add i32 %i.vl, -1                       ; 2 uses
  store i32 %i.vm, ptr %i.qx, align 4, !noalias !2388
  %i.vn = icmp eq i32 %i.vm, 0
  br i1 %i.vn, label %bb.go, label %bb.hh

bb.go:                                            ; preds = %bb.gn
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val116.i) #48
          to label %bb.hh unwind label %.loopexit511

bb.gp:                                            ; preds = %bb.dy
  %i.vo = load ptr, ptr %i.de, align 8, !noalias !2388, !nonnull !4, !noundef !4
  %.sroa.058.0.copyload.i = load i32, ptr %i.vo, align 8, !noalias !2388 ; 2 uses
  %i.vp = icmp ne i32 %.sroa.058.0.copyload.i, 27
  call void @llvm.assume(i1 %i.vp)
  %i.vq = icmp eq i32 %.sroa.058.0.copyload.i, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !2388
  br i1 %i.vq, label %bb.gq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit.i

bb.gq:                                            ; preds = %bb.gp
  %i.vr = load ptr, ptr %i.ga, align 8, !noalias !2388, !nonnull !4, !align !68, !noundef !4
  %i.vs = invoke noundef nonnull ptr @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function4name(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.bn, ptr noundef nonnull %i.vr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @28)
          to label %bb.gr unwind label %bb.dk, !noalias !2388 ; 2 uses

bb.gr:                                            ; preds = %bb.gq
  %i.vt = icmp eq ptr %i.vs, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5parse10SYMBOL_STR
  br i1 %i.vt, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide(ptr nonnull %i.vs)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit.i unwind label %bb.dk, !noalias !2388

bb.gt:                                            ; preds = %bb.gr
  %i.vu = invoke { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs20core_convert_FromStr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.df)
          to label %bb.gu unwind label %bb.dk, !noalias !2388 ; 2 uses

bb.gu:                                            ; preds = %bb.gt
  %i.vv = extractvalue { i32, i32 } %i.vu, 0      ; 3 uses
  %i.vw = extractvalue { i32, i32 } %i.vu, 1      ; 2 uses
  %.not81.i = icmp eq i32 %i.vv, 0
  br i1 %.not81.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !2388
  %i.vx = load ptr, ptr %i.ga, align 8, !noalias !2388, !nonnull !4, !align !68, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !2388
  store ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols8from_str10SYMBOL_STR, ptr %i.dc, align 8, !noalias !2388
  invoke void @_RINvMsD_Cs8Xq8PKFYOms_3hirNtB6_5Trait8functionRNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.dd, i32 noundef %i.vv, i32 noundef %i.vw, ptr noundef nonnull %i.vx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @28, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dc)
          to label %bb.gx unwind label %bb.gw, !noalias !2388

bb.gw:                                            ; preds = %bb.gv
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.gx:                                            ; preds = %bb.gv
  %i.vz = load i8, ptr %i.dd, align 4, !range !1660, !noalias !2388, !noundef !4
  %.not82.i = icmp eq i8 %i.vz, 2
  br i1 %.not82.i, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !2388
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit.i

bb.gz:                                            ; preds = %bb.gx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.db, ptr noundef nonnull align 4 dereferenceable(12) %i.dd, i64 12, i1 false), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !2388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !2388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.nt, ptr noundef nonnull align 8 dereferenceable(12) %i.ns, i64 12, i1 false), !noalias !2388
  %i.wa = load ptr, ptr %i.dg, align 8, !noalias !2388, !nonnull !4, !noundef !4
  store ptr %i.wa, ptr %i.da, align 8, !noalias !2388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !2388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !2388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !2388
  call fastcc void @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.cx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dg), !noalias !2388
  invoke fastcc void @_RNvXs0_NtCs83ee1IJTiSq_6either8iteratorINtB7_6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBT_10filter_map9FilterMapINtNtBT_6copied6CopiedINtNtNtBX_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B2U_NtB2U_11GenericArgs5types0ENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4J_4Type14type_arguments0EIBC_IBP_IB27_IB2t_NtNtB2W_2ty2TyEENCB4C_s_0EINtNtNtBV_7sources5empty5EmptyB51_EEENtNtNtBV_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cy, ptr noalias nofree noundef align 8 dereferenceable(32) %i.cx)
          to label %bb.ha unwind label %bb.dk, !noalias !2388

bb.ha:                                            ; preds = %bb.gz
  %i.wb = load i32, ptr %i.nu, align 8, !range !2391, !noalias !2388, !noundef !4
  %.not83.i = icmp eq i32 %i.wb, -1
  br i1 %.not83.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 24, i1 false), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !2388
  invoke void @_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl25resolve_trait_impl_methodANtB8_4Typej1_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.bo, ptr noundef nonnull align 8 %i.gg, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.da, i32 noundef %i.vv, i32 noundef %i.vw, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.db, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cz)
          to label %bb.he unwind label %bb.dk, !noalias !2388

bb.hc:                                            ; preds = %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !2388
  br label %bb.hd

bb.hd:                                            ; preds = %bb.he, %bb.hg, %bb.hc
  %.sroa.32.2 = phi i64 [ undef, %bb.hc ], [ %.sroa.32.0.copyload, %bb.hg ], [ undef, %bb.he ]
  %.sroa.31.2 = phi ptr [ undef, %bb.hc ], [ %.sroa.31.0.copyload, %bb.hg ], [ undef, %bb.he ]
  %.sroa.0375.2 = phi i64 [ -1, %bb.hc ], [ %.sroa.0375.0.copyload, %bb.hg ], [ -1, %bb.he ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !2388
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit.i

bb.he:                                            ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !2388
  %i.wc = load i8, ptr %i.bo, align 4, !range !1660, !noalias !2388, !noundef !4
  %.not84.i = icmp eq i8 %i.wc, 2
  br i1 %.not84.i, label %bb.hd, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !2388
  invoke fastcc void @_RNCNvNtCslLuZgPVt6hg_3ide15goto_definition44find_definition_for_known_blanket_dual_impls0B5_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bp, ptr noundef nonnull align 8 %i.ga, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.bo)
          to label %bb.hg unwind label %bb.dk, !noalias !2388

bb.hg:                                            ; preds = %bb.hf
  %.sroa.0375.0.copyload = load i64, ptr %i.bp, align 8
  %.sroa.31.0.copyload = load ptr, ptr %.sroa.31.0..sroa_idx, align 8
  %.sroa.32.0.copyload = load i64, ptr %.sroa.32.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !2388
  br label %bb.hd

.body178:                                         ; preds = %.loopexit511, %.body213, %bb.nb
  %.pn71 = phi { ptr, i32 } [ %.pn69, %.body213 ], [ %.pn69, %bb.nb ], [ %lpad.loopexit513, %.loopexit511 ] ; 2 uses
  %.sroa.022.0 = phi i8 [ %.sroa.022.2, %.body213 ], [ %.sroa.022.2, %bb.nb ], [ %.sroa.022.1.ph, %.loopexit511 ]
  %i.wd = trunc nuw i8 %.sroa.022.0 to i1
  br i1 %i.wd, label %.body178.thread, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit279

.loopexit511:                                     ; preds = %bb.hi, %bb.ka, %bb.df, %bb.dr, %bb.go, %bb.hq, %bb.hz, %bb.ju, %bb.nj, %bb.sj, %bb.sn, %bb.sq
  %.sroa.022.1.ph = phi i8 [ 1, %bb.hz ], [ 1, %bb.hq ], [ 1, %bb.dr ], [ 1, %bb.df ], [ 1, %bb.go ], [ 1, %bb.ju ], [ %.sroa.022.4, %bb.sn ], [ %.sroa.022.4, %bb.sq ], [ 0, %bb.sj ], [ 1, %bb.nj ], [ 1, %bb.ka ], [ 1, %bb.hi ]
  %lpad.loopexit513 = landingpad { ptr, i32 }
          cleanup
  br label %.body178

.body178.thread1469:                              ; preds = %.invoke2331, %bb.ol
  %lpad.loopexit.split-lp514 = landingpad { ptr, i32 }
          cleanup
  br label %.body178.thread

.thread471:                                       ; preds = %bb.cs, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit125.thread.i, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  br label %bb.hj

bb.hh:                                            ; preds = %bb.gn, %bb.dq, %bb.dr, %bb.go
  %.sroa.32.3 = phi i64 [ %.sroa.32.0.copyload380, %bb.gn ], [ %.sroa.32.1, %bb.dq ], [ %.sroa.32.1, %bb.dr ], [ %.sroa.32.0.copyload380, %bb.go ] ; 2 uses
  %.sroa.31.3 = phi ptr [ %.sroa.31.0.copyload378, %bb.gn ], [ %.sroa.31.1, %bb.dq ], [ %.sroa.31.1, %bb.dr ], [ %.sroa.31.0.copyload378, %bb.go ] ; 4 uses
  %.sroa.0375.8 = phi i64 [ %.sroa.0375.0.copyload376, %bb.gn ], [ %.sroa.0375.1, %bb.dq ], [ %.sroa.0375.1, %bb.dr ], [ %.sroa.0375.0.copyload376, %bb.go ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  %.not54 = icmp eq i64 %.sroa.0375.8, -1
  br i1 %.not54, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.31.3) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  %i.we = icmp ult i64 %.sroa.32.3, 115292150460684698
  call void @llvm.assume(i1 %i.we)
  %i.wf = getelementptr inbounds nuw [80 x i8], ptr %.sroa.31.3, i64 %.sroa.32.3
  %i.wg = icmp sgt i64 %.sroa.0375.8, -1
  call void @llvm.assume(i1 %i.wg)
  store ptr %.sroa.31.3, ptr %i.eo, align 8
  store i64 %.sroa.0375.8, ptr %i.ok, align 8
  store ptr %.sroa.31.3, ptr %i.ol, align 8
  store ptr %i.wf, ptr %i.om, align 8
  invoke void @_RNvXs0_NtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB7_3VecNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fo, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.eo)
          to label %bb.jx unwind label %.loopexit511

bb.hj:                                            ; preds = %.thread471, %bb.hh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !2398
  %.val74.i = load ptr, ptr %i.qr, align 8, !noalias !2398, !noundef !4 ; 9 uses
  %.not.i.i180 = icmp eq ptr %.val74.i, null
  br i1 %.not.i.i180, label %.thread477, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.wh = getelementptr inbounds nuw i8, ptr %.val74.i, i64 48 ; 12 uses
  %i.wi = load i32, ptr %i.wh, align 4, !noalias !2398, !noundef !4 ; 2 uses
  %i.wj = icmp eq i32 %i.wi, -1
  br i1 %i.wj, label %.invoke2331, label %bb.hl, !prof !12

bb.hl:                                            ; preds = %bb.hk
  %i.wk = add nuw i32 %i.wi, 1
  store i32 %i.wk, ptr %i.wh, align 4, !noalias !2398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2398
  store ptr %.val74.i, ptr %i.am, align 8, !noalias !2398
  %i.wl = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am)
          to label %bb.ho unwind label %bb.hm, !noalias !2398

bb.hm:                                            ; preds = %bb.hl
  %i.wm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wn = load i32, ptr %i.wh, align 4, !noalias !2398, !noundef !4
  %i.wo = add i32 %i.wn, -1                       ; 2 uses
  store i32 %i.wo, ptr %i.wh, align 4, !noalias !2398
  %i.wp = icmp eq i32 %i.wo, 0
  br i1 %i.wp, label %bb.hn, label %.body178.thread

bb.hn:                                            ; preds = %bb.hm
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val74.i) #48
          to label %.body178.thread unwind label %bb.hr, !noalias !2398

bb.ho:                                            ; preds = %bb.hl
  %i.wq = icmp eq i16 %i.wl, 179
  br i1 %i.wq, label %bb.hs, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.wr = load i32, ptr %i.wh, align 4, !noalias !2398, !noundef !4
end_hunk_1
