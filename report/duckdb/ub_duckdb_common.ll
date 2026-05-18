inline.NumInlined: 29985
inline.NumDeleted: 10454
begin_hunk_0_@_ZN6duckdb25BoxRendererImplementation19ComputeRenderWidthsERNS_6vectorINS_20RenderDataCollectionELb1ESaIS2_EEEmm:bb.a
  br i1 %.not10.i24.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE5eraseERS1_.exit.i, label %.lr.ph.i25.i.i.i

.lr.ph.i25.i.i.i:                                 ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %.lr.ph.i25.i.i.i
  %.012.i26.i.i.i = phi ptr [ %.1.i31.i.i.i, %.lr.ph.i25.i.i.i ], [ %i.zd, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i ] ; 3 uses
  %.0811.i27.i.i.i = phi ptr [ %.19.i28.i.i.i, %.lr.ph.i25.i.i.i ], [ %.02243.i.i.i, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i ]
  %i.zh = getelementptr inbounds nuw i8, ptr %.012.i26.i.i.i, i64 32
  %i.zi = load i64, ptr %i.zh, align 8, !tbaa !33
  %i.zj = icmp ult i64 %i.wd, %i.zi               ; 2 uses
  %.19.i28.i.i.i = select i1 %i.zj, ptr %.012.i26.i.i.i, ptr %.0811.i27.i.i.i ; 2 uses
  %.1.in.v.i29.i.i.i = select i1 %i.zj, i64 16, i64 24
  %.1.in.i30.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i26.i.i.i, i64 %.1.in.v.i29.i.i.i
  %.1.i31.i.i.i = load ptr, ptr %.1.in.i30.i.i.i, align 8, !tbaa !454 ; 2 uses
  %.not.i32.i.i.i = icmp eq ptr %.1.i31.i.i.i, null
  br i1 %.not.i32.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE5eraseERS1_.exit.i, label %.lr.ph.i25.i.i.i, !llvm.loop !467

bb.gi:                                            ; preds = %bb.gg, %.lr.ph.i.i.i
  %.sink.i.i.i = phi i64 [ 24, %.lr.ph.i.i.i ], [ 16, %bb.gg ]
  %.123.i.i.i = phi ptr [ %.02243.i.i.i, %.lr.ph.i.i.i ], [ %.044.i.i.i, %bb.gg ] ; 3 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.044.i.i.i, i64 %.sink.i.i.i
  %.0.i.i.i388 = load ptr, ptr %i.zk, align 8, !tbaa !454 ; 2 uses
  %.not.i.i.i389 = icmp eq ptr %.0.i.i.i388, null
  br i1 %.not.i.i.i389, label %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE5eraseERS1_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !468

_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE5eraseERS1_.exit.i: ; preds = %bb.gi, %.lr.ph.i25.i.i.i, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %bb.gf
  %.sroa.037.0.i.i.i = phi ptr [ %.08.lcssa.i.i.i.i, %.lr.ph.i25.i.i.i ], [ %.08.lcssa.i.i.i.i, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i ], [ %i.tw, %bb.gf ], [ %.123.i.i.i, %bb.gi ]
  %.sroa.3.0.i.i.i = phi ptr [ %.19.i28.i.i.i, %.lr.ph.i25.i.i.i ], [ %.02243.i.i.i, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i ], [ %i.tw, %bb.gf ], [ %.123.i.i.i, %bb.gi ]
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS6_ESE_(ptr noundef nonnull align 8 dereferenceable(48) %36, ptr %.sroa.037.0.i.i.i, ptr %.sroa.3.0.i.i.i)
          to label %bb.gj unwind label %bb.gk

bb.gj:                                            ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE5eraseERS1_.exit.i
  %i.zl = sub i64 %.01861013, %i.wt               ; 2 uses
  %.not207 = icmp eq i64 %i.zl, 0
  br i1 %.not207, label %.thread766, label %.lr.ph1014

bb.gk:                                            ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE5eraseERS1_.exit.i
  %i.zm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.gl:                                            ; preds = %._crit_edge1011
  %i.zn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

.thread766:                                       ; preds = %bb.gj, %_ZNSt6vectorImSaImEE6resizeEm.exit, %._crit_edge1026
  %i.zo = load ptr, ptr %i.um, align 8, !tbaa !150
  %i.zp = load ptr, ptr %37, align 8, !tbaa !152  ; 2 uses
  %.not1084 = icmp eq ptr %i.zo, %i.zp
  br i1 %.not1084, label %._crit_edge1031, label %.lr.ph1030

._crit_edge1031:                                  ; preds = %bb.gu, %.thread766
  %.0174.lcssa = phi i1 [ false, %.thread766 ], [ %.1175, %bb.gu ]
  %.lcssa877 = phi ptr [ %i.zp, %.thread766 ], [ %i.aai, %bb.gu ] ; 2 uses
  %.not.i.i.i391 = icmp eq ptr %.lcssa877, null
  br i1 %.not.i.i.i391, label %_ZNSt6vectorImSaImEED2Ev.exit392, label %bb.gm

bb.gm:                                            ; preds = %._crit_edge1031
  call void @_ZdlPv(ptr noundef nonnull %.lcssa877) #61
  br label %_ZNSt6vectorImSaImEED2Ev.exit392

_ZNSt6vectorImSaImEED2Ev.exit392:                 ; preds = %._crit_edge1031, %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #59
  %i.zq = load ptr, ptr %i.tx, align 8, !tbaa !450
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %36, ptr noundef %i.zq)
          to label %_ZNSt3mapImN6duckdb6vectorImLb1ESaImEEESt4lessImESaISt4pairIKmS3_EEED2Ev.exit unwind label %bb.gn

bb.gn:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit392
  %i.zr = landingpad { ptr, i32 }
          catch ptr null
  %i.zs = extractvalue { ptr, i32 } %i.zr, 0
  call void @__clang_call_terminate(ptr %i.zs) #62
  unreachable

_ZNSt3mapImN6duckdb6vectorImLb1ESaImEEESt4lessImESaISt4pairIKmS3_EEED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit392
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #59
  br label %.loopexit810

.lr.ph1030:                                       ; preds = %.thread766, %bb.gu
  %.01741029 = phi i1 [ %.1175, %bb.gu ], [ false, %.thread766 ]
  %.01851028 = phi i64 [ %i.aag, %bb.gu ], [ 0, %.thread766 ] ; 5 uses
  %i.zt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %37, i64 noundef %.01851028)
          to label %bb.go unwind label %bb.gp

bb.go:                                            ; preds = %.lr.ph1030
  %i.zu = load i64, ptr %i.zt, align 8, !tbaa !33
  %i.zv = icmp eq i64 %i.zu, 0
  br i1 %i.zv, label %bb.gu, label %bb.gq

bb.gp:                                            ; preds = %bb.gs, %bb.gr, %bb.gq, %.lr.ph1030
  %i.zw = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.gq:                                            ; preds = %bb.go
  %i.zx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %37, i64 noundef %.01851028)
          to label %bb.gr unwind label %bb.gp

bb.gr:                                            ; preds = %bb.gq
  %i.zy = load i64, ptr %i.zx, align 8, !tbaa !33
  %i.zz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, i64 noundef %.01851028)
          to label %bb.gs unwind label %bb.gp     ; 2 uses

bb.gs:                                            ; preds = %bb.gr
  %i.aaa = load i64, ptr %i.zz, align 8, !tbaa !33
  %i.aab = sub i64 %i.aaa, %i.zy
  store i64 %i.aab, ptr %i.zz, align 8, !tbaa !33
  %i.aac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %37, i64 noundef %.01851028)
          to label %bb.gt unwind label %bb.gp

bb.gt:                                            ; preds = %bb.gs
  %i.aad = load i64, ptr %i.aac, align 8, !tbaa !33
  %i.aae = load i64, ptr %i.ez, align 8, !tbaa !399
  %i.aaf = sub i64 %i.aae, %i.aad
  store i64 %i.aaf, ptr %i.ez, align 8, !tbaa !399
  br label %bb.gu

bb.gu:                                            ; preds = %bb.go, %bb.gt
  %.1175 = phi i1 [ %.01741029, %bb.go ], [ true, %bb.gt ] ; 2 uses
  %i.aag = add nuw i64 %.01851028, 1              ; 2 uses
  %i.aah = load ptr, ptr %i.um, align 8, !tbaa !150
  %i.aai = load ptr, ptr %37, align 8, !tbaa !152 ; 2 uses
  %i.aaj = ptrtoint ptr %i.aah to i64
  %i.aak = ptrtoint ptr %i.aai to i64
  %i.aal = sub i64 %i.aaj, %i.aak
  %i.aam = ashr exact i64 %i.aal, 3
  %i.aan = icmp ult i64 %i.aag, %i.aam
  br i1 %i.aan, label %.lr.ph1030, label %._crit_edge1031, !llvm.loop !469

bb.gv:                                            ; preds = %bb.gk, %bb.gl, %bb.fp, %bb.fs, %bb.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377, %bb.gc, %bb.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375, %bb.gp, %bb.fn
  %.pn225.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.xa, %bb.fn ], [ %i.zw, %bb.gp ], [ %i.yb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375 ], [ %i.xv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370 ], [ %i.zn, %bb.gl ], [ %i.xv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372 ], [ %.pn210765, %bb.gc ], [ %i.yb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377 ], [ %i.yk, %bb.ge ], [ %i.xh, %bb.fp ], [ %i.xs, %bb.fs ], [ %.pn223762, %bb.fw ], [ %i.zm, %bb.gk ]
  %i.aao = load ptr, ptr %37, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i393 = icmp eq ptr %i.aao, null
  br i1 %.not.i.i.i393, label %_ZNSt6vectorImSaImEED2Ev.exit394, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @_ZdlPv(ptr noundef nonnull %i.aao) #61
  br label %_ZNSt6vectorImSaImEED2Ev.exit394

_ZNSt6vectorImSaImEED2Ev.exit394:                 ; preds = %bb.gv, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #59
  br label %bb.gx

bb.gx:                                            ; preds = %.loopexit813, %.loopexit.split-lp814, %_ZNSt6vectorImSaImEED2Ev.exit394
  %.pn232 = phi { ptr, i32 } [ %.pn225.pn.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit394 ], [ %lpad.loopexit815, %.loopexit813 ], [ %lpad.loopexit.split-lp816, %.loopexit.split-lp814 ]
  call void @_ZNSt3mapImN6duckdb6vectorImLb1ESaImEEESt4lessImESaISt4pairIKmS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %36) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #59
  br label %bb.hx

bb.gy:                                            ; preds = %._crit_edge998
  %i.aap = load ptr, ptr %i.fa, align 8, !tbaa !163 ; 2 uses
  %i.aaq = load ptr, ptr %i.fb, align 8, !tbaa !163 ; 2 uses
  %.not7841034 = icmp eq ptr %i.aap, %i.aaq
  br i1 %.not7841034, label %.loopexit810, label %.lr.ph1038

.lr.ph1038:                                       ; preds = %bb.gy
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.gz

bb.gz:                                            ; preds = %.lr.ph1038, %bb.hb
  %.21761036 = phi i1 [ false, %.lr.ph1038 ], [ %.3177, %bb.hb ]
  %.sroa.0692.01035 = phi ptr [ %i.aap, %.lr.ph1038 ], [ %i.aaw, %bb.hb ] ; 3 uses
  %i.aas = load i64, ptr %.sroa.0692.01035, align 8, !tbaa !33 ; 2 uses
  %i.aat = load i64, ptr %i.aar, align 8, !tbaa !444 ; 3 uses
  %.not206 = icmp ugt i64 %i.aas, %i.aat
  br i1 %.not206, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %.neg = sub i64 %i.aat, %i.aas
  %i.aau = load i64, ptr %i.ez, align 8, !tbaa !399
  %i.aav = add i64 %.neg, %i.aau
  store i64 %i.aav, ptr %i.ez, align 8, !tbaa !399
  store i64 %i.aat, ptr %.sroa.0692.01035, align 8, !tbaa !33
  br label %bb.hb

bb.hb:                                            ; preds = %bb.gz, %bb.ha
  %.3177 = phi i1 [ true, %bb.ha ], [ %.21761036, %bb.gz ] ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %.sroa.0692.01035, i64 8 ; 2 uses
  %.not784 = icmp eq ptr %i.aaw, %i.aaq
  br i1 %.not784, label %.loopexit810, label %bb.gz

.loopexit810:                                     ; preds = %bb.hb, %bb.gy, %_ZNSt3mapImN6duckdb6vectorImLb1ESaImEEESt4lessImESaISt4pairIKmS3_EEED2Ev.exit
  %.4178 = phi i1 [ %.0174.lcssa, %_ZNSt3mapImN6duckdb6vectorImLb1ESaImEEESt4lessImESaISt4pairIKmS3_EEED2Ev.exit ], [ false, %bb.gy ], [ %.3177, %bb.hb ]
  %i.aax = load i64, ptr %i.ez, align 8, !tbaa !399 ; 2 uses
  %i.aay = icmp ugt i64 %i.aax, %3
  br i1 %i.aay, label %bb.hc, label %.loopexit809

bb.hc:                                            ; preds = %.loopexit810
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aba = load i64, ptr %i.aaz, align 8, !tbaa !470
  %i.abb = add i64 %i.aax, 3
  %i.abc = add i64 %i.abb, %i.aba                 ; 3 uses
  store i64 %i.abc, ptr %i.ez, align 8, !tbaa !399
  %i.abd = icmp ugt i64 %i.abc, %3
  br i1 %i.abd, label %.lr.ph1042, label %._crit_edge1043

.lr.ph1042:                                       ; preds = %bb.hc
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  br label %bb.hd

bb.hd:                                            ; preds = %.lr.ph1042, %bb.hf
  %.01801040 = phi i64 [ 0, %.lr.ph1042 ], [ %.1181, %bb.hf ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #59
  %i.abf = invoke noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %i.x)
          to label %_ZN6duckdb11NumericCastIlmvEET_T0_.exit unwind label %bb.hg

_ZN6duckdb11NumericCastIlmvEET_T0_.exit:          ; preds = %bb.hd
  %i.abg = sdiv i64 %i.abf, 2
  %i.abh = add nsw i64 %i.abg, %.01801040
  %i.abi = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.abh)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.hg ; 2 uses

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %_ZN6duckdb11NumericCastIlmvEET_T0_.exit
  store i64 %i.abi, ptr %i.p, align 8, !tbaa !33
  %i.abj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, i64 noundef %i.abi)
          to label %bb.he unwind label %bb.hg

bb.he:                                            ; preds = %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.abk = load i64, ptr %i.abj, align 8, !tbaa !33
  %i.abl = load i64, ptr %i.ez, align 8, !tbaa !399
  %reass.sub = sub i64 %i.abl, %i.abk
  %i.abm = add i64 %reass.sub, -3
  store i64 %i.abm, ptr %i.ez, align 8, !tbaa !399
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #59
  store ptr %i.abe, ptr %15, align 8, !tbaa !471
  %i.abn = invoke { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKmSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.abe, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.hf unwind label %bb.hg     ; 0 uses

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #59
  %43 = xor i64 %.01801040, -1
  %44 = sub nsw i64 0, %.01801040
  %45 = icmp slt i64 %.01801040, 0
  %.1181 = select i1 %45, i64 %44, i64 %43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #59
  %i.abo = load i64, ptr %i.ez, align 8, !tbaa !399 ; 2 uses
  %i.abp = icmp ugt i64 %i.abo, %3
  br i1 %i.abp, label %bb.hd, label %._crit_edge1043, !llvm.loop !473

bb.hg:                                            ; preds = %bb.he, %_ZN6duckdb11NumericCastIlmvEET_T0_.exit, %bb.hd, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.abq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #59
  br label %bb.hx

._crit_edge1043:                                  ; preds = %bb.hf, %bb.hc
  %.lcssa875 = phi i64 [ %i.abc, %bb.hc ], [ %i.abo, %bb.hf ]
  %i.abr = sub nuw i64 %3, %.lcssa875             ; 2 uses
  %i.abs = load ptr, ptr %i.fb, align 8, !tbaa !150
  %i.abt = load ptr, ptr %i.fa, align 8, !tbaa !152
  %i.abu = icmp ne ptr %i.abs, %i.abt
  %i.abv = icmp ne i64 %i.abr, 0
  %i.abw = select i1 %i.abu, i1 %i.abv, i1 false
  br i1 %i.abw, label %.lr.ph1048, label %.loopexit809

.lr.ph1048:                                       ; preds = %._crit_edge1043
  %i.abx = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.aca = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %bb.hh

bb.hh:                                            ; preds = %.lr.ph1048, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit
  %.01711046 = phi i64 [ %i.abr, %.lr.ph1048 ], [ %.1172, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit ] ; 6 uses
  %storemerge2131045 = phi i64 [ 0, %.lr.ph1048 ], [ %i.adk, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit ] ; 10 uses
  %i.acb = load i64, ptr %i.abx, align 8, !tbaa !309
  %.not.not.i.i = icmp eq i64 %i.acb, 0
  br i1 %.not.not.i.i, label %.preheader1089, label %bb.hj

.preheader1089:                                   ; preds = %bb.hh, %bb.hi
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.hi ], [ %i.aca, %bb.hh ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !120 ; 3 uses
  %.not.i.i400 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i400, label %.loopexit806, label %bb.hi

bb.hi:                                            ; preds = %.preheader1089
  %i.acc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.acd = load i64, ptr %i.acc, align 8, !tbaa !33
  %i.ace = icmp eq i64 %storemerge2131045, %i.acd
  br i1 %i.ace, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %.preheader1089, !llvm.loop !474

bb.hj:                                            ; preds = %bb.hh
  %i.acf = load i64, ptr %i.abz, align 8, !tbaa !191 ; 2 uses
  %i.acg = urem i64 %storemerge2131045, %i.acf    ; 2 uses
  %i.ach = load ptr, ptr %i.aby, align 8, !tbaa !189
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %i.acg
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !475 ; 2 uses
  %.not.i.i.i.i398 = icmp eq ptr %i.acj, null
  br i1 %.not.i.i.i.i398, label %.loopexit806, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !120 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 8
  %i.acm = load i64, ptr %i.acl, align 8, !tbaa !33
  %i.acn = icmp eq i64 %storemerge2131045, %i.acm
  br i1 %i.acn, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %.lr.ph.i.i.i.i399

bb.hl:                                            ; preds = %bb.hm
  %i.aco = icmp eq i64 %storemerge2131045, %i.acr
  br i1 %i.aco, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %.lr.ph.i.i.i.i399, !llvm.loop !476

.lr.ph.i.i.i.i399:                                ; preds = %bb.hk, %bb.hl
  %.020.i.i.i.i = phi ptr [ %i.acp, %bb.hl ], [ %i.ack, %bb.hk ]
  %i.acp = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !120 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.acp, null
  br i1 %.not18.i.i.i.i, label %.loopexit806, label %bb.hm

bb.hm:                                            ; preds = %.lr.ph.i.i.i.i399
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %i.acr = load i64, ptr %i.acq, align 8, !tbaa !33 ; 2 uses
  %i.acs = urem i64 %i.acr, %i.acf
  %.not19.i.i.i.i = icmp eq i64 %i.acs, %i.acg
  br i1 %.not19.i.i.i.i, label %bb.hl, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !476

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.hm
  br label %.loopexit806, !llvm.loop !476

.loopexit806:                                     ; preds = %.lr.ph.i.i.i.i399, %.preheader1089, %..loopexit_crit_edge21.i.i.i.i, %bb.hj
  %i.act = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, i64 noundef %storemerge2131045)
          to label %bb.hn unwind label %bb.hp

bb.hn:                                            ; preds = %.loopexit806
  %i.acu = load i64, ptr %i.act, align 8, !tbaa !33
  %i.acv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %34, i64 noundef %storemerge2131045)
          to label %bb.ho unwind label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  %i.acw = load i64, ptr %i.acv, align 8, !tbaa !33
  %.not218 = icmp ult i64 %i.acu, %i.acw
  br i1 %.not218, label %bb.hq, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit

bb.hp:                                            ; preds = %bb.hn, %.loopexit806
  %i.acx = landingpad { ptr, i32 }
          cleanup
  br label %bb.hx

bb.hq:                                            ; preds = %bb.ho
  %i.acy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %34, i64 noundef %storemerge2131045)
          to label %bb.hr unwind label %bb.hu

bb.hr:                                            ; preds = %bb.hq
  %i.acz = load i64, ptr %i.acy, align 8, !tbaa !33
  %i.ada = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, i64 noundef %storemerge2131045)
          to label %bb.hs unwind label %bb.hu

bb.hs:                                            ; preds = %bb.hr
  %i.adb = load i64, ptr %i.ada, align 8, !tbaa !33
  %i.adc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, i64 noundef %storemerge2131045)
          to label %bb.ht unwind label %bb.hu     ; 2 uses

bb.ht:                                            ; preds = %bb.hs
  %i.add = sub i64 %i.acz, %i.adb
  %i.ade = call noundef i64 @llvm.umin.i64(i64 %.01711046, i64 %i.add) ; 3 uses
  %i.adf = load i64, ptr %i.adc, align 8, !tbaa !33
  %i.adg = add i64 %i.adf, %i.ade
  store i64 %i.adg, ptr %i.adc, align 8, !tbaa !33
  %i.adh = sub i64 %.01711046, %i.ade
  %i.adi = load i64, ptr %i.ez, align 8, !tbaa !399
  %i.adj = add i64 %i.adi, %i.ade
  store i64 %i.adj, ptr %i.ez, align 8, !tbaa !399
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit: ; preds = %bb.hl, %bb.hi, %bb.hk, %bb.ho, %bb.ht
  %.1172 = phi i64 [ %i.adh, %bb.ht ], [ %.01711046, %bb.ho ], [ %.01711046, %bb.hi ], [ %.01711046, %bb.hk ], [ %.01711046, %bb.hl ] ; 2 uses
  %i.adk = add nuw i64 %storemerge2131045, 1      ; 2 uses
  %i.adl = load ptr, ptr %i.fb, align 8, !tbaa !150
  %i.adm = load ptr, ptr %i.fa, align 8, !tbaa !152
  %i.adn = ptrtoint ptr %i.adl to i64
  %i.ado = ptrtoint ptr %i.adm to i64
  %i.adp = sub i64 %i.adn, %i.ado
  %i.adq = ashr exact i64 %i.adp, 3
  %i.adr = icmp ult i64 %i.adk, %i.adq
  %i.ads = icmp ne i64 %.1172, 0
  %i.adt = select i1 %i.adr, i1 %i.ads, i1 false
  br i1 %i.adt, label %bb.hh, label %.loopexit809, !llvm.loop !477

bb.hu:                                            ; preds = %bb.hs, %bb.hr, %bb.hq
  %i.adu = landingpad { ptr, i32 }
          cleanup
  br label %bb.hx

.loopexit809:                                     ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, %._crit_edge1043, %.loopexit810
  %i.adv = load ptr, ptr %35, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i401 = icmp eq ptr %i.adv, null
  br i1 %.not.i.i.i401, label %_ZNSt6vectorImSaImEED2Ev.exit402, label %bb.hv

bb.hv:                                            ; preds = %.loopexit809
  call void @_ZdlPv(ptr noundef nonnull %i.adv) #61
  br label %_ZNSt6vectorImSaImEED2Ev.exit402

_ZNSt6vectorImSaImEED2Ev.exit402:                 ; preds = %.loopexit809, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #59
  %i.adw = load ptr, ptr %34, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i403 = icmp eq ptr %i.adw, null
  br i1 %.not.i.i.i403, label %_ZNSt6vectorImSaImEED2Ev.exit404, label %bb.hw

bb.hw:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit402
  call void @_ZdlPv(ptr noundef nonnull %i.adw) #61
  br label %_ZNSt6vectorImSaImEED2Ev.exit404

_ZNSt6vectorImSaImEED2Ev.exit404:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit402, %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #59
  br label %bb.ia

bb.hx:                                            ; preds = %.loopexit823, %.loopexit.split-lp824, %.loopexit818, %.loopexit.split-lp819, %bb.hp, %bb.hu, %bb.gx, %bb.hg
  %.pn236.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp821, %.loopexit.split-lp819 ], [ %.pn232, %bb.gx ], [ %i.abq, %bb.hg ], [ %i.acx, %bb.hp ], [ %i.adu, %bb.hu ], [ %lpad.loopexit820, %.loopexit818 ], [ %lpad.loopexit825, %.loopexit823 ], [ %lpad.loopexit.split-lp826, %.loopexit.split-lp824 ] ; 2 uses
  %i.adx = load ptr, ptr %35, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i405 = icmp eq ptr %i.adx, null
  br i1 %.not.i.i.i405, label %_ZNSt6vectorImSaImEED2Ev.exit406, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  call void @_ZdlPv(ptr noundef nonnull %i.adx) #61
  br label %_ZNSt6vectorImSaImEED2Ev.exit406

_ZNSt6vectorImSaImEED2Ev.exit406:                 ; preds = %bb.hx, %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #59
  %i.ady = load ptr, ptr %34, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i407 = icmp eq ptr %i.ady, null
  br i1 %.not.i.i.i407, label %_ZNSt6vectorImSaImEED2Ev.exit408, label %bb.hz

bb.hz:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit406
  call void @_ZdlPv(ptr noundef nonnull %i.ady) #61
  br label %_ZNSt6vectorImSaImEED2Ev.exit408

_ZNSt6vectorImSaImEED2Ev.exit408:                 ; preds = %bb.hz, %_ZNSt6vectorImSaImEED2Ev.exit406, %bb.ek
  %.pn236.pn.pn = phi { ptr, i32 } [ %i.rz, %bb.ek ], [ %.pn236.pn, %_ZNSt6vectorImSaImEED2Ev.exit406 ], [ %.pn236.pn, %bb.hz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #59
  br label %.body

bb.ia:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit404, %bb.ed
  %.5179 = phi i1 [ %.4178, %_ZNSt6vectorImSaImEED2Ev.exit404 ], [ false, %bb.ed ]
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  invoke void @_ZN6duckdb25BoxRendererImplementation23UpdateColumnCountFooterEmRKSt13unordered_setImSt4hashImESt8equal_toImESaImEE(ptr noundef nonnull align 8 dereferenceable(672) %0, i64 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(56) %i.adz)
          to label %.preheader unwind label %bb.ec
end_hunk_0
