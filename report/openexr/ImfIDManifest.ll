Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfIDManifest?download=true
inline.NumInlined: 2191
inline.NumDeleted: 810
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN7Imf_3_410IDManifest4initEPKcS2_:bb.a
bb.dk:                                            ; preds = %bb.dh
  %i.py = load i32, ptr %i.pt, align 1
  %i.pz = zext i32 %i.py to i64
  br label %.sink.split

bb.dl:                                            ; preds = %bb.dc
  %i.qa = invoke fastcc noundef i64 @_ZN7Imf_3_412_GLOBAL__N_125readVariableLengthIntegerERPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %2)
          to label %bb.dm unwind label %.loopexit357

.sink.split:                                      ; preds = %bb.dg, %bb.dk
  %.sink = phi ptr [ %i.pu, %bb.dk ], [ %i.pn, %bb.dg ]
  %.0350.ph = phi i64 [ %i.pz, %bb.dk ], [ %i.ps, %bb.dg ]
  store ptr %.sink, ptr %i.d, align 8, !tbaa !24
  br label %bb.dm

bb.dm:                                            ; preds = %.sink.split, %bb.dl
  %.0350 = phi i64 [ %i.qa, %bb.dl ], [ %.0350.ph, %.sink.split ]
  %i.qb = add i64 %.0350, %.084492                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  store i64 %i.qb, ptr %9, align 8, !tbaa !71, !alias.scope !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ja, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !144
  %i.qc = load ptr, ptr %i.pi, align 8, !tbaa !72 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.qc, null
  br i1 %.not10.i.i.i.i, label %.critedge.i257, label %.lr.ph.i.i.i.i255

.lr.ph.i.i.i.i255:                                ; preds = %bb.dm, %.lr.ph.i.i.i.i255
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i255 ], [ %i.qc, %bb.dm ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i255 ], [ %i.pj, %bb.dm ]
  %i.qd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !37
  %i.qf = icmp ult i64 %i.qe, %i.qb               ; 2 uses
  %.19.i.i.i.i = select i1 %i.qf, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.qf, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i256 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i256, label %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i, label %.lr.ph.i.i.i.i255, !llvm.loop !3

_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i: ; preds = %.lr.ph.i.i.i.i255
  %i.qg = icmp eq ptr %.19.i.i.i.i, %i.pj
  br i1 %i.qg, label %.critedge.i257, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i
  %i.qh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !37
  %i.qj = icmp ult i64 %i.qb, %i.qi
  br i1 %i.qj, label %.critedge.i257, label %bb.du

.critedge.i257:                                   ; preds = %bb.dn, %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i, %bb.dm
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.dn ], [ %.19.i.i.i.i, %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i ], [ %i.pj, %bb.dm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %i.ph, ptr %3, align 8, !tbaa !74
  %i.qk = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34
          to label %.noexc309 unwind label %bb.dw ; 8 uses

.noexc309:                                        ; preds = %.critedge.i257
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 32 ; 3 uses
  store i64 %i.qb, ptr %i.ql, align 8, !tbaa !76
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 40 ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qk, i64 48
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qk, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qm, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ja, i8 0, i64 24, i1 false)
  store ptr %i.qk, ptr %i.jb, align 8, !tbaa !79
  %i.qp = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.ph, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.ql)
          to label %bb.do unwind label %bb.dr     ; 2 uses

bb.do:                                            ; preds = %.noexc309
  %i.qq = extractvalue { ptr, ptr } %i.qp, 0      ; 2 uses
  %i.qr = extractvalue { ptr, ptr } %i.qp, 1      ; 4 uses
  %.not.i306 = icmp eq ptr %i.qr, null
  br i1 %.not.i306, label %bb.ds, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.not.i.i.i307 = icmp ne ptr %i.qq, null
  %i.qs = icmp eq ptr %i.qr, %i.pj
  %or.cond.i.i.i = select i1 %.not.i.i.i307, i1 true, i1 %i.qs
  br i1 %or.cond.i.i.i, label %.thread.i308, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 32
  %i.qu = load i64, ptr %i.ql, align 8, !tbaa !37
  %i.qv = load i64, ptr %i.qt, align 8, !tbaa !37
  %i.qw = icmp ult i64 %i.qu, %i.qv
  br label %.thread.i308

.thread.i308:                                     ; preds = %bb.dq, %bb.dp
  %i.qx = phi i1 [ %i.qw, %bb.dq ], [ true, %bb.dp ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.qx, ptr noundef nonnull %i.qk, ptr noundef nonnull %i.qr, ptr noundef nonnull align 8 dereferenceable(32) %i.pj) #32
  %i.qy = load i64, ptr %i.pk, align 8, !tbaa !49
  %i.qz = add i64 %i.qy, 1
  store i64 %i.qz, ptr %i.pk, align 8, !tbaa !49
  br label %bb.dy

bb.dr:                                            ; preds = %.noexc309
  %i.ra = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %.body310

bb.ds:                                            ; preds = %bb.do
  %i.rb = load ptr, ptr %i.qm, align 8, !tbaa !28 ; 3 uses
  %i.rc = load ptr, ptr %i.qn, align 8, !tbaa !27 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.rb, %i.rc
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ds, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.ri, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.rb, %bb.ds ] ; 3 uses
  %i.rd = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.rf = icmp eq ptr %i.rd, %i.re
  br i1 %i.rf, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.rg = load i64, ptr %i.re, align 8, !tbaa !35
  %i.rh = add i64 %i.rg, 1
  call void @_ZdlPvm(ptr noundef %i.rd, i64 noundef %i.rh) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ri = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ri, %i.rc
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.qm, align 8, !tbaa !28
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.ds
  %i.rj = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.rb, %bb.ds ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.rj, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i, label %bb.dt

bb.dt:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.rk = load ptr, ptr %i.qo, align 8, !tbaa !44
  %i.rl = ptrtoint ptr %i.rk to i64
  %i.rm = ptrtoint ptr %i.rj to i64
  %i.rn = sub i64 %i.rl, %i.rm
  call void @_ZdlPvm(ptr noundef nonnull %i.rj, i64 noundef %i.rn) #35
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i

_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i: ; preds = %bb.dt, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.qk, i64 noundef 64) #35
  br label %bb.dy

bb.du:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.ro = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ro, ptr noundef nonnull @.str.18)
          to label %bb.dv unwind label %bb.dx

bb.dv:                                            ; preds = %bb.du
  invoke void @__cxa_throw(ptr nonnull %i.ro, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #33
          to label %bb.ep unwind label %.loopexit.split-lp363

bb.dw:                                            ; preds = %.critedge.i257
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %.body310

.body310:                                         ; preds = %bb.dr, %bb.dw
  %eh.lpad-body311 = phi { ptr, i32 } [ %i.rp, %bb.dw ], [ %i.ra, %bb.dr ]
  call void @_ZNSt4pairImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #32
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %.body

bb.dx:                                            ; preds = %bb.du
  %i.rq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ro) #32
  br label %.body

.loopexit362:                                     ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit364 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp363:                            ; preds = %bb.dv, %bb.eb
  %lpad.loopexit.split-lp365 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dy:                                            ; preds = %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i, %.thread.i308
  %.sroa.0.08.i = phi ptr [ %i.qk, %.thread.i308 ], [ %i.qq, %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 40 ; 3 uses
  %i.rs = load ptr, ptr %i.pl, align 8, !tbaa !27
  %i.rt = load ptr, ptr %i.ol, align 8, !tbaa !28
  %i.ru = ptrtoint ptr %i.rs to i64
  %i.rv = ptrtoint ptr %i.rt to i64
  %i.rw = sub i64 %i.ru, %i.rv                    ; 2 uses
  %i.rx = ashr exact i64 %i.rw, 5                 ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 48 ; 4 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !27 ; 7 uses
  %i.sa = load ptr, ptr %i.rr, align 8, !tbaa !28 ; 6 uses
  %i.sb = ptrtoint ptr %i.rz to i64               ; 2 uses
  %i.sc = ptrtoint ptr %i.sa to i64               ; 2 uses
  %i.sd = sub i64 %i.sb, %i.sc                    ; 2 uses
  %i.se = ashr exact i64 %i.sd, 5                 ; 7 uses
  %i.sf = icmp ugt i64 %i.rx, %i.se
  br i1 %i.sf, label %bb.dz, label %bb.ee

bb.dz:                                            ; preds = %bb.dy
  %i.sg = sub nuw nsw i64 %i.rx, %i.se            ; 12 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 56 ; 3 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !44
  %i.sj = ptrtoint ptr %i.si to i64
  %i.sk = sub i64 %i.sj, %i.sb
  %i.sl = ashr exact i64 %i.sk, 5                 ; 2 uses
  %i.sm = icmp ult i64 %i.se, 288230376151711744
  call void @llvm.assume(i1 %i.sm)
  %i.sn = xor i64 %i.se, 288230376151711743       ; 2 uses
  %i.so = icmp ule i64 %i.sl, %i.sn
  call void @llvm.assume(i1 %i.so)
  %.not28.i = icmp ult i64 %i.sl, %i.sg
  br i1 %.not28.i, label %bb.ea, label %.lr.ph.i.i.i.i313.preheader

.lr.ph.i.i.i.i313.preheader:                      ; preds = %bb.dz
  %11 = add nsw i64 %i.sg, -1
  %xtraiter = and i64 %i.sg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i313.prol.loopexit, label %.lr.ph.i.i.i.i313.prol

.lr.ph.i.i.i.i313.prol:                           ; preds = %.lr.ph.i.i.i.i313.preheader, %.lr.ph.i.i.i.i313.prol
  %.08.i.i.i.i.prol = phi ptr [ %i.ss, %.lr.ph.i.i.i.i313.prol ], [ %i.rz, %.lr.ph.i.i.i.i313.preheader ] ; 4 uses
  %.057.i.i.i.i.prol = phi i64 [ %i.sr, %.lr.ph.i.i.i.i313.prol ], [ %i.sg, %.lr.ph.i.i.i.i313.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i313.prol ], [ 0, %.lr.ph.i.i.i.i313.preheader ]
  %i.sp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.sp, ptr %.08.i.i.i.i.prol, align 8, !tbaa !36
  %i.sq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.sq, align 8, !tbaa !33
  store i8 0, ptr %i.sp, align 8, !tbaa !35
  %i.sr = add nsw i64 %.057.i.i.i.i.prol, -1      ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i313.prol.loopexit, label %.lr.ph.i.i.i.i313.prol, !llvm.loop !134

.lr.ph.i.i.i.i313.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i313.prol, %.lr.ph.i.i.i.i313.preheader
  %.lcssa736.unr = phi ptr [ poison, %.lr.ph.i.i.i.i313.preheader ], [ %i.ss, %.lr.ph.i.i.i.i313.prol ]
  %.08.i.i.i.i.unr = phi ptr [ %i.rz, %.lr.ph.i.i.i.i313.preheader ], [ %i.ss, %.lr.ph.i.i.i.i313.prol ]
  %.057.i.i.i.i.unr = phi i64 [ %i.sg, %.lr.ph.i.i.i.i313.preheader ], [ %i.sr, %.lr.ph.i.i.i.i313.prol ]
  %12 = icmp ult i64 %11, 3
  br i1 %12, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i313

.lr.ph.i.i.i.i313:                                ; preds = %.lr.ph.i.i.i.i313.prol.loopexit, %.lr.ph.i.i.i.i313
  %.08.i.i.i.i = phi ptr [ %i.tf, %.lr.ph.i.i.i.i313 ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i313.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i = phi i64 [ %i.te, %.lr.ph.i.i.i.i313 ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i313.prol.loopexit ]
  %i.st = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.st, ptr %.08.i.i.i.i, align 8, !tbaa !36
  %i.su = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  store i64 0, ptr %i.su, align 8, !tbaa !33
  store i8 0, ptr %i.st, align 8, !tbaa !35
  %i.sv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 32
  %i.sw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.sw, ptr %i.sv, align 8, !tbaa !36
  %i.sx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 40
  store i64 0, ptr %i.sx, align 8, !tbaa !33
  store i8 0, ptr %i.sw, align 8, !tbaa !35
  %i.sy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 64
  %i.sz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.sz, ptr %i.sy, align 8, !tbaa !36
  %i.ta = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 72
  store i64 0, ptr %i.ta, align 8, !tbaa !33
  store i8 0, ptr %i.sz, align 8, !tbaa !35
  %i.tb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 96
  %i.tc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.tc, ptr %i.tb, align 8, !tbaa !36
  %i.td = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 104
  store i64 0, ptr %i.td, align 8, !tbaa !33
  store i8 0, ptr %i.tc, align 8, !tbaa !35
  %i.te = add nsw i64 %.057.i.i.i.i, -4           ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i314.3 = icmp eq i64 %i.te, 0
  br i1 %.not.i.i.i.i314.3, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i313, !llvm.loop !4

_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i313, %.lr.ph.i.i.i.i313.prol.loopexit
  %.lcssa736 = phi ptr [ %.lcssa736.unr, %.lr.ph.i.i.i.i313.prol.loopexit ], [ %i.tf, %.lr.ph.i.i.i.i313 ]
  store ptr %.lcssa736, ptr %i.ry, align 8, !tbaa !27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.ea:                                            ; preds = %bb.dz
  %i.tg = icmp ult i64 %i.sn, %i.sg
  br i1 %i.tg, label %bb.eb, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.eb:                                            ; preds = %bb.ea
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #33
          to label %.noexc318 unwind label %.loopexit.split-lp363

.noexc318:                                        ; preds = %bb.eb
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ea
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.se, i64 %i.sg)
  %i.th = add nuw nsw i64 %.sroa.speculated.i.i, %i.se
  %i.ti = call i64 @llvm.umin.i64(i64 %i.th, i64 288230376151711743) ; 2 uses
  %i.tj = shl nuw nsw i64 %i.ti, 5
  %i.tk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tj) #34
          to label %.noexc319 unwind label %.loopexit362 ; 4 uses

.noexc319:                                        ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.sd ; 3 uses
  %xtraiter765 = and i64 %i.sg, 3                 ; 2 uses
  %lcmp.mod766.not = icmp eq i64 %xtraiter765, 0
  br i1 %lcmp.mod766.not, label %.lr.ph.i.i.i30.i.prol.loopexit, label %.lr.ph.i.i.i30.i.prol

.lr.ph.i.i.i30.i.prol:                            ; preds = %.noexc319, %.lr.ph.i.i.i30.i.prol
  %.08.i.i.i31.i.prol = phi ptr [ %i.tp, %.lr.ph.i.i.i30.i.prol ], [ %i.tl, %.noexc319 ] ; 4 uses
  %.057.i.i.i32.i.prol = phi i64 [ %i.to, %.lr.ph.i.i.i30.i.prol ], [ %i.sg, %.noexc319 ]
  %prol.iter767 = phi i64 [ %prol.iter767.next, %.lr.ph.i.i.i30.i.prol ], [ 0, %.noexc319 ]
  %i.tm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i.prol, i64 16 ; 2 uses
  store ptr %i.tm, ptr %.08.i.i.i31.i.prol, align 8, !tbaa !36
  %i.tn = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i.prol, i64 8
  store i64 0, ptr %i.tn, align 8, !tbaa !33
  store i8 0, ptr %i.tm, align 8, !tbaa !35
  %i.to = add i64 %.057.i.i.i32.i.prol, -1        ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i.prol, i64 32 ; 2 uses
  %prol.iter767.next = add i64 %prol.iter767, 1   ; 2 uses
  %prol.iter767.cmp.not = icmp eq i64 %prol.iter767.next, %xtraiter765
  br i1 %prol.iter767.cmp.not, label %.lr.ph.i.i.i30.i.prol.loopexit, label %.lr.ph.i.i.i30.i.prol, !llvm.loop !135

.lr.ph.i.i.i30.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i30.i.prol, %.noexc319
  %.08.i.i.i31.i.unr = phi ptr [ %i.tl, %.noexc319 ], [ %i.tp, %.lr.ph.i.i.i30.i.prol ]
  %.057.i.i.i32.i.unr = phi i64 [ %i.sg, %.noexc319 ], [ %i.to, %.lr.ph.i.i.i30.i.prol ]
  %13 = icmp ult i64 %i.sg, 4
  br i1 %13, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i, label %.lr.ph.i.i.i30.i

.lr.ph.i.i.i30.i:                                 ; preds = %.lr.ph.i.i.i30.i.prol.loopexit, %.lr.ph.i.i.i30.i
  %.08.i.i.i31.i = phi ptr [ %i.uc, %.lr.ph.i.i.i30.i ], [ %.08.i.i.i31.i.unr, %.lr.ph.i.i.i30.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i32.i = phi i64 [ %i.ub, %.lr.ph.i.i.i30.i ], [ %.057.i.i.i32.i.unr, %.lr.ph.i.i.i30.i.prol.loopexit ]
  %i.tq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 16 ; 2 uses
  store ptr %i.tq, ptr %.08.i.i.i31.i, align 8, !tbaa !36
  %i.tr = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 8
  store i64 0, ptr %i.tr, align 8, !tbaa !33
  store i8 0, ptr %i.tq, align 8, !tbaa !35
  %i.ts = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 32
  %i.tt = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 48 ; 2 uses
  store ptr %i.tt, ptr %i.ts, align 8, !tbaa !36
  %i.tu = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 40
  store i64 0, ptr %i.tu, align 8, !tbaa !33
  store i8 0, ptr %i.tt, align 8, !tbaa !35
  %i.tv = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 64
  %i.tw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 80 ; 2 uses
  store ptr %i.tw, ptr %i.tv, align 8, !tbaa !36
  %i.tx = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 72
  store i64 0, ptr %i.tx, align 8, !tbaa !33
  store i8 0, ptr %i.tw, align 8, !tbaa !35
  %i.ty = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 96
  %i.tz = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 112 ; 2 uses
  store ptr %i.tz, ptr %i.ty, align 8, !tbaa !36
  %i.ua = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 104
  store i64 0, ptr %i.ua, align 8, !tbaa !33
  store i8 0, ptr %i.tz, align 8, !tbaa !35
  %i.ub = add i64 %.057.i.i.i32.i, -4             ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 128
  %.not.i.i.i33.i.3 = icmp eq i64 %i.ub, 0
  br i1 %.not.i.i.i33.i.3, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i, label %.lr.ph.i.i.i30.i, !llvm.loop !4

_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i: ; preds = %.lr.ph.i.i.i30.i, %.lr.ph.i.i.i30.i.prol.loopexit
  %.not10.i.i.i.i315 = icmp eq ptr %i.sa, %i.rz
  br i1 %.not10.i.i.i.i315, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i37.i

.lr.ph.i.i.i37.i:                                 ; preds = %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i316 = phi ptr [ %i.uq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.tk, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.up, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.sa, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.ud = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i316, i64 16 ; 3 uses
  store ptr %i.ud, ptr %.012.i.i.i.i316, align 8, !tbaa !36, !alias.scope !145, !noalias !146
  %i.ue = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !34, !alias.scope !146, !noalias !145 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.ug = icmp eq ptr %i.ue, %i.uf
  br i1 %i.ug, label %bb.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i317

bb.ec:                                            ; preds = %.lr.ph.i.i.i37.i
  %i.uh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !33, !alias.scope !146, !noalias !145 ; 3 uses
  %i.uj = icmp ult i64 %i.ui, 16
  call void @llvm.assume(i1 %i.uj)
  %i.uk = add nuw nsw i64 %i.ui, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ud, ptr noundef nonnull align 8 dereferenceable(1) %i.uf, i64 %i.uk, i1 false), !alias.scope !147
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i317: ; preds = %.lr.ph.i.i.i37.i
  store ptr %i.ue, ptr %.012.i.i.i.i316, align 8, !tbaa !34, !alias.scope !145, !noalias !146
  %i.ul = load i64, ptr %i.uf, align 8, !tbaa !35, !alias.scope !146, !noalias !145
  store i64 %i.ul, ptr %i.ud, align 8, !tbaa !35, !alias.scope !145, !noalias !146
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !33, !alias.scope !146, !noalias !145
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i317, %bb.ec
  %i.um = phi i64 [ %i.ui, %bb.ec ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i317 ]
  %i.un = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.uo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i316, i64 8
  store i64 %i.um, ptr %i.uo, align 8, !tbaa !33, !alias.scope !145, !noalias !146
  store ptr %i.uf, ptr %.0911.i.i.i.i, align 8, !tbaa !34, !alias.scope !146, !noalias !145
  store i64 0, ptr %i.un, align 8, !tbaa !33, !alias.scope !146, !noalias !145
  store i8 0, ptr %i.uf, align 8, !tbaa !35, !alias.scope !146, !noalias !145
  %i.up = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i316, i64 32
  %.not.i.i.i38.i = icmp eq ptr %i.up, %i.rz
  br i1 %.not.i.i.i38.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i37.i, !llvm.loop !5

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i
  %.not.i40.i = icmp eq ptr %i.sa, null
  br i1 %.not.i40.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41.i, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.ur = load ptr, ptr %i.sh, align 8, !tbaa !44
  %i.us = ptrtoint ptr %i.ur to i64
  %i.ut = sub i64 %i.us, %i.sc
  call void @_ZdlPvm(ptr noundef nonnull %i.sa, i64 noundef %i.ut) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41.i: ; preds = %bb.ed, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.tk, ptr %i.rr, align 8, !tbaa !28
  %i.uu = getelementptr inbounds nuw [32 x i8], ptr %i.tl, i64 %i.sg
  store ptr %i.uu, ptr %i.ry, align 8, !tbaa !27
  %i.uv = getelementptr inbounds nuw [32 x i8], ptr %i.tk, i64 %i.ti
  store ptr %i.uv, ptr %i.sh, align 8, !tbaa !44
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.ee:                                            ; preds = %bb.dy
  %i.uw = icmp ult i64 %i.rx, %i.se
  br i1 %i.uw, label %bb.ef, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.ef:                                            ; preds = %bb.ee
  %i.ux = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.rw ; 3 uses
  %.not.i.i274 = icmp eq ptr %i.rz, %i.ux
  br i1 %.not.i.i274, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i275

.lr.ph.i.i.i.i275:                                ; preds = %bb.ef, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i278
  %.05.i.i.i.i276 = phi ptr [ %i.vd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i278 ], [ %i.ux, %bb.ef ] ; 3 uses
  %i.uy = load ptr, ptr %.05.i.i.i.i276, align 8, !tbaa !34 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i276, i64 16 ; 2 uses
  %i.va = icmp eq ptr %i.uy, %i.uz
  br i1 %i.va, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i277: ; preds = %.lr.ph.i.i.i.i275
  %i.vb = load i64, ptr %i.uz, align 8, !tbaa !35
  %i.vc = add i64 %i.vb, 1
  call void @_ZdlPvm(ptr noundef %i.uy, i64 noundef %i.vc) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i278

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i278: ; preds = %.lr.ph.i.i.i.i275, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i277
  %i.vd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i276, i64 32 ; 2 uses
  %.not.i.i.i.i279 = icmp eq ptr %i.vd, %i.rz
  br i1 %.not.i.i.i.i279, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i280, label %.lr.ph.i.i.i.i275, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i280: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i278
  store ptr %i.ux, ptr %i.ry, align 8, !tbaa !27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41.i, %bb.ee, %bb.ef, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i280
  %i.ve = load ptr, ptr %i.pl, align 8, !tbaa !27
  %i.vf = load ptr, ptr %i.ol, align 8, !tbaa !28
  %.not500 = icmp eq ptr %i.ve, %i.vf
  br i1 %.not500, label %._crit_edge491, label %.lr.ph490

._crit_edge491:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.vg = add nuw nsw i32 %.083493, 1             ; 2 uses
  %exitcond533.not = icmp eq i32 %i.vg, %i.pf
  br i1 %exitcond533.not, label %._crit_edge496, label %bb.dc, !llvm.loop !139

.lr.ph490:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.0489 = phi i64 [ %i.wa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit ] ; 2 uses
  %i.vh = invoke fastcc noundef i64 @_ZN7Imf_3_412_GLOBAL__N_125readVariableLengthIntegerERPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %2)
          to label %bb.eg unwind label %.loopexit ; 2 uses

bb.eg:                                            ; preds = %.lr.ph490
  %sext = shl i64 %i.vh, 32
  %i.vi = ashr exact i64 %sext, 32                ; 2 uses
  %i.vj = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.vk = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.vl = ptrtoint ptr %i.vj to i64
  %i.vm = ptrtoint ptr %i.vk to i64
  %i.vn = sub i64 %i.vl, %i.vm
  %i.vo = ashr exact i64 %i.vn, 5
  %i.vp = icmp uge i64 %i.vi, %i.vo
  %i.vq = and i64 %i.vh, 2147483648
  %i.vr = icmp ne i64 %i.vq, 0
  %or.cond3 = or i1 %i.vr, %i.vp
  br i1 %or.cond3, label %bb.eh, label %bb.ek

bb.eh:                                            ; preds = %bb.eg
  %i.vs = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.vs, ptr noundef nonnull @.str.19)
          to label %bb.ei unwind label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  invoke void @__cxa_throw(ptr nonnull %i.vs, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #33
          to label %bb.ep unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph490, %bb.ek
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ei
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ej:                                            ; preds = %bb.eh
  %i.vt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.vs) #32
  br label %.body

bb.ek:                                            ; preds = %bb.eg
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0342.0, i64 %i.vi
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !29
  %i.vw = sext i32 %i.vv to i64
  %i.vx = getelementptr inbounds nuw [32 x i8], ptr %i.vk, i64 %i.vw
  %i.vy = load ptr, ptr %i.rr, align 8, !tbaa !28
  %i.vz = getelementptr inbounds nuw [32 x i8], ptr %i.vy, i64 %.0489
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.vz, ptr noundef nonnull align 8 dereferenceable(32) %i.vx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.ek
  %i.wa = add nuw i64 %.0489, 1                   ; 2 uses
  %i.wb = load ptr, ptr %i.pl, align 8, !tbaa !27
  %i.wc = load ptr, ptr %i.ol, align 8, !tbaa !28
  %i.wd = ptrtoint ptr %i.wb to i64
  %i.we = ptrtoint ptr %i.wc to i64
end_hunk_0
