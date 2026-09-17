Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Class?download=true
inline.NumInlined: 1453
inline.NumDeleted: 641
begin_hunk_0_@_ZN12ClassVisitorD2Ev:bb.a
  %i.fj = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.aq:                                            ; preds = %_ZNSt8_Rb_treeIPK21AstNodeUOrStructDTypeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  store ptr %i.en, ptr %i.fk, align 8, !tbaa !114
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fi, ptr noundef nonnull %i.fj, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ci) #20
  %i.fl = load i64, ptr %i.cm, align 8, !tbaa !77
  %i.fm = add i64 %i.fl, 1
  store i64 %i.fm, ptr %i.cm, align 8, !tbaa !77
  %i.fn = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !124 ; 2 uses
  %.not42238 = icmp eq ptr %i.fo, null
  br i1 %.not42238, label %.loopexit, label %.lr.ph241

.lr.ph241:                                        ; preds = %bb.aq, %bb.ay
  %.0239 = phi ptr [ %i.he, %bb.ay ], [ %i.fo, %bb.aq ] ; 2 uses
  %i.fp = invoke noundef ptr @_ZN14AstMemberDType15getChildStructpEv(ptr noundef nonnull align 8 dereferenceable(248) %.0239)
          to label %bb.ar unwind label %.loopexit203 ; 3 uses

bb.ar:                                            ; preds = %.lr.ph241
  %.not43 = icmp eq ptr %i.fp, null
  br i1 %.not43, label %_ZNSt5queueIP21AstNodeUOrStructDTypeSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fq = load ptr, ptr %i.co, align 8, !tbaa !125 ; 4 uses
  %i.fr = load ptr, ptr %i.cw, align 8, !tbaa !126
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -8
  %.not.i.i106 = icmp eq ptr %i.fq, %i.fs
  br i1 %.not.i.i106, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !114
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  br label %_ZNSt5queueIP21AstNodeUOrStructDTypeSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit.sink.split

bb.au:                                            ; preds = %bb.as
  %i.fu = load ptr, ptr %i.cx, align 8, !tbaa !117 ; 2 uses
  %i.fv = load ptr, ptr %i.cv, align 8, !tbaa !117
  %i.fw = ptrtoint ptr %i.fu to i64               ; 2 uses
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = ashr exact i64 %i.fy, 3
  %i.ga = icmp ne ptr %i.fu, null
  %.neg.i.i.i = sext i1 %i.ga to i64
  %i.gb = add nsw i64 %i.fz, %.neg.i.i.i
  %i.gc = shl nsw i64 %i.gb, 6
  %i.gd = load ptr, ptr %i.cy, align 8, !tbaa !119
  %i.ge = ptrtoint ptr %i.fq to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = ashr exact i64 %i.gg, 3
  %i.gi = add nsw i64 %i.gc, %i.gh
  %i.gj = load ptr, ptr %i.ct, align 8, !tbaa !120
  %i.gk = load ptr, ptr %i.cp, align 8, !tbaa !112
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = ashr exact i64 %i.gn, 3
  %i.gp = add nsw i64 %i.gi, %i.go
  %i.gq = icmp eq i64 %i.gp, 1152921504606846975
  br i1 %i.gq, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.509) #24
          to label %.noexc152 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc152:                                        ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.gr = load i64, ptr %i.cz, align 8, !tbaa !127
  %i.gs = load ptr, ptr %i.cn, align 8, !tbaa !128
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = sub i64 %i.fw, %i.gt
  %i.gv = ashr exact i64 %i.gu, 3
  %i.gw = sub i64 %i.gr, %i.gv
  %i.gx = icmp ult i64 %i.gw, 2
  br i1 %i.gx, label %bb.ax, label %_ZNSt5dequeIP21AstNodeUOrStructDTypeSaIS1_EE22_M_reserve_map_at_backEm.exit.i

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZNSt5dequeIP21AstNodeUOrStructDTypeSaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %i.cn, i64 noundef 1, i1 noundef zeroext false)
          to label %_ZNSt5dequeIP21AstNodeUOrStructDTypeSaIS1_EE22_M_reserve_map_at_backEm.exit.i unwind label %.loopexit203

_ZNSt5dequeIP21AstNodeUOrStructDTypeSaIS1_EE22_M_reserve_map_at_backEm.exit.i: ; preds = %bb.ax, %bb.aw
  %i.gy = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #23
          to label %.noexc107 unwind label %.loopexit203 ; 4 uses

.noexc107:                                        ; preds = %_ZNSt5dequeIP21AstNodeUOrStructDTypeSaIS1_EE22_M_reserve_map_at_backEm.exit.i
  %i.gz = load ptr, ptr %i.cx, align 8, !tbaa !129
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  store ptr %i.gy, ptr %i.ha, align 8, !tbaa !118
  %i.hb = load ptr, ptr %i.co, align 8, !tbaa !125
  store ptr %i.fp, ptr %i.hb, align 8, !tbaa !114
  store ptr %i.ha, ptr %i.cx, align 8, !tbaa !117
  store ptr %i.gy, ptr %i.cy, align 8, !tbaa !119
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 512
  store ptr %i.hc, ptr %i.cw, align 8, !tbaa !120
  br label %_ZNSt5queueIP21AstNodeUOrStructDTypeSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit.sink.split

_ZNSt5queueIP21AstNodeUOrStructDTypeSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit.sink.split: ; preds = %bb.at, %.noexc107
  %.sink = phi ptr [ %i.gy, %.noexc107 ], [ %i.ft, %bb.at ]
  store ptr %.sink, ptr %i.co, align 8, !tbaa !125
  br label %_ZNSt5queueIP21AstNodeUOrStructDTypeSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

_ZNSt5queueIP21AstNodeUOrStructDTypeSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit: ; preds = %_ZNSt5queueIP21AstNodeUOrStructDTypeSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit.sink.split, %bb.ar
  %i.hd = getelementptr inbounds nuw i8, ptr %.0239, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !130 ; 5 uses
  %cond = icmp eq ptr %i.he, null
  br i1 %cond, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt5queueIP21AstNodeUOrStructDTypeSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 64
  %.sroa.0.0.copyload.i.i.i109 = load i16, ptr %i.hf, align 8, !tbaa !92
  %.not6.i110 = icmp eq i16 %.sroa.0.0.copyload.i.i.i109, 86
  br i1 %.not6.i110, label %.lr.ph241, label %bb.az, !prof !103

bb.az:                                            ; preds = %bb.ay
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 64
  %i.hh = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.6, i32 noundef 1063)
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc112:                                        ; preds = %bb.az
  %i.hi = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc113:                                        ; preds = %.noexc112
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, ptr noundef nonnull @.str.19, i64 noundef 55)
          to label %.noexc114 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc114:                                        ; preds = %.noexc113
  %.sroa.0.0.copyload.i.i5.i111 = load i16, ptr %i.hg, align 8, !tbaa !92
  %i.hk = zext i16 %.sroa.0.0.copyload.i.i5.i111 to i64
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.hk
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !104
  %i.hn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, ptr noundef %i.hm)
          to label %.noexc115 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc115:                                        ; preds = %.noexc114
  %i.ho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %.noexc125.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit:                                        ; preds = %_ZNSt5queueIP21AstNodeUOrStructDTypeSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit, %bb.aq, %bb.ao
  %i.hp = load ptr, ptr %i.co, align 8, !tbaa !112
  %i.hq = load ptr, ptr %i.cp, align 8, !tbaa !112 ; 2 uses
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %._crit_edge244, label %bb.ak, !llvm.loop !267

._crit_edge244:                                   ; preds = %.loopexit
  %.pre275.pre.pre = load ptr, ptr %i.cj, align 8
  %i.hs = freeze ptr %.pre275.pre.pre             ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !75 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %.not200246 = icmp eq ptr %i.hv, %i.hw
  br i1 %.not200246, label %._crit_edge250, label %.lr.ph249

._crit_edge244.thread:                            ; preds = %._crit_edge236
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !75 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not200246326 = icmp eq ptr %i.hz, %i.ia
  br i1 %.not200246326, label %._crit_edge250.thread, label %.lr.ph249.split.us.preheader

.lr.ph249:                                        ; preds = %._crit_edge244
  %.not10.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not10.i.i.i, label %.lr.ph249.split.us.preheader, label %.lr.ph249.split

.lr.ph249.split.us.preheader:                     ; preds = %._crit_edge244.thread, %.lr.ph249
  %i.ib = phi ptr [ %i.ht, %.lr.ph249 ], [ %i.hx, %._crit_edge244.thread ]
  %i.ic = phi ptr [ %i.hv, %.lr.ph249 ], [ %i.hz, %._crit_edge244.thread ]
  %i.id = phi ptr [ %i.hw, %.lr.ph249 ], [ %i.ia, %._crit_edge244.thread ]
  br label %.lr.ph249.split.us

.lr.ph249.split.us:                               ; preds = %.lr.ph249.split.us.preheader, %_ZN7AstNode2asI21AstNodeUOrStructDType12AstNodeDTypeEEPT_PT0_.exit.us
  %.sroa.0169.0247.us = phi ptr [ %i.ik, %_ZN7AstNode2asI21AstNodeUOrStructDType12AstNodeDTypeEEPT_PT0_.exit.us ], [ %i.ic, %.lr.ph249.split.us.preheader ] ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0169.0247.us, i64 32
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !132
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 72
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !133 ; 3 uses
  %.not.i118.us = icmp eq ptr %i.ih, null
  br i1 %.not.i118.us, label %_ZN7AstNode2asI21AstNodeUOrStructDType12AstNodeDTypeEEPT_PT0_.exit.us, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph249.split.us
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 64
  %.sroa.0.0.copyload.i.i.i119.us = load i16, ptr %i.ii, align 8, !tbaa !92
  %i.ij = and i16 %.sroa.0.0.copyload.i.i.i119.us, -2
  %spec.select.i.not.i.us = icmp eq i16 %i.ij, 100
  br i1 %spec.select.i.not.i.us, label %_ZN7AstNode2asI21AstNodeUOrStructDType12AstNodeDTypeEEPT_PT0_.exit.us, label %.split.us, !prof !103

_ZN7AstNode2asI21AstNodeUOrStructDType12AstNodeDTypeEEPT_PT0_.exit.us: ; preds = %bb.ba, %.lr.ph249.split.us
  %i.ik = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0169.0247.us) #22 ; 2 uses
  %.not200.us = icmp eq ptr %i.ik, %i.id
  br i1 %.not200.us, label %._crit_edge250, label %.lr.ph249.split.us

._crit_edge250:                                   ; preds = %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread, %_ZN7AstNode2asI21AstNodeUOrStructDType12AstNodeDTypeEEPT_PT0_.exit.us, %._crit_edge244
  %i.il = phi ptr [ %i.ib, %_ZN7AstNode2asI21AstNodeUOrStructDType12AstNodeDTypeEEPT_PT0_.exit.us ], [ %i.ht, %._crit_edge244 ], [ %i.ht, %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread ] ; 3 uses
  %.pre275.pre328 = phi ptr [ null, %_ZN7AstNode2asI21AstNodeUOrStructDType12AstNodeDTypeEEPT_PT0_.exit.us ], [ %i.hs, %._crit_edge244 ], [ %i.hs, %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread ] ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !75 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %.not201252 = icmp eq ptr %i.in, %i.io
  br i1 %.not201252, label %._crit_edge256, label %.lr.ph255

._crit_edge250.thread:                            ; preds = %._crit_edge244.thread
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !75 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %.not201252333 = icmp eq ptr %i.iq, %i.ir
  br i1 %.not201252333, label %._crit_edge256, label %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147.thread.us.preheader

.lr.ph255:                                        ; preds = %._crit_edge250
  %.not10.i.i.i136 = icmp eq ptr %.pre275.pre328, null
  br i1 %.not10.i.i.i136, label %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147.thread.us.preheader, label %.lr.ph.i.i.i137.preheader

_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147.thread.us.preheader: ; preds = %._crit_edge250.thread, %.lr.ph255
  %i.is = phi ptr [ %i.il, %.lr.ph255 ], [ %i.hx, %._crit_edge250.thread ]
  %i.it = phi ptr [ %i.in, %.lr.ph255 ], [ %i.iq, %._crit_edge250.thread ]
  %i.iu = phi ptr [ %i.io, %.lr.ph255 ], [ %i.ir, %._crit_edge250.thread ]
  br label %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147.thread.us

_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147.thread.us: ; preds = %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147.thread.us.preheader, %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147.thread.us
  %.sroa.0164.0253.us = phi ptr [ %i.iy, %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147.thread.us ], [ %i.it, %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147.thread.us.preheader ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0164.0253.us, i64 32
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !114
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 208
  store ptr null, ptr %i.ix, align 8, !tbaa !139
  %i.iy = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0164.0253.us) #22 ; 2 uses
  %.not201.us = icmp eq ptr %i.iy, %i.iu
  br i1 %.not201.us, label %._crit_edge256, label %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147.thread.us

.lr.ph249.split:                                  ; preds = %.lr.ph249, %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread
  %.sroa.0169.0247 = phi ptr [ %i.jw, %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread ], [ %i.hv, %.lr.ph249 ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0169.0247, i64 32
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !132 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 72
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !133 ; 5 uses
  %.not.i118 = icmp eq ptr %i.jc, null
  br i1 %.not.i118, label %.lr.ph.i.i.i127.preheader, label %bb.bb

.lr.ph.i.i.i127.preheader:                        ; preds = %bb.bb, %.lr.ph249.split
  br label %.lr.ph.i.i.i127

bb.bb:                                            ; preds = %.lr.ph249.split
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 64
  %.sroa.0.0.copyload.i.i.i119 = load i16, ptr %i.jd, align 8, !tbaa !92
  %i.je = and i16 %.sroa.0.0.copyload.i.i.i119, -2
  %spec.select.i.not.i = icmp eq i16 %i.je, 100
  br i1 %spec.select.i.not.i, label %.lr.ph.i.i.i127.preheader, label %.split.us, !prof !103

.split.us:                                        ; preds = %bb.bb, %bb.ba
  %.us-phi = phi ptr [ %i.ih, %bb.ba ], [ %i.jc, %bb.bb ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.us-phi, i64 64
  %i.jg = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.6, i32 noundef 1063)
          to label %.noexc121 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc121:                                        ; preds = %.split.us
  %i.jh = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc122:                                        ; preds = %.noexc121
  %i.ji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jh, ptr noundef nonnull @.str.19, i64 noundef 55)
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc123:                                        ; preds = %.noexc122
  %.sroa.0.0.copyload.i.i5.i120 = load i16, ptr %i.jf, align 8, !tbaa !92
  %i.jj = zext i16 %.sroa.0.0.copyload.i.i5.i120 to i64
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.jj
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !104
  %i.jm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.jh, ptr noundef %i.jl)
          to label %.noexc124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc124:                                        ; preds = %.noexc123
  %i.jn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %.noexc125.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc125.invoke:                                 ; preds = %.noexc124, %.noexc115, %bb.v, %.noexc65
  %i.jo = phi ptr [ %i.he, %.noexc115 ], [ %.sroa.036.0.copyload, %bb.v ], [ %i.bp, %.noexc65 ], [ %.us-phi, %.noexc124 ]
  %i.jp = phi ptr [ %i.hn, %.noexc115 ], [ %i.cf, %bb.v ], [ %i.by, %.noexc65 ], [ %i.jm, %.noexc124 ]
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.jo, ptr noundef nonnull align 8 dereferenceable(112) %i.jp) #24
          to label %.noexc125.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc125.cont:                                   ; preds = %.noexc125.invoke
  unreachable

.lr.ph.i.i.i127:                                  ; preds = %.lr.ph.i.i.i127.preheader, %.lr.ph.i.i.i127
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i127 ], [ %i.hs, %.lr.ph.i.i.i127.preheader ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i127 ], [ %i.ci, %.lr.ph.i.i.i127.preheader ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !114
  %i.js = icmp ult ptr %i.jr, %i.jc               ; 3 uses
  %.19.i.i.i = select i1 %i.js, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.js, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !122 ; 2 uses
  %.not.i.i.i128 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i128, label %_ZNKSt8_Rb_treeIPK21AstNodeUOrStructDTypeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i, label %.lr.ph.i.i.i127, !llvm.loop !268

_ZNKSt8_Rb_treeIPK21AstNodeUOrStructDTypeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i: ; preds = %.lr.ph.i.i.i127
  %i.jt = icmp eq ptr %.19.i.i.i, %i.ci
  br i1 %i.jt, label %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread, label %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit

_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit: ; preds = %_ZNKSt8_Rb_treeIPK21AstNodeUOrStructDTypeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.js, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ju = load ptr, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  %.not = icmp ult ptr %i.jc, %i.ju
  br i1 %.not, label %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ja, i64 220
  store i8 1, ptr %i.jv, align 4, !tbaa !141
  br label %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread

_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIPK21AstNodeUOrStructDTypeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i, %bb.bc, %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit
  %i.jw = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0169.0247) #22 ; 2 uses
  %.not200 = icmp eq ptr %i.jw, %i.hw
  br i1 %.not200, label %._crit_edge250, label %.lr.ph249.split

._crit_edge256:                                   ; preds = %bb.bo, %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147.thread.us, %._crit_edge250.thread, %._crit_edge250
  %i.jx = phi ptr [ null, %._crit_edge250.thread ], [ null, %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147.thread.us ], [ %.pre275.pre328, %._crit_edge250 ], [ %.pre275.pre328, %bb.bo ]
  %.pre275.pre328335 = phi ptr [ %i.hx, %._crit_edge250.thread ], [ %i.is, %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147.thread.us ], [ %i.il, %._crit_edge250 ], [ %i.il, %bb.bo ]
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 296
  invoke void @_ZNSt8_Rb_treeIPK21AstNodeUOrStructDTypeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.jx)
          to label %_ZNSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EED2Ev.exit unwind label %bb.bd

bb.bd:                                            ; preds = %._crit_edge256
  %i.jy = landingpad { ptr, i32 }
          catch ptr null
  %i.jz = extractvalue { ptr, i32 } %i.jy, 0
  call void @__clang_call_terminate(ptr %i.jz) #25
  unreachable

_ZNSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EED2Ev.exit: ; preds = %._crit_edge256
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.ka = load ptr, ptr %i.cn, align 8, !tbaa !128 ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.ka, null
  br i1 %.not.i.i.i130, label %_ZNSt5queueIP21AstNodeUOrStructDTypeSt5dequeIS1_SaIS1_EEED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EED2Ev.exit
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !116 ; 2 uses
  %i.ke = load ptr, ptr %i.kb, align 8, !tbaa !129 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = icmp ult ptr %i.kd, %i.kf
  br i1 %i.kg, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIP21AstNodeUOrStructDTypeSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.be, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ki, %.lr.ph.i.i.i.i ], [ %i.kd, %bb.be ] ; 3 uses
  %i.kh = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !118
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef 512) #21
  %i.ki = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.kj = icmp ult ptr %.06.i.i.i.i, %i.ke
  br i1 %i.kj, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIP21AstNodeUOrStructDTypeSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i, !llvm.loop !0

_ZNSt11_Deque_baseIP21AstNodeUOrStructDTypeSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.cn, align 8, !tbaa !128
  br label %_ZNSt11_Deque_baseIP21AstNodeUOrStructDTypeSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i

_ZNSt11_Deque_baseIP21AstNodeUOrStructDTypeSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIP21AstNodeUOrStructDTypeSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i, %bb.be
  %i.kk = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIP21AstNodeUOrStructDTypeSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i ], [ %i.ka, %bb.be ]
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !127
  %i.kn = shl i64 %i.km, 3
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.kn) #21
  br label %_ZNSt5queueIP21AstNodeUOrStructDTypeSt5dequeIS1_SaIS1_EEED2Ev.exit

_ZNSt5queueIP21AstNodeUOrStructDTypeSt5dequeIS1_SaIS1_EEED2Ev.exit: ; preds = %_ZNSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EED2Ev.exit, %_ZNSt11_Deque_baseIP21AstNodeUOrStructDTypeSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !74
  invoke void @_ZNSt8_Rb_treeIP21AstNodeUOrStructDTypeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.kp)
          to label %_ZNSt3setIP21AstNodeUOrStructDTypeSt4lessIS1_ESaIS1_EED2Ev.exit unwind label %bb.bf

bb.bf:                                            ; preds = %_ZNSt5queueIP21AstNodeUOrStructDTypeSt5dequeIS1_SaIS1_EEED2Ev.exit
  %i.kq = landingpad { ptr, i32 }
          catch ptr null
  %i.kr = extractvalue { ptr, i32 } %i.kq, 0
  call void @__clang_call_terminate(ptr %i.kr) #25
  unreachable

_ZNSt3setIP21AstNodeUOrStructDTypeSt4lessIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt5queueIP21AstNodeUOrStructDTypeSt5dequeIS1_SaIS1_EEED2Ev.exit
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !74
  invoke void @_ZNSt8_Rb_treeIP10AstTypedefS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %.pre275.pre328335, ptr noundef %i.kt)
          to label %_ZNSt3setIP10AstTypedefSt4lessIS1_ESaIS1_EED2Ev.exit unwind label %bb.bg

bb.bg:                                            ; preds = %_ZNSt3setIP21AstNodeUOrStructDTypeSt4lessIS1_ESaIS1_EED2Ev.exit
  %i.ku = landingpad { ptr, i32 }
          catch ptr null
  %i.kv = extractvalue { ptr, i32 } %i.ku, 0
  call void @__clang_call_terminate(ptr %i.kv) #25
  unreachable

_ZNSt3setIP10AstTypedefSt4lessIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt3setIP21AstNodeUOrStructDTypeSt4lessIS1_ESaIS1_EED2Ev.exit
  %i.kw = load ptr, ptr %i.l, align 8, !tbaa !85  ; 3 uses
  %.not.i.i.i131 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i.i131, label %_ZNSt6vectorISt4pairIP7AstNodeP13AstNodeModuleESaIS5_EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt3setIP10AstTypedefSt4lessIS1_ESaIS1_EED2Ev.exit
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !86
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %i.kw to i64
  %i.lb = sub i64 %i.kz, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef %i.lb) #21
  br label %_ZNSt6vectorISt4pairIP7AstNodeP13AstNodeModuleESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIP7AstNodeP13AstNodeModuleESaIS5_EED2Ev.exit: ; preds = %_ZNSt3setIP10AstTypedefSt4lessIS1_ESaIS1_EED2Ev.exit, %bb.bh
  %i.lc = load ptr, ptr %i.a, align 8, !tbaa !89  ; 3 uses
  %.not.i.i.i132 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i132, label %_ZNSt6vectorISt4pairIP7AstNodeP8AstScopeESaIS5_EED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorISt4pairIP7AstNodeP13AstNodeModuleESaIS5_EED2Ev.exit
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !90
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.lc to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lh) #21
  br label %_ZNSt6vectorISt4pairIP7AstNodeP8AstScopeESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIP7AstNodeP8AstScopeESaIS5_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIP7AstNodeP13AstNodeModuleESaIS5_EED2Ev.exit, %bb.bi
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !74
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.li, ptr noundef %i.lk)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEED2Ev.exit.i unwind label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorISt4pairIP7AstNodeP8AstScopeESaIS5_EED2Ev.exit
  %i.ll = landingpad { ptr, i32 }
          catch ptr null
  %i.lm = extractvalue { ptr, i32 } %i.ll, 0
  call void @__clang_call_terminate(ptr %i.lm) #25
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairIP7AstNodeP8AstScopeESaIS5_EED2Ev.exit
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !19 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.lq = icmp eq ptr %i.lo, %i.lp
  br i1 %i.lq, label %_ZN13V3UniqueNamesD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEED2Ev.exit.i
  %i.lr = load i64, ptr %i.lp, align 8, !tbaa !21
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.ls) #21
  br label %_ZN13V3UniqueNamesD2Ev.exit

_ZN13V3UniqueNamesD2Ev.exit:                      ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !19 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.lw = icmp eq ptr %i.lu, %i.lv
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZN13V3UniqueNamesD2Ev.exit
  %i.lx = load i64, ptr %i.lv, align 8, !tbaa !21
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.ly) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZN13V3UniqueNamesD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser1InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser1InUse10s_userBusyE)
          to label %_ZN12VNUser1InUseD2Ev.exit unwind label %bb.bk

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %i.lz = landingpad { ptr, i32 }
          catch ptr null
  %i.ma = extractvalue { ptr, i32 } %i.lz, 0
  call void @__clang_call_terminate(ptr %i.ma) #25
  unreachable

_ZN12VNUser1InUseD2Ev.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  store ptr getelementptr inbounds nuw inrange(-16, 4184) (i8, ptr @_ZTV9VNVisitor, i64 16), ptr %0, align 8, !tbaa !72
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN9VNDeleter9doDeletesEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mb)
          to label %bb.bl unwind label %bb.bn, !inline_history !274

bb.bl:                                            ; preds = %_ZN12VNUser1InUseD2Ev.exit
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.i.i.i, label %_ZN9VNVisitorD2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !144
  %i.mf = ptrtoint ptr %i.me to i64
  %i.mg = ptrtoint ptr %i.mc to i64
  %i.mh = sub i64 %i.mf, %i.mg
  call void @_ZdlPvm(ptr noundef nonnull %i.mc, i64 noundef %i.mh) #21, !inline_history !274
  br label %_ZN9VNVisitorD2Ev.exit

bb.bn:                                            ; preds = %_ZN12VNUser1InUseD2Ev.exit
  %i.mi = landingpad { ptr, i32 }
          catch ptr null
  %i.mj = extractvalue { ptr, i32 } %i.mi, 0
  call void @__clang_call_terminate(ptr %i.mj) #25, !inline_history !274
  unreachable

_ZN9VNVisitorD2Ev.exit:                           ; preds = %bb.bl, %bb.bm
  ret void

.lr.ph.i.i.i137.preheader:                        ; preds = %.lr.ph255, %bb.bo
  %.sroa.0164.0253 = phi ptr [ %i.ms, %bb.bo ], [ %i.in, %.lr.ph255 ] ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.0164.0253, i64 32
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !114 ; 3 uses
  br label %.lr.ph.i.i.i137

.lr.ph.i.i.i137:                                  ; preds = %.lr.ph.i.i.i137.preheader, %.lr.ph.i.i.i137
  %.012.i.i.i138 = phi ptr [ %.1.i.i.i143, %.lr.ph.i.i.i137 ], [ %.pre275.pre328, %.lr.ph.i.i.i137.preheader ] ; 4 uses
  %.0811.i.i.i139 = phi ptr [ %.19.i.i.i140, %.lr.ph.i.i.i137 ], [ %i.ci, %.lr.ph.i.i.i137.preheader ] ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.012.i.i.i138, i64 32
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !114
  %i.mo = icmp ult ptr %i.mn, %i.ml               ; 3 uses
  %.19.i.i.i140 = select i1 %i.mo, ptr %.0811.i.i.i139, ptr %.012.i.i.i138 ; 2 uses
  %.1.in.v.i.i.i141 = select i1 %i.mo, i64 24, i64 16
  %.1.in.i.i.i142 = getelementptr inbounds nuw i8, ptr %.012.i.i.i138, i64 %.1.in.v.i.i.i141
  %.1.i.i.i143 = load ptr, ptr %.1.in.i.i.i142, align 8, !tbaa !122 ; 2 uses
  %.not.i.i.i144 = icmp eq ptr %.1.i.i.i143, null
  br i1 %.not.i.i.i144, label %_ZNKSt8_Rb_treeIPK21AstNodeUOrStructDTypeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i145, label %.lr.ph.i.i.i137, !llvm.loop !268

_ZNKSt8_Rb_treeIPK21AstNodeUOrStructDTypeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i145: ; preds = %.lr.ph.i.i.i137
  %i.mp = icmp eq ptr %.19.i.i.i140, %i.ci
  br i1 %i.mp, label %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147.thread, label %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147

_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147: ; preds = %_ZNKSt8_Rb_treeIPK21AstNodeUOrStructDTypeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i145
  %.19.i.i.i140.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.mo, ptr %.0811.i.i.i139, ptr %.012.i.i.i138
  %.19.i.i.i140.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i140.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.mq = load ptr, ptr %.19.i.i.i140.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  %.not202 = icmp ult ptr %i.ml, %i.mq
  br i1 %.not202, label %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147.thread, label %bb.bo

_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147.thread: ; preds = %_ZNKSt8_Rb_treeIPK21AstNodeUOrStructDTypeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i145, %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ml, i64 208
  store ptr null, ptr %i.mr, align 8, !tbaa !139
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147.thread, %_ZNKSt3setIPK21AstNodeUOrStructDTypeSt4lessIS2_ESaIS2_EE5countERKS2_.exit147
  %i.ms = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0164.0253) #22 ; 2 uses
  %.not201 = icmp eq ptr %i.ms, %i.io
  br i1 %.not201, label %._crit_edge256, label %.lr.ph.i.i.i137.preheader

.loopexit203:                                     ; preds = %.lr.ph241, %bb.ax, %_ZNSt5dequeIP21AstNodeUOrStructDTypeSaIS1_EE22_M_reserve_map_at_backEm.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNSt8_Rb_treeIPK21AstNodeUOrStructDTypeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i
  %lpad.loopexit204 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.w, %bb.y, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %bb.ad, %bb.af, %bb.ag, %bb.ai, %bb.z, %bb.aa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83, %bb.ab, %bb.ah, %bb.aj
  %lpad.loopexit207 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.invoke, %_ZN11AstVarScope12unlinkFrBackEP10VNRelinker.exit, %_ZN7AstNode2asI11AstVarScopeS_EEPT_PT0_.exit, %bb.m, %bb.g, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.f, %bb.e, %bb.t, %bb.o, %bb.l, %bb.k, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.b
  %lpad.loopexit209 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc125.invoke, %.noexc122, %.noexc124, %.noexc113, %.noexc115, %bb.av, %.noexc63, %.noexc65, %.noexc123, %.noexc121, %.split.us, %.noexc114, %.noexc112, %bb.az, %bb.v, %.noexc64, %.noexc62, %bb.s, %bb.u, %_ZN7AstNode2isI16AstInitialStaticS_EEbPKT0_.exit.thread
  %lpad.loopexit.split-lp210 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit203
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit203 ], [ %lpad.loopexit204, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit207, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit209, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp210, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.mt = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.mt) #25
  unreachable
}

declare void @_ZN8V3Global19dumpCheckGlobalTreeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibb(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !22
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c
end_hunk_0
