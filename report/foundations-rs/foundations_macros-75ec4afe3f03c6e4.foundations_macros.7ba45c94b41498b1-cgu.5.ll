Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_macros-75ec4afe3f03c6e4.foundations_macros.7ba45c94b41498b1-cgu.5?download=true
inline.NumInlined: 30
inline.NumDeleted: 25
begin_hunk_0_@_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings18expand_from_parsed:bb.a
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ad
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.dn)
          to label %bb.ah unwind label %bb.af, !noalias !25

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.dn, ptr nonnull @19, i64 10)
          to label %bb.aj unwind label %bb.ai, !noalias !25

bb.ai:                                            ; preds = %bb.ak, %bb.aj, %bb.ah
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.dn) #9
          to label %bb.ae unwind label %bb.bj, !noalias !25

bb.aj:                                            ; preds = %bb.ah
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private7push_eq(ptr nonnull align 8 %i.dn)
          to label %bb.ak unwind label %bb.ai, !noalias !25

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private5parse(ptr nonnull align 8 %i.dn, ptr nonnull @20, i64 12)
          to label %bb.al unwind label %bb.ai, !noalias !25

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %i.dn, i64 32, i1 false), !noalias !25
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_group(ptr nonnull align 8 %i.dp, i8 0, ptr nonnull align 8 %i.do)
          to label %bb.am unwind label %bb.af, !noalias !25

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %i.dp, i64 32, i1 false), !noalias !25
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_group(ptr nonnull align 8 %i.dr, i8 2, ptr nonnull align 8 %i.dq)
          to label %bb.an unwind label %bb.ab, !noalias !25

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %i.dr, i64 32, i1 false), !noalias !25
  invoke void @_RINvNtCs6bAnw1I7Lci_3syn11parse_quote5parseNtNtB4_4attr9AttributeECsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([256 x i8]) align 8 %i.dt, ptr nonnull align 8 %i.ds, ptr nonnull align 8 @21)
          to label %bb.ao unwind label %.thread26.i, !noalias !25

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs6bAnw1I7Lci_3syn4attr9AttributeE4pushBJ_(ptr nonnull align 8 %i.el, ptr nonnull align 8 %i.dt)
          to label %bb.ap unwind label %.thread26.i, !noalias !25

bb.ap:                                            ; preds = %bb.ao
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 184
  invoke void @_RNvXs15_Cse4VeaA6Ikg_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([24 x i8]) align 8 %i.dm, ptr nonnull align 8 %i.fc)
          to label %bb.aq unwind label %.thread26.i, !noalias !25

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noundef nonnull align 8 dereferenceable(48) %i.eg, i64 48, i1 false), !noalias !25
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.dk)
          to label %bb.at unwind label %bb.as, !noalias !25

bb.ar:                                            ; preds = %bb.au, %bb.as
  %.pn12.i = phi { ptr, i32 } [ %i.fe, %bb.au ], [ %i.fd, %bb.as ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4path4PathEBF_(ptr nonnull align 8 %i.dl) #9
          to label %bb.bg unwind label %bb.bj, !noalias !25

bb.as:                                            ; preds = %bb.aq
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.at:                                            ; preds = %bb.aq
  invoke void @_RNvXs_NtCsk5uxfcyCLQt_5quote9to_tokensQNtNtCs6bAnw1I7Lci_3syn4item8ItemEnumNtB4_8ToTokens9to_tokensCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.ed, ptr nonnull align 8 %i.dk)
          to label %bb.av unwind label %bb.au, !noalias !25

bb.au:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.at
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.dk) #9
          to label %bb.ar unwind label %bb.bj, !noalias !25

bb.av:                                            ; preds = %bb.at
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.dk, ptr nonnull @22, i64 4)
          to label %bb.aw unwind label %bb.au, !noalias !25

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvXs0_NtNtCs6bAnw1I7Lci_3syn4path8printingNtB7_4PathNtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %i.dl, ptr nonnull align 8 %i.dk)
          to label %bb.ax unwind label %bb.au, !noalias !25

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private11push_colon2(ptr nonnull align 8 %i.dk)
          to label %bb.ay unwind label %bb.au, !noalias !25

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.dk, ptr nonnull @23, i64 8)
          to label %bb.az unwind label %bb.au, !noalias !25

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private11push_colon2(ptr nonnull align 8 %i.dk)
          to label %bb.ba unwind label %bb.au, !noalias !25

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.dk, ptr nonnull @24, i64 8)
          to label %bb.bb unwind label %bb.au, !noalias !25

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.dk, ptr nonnull @25, i64 3)
          to label %bb.bc unwind label %bb.au, !noalias !25

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvXsq_NtCsk5uxfcyCLQt_5quote9to_tokensNtCse4VeaA6Ikg_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.dm, ptr nonnull align 8 %i.dk)
          to label %bb.bd unwind label %bb.au, !noalias !25

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.dj)
          to label %bb.be unwind label %bb.au, !noalias !25

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_group(ptr nonnull align 8 %i.dk, i8 1, ptr nonnull align 8 %i.dj)
          to label %bb.bf unwind label %bb.au, !noalias !25

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.dk, i64 32, i1 false)
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4path4PathEBF_(ptr nonnull align 8 %i.dl)
          to label %bb.bi unwind label %bb.bh, !noalias !25

bb.bg:                                            ; preds = %bb.bh, %bb.ar
  %.pn14.i = phi { ptr, i32 } [ %i.ff, %bb.bh ], [ %.pn12.i, %bb.ar ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.dm) #9
          to label %.body unwind label %bb.bj, !noalias !25

bb.bh:                                            ; preds = %bb.bf
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bi:                                            ; preds = %bb.bf
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.dm)
          to label %_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings11expand_enum.exit unwind label %bb.bp

bb.bj:                                            ; preds = %.thread.i, %bb.bg, %bb.au, %bb.ar, %bb.ai, %bb.ae, %bb.aa, %bb.t, %bb.p, %bb.l, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.bk:                                            ; preds = %bb.f
  %i.fh = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fi = invoke i64 @_RNvMNtCs6bAnw1I7Lci_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4data5FieldNtNtB4_5token5CommaE3lenB4_(ptr nonnull align 8 %i.fh)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !25

.noexc.i:                                         ; preds = %bb.bk
  %i.fj = icmp ugt i64 %i.fi, 1
  br i1 %i.fj, label %bb.bl, label %_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings8is_tuple.exit.i.backedge

_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings8is_tuple.exit.i.backedge: ; preds = %.noexc.i, %bb.f
  br label %_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings8is_tuple.exit.i

bb.bl:                                            ; preds = %.noexc.i, %bb.f
  invoke void @_RINvNtCsaC8UfsfJL0H_18foundations_macros6common5errorNtCse4VeaA6Ikg_11proc_macro211TokenStreamRNtNtCs6bAnw1I7Lci_3syn4data7VariantEB4_(ptr nonnull sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.eb, ptr nonnull @26, i64 119)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated4IterNtNtBG_4data7VariantEECsje5z0uo7eGy_12darling_core(ptr nonnull align 8 %i.ec)
          to label %bb.bn unwind label %.thread26.i

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros8settings7OptionsEBF_(ptr nonnull align 8 %i.eg)
          to label %_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings11expand_enum.exit unwind label %bb.bp

.thread.i:                                        ; preds = %bb.aa, %bb.l, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread26.i
  %.pn1621.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread26.i ], [ %.pn6.i, %bb.l ], [ %.pn10.i, %bb.aa ], [ %lpad.loopexit.split-lp82, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4path4PathEBF_(ptr nonnull align 8 %i.eg) #9
          to label %.body unwind label %bb.bj

_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings11expand_enum.exit: ; preds = %bb.bn, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  br label %bb.bq

bb.bo:                                            ; preds = %bb.a
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.fl = load i64, ptr %i.fk, align 8
  %i.fm = icmp eq i64 %i.fl, 1
  br i1 %i.fm, label %bb.oj, label %bb.br

bb.bp:                                            ; preds = %bb.pw, %bb.pu, %bb.oh, %bb.bn, %bb.bi, %bb.b
  %.sroa.03.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.bn ], [ 0, %bb.pw ], [ 0, %bb.oh ], [ 0, %bb.bi ], [ 0, %bb.pu ]
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ps, %.thread.i17, %.body.i, %bb.bp, %bb.bg, %.thread.i
  %.sroa.03.0.lpad-body = phi i8 [ 0, %bb.bg ], [ 0, %.thread.i ], [ 0, %.body.i ], [ %.sroa.03.0, %bb.bp ], [ 0, %.thread.i17 ], [ 0, %bb.ps ]
  %eh.lpad-body = phi { ptr, i32 } [ %.pn14.i, %bb.bg ], [ %.pn1621.i, %.thread.i ], [ %.pn8.i8, %.body.i ], [ %i.fn, %bb.bp ], [ %.pn914.i, %.thread.i17 ], [ %.pn7.i, %bb.ps ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4item4ItemEBF_(ptr nonnull align 8 %2) #9
          to label %bb.px unwind label %bb.qc

bb.bq:                                            ; preds = %_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings27expand_unnamed_field_struct.exit, %_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings13expand_struct.exit, %_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings11expand_enum.exit, %bb.b
  %.sroa.03.1 = phi i8 [ 1, %bb.b ], [ 0, %_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings11expand_enum.exit ], [ 0, %_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings27expand_unnamed_field_struct.exit ], [ 0, %_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings13expand_struct.exit ] ; 2 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4item4ItemEBF_(ptr nonnull align 8 %2)
          to label %bb.pz unwind label %bb.py

bb.br:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ee, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  store ptr %i.fk, ptr %i.di, align 8, !noalias !27
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  invoke fastcc void @_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings17add_default_attrs(ptr nonnull align 8 %i.ee, ptr nonnull align 8 %i.fo)
          to label %bb.bt unwind label %bb.bs, !noalias !27

.body.i:                                          ; preds = %.body20.i, %bb.cj, %bb.bv, %bb.bs
  %.pn8.i8 = phi { ptr, i32 } [ %.pn2.i, %bb.bv ], [ %.pn6.i11, %.body20.i ], [ %i.fp, %bb.bs ], [ %.pn9.pn.i.i, %bb.cj ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros8settings7OptionsEBF_(ptr nonnull align 8 %i.ee) #9
          to label %.body unwind label %bb.oi

bb.bs:                                            ; preds = %.invoke.i, %bb.me, %bb.mc, %bb.fh, %bb.ci, %bb.ch, %bb.cg, %bb.bt, %bb.br
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bt:                                            ; preds = %bb.br
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.df)
          to label %bb.bu unwind label %bb.bs, !noalias !27

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_pound(ptr nonnull align 8 %i.df)
          to label %bb.bx unwind label %bb.bw, !noalias !27

bb.bv:                                            ; preds = %bb.bz, %bb.bw
  %.pn2.i = phi { ptr, i32 } [ %i.fq, %bb.bw ], [ %.pn.i9, %bb.bz ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.df) #9
          to label %.body.i unwind label %bb.oi, !noalias !27

bb.bw:                                            ; preds = %bb.cf, %bb.bx, %bb.bu
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bx:                                            ; preds = %bb.bu
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.dd)
          to label %bb.by unwind label %bb.bw, !noalias !27

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.dd, ptr nonnull @3, i64 5)
          to label %bb.cb unwind label %bb.ca, !noalias !27

bb.bz:                                            ; preds = %bb.cd, %bb.ca
  %.pn.i9 = phi { ptr, i32 } [ %i.fr, %bb.ca ], [ %i.fs, %bb.cd ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.dd) #9
          to label %bb.bv unwind label %bb.oi, !noalias !27

bb.ca:                                            ; preds = %bb.ce, %bb.cb, %bb.by
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.cb:                                            ; preds = %bb.by
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.db)
          to label %bb.cc unwind label %bb.ca, !noalias !27

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.db, ptr nonnull @2, i64 7)
          to label %bb.ce unwind label %bb.cd, !noalias !27

bb.cd:                                            ; preds = %bb.cc
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.db) #9
          to label %bb.bz unwind label %bb.oi, !noalias !27

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %i.db, i64 32, i1 false), !noalias !27
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_group(ptr nonnull align 8 %i.dd, i8 0, ptr nonnull align 8 %i.dc)
          to label %bb.cf unwind label %bb.ca, !noalias !27

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %i.dd, i64 32, i1 false), !noalias !27
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_group(ptr nonnull align 8 %i.df, i8 2, ptr nonnull align 8 %i.de)
          to label %bb.cg unwind label %bb.bw, !noalias !27

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %i.df, i64 32, i1 false), !noalias !27
  invoke void @_RINvNtCs6bAnw1I7Lci_3syn11parse_quote5parseNtNtB4_4attr9AttributeECsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([256 x i8]) align 8 %i.dh, ptr nonnull align 8 %i.dg, ptr nonnull align 8 @27)
          to label %bb.ch unwind label %bb.bs, !noalias !27

bb.ch:                                            ; preds = %bb.cg
  invoke void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs6bAnw1I7Lci_3syn4attr9AttributeE4pushBJ_(ptr nonnull align 8 %i.fo, ptr nonnull align 8 %i.dh)
          to label %bb.ci unwind label %bb.bs, !noalias !27

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !27
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 216
  invoke void @_RNvXs15_Cse4VeaA6Ikg_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([24 x i8]) align 8 %i.cr, ptr nonnull align 8 %i.ft) #8
          to label %.noexc.i10 unwind label %bb.bs, !noalias !27

.noexc.i10:                                       ; preds = %bb.ci
  store ptr %i.ee, ptr %i.cq, align 8, !noalias !28
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 88
  invoke void @_RNvMs_NtCs6bAnw1I7Lci_3syn8genericsNtB4_8Generics14split_for_impl(ptr nonnull sret([24 x i8]) align 8 %i.cm, ptr nonnull align 8 %i.fu)
          to label %bb.cl unwind label %bb.ck, !noalias !28

bb.cj:                                            ; preds = %bb.cn, %bb.ck
  %.pn9.pn.i.i = phi { ptr, i32 } [ %.pn9.i.i, %bb.cn ], [ %i.fv, %bb.ck ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.cr) #9
          to label %.body.i unwind label %bb.fi, !noalias !28

bb.ck:                                            ; preds = %bb.fg, %bb.cl, %.noexc.i10
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.cl:                                            ; preds = %.noexc.i10
  %i.fw = load ptr, ptr %i.cm, align 8, !noalias !28
  store ptr %i.fw, ptr %i.cp, align 8, !noalias !28
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !28
  store ptr %i.fy, ptr %i.co, align 8, !noalias !28
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !28
  store ptr %i.ga, ptr %i.cn, align 8, !noalias !28
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.cl)
          to label %bb.cm unwind label %bb.ck, !noalias !28

bb.cm:                                            ; preds = %bb.cl
  %i.gb = invoke { ptr, ptr } @_RNvXs0_NtCs6bAnw1I7Lci_3syn4dataRNtB5_6FieldsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iter(ptr nonnull align 8 %i.fk)
          to label %bb.cp unwind label %bb.co, !noalias !28 ; 2 uses

bb.cn:                                            ; preds = %bb.cw, %.body.i.i, %bb.co
  %.pn9.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %.pn6.i.i, %bb.cw ], [ %i.gc, %bb.co ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.cl) #9
          to label %bb.cj unwind label %bb.fi, !noalias !28

bb.co:                                            ; preds = %bb.cu, %bb.ct, %bb.cm
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cp:                                            ; preds = %bb.cm
  %i.gd = extractvalue { ptr, ptr } %i.gb, 0
  %i.ge = extractvalue { ptr, ptr } %i.gb, 1
  store ptr %i.gd, ptr %i.ck, align 8, !noalias !28
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.ge, ptr %i.gf, align 8, !noalias !28
  %i.gg = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.gi = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.backedge.i.i.backedge, %bb.cp
  %i.gl = invoke align 8 ptr @_RNvXst_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_4IterNtNtB7_4data5FieldENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB7_(ptr nonnull align 8 %i.ck)
          to label %bb.cr unwind label %bb.cq, !noalias !28 ; 7 uses

bb.cq:                                            ; preds = %bb.mb, %bb.kw, %.noexc.i.i, %bb.fj, %.backedge.i.i
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body.i.i.i, %bb.cq
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.gm, %bb.cq ], [ %.pn20.pn.pn.pn.i.i.i, %.body.i.i.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated4IterNtNtBG_4data5FieldEECsje5z0uo7eGy_12darling_core(ptr nonnull align 8 %i.ck) #9
          to label %bb.cn unwind label %bb.fi, !noalias !28
end_hunk_0
begin_hunk_1_@_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings18expand_from_parsed:bb.a
bb.ol:                                            ; preds = %._crit_edge.i, %_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings8is_tuple.exit.thread.i
  %i.mb = phi ptr [ %.pre.i, %._crit_edge.i ], [ %.pre22.pre.i, %_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings8is_tuple.exit.thread.i ]
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 56
  invoke fastcc void @_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings17add_default_attrs(ptr nonnull align 8 %i.ef, ptr nonnull align 8 %i.mc)
          to label %bb.pb unwind label %.thread18.i, !noalias !32

bb.om:                                            ; preds = %_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings8is_tuple.exit.thread.i
  %i.md = getelementptr inbounds nuw i8, ptr %.pre22.pre.i, i64 56
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.i)
          to label %bb.on unwind label %.thread18.i, !noalias !32

bb.on:                                            ; preds = %bb.om
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_pound(ptr nonnull align 8 %i.i)
          to label %bb.oq unwind label %bb.op, !noalias !32

bb.oo:                                            ; preds = %bb.os, %bb.op
  %.pn3.i = phi { ptr, i32 } [ %i.me, %bb.op ], [ %.pn.i18, %bb.os ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.i) #9
          to label %.thread.i17 unwind label %bb.pv, !noalias !32

bb.op:                                            ; preds = %bb.oy, %bb.oq, %bb.on
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %bb.oo

bb.oq:                                            ; preds = %bb.on
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.g)
          to label %bb.or unwind label %bb.op, !noalias !32

bb.or:                                            ; preds = %bb.oq
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.g, ptr nonnull @17, i64 6)
          to label %bb.ou unwind label %bb.ot, !noalias !32

bb.os:                                            ; preds = %bb.ow, %bb.ot
  %.pn.i18 = phi { ptr, i32 } [ %i.mf, %bb.ot ], [ %i.mg, %bb.ow ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.g) #9
          to label %bb.oo unwind label %bb.pv, !noalias !32

bb.ot:                                            ; preds = %bb.ox, %bb.ou, %bb.or
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.os

bb.ou:                                            ; preds = %bb.or
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.e)
          to label %bb.ov unwind label %bb.ot, !noalias !32

bb.ov:                                            ; preds = %bb.ou
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.e, ptr nonnull @1, i64 7)
          to label %bb.ox unwind label %bb.ow, !noalias !32

bb.ow:                                            ; preds = %bb.ov
  %i.mg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.e) #9
          to label %bb.os unwind label %bb.pv, !noalias !32

bb.ox:                                            ; preds = %bb.ov
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !32
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_group(ptr nonnull align 8 %i.g, i8 0, ptr nonnull align 8 %i.f)
          to label %bb.oy unwind label %bb.ot, !noalias !32

bb.oy:                                            ; preds = %bb.ox
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !32
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_group(ptr nonnull align 8 %i.i, i8 2, ptr nonnull align 8 %i.h)
          to label %bb.oz unwind label %bb.op, !noalias !32

bb.oz:                                            ; preds = %bb.oy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !32
  invoke void @_RINvNtCs6bAnw1I7Lci_3syn11parse_quote5parseNtNtB4_4attr9AttributeECsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([256 x i8]) align 8 %i.k, ptr nonnull align 8 %i.j, ptr nonnull align 8 @57)
          to label %bb.pa unwind label %.thread18.i, !noalias !32

bb.pa:                                            ; preds = %bb.oz
  invoke void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs6bAnw1I7Lci_3syn4attr9AttributeE4pushBJ_(ptr nonnull align 8 %i.md, ptr nonnull align 8 %i.k)
          to label %._crit_edge.i unwind label %.thread18.i, !noalias !32

._crit_edge.i:                                    ; preds = %bb.pa
  %.pre.i = load ptr, ptr %i.l, align 8, !noalias !32
  br label %bb.ol

bb.pb:                                            ; preds = %bb.ol
  %i.mh = load ptr, ptr %i.l, align 8, !noalias !32
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 208
  invoke void @_RNvXs15_Cse4VeaA6Ikg_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.mi)
          to label %bb.pc unwind label %.thread18.i, !noalias !32

bb.pc:                                            ; preds = %bb.pb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.ef, i64 48, i1 false), !noalias !32
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.b)
          to label %bb.pf unwind label %bb.pe, !noalias !32

bb.pd:                                            ; preds = %bb.pg, %bb.pe
  %.pn5.i = phi { ptr, i32 } [ %i.mk, %bb.pg ], [ %i.mj, %bb.pe ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4path4PathEBF_(ptr nonnull align 8 %i.c) #9
          to label %bb.ps unwind label %bb.pv, !noalias !32

bb.pe:                                            ; preds = %bb.pc
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %bb.pd

bb.pf:                                            ; preds = %bb.pc
  invoke void @_RNvXs_NtCsk5uxfcyCLQt_5quote9to_tokensQNtNtCs6bAnw1I7Lci_3syn4item10ItemStructNtB4_8ToTokens9to_tokensCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.b)
          to label %bb.ph unwind label %bb.pg, !noalias !32

bb.pg:                                            ; preds = %bb.pq, %bb.pp, %bb.po, %bb.pn, %bb.pm, %bb.pl, %bb.pk, %bb.pj, %bb.pi, %bb.ph, %bb.pf
  %i.mk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.b) #9
          to label %bb.pd unwind label %bb.pv, !noalias !32

bb.ph:                                            ; preds = %bb.pf
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.b, ptr nonnull @22, i64 4)
          to label %bb.pi unwind label %bb.pg, !noalias !32

bb.pi:                                            ; preds = %bb.ph
  invoke void @_RNvXs0_NtNtCs6bAnw1I7Lci_3syn4path8printingNtB7_4PathNtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.b)
          to label %bb.pj unwind label %bb.pg, !noalias !32

bb.pj:                                            ; preds = %bb.pi
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private11push_colon2(ptr nonnull align 8 %i.b)
          to label %bb.pk unwind label %bb.pg, !noalias !32

bb.pk:                                            ; preds = %bb.pj
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.b, ptr nonnull @23, i64 8)
          to label %bb.pl unwind label %bb.pg, !noalias !32

bb.pl:                                            ; preds = %bb.pk
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private11push_colon2(ptr nonnull align 8 %i.b)
          to label %bb.pm unwind label %bb.pg, !noalias !32

bb.pm:                                            ; preds = %bb.pl
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.b, ptr nonnull @24, i64 8)
          to label %bb.pn unwind label %bb.pg, !noalias !32

bb.pn:                                            ; preds = %bb.pm
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.b, ptr nonnull @25, i64 3)
          to label %bb.po unwind label %bb.pg, !noalias !32

bb.po:                                            ; preds = %bb.pn
  invoke void @_RNvXsq_NtCsk5uxfcyCLQt_5quote9to_tokensNtCse4VeaA6Ikg_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.b)
          to label %bb.pp unwind label %bb.pg, !noalias !32

bb.pp:                                            ; preds = %bb.po
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
          to label %bb.pq unwind label %bb.pg, !noalias !32

bb.pq:                                            ; preds = %bb.pp
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_group(ptr nonnull align 8 %i.b, i8 1, ptr nonnull align 8 %i.a)
          to label %bb.pr unwind label %bb.pg, !noalias !32

bb.pr:                                            ; preds = %bb.pq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4path4PathEBF_(ptr nonnull align 8 %i.c)
          to label %bb.pu unwind label %bb.pt, !noalias !32

bb.ps:                                            ; preds = %bb.pt, %bb.pd
  %.pn7.i = phi { ptr, i32 } [ %i.ml, %bb.pt ], [ %.pn5.i, %bb.pd ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.d) #9
          to label %.body unwind label %bb.pv, !noalias !32

bb.pt:                                            ; preds = %bb.pr
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %bb.ps

bb.pu:                                            ; preds = %bb.pr
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.d)
          to label %_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings27expand_unnamed_field_struct.exit unwind label %bb.bp

bb.pv:                                            ; preds = %.thread.i17, %bb.ps, %bb.pg, %bb.pd, %bb.ow, %bb.os, %bb.oo
  %i.mm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.pw:                                            ; preds = %bb.ok
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros8settings7OptionsEBF_(ptr nonnull align 8 %i.ef)
          to label %_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings27expand_unnamed_field_struct.exit unwind label %bb.bp

.thread.i17:                                      ; preds = %bb.oo, %.thread18.i
  %.pn914.i = phi { ptr, i32 } [ %lpad.thr_comm.i16, %.thread18.i ], [ %.pn3.i, %bb.oo ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4path4PathEBF_(ptr nonnull align 8 %i.ef) #9
          to label %.body unwind label %bb.pv

_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings27expand_unnamed_field_struct.exit: ; preds = %bb.pw, %bb.pu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bq

bb.px:                                            ; preds = %bb.py, %.body
  %.pn = phi { ptr, i32 } [ %i.mn, %bb.py ], [ %eh.lpad-body, %.body ]
  %.sroa.03.2 = phi i8 [ %.sroa.03.1, %bb.py ], [ %.sroa.03.0.lpad-body, %.body ]
  %3 = trunc nuw i8 %.sroa.03.2 to i1
  br i1 %3, label %bb.qe, label %bb.qd

bb.py:                                            ; preds = %bb.bq
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %bb.px

bb.pz:                                            ; preds = %bb.bq
  %4 = trunc nuw i8 %.sroa.03.1 to i1
  br i1 %4, label %bb.qb, label %bb.qa

bb.qa:                                            ; preds = %bb.qb, %bb.pz
  ret void

bb.qb:                                            ; preds = %bb.pz
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros8settings7OptionsEBF_(ptr nonnull align 8 %1)
  br label %bb.qa

bb.qc:                                            ; preds = %bb.qe, %.body
  %i.mo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.qd:                                            ; preds = %bb.qe, %bb.px
  resume { ptr, i32 } %.pn

bb.qe:                                            ; preds = %bb.px
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros8settings7OptionsEBF_(ptr nonnull align 8 %1) #9
          to label %bb.qd unwind label %bb.qc
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings6expand(i32 %0, i32 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [352 x i8], align 8               ; 2 uses
  %i.b = alloca [56 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [352 x i8], align 8               ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  %i.k = alloca [56 x i8], align 8                ; 4 uses
  %i.l = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %1, ptr %i.l, align 4
  invoke void @_RINvCs6bAnw1I7Lci_3syn5parseNtNtCsaC8UfsfJL0H_18foundations_macros8settings7OptionsEBu_(ptr nonnull sret([56 x i8]) align 8 %i.j, i32 %0)
          to label %bb.b unwind label %.thread17

.thread17:                                        ; preds = %bb.r, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread12

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.j, align 8
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  invoke void @_RNvMNtCs6bAnw1I7Lci_3syn5errorNtB2_5Error16to_compile_error(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr nonnull align 8 %i.i)
          to label %bb.q unwind label %bb.p

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false)
  invoke void @_RINvCs6bAnw1I7Lci_3syn5parseNtNtB2_4item4ItemECsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([352 x i8]) align 8 %i.g, i32 %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.m, %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.g, align 8
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  invoke void @_RNvMNtCs6bAnw1I7Lci_3syn5errorNtB2_5Error16to_compile_error(ptr nonnull sret([32 x i8]) align 8 %i.e, ptr nonnull align 8 %i.f)
          to label %bb.l unwind label %bb.k

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.a, ptr noundef nonnull align 8 dereferenceable(352) %i.g, i64 352, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false)
  call fastcc void @_RNvNtCsaC8UfsfJL0H_18foundations_macros8settings18expand_from_parsed(ptr noalias align 8 %i.c, ptr align 8 %i.b, ptr align 8 %i.a)
  call void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtCse4VeaA6Ikg_11proc_macro211TokenStreamNtNtCs6bAnw1I7Lci_3syn5error5ErrorE14unwrap_or_elseNCNvNtCsaC8UfsfJL0H_18foundations_macros8settings6expand0EB2i_(ptr nonnull sret([32 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c, ptr nonnull align 8 @65)
  %i.t = call i32 @_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtCse4VeaA6Ikg_11proc_macro211TokenStreamINtB5_4IntoNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamE4intoCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.d, ptr nonnull align 8 @66)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.n, %.thread26
  %.sroa.0.0 = phi i32 [ %i.y, %.thread26 ], [ %i.t, %bb.h ], [ %i.w, %bb.n ]
  ret i32 %.sroa.0.0

bb.j:                                             ; preds = %.thread12, %bb.p, %bb.o, %bb.k
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.k:                                             ; preds = %bb.l, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.f) #9
          to label %bb.o unwind label %bb.j

bb.l:                                             ; preds = %bb.g
  %i.w = invoke i32 @_RNvXs2_Cse4VeaA6Ikg_11proc_macro2NtCsa5ERaWwhjCQ_10proc_macro11TokenStreamINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11TokenStreamE4from(ptr nonnull align 8 %i.e)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.f)
          to label %bb.n unwind label %bb.e

bb.n:                                             ; preds = %bb.m
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros8settings7OptionsEBF_(ptr nonnull align 8 %i.k)
  br label %bb.i

bb.o:                                             ; preds = %bb.e, %bb.k
  %.pn.ph = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.p, %bb.e ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros8settings7OptionsEBF_(ptr nonnull align 8 %i.k) #9
          to label %.thread unwind label %bb.j

bb.p:                                             ; preds = %bb.q, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.i) #9
          to label %.thread12 unwind label %bb.j

bb.q:                                             ; preds = %bb.c
  %i.y = invoke i32 @_RNvXs2_Cse4VeaA6Ikg_11proc_macro2NtCsa5ERaWwhjCQ_10proc_macro11TokenStreamINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11TokenStreamE4from(ptr nonnull align 8 %i.h)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.i)
          to label %.thread26 unwind label %.thread17

.thread26:                                        ; preds = %bb.r
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 4 %i.l)
  br label %bb.i

.thread:                                          ; preds = %bb.o, %.thread12
  %.pn711 = phi { ptr, i32 } [ %.pn.ph, %bb.o ], [ %.pn715, %.thread12 ]
  resume { ptr, i32 } %.pn711

.thread12:                                        ; preds = %bb.p, %.thread17
  %.pn715 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread17 ], [ %i.x, %bb.p ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 4 %i.l) #9
          to label %.thread unwind label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtCsaC8UfsfJL0H_18foundations_macros8settingsNtB5_7OptionsNtNtCs6bAnw1I7Lci_3syn5parse5Parse5parse(ptr sret([56 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 5 uses
  %i.h = alloca [80 x i8], align 8                ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 4 uses
  %i.j = alloca [80 x i8], align 8                ; 4 uses
  %i.k = alloca [80 x i8], align 8                ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 4 uses
  %i.m = alloca [80 x i8], align 8                ; 4 uses
  %i.n = alloca [80 x i8], align 8                ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 4 uses
  %i.p = alloca [80 x i8], align 8                ; 4 uses
  %i.q = alloca [80 x i8], align 8                ; 4 uses
  %i.r = alloca [80 x i8], align 8                ; 4 uses
  %i.s = alloca [80 x i8], align 8                ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 5 uses
  %i.u = alloca [80 x i8], align 8                ; 4 uses
  %i.v = alloca [80 x i8], align 8                ; 4 uses
  %i.w = alloca [80 x i8], align 8                ; 4 uses
  %i.x = alloca [80 x i8], align 8                ; 4 uses
  %i.y = alloca [80 x i8], align 8                ; 4 uses
  %i.z = alloca [80 x i8], align 8                ; 4 uses
  %i.aa = alloca [80 x i8], align 8               ; 4 uses
  %i.ab = alloca [80 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [8 x i8], align 8                ; 16 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 14 uses
  %i.ag = alloca [56 x i8], align 8               ; 9 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [32 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 2 uses
  %i.ak = alloca [80 x i8], align 8               ; 2 uses
  %.sroa.6 = alloca [5 x i8], align 1             ; 2 uses
  %i.al = alloca [80 x i8], align 8               ; 7 uses
  %i.am = alloca [80 x i8], align 8               ; 8 uses
  %i.an = alloca [32 x i8], align 8               ; 2 uses
  %i.ao = alloca [32 x i8], align 8               ; 3 uses
  %i.ap = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 3 uses
  %i.aq = alloca [8 x i8], align 8                ; 2 uses
  store ptr %1, ptr %i.aq, align 8
  %i.ar = tail call zeroext i1 @_RNvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB5_11ParseBuffer8is_empty(ptr align 8 %1)
  br i1 %i.ar, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCsaC8UfsfJL0H_18foundations_macros6common15parse_meta_list(ptr nonnull sret([32 x i8]) align 8 %i.an, ptr nonnull align 8 %i.aq)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtCs6bAnw1I7Lci_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1p_(ptr nonnull sret([32 x i8]) align 8 %i.ao, ptr nonnull align 8 %i.an) #8
  %i.as = load i64, ptr %i.ao, align 8
  %i.at = trunc nuw i64 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  br i1 %i.at, label %bb.g, label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !41
  call void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ah), !noalias !42
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private11push_colon2(ptr nonnull align 8 %i.ah)
          to label %bb.e unwind label %bb.d, !noalias !42

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.ah) #9
end_hunk_1
