Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ImfIDManifest?download=true
inline.NumInlined: 2191
inline.NumDeleted: 816
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest4initEPKcS2_:bb.a
  %i.qo = or i64 %i.qn, %.010.i502                ; 2 uses
  %.not12.i = icmp sgt i8 %i.qk, -1
  br i1 %.not12.i, label %.loopexit370, label %bb.do, !llvm.loop !2

.loopexit370:                                     ; preds = %.lr.ph504, %bb.dm, %bb.di
  %.sink = phi ptr [ %i.pq, %bb.di ], [ %i.px, %bb.dm ], [ %i.qj, %.lr.ph504 ] ; 3 uses
  %.0363 = phi i64 [ %i.pw, %bb.di ], [ %i.qd, %bb.dm ], [ %i.qo, %.lr.ph504 ]
  store ptr %.sink, ptr %i.e, align 8
  %i.qp = add i64 %.0363, %.081531                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  store i64 %i.qp, ptr %9, align 8, !tbaa !70, !alias.scope !143
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iu, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !143
  %i.qq = load ptr, ptr %i.pl, align 8, !tbaa !71 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.qq, null
  br i1 %.not10.i.i.i.i, label %.critedge.i261, label %.lr.ph.i.i.i.i259

.lr.ph.i.i.i.i259:                                ; preds = %.loopexit370, %.lr.ph.i.i.i.i259
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i259 ], [ %i.qq, %.loopexit370 ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i259 ], [ %i.pm, %.loopexit370 ]
  %i.qr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !36
  %i.qt = icmp ult i64 %i.qs, %i.qp               ; 2 uses
  %.19.i.i.i.i = select i1 %i.qt, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.qt, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i260 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i260, label %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i, label %.lr.ph.i.i.i.i259, !llvm.loop !4

_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i: ; preds = %.lr.ph.i.i.i.i259
  %i.qu = icmp eq ptr %.19.i.i.i.i, %i.pm
  br i1 %i.qu, label %.critedge.i261, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i
  %i.qv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !36
  %i.qx = icmp ult i64 %i.qp, %i.qw
  br i1 %i.qx, label %.critedge.i261, label %bb.dx

.critedge.i261:                                   ; preds = %bb.dq, %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i, %.loopexit370
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.dq ], [ %.19.i.i.i.i, %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i ], [ %i.pm, %.loopexit370 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %i.pk, ptr %3, align 8, !tbaa !73
  %i.qy = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34
          to label %.noexc322 unwind label %bb.dz ; 8 uses

.noexc322:                                        ; preds = %.critedge.i261
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 32 ; 3 uses
  store i64 %i.qp, ptr %i.qz, align 8, !tbaa !75
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 40 ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qy, i64 48
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qy, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ra, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iu, i8 0, i64 24, i1 false)
  store ptr %i.qy, ptr %i.iv, align 8, !tbaa !78
  %i.rd = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.pk, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.qz)
          to label %bb.dr unwind label %bb.du     ; 2 uses

bb.dr:                                            ; preds = %.noexc322
  %i.re = extractvalue { ptr, ptr } %i.rd, 0      ; 2 uses
  %i.rf = extractvalue { ptr, ptr } %i.rd, 1      ; 4 uses
  %.not.i319 = icmp eq ptr %i.rf, null
  br i1 %.not.i319, label %bb.dv, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %.not.i.i.i320 = icmp ne ptr %i.re, null
  %i.rg = icmp eq ptr %i.rf, %i.pm
  %or.cond.i.i.i = select i1 %.not.i.i.i320, i1 true, i1 %i.rg
  br i1 %or.cond.i.i.i, label %.thread.i321, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rf, i64 32
  %i.ri = load i64, ptr %i.qz, align 8, !tbaa !36
  %i.rj = load i64, ptr %i.rh, align 8, !tbaa !36
  %i.rk = icmp ult i64 %i.ri, %i.rj
  br label %.thread.i321

.thread.i321:                                     ; preds = %bb.dt, %bb.ds
  %i.rl = phi i1 [ %i.rk, %bb.dt ], [ true, %bb.ds ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.rl, ptr noundef nonnull %i.qy, ptr noundef nonnull %i.rf, ptr noundef nonnull align 8 dereferenceable(32) %i.pm) #32
  %i.rm = load i64, ptr %i.pn, align 8, !tbaa !48
  %i.rn = add i64 %i.rm, 1
  store i64 %i.rn, ptr %i.pn, align 8, !tbaa !48
  br label %bb.eb

bb.du:                                            ; preds = %.noexc322
  %i.ro = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %.body323

bb.dv:                                            ; preds = %bb.dr
  %i.rp = load ptr, ptr %i.ra, align 8, !tbaa !28 ; 3 uses
  %i.rq = load ptr, ptr %i.rb, align 8, !tbaa !27 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.rp, %i.rq
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.dv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.rw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.rp, %bb.dv ] ; 3 uses
  %i.rr = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.rt = icmp eq ptr %i.rr, %i.rs
  br i1 %i.rt, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ru = load i64, ptr %i.rs, align 8, !tbaa !34
  %i.rv = add i64 %i.ru, 1
  call void @_ZdlPvm(ptr noundef %i.rr, i64 noundef %i.rv) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.rw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.rw, %i.rq
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.ra, align 8, !tbaa !28
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.dv
  %i.rx = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.rp, %bb.dv ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.rx, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i, label %bb.dw

bb.dw:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.ry = load ptr, ptr %i.rc, align 8, !tbaa !43
  %i.rz = ptrtoint ptr %i.ry to i64
  %i.sa = ptrtoint ptr %i.rx to i64
  %i.sb = sub i64 %i.rz, %i.sa
  call void @_ZdlPvm(ptr noundef nonnull %i.rx, i64 noundef %i.sb) #35
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i

_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i: ; preds = %bb.dw, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.qy, i64 noundef 64) #35
  br label %bb.eb

bb.dx:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.sc = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.sc, ptr noundef nonnull @.str.17)
          to label %bb.dy unwind label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  invoke void @__cxa_throw(ptr nonnull %i.sc, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %bb.es unwind label %.loopexit.split-lp372

bb.dz:                                            ; preds = %.critedge.i261
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %.body323

.body323:                                         ; preds = %bb.du, %bb.dz
  %eh.lpad-body324 = phi { ptr, i32 } [ %i.sd, %bb.dz ], [ %i.ro, %bb.du ]
  call void @_ZNSt4pairImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #32
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %.body

bb.ea:                                            ; preds = %bb.dx
  %i.se = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.sc) #32
  br label %.body

.loopexit371:                                     ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit373 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp372:                            ; preds = %bb.dy, %bb.ee
  %lpad.loopexit.split-lp374 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.eb:                                            ; preds = %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i, %.thread.i321
  %.sroa.0.08.i = phi ptr [ %i.qy, %.thread.i321 ], [ %i.re, %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 40 ; 3 uses
  %i.sg = load ptr, ptr %i.po, align 8, !tbaa !27
  %i.sh = load ptr, ptr %i.oo, align 8, !tbaa !28
  %i.si = ptrtoint ptr %i.sg to i64
  %i.sj = ptrtoint ptr %i.sh to i64
  %i.sk = sub i64 %i.si, %i.sj                    ; 2 uses
  %i.sl = ashr exact i64 %i.sk, 5                 ; 5 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 48 ; 4 uses
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !27 ; 7 uses
  %i.so = load ptr, ptr %i.sf, align 8, !tbaa !28 ; 6 uses
  %i.sp = ptrtoint ptr %i.sn to i64               ; 2 uses
  %i.sq = ptrtoint ptr %i.so to i64               ; 2 uses
  %i.sr = sub i64 %i.sp, %i.sq                    ; 2 uses
  %i.ss = ashr exact i64 %i.sr, 5                 ; 9 uses
  %i.st = icmp ugt i64 %i.sl, %i.ss
  br i1 %i.st, label %11, label %bb.eh

11:                                               ; preds = %bb.eb
  %12 = sub nuw nsw i64 %i.sl, %i.ss              ; 11 uses
  %.not.i325 = icmp eq i64 %12, 0
  br i1 %.not.i325, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %bb.ec

bb.ec:                                            ; preds = %11
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 56 ; 3 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !43
  %i.sw = ptrtoint ptr %i.sv to i64
  %i.sx = sub i64 %i.sw, %i.sp
  %i.sy = ashr exact i64 %i.sx, 5                 ; 2 uses
  %i.sz = icmp ult i64 %i.ss, 288230376151711744
  call void @llvm.assume(i1 %i.sz)
  %i.ta = xor i64 %i.ss, 288230376151711743       ; 2 uses
  %i.tb = icmp ule i64 %i.sy, %i.ta
  call void @llvm.assume(i1 %i.tb)
  %.not28.i = icmp ult i64 %i.sy, %12
  br i1 %.not28.i, label %bb.ed, label %.lr.ph.i.i.i.i326.preheader

.lr.ph.i.i.i.i326.preheader:                      ; preds = %bb.ec
  %xtraiter = and i64 %12, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i326.prol.loopexit, label %.lr.ph.i.i.i.i326.prol

.lr.ph.i.i.i.i326.prol:                           ; preds = %.lr.ph.i.i.i.i326.preheader, %.lr.ph.i.i.i.i326.prol
  %.08.i.i.i.i.prol = phi ptr [ %i.tf, %.lr.ph.i.i.i.i326.prol ], [ %i.sn, %.lr.ph.i.i.i.i326.preheader ] ; 4 uses
  %.057.i.i.i.i.prol = phi i64 [ %i.te, %.lr.ph.i.i.i.i326.prol ], [ %12, %.lr.ph.i.i.i.i326.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i326.prol ], [ 0, %.lr.ph.i.i.i.i326.preheader ]
  %i.tc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.tc, ptr %.08.i.i.i.i.prol, align 8, !tbaa !35
  %i.td = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.td, align 8, !tbaa !32
  store i8 0, ptr %i.tc, align 8, !tbaa !34
  %i.te = add nsw i64 %.057.i.i.i.i.prol, -1      ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i326.prol.loopexit, label %.lr.ph.i.i.i.i326.prol, !llvm.loop !133

.lr.ph.i.i.i.i326.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i326.prol, %.lr.ph.i.i.i.i326.preheader
  %.lcssa853.unr = phi ptr [ poison, %.lr.ph.i.i.i.i326.preheader ], [ %i.tf, %.lr.ph.i.i.i.i326.prol ]
  %.08.i.i.i.i.unr = phi ptr [ %i.sn, %.lr.ph.i.i.i.i326.preheader ], [ %i.tf, %.lr.ph.i.i.i.i326.prol ]
  %.057.i.i.i.i.unr = phi i64 [ %12, %.lr.ph.i.i.i.i326.preheader ], [ %i.te, %.lr.ph.i.i.i.i326.prol ]
  %i.tg = sub nsw i64 %i.ss, %i.sl
  %i.th = icmp ugt i64 %i.tg, -4
  br i1 %i.th, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i326

.lr.ph.i.i.i.i326:                                ; preds = %.lr.ph.i.i.i.i326.prol.loopexit, %.lr.ph.i.i.i.i326
  %.08.i.i.i.i = phi ptr [ %i.tu, %.lr.ph.i.i.i.i326 ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i326.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i = phi i64 [ %i.tt, %.lr.ph.i.i.i.i326 ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i326.prol.loopexit ]
  %i.ti = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.ti, ptr %.08.i.i.i.i, align 8, !tbaa !35
  %i.tj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  store i64 0, ptr %i.tj, align 8, !tbaa !32
  store i8 0, ptr %i.ti, align 8, !tbaa !34
  %i.tk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 32
  %i.tl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.tl, ptr %i.tk, align 8, !tbaa !35
  %i.tm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 40
  store i64 0, ptr %i.tm, align 8, !tbaa !32
  store i8 0, ptr %i.tl, align 8, !tbaa !34
  %i.tn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 64
  %i.to = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.to, ptr %i.tn, align 8, !tbaa !35
  %i.tp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 72
  store i64 0, ptr %i.tp, align 8, !tbaa !32
  store i8 0, ptr %i.to, align 8, !tbaa !34
  %i.tq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 96
  %i.tr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.tr, ptr %i.tq, align 8, !tbaa !35
  %i.ts = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 104
  store i64 0, ptr %i.ts, align 8, !tbaa !32
  store i8 0, ptr %i.tr, align 8, !tbaa !34
  %i.tt = add nsw i64 %.057.i.i.i.i, -4           ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i327.3 = icmp eq i64 %i.tt, 0
  br i1 %.not.i.i.i.i327.3, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i326, !llvm.loop !5

_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i326, %.lr.ph.i.i.i.i326.prol.loopexit
  %.lcssa853 = phi ptr [ %.lcssa853.unr, %.lr.ph.i.i.i.i326.prol.loopexit ], [ %i.tu, %.lr.ph.i.i.i.i326 ]
  store ptr %.lcssa853, ptr %i.sm, align 8, !tbaa !27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.ed:                                            ; preds = %bb.ec
  %i.tv = icmp ult i64 %i.ta, %12
  br i1 %i.tv, label %bb.ee, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.ee:                                            ; preds = %bb.ed
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #33
          to label %.noexc331 unwind label %.loopexit.split-lp372

.noexc331:                                        ; preds = %bb.ee
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ed
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ss, i64 %12)
  %i.tw = add nuw nsw i64 %.sroa.speculated.i.i, %i.ss
  %i.tx = call i64 @llvm.umin.i64(i64 %i.tw, i64 288230376151711743) ; 2 uses
  %i.ty = shl nuw nsw i64 %i.tx, 5
  %i.tz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ty) #34
          to label %.noexc332 unwind label %.loopexit371 ; 4 uses

.noexc332:                                        ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.sr ; 3 uses
  %xtraiter890 = and i64 %12, 3                   ; 2 uses
  %lcmp.mod891.not = icmp eq i64 %xtraiter890, 0
  br i1 %lcmp.mod891.not, label %.lr.ph.i.i.i30.i.prol.loopexit, label %.lr.ph.i.i.i30.i.prol

.lr.ph.i.i.i30.i.prol:                            ; preds = %.noexc332, %.lr.ph.i.i.i30.i.prol
  %.08.i.i.i31.i.prol = phi ptr [ %i.ue, %.lr.ph.i.i.i30.i.prol ], [ %i.ua, %.noexc332 ] ; 4 uses
  %.057.i.i.i32.i.prol = phi i64 [ %i.ud, %.lr.ph.i.i.i30.i.prol ], [ %12, %.noexc332 ]
  %prol.iter892 = phi i64 [ %prol.iter892.next, %.lr.ph.i.i.i30.i.prol ], [ 0, %.noexc332 ]
  %i.ub = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i.prol, i64 16 ; 2 uses
  store ptr %i.ub, ptr %.08.i.i.i31.i.prol, align 8, !tbaa !35
  %i.uc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i.prol, i64 8
  store i64 0, ptr %i.uc, align 8, !tbaa !32
  store i8 0, ptr %i.ub, align 8, !tbaa !34
  %i.ud = add i64 %.057.i.i.i32.i.prol, -1        ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i.prol, i64 32 ; 2 uses
  %prol.iter892.next = add i64 %prol.iter892, 1   ; 2 uses
  %prol.iter892.cmp.not = icmp eq i64 %prol.iter892.next, %xtraiter890
  br i1 %prol.iter892.cmp.not, label %.lr.ph.i.i.i30.i.prol.loopexit, label %.lr.ph.i.i.i30.i.prol, !llvm.loop !134

.lr.ph.i.i.i30.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i30.i.prol, %.noexc332
  %.08.i.i.i31.i.unr = phi ptr [ %i.ua, %.noexc332 ], [ %i.ue, %.lr.ph.i.i.i30.i.prol ]
  %.057.i.i.i32.i.unr = phi i64 [ %12, %.noexc332 ], [ %i.ud, %.lr.ph.i.i.i30.i.prol ]
  %i.uf = sub nsw i64 %i.ss, %i.sl
  %i.ug = icmp ugt i64 %i.uf, -4
  br i1 %i.ug, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i, label %.lr.ph.i.i.i30.i

.lr.ph.i.i.i30.i:                                 ; preds = %.lr.ph.i.i.i30.i.prol.loopexit, %.lr.ph.i.i.i30.i
  %.08.i.i.i31.i = phi ptr [ %i.ut, %.lr.ph.i.i.i30.i ], [ %.08.i.i.i31.i.unr, %.lr.ph.i.i.i30.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i32.i = phi i64 [ %i.us, %.lr.ph.i.i.i30.i ], [ %.057.i.i.i32.i.unr, %.lr.ph.i.i.i30.i.prol.loopexit ]
  %i.uh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 16 ; 2 uses
  store ptr %i.uh, ptr %.08.i.i.i31.i, align 8, !tbaa !35
  %i.ui = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 8
  store i64 0, ptr %i.ui, align 8, !tbaa !32
  store i8 0, ptr %i.uh, align 8, !tbaa !34
  %i.uj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 32
  %i.uk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 48 ; 2 uses
  store ptr %i.uk, ptr %i.uj, align 8, !tbaa !35
  %i.ul = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 40
  store i64 0, ptr %i.ul, align 8, !tbaa !32
  store i8 0, ptr %i.uk, align 8, !tbaa !34
  %i.um = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 64
  %i.un = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 80 ; 2 uses
  store ptr %i.un, ptr %i.um, align 8, !tbaa !35
  %i.uo = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 72
  store i64 0, ptr %i.uo, align 8, !tbaa !32
  store i8 0, ptr %i.un, align 8, !tbaa !34
  %i.up = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 96
  %i.uq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 112 ; 2 uses
  store ptr %i.uq, ptr %i.up, align 8, !tbaa !35
  %i.ur = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 104
  store i64 0, ptr %i.ur, align 8, !tbaa !32
  store i8 0, ptr %i.uq, align 8, !tbaa !34
  %i.us = add i64 %.057.i.i.i32.i, -4             ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 128
  %.not.i.i.i33.i.3 = icmp eq i64 %i.us, 0
  br i1 %.not.i.i.i33.i.3, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i, label %.lr.ph.i.i.i30.i, !llvm.loop !5

_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i: ; preds = %.lr.ph.i.i.i30.i, %.lr.ph.i.i.i30.i.prol.loopexit
  %.not10.i.i.i.i328 = icmp eq ptr %i.so, %i.sn
  br i1 %.not10.i.i.i.i328, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i37.i

.lr.ph.i.i.i37.i:                                 ; preds = %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i329 = phi ptr [ %i.vh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.tz, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.vg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.so, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.uu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i329, i64 16 ; 3 uses
  store ptr %i.uu, ptr %.012.i.i.i.i329, align 8, !tbaa !35, !alias.scope !144, !noalias !145
  %i.uv = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !33, !alias.scope !145, !noalias !144 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.ux = icmp eq ptr %i.uv, %i.uw
  br i1 %i.ux, label %bb.ef, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i330

bb.ef:                                            ; preds = %.lr.ph.i.i.i37.i
  %i.uy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.uz = load i64, ptr %i.uy, align 8, !tbaa !32, !alias.scope !145, !noalias !144 ; 3 uses
  %i.va = icmp ult i64 %i.uz, 16
  call void @llvm.assume(i1 %i.va)
  %i.vb = add nuw nsw i64 %i.uz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.uu, ptr noundef nonnull align 8 dereferenceable(1) %i.uw, i64 %i.vb, i1 false), !alias.scope !146
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i330: ; preds = %.lr.ph.i.i.i37.i
  store ptr %i.uv, ptr %.012.i.i.i.i329, align 8, !tbaa !33, !alias.scope !144, !noalias !145
  %i.vc = load i64, ptr %i.uw, align 8, !tbaa !34, !alias.scope !145, !noalias !144
  store i64 %i.vc, ptr %i.uu, align 8, !tbaa !34, !alias.scope !144, !noalias !145
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !32, !alias.scope !145, !noalias !144
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i330, %bb.ef
  %i.vd = phi i64 [ %i.uz, %bb.ef ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i330 ]
  %i.ve = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.vf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i329, i64 8
  store i64 %i.vd, ptr %i.vf, align 8, !tbaa !32, !alias.scope !144, !noalias !145
  store ptr %i.uw, ptr %.0911.i.i.i.i, align 8, !tbaa !33, !alias.scope !145, !noalias !144
  store i64 0, ptr %i.ve, align 8, !tbaa !32, !alias.scope !145, !noalias !144
  store i8 0, ptr %i.uw, align 8, !tbaa !34, !alias.scope !145, !noalias !144
  %i.vg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i329, i64 32
  %.not.i.i.i38.i = icmp eq ptr %i.vg, %i.sn
  br i1 %.not.i.i.i38.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i37.i, !llvm.loop !6

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i
  %.not.i40.i = icmp eq ptr %i.so, null
  br i1 %.not.i40.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41.i, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.vi = load ptr, ptr %i.su, align 8, !tbaa !43
  %i.vj = ptrtoint ptr %i.vi to i64
  %i.vk = sub i64 %i.vj, %i.sq
  call void @_ZdlPvm(ptr noundef nonnull %i.so, i64 noundef %i.vk) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41.i: ; preds = %bb.eg, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.tz, ptr %i.sf, align 8, !tbaa !28
  %i.vl = getelementptr inbounds nuw [32 x i8], ptr %i.ua, i64 %12
  store ptr %i.vl, ptr %i.sm, align 8, !tbaa !27
  %i.vm = getelementptr inbounds nuw [32 x i8], ptr %i.tz, i64 %i.tx
  store ptr %i.vm, ptr %i.su, align 8, !tbaa !43
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.eh:                                            ; preds = %bb.eb
  %i.vn = icmp ult i64 %i.sl, %i.ss
  br i1 %i.vn, label %bb.ei, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.ei:                                            ; preds = %bb.eh
  %i.vo = getelementptr inbounds nuw i8, ptr %i.so, i64 %i.sk ; 3 uses
  %.not.i.i278 = icmp eq ptr %i.sn, %i.vo
  br i1 %.not.i.i278, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i279

.lr.ph.i.i.i.i279:                                ; preds = %bb.ei, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i282
  %.05.i.i.i.i280 = phi ptr [ %i.vu, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i282 ], [ %i.vo, %bb.ei ] ; 3 uses
  %i.vp = load ptr, ptr %.05.i.i.i.i280, align 8, !tbaa !33 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i280, i64 16 ; 2 uses
  %i.vr = icmp eq ptr %i.vp, %i.vq
  br i1 %i.vr, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i281: ; preds = %.lr.ph.i.i.i.i279
  %i.vs = load i64, ptr %i.vq, align 8, !tbaa !34
  %i.vt = add i64 %i.vs, 1
  call void @_ZdlPvm(ptr noundef %i.vp, i64 noundef %i.vt) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i282

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i282: ; preds = %.lr.ph.i.i.i.i279, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i281
  %i.vu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i280, i64 32 ; 2 uses
  %.not.i.i.i.i283 = icmp eq ptr %i.vu, %i.sn
  br i1 %.not.i.i.i.i283, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i284, label %.lr.ph.i.i.i.i279, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i284: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i282
  store ptr %i.vo, ptr %i.sm, align 8, !tbaa !27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %11, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41.i, %bb.eh, %bb.ei, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i284
  %i.vv = load ptr, ptr %i.po, align 8, !tbaa !27
  %i.vw = load ptr, ptr %i.oo, align 8, !tbaa !28
  %.not539 = icmp eq ptr %i.vv, %i.vw
  br i1 %.not539, label %._crit_edge529, label %.lr.ph528

._crit_edge529:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %.lcssa511522.lcssa = phi ptr [ %.sink, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit ], [ %i.wc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 3 uses
  store ptr %.lcssa511522.lcssa, ptr %i.e, align 8
  %i.vx = add nuw nsw i32 %.080532, 1             ; 2 uses
  %exitcond597.not = icmp eq i32 %i.vx, %i.pi
  br i1 %exitcond597.not, label %._crit_edge535, label %bb.dd, !llvm.loop !138

.lr.ph528:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.0527 = phi i64 [ %i.xb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit ] ; 2 uses
  %.lcssa511522526 = phi ptr [ %i.wc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %.sink, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit ] ; 4 uses
  %.not.i290512 = icmp ult ptr %.lcssa511522526, %2
  br i1 %.not.i290512, label %.lr.ph516.preheader, label %._crit_edge517

.lr.ph516.preheader:                              ; preds = %.lr.ph528
  %.lcssa511522526594 = ptrtoaddr ptr %.lcssa511522526 to i64
  %scevgep593 = getelementptr i8, ptr %.lcssa511522526, i64 %i.a
  %i.vy = sub i64 0, %.lcssa511522526594
  %scevgep595 = getelementptr i8, ptr %scevgep593, i64 %i.vy
  br label %.lr.ph516

bb.ej:                                            ; preds = %.lr.ph516
  %indvars.iv.next.i291 = add nuw nsw i64 %indvars.iv.i288513, 7
  %exitcond596.not = icmp eq ptr %i.wc, %scevgep595
  br i1 %exitcond596.not, label %._crit_edge517, label %.lr.ph516, !llvm.loop !2

._crit_edge517:                                   ; preds = %.lr.ph528, %bb.ej
  %i.vz = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.vz, ptr noundef nonnull @.str.33)
          to label %.invoke785 unwind label %bb.ek

bb.ek:                                            ; preds = %._crit_edge517
  %i.wa = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.vz) #32
  br label %.body

.lr.ph516:                                        ; preds = %.lr.ph516.preheader, %bb.ej
  %.010.i289514 = phi i64 [ %i.wh, %bb.ej ], [ 0, %.lr.ph516.preheader ]
  %i.wb = phi ptr [ %i.wc, %bb.ej ], [ %.lcssa511522526, %.lr.ph516.preheader ] ; 2 uses
  %indvars.iv.i288513 = phi i64 [ %indvars.iv.next.i291, %bb.ej ], [ 0, %.lr.ph516.preheader ] ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 1 ; 4 uses
  %i.wd = load i8, ptr %i.wb, align 1, !tbaa !34  ; 2 uses
  %i.we = and i8 %i.wd, 127
  %i.wf = zext nneg i8 %i.we to i64
  %i.wg = shl i64 %i.wf, %indvars.iv.i288513
  %i.wh = or i64 %i.wg, %.010.i289514             ; 3 uses
  %.not12.i292 = icmp sgt i8 %i.wd, -1
  br i1 %.not12.i292, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_125readVariableLengthIntegerERPKcS2_.exit296, label %bb.ej, !llvm.loop !2

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_125readVariableLengthIntegerERPKcS2_.exit296: ; preds = %.lr.ph516
  %sext = shl i64 %i.wh, 32
  %i.wi = ashr exact i64 %sext, 32                ; 2 uses
  %i.wj = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.wk = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.wl = ptrtoint ptr %i.wj to i64
  %i.wm = ptrtoint ptr %i.wk to i64
  %i.wn = sub i64 %i.wl, %i.wm
  %i.wo = ashr exact i64 %i.wn, 5
  %i.wp = icmp ugt i64 %i.wi, %i.wo
  %i.wq = and i64 %i.wh, 2147483648
  %i.wr = icmp ne i64 %i.wq, 0
  %or.cond3 = or i1 %i.wr, %i.wp
  br i1 %or.cond3, label %bb.el, label %bb.en

bb.el:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_125readVariableLengthIntegerERPKcS2_.exit296
  %i.ws = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ws, ptr noundef nonnull @.str.18)
          to label %.invoke785 unwind label %bb.em

.invoke785:                                       ; preds = %bb.el, %._crit_edge517
  %i.wt = phi ptr [ %i.vz, %._crit_edge517 ], [ %i.ws, %bb.el ]
  invoke void @__cxa_throw(ptr nonnull %i.wt, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %.cont786 unwind label %.loopexit.split-lp

.cont786:                                         ; preds = %.invoke785
  unreachable

.loopexit:                                        ; preds = %bb.en
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke785
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.em:                                            ; preds = %bb.el
  %i.wu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ws) #32
  br label %.body

bb.en:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_125readVariableLengthIntegerERPKcS2_.exit296
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0355.0, i64 %i.wi
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !21
  %i.wx = sext i32 %i.ww to i64
  %i.wy = getelementptr inbounds nuw [32 x i8], ptr %i.wk, i64 %i.wx
  %i.wz = load ptr, ptr %i.sf, align 8, !tbaa !28
  %i.xa = getelementptr inbounds nuw [32 x i8], ptr %i.wz, i64 %.0527
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.xa, ptr noundef nonnull align 8 dereferenceable(32) %i.wy)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.en
  %i.xb = add nuw i64 %.0527, 1                   ; 2 uses
  %i.xc = load ptr, ptr %i.po, align 8, !tbaa !27
  %i.xd = load ptr, ptr %i.oo, align 8, !tbaa !28
  %i.xe = ptrtoint ptr %i.xc to i64
  %i.xf = ptrtoint ptr %i.xd to i64
  %i.xg = sub i64 %i.xe, %i.xf
  %i.xh = ashr exact i64 %i.xg, 5
  %i.xi = icmp ult i64 %i.xb, %i.xh
  br i1 %i.xi, label %.lr.ph528, label %._crit_edge529, !llvm.loop !139

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit371, %.loopexit.split-lp372, %.loopexit381, %.loopexit.split-lp382, %.loopexit376, %.loopexit.split-lp377, %bb.bg, %bb.bh, %bb.bs, %.body.thread.i, %.body323, %bb.ea, %bb.em, %bb.ek, %bb.dh, %bb.dp, %bb.dl, %bb.dg, %bb.db, %bb.cw, %bb.aw, %bb.ax, %bb.bb, %bb.as, %bb.ar
  %.pn113 = phi { ptr, i32 } [ %i.gc, %bb.as ], [ %i.gb, %bb.ar ], [ %i.hp, %bb.bb ], [ %i.gt, %bb.ax ], [ %i.gs, %bb.aw ], [ %i.ia, %bb.bh ], [ %i.hz, %bb.bg ], [ %.pn3184.i, %.body.thread.i ], [ %i.wu, %bb.em ], [ %i.jw, %bb.bs ], [ %lpad.loopexit.split-lp379, %.loopexit.split-lp377 ], [ %i.ou, %bb.cw ], [ %i.pf, %bb.db ], [ %i.wa, %bb.ek ], [ %i.qh, %bb.dp ], [ %lpad.loopexit.split-lp374, %.loopexit.split-lp372 ], [ %i.pt, %bb.dg ], [ %i.qa, %bb.dl ], [ %i.pu, %bb.dh ], [ %lpad.loopexit.split-lp384, %.loopexit.split-lp382 ], [ %i.se, %bb.ea ], [ %eh.lpad-body324, %.body323 ], [ %lpad.loopexit378, %.loopexit376 ], [ %lpad.loopexit383, %.loopexit381 ], [ %lpad.loopexit373, %.loopexit371 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i298 = icmp eq ptr %.sroa.0349.0, null
  br i1 %.not.i.i.i298, label %_ZNSt6vectorIcSaIcEED2Ev.exit299, label %bb.eo

bb.eo:                                            ; preds = %.body
  %i.xj = ptrtoint ptr %.sroa.11.0 to i64
  %i.xk = ptrtoint ptr %.sroa.0349.0 to i64
  %i.xl = sub i64 %i.xj, %i.xk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0349.0, i64 noundef %i.xl) #35
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit299

_ZNSt6vectorIcSaIcEED2Ev.exit299:                 ; preds = %bb.eo, %.body, %bb.aq
  %.pn113.pn = phi { ptr, i32 } [ %i.ga, %bb.aq ], [ %.pn113, %.body ], [ %.pn113, %bb.eo ] ; 2 uses
  %.not.i.i.i300 = icmp eq ptr %.sroa.0355.0, null
  br i1 %.not.i.i.i300, label %_ZNSt6vectorIiSaIiEED2Ev.exit301, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit299
  %i.xm = ptrtoint ptr %.sroa.11360.0 to i64
  %i.xn = ptrtoint ptr %.sroa.0355.0 to i64
  %i.xo = sub i64 %i.xm, %i.xn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0355.0, i64 noundef %i.xo) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit301

_ZNSt6vectorIiSaIiEED2Ev.exit301:                 ; preds = %bb.ap, %_ZNSt6vectorIcSaIcEED2Ev.exit299, %bb.ep, %bb.k, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %bb.h
  %.pn120.pn = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %.pn117.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %i.at, %bb.k ], [ %i.aw, %bb.o ], [ %i.fz, %bb.ap ], [ %.pn113.pn, %_ZNSt6vectorIcSaIcEED2Ev.exit299 ], [ %.pn113.pn, %bb.ep ]
  %i.xp = load ptr, ptr %5, align 8, !tbaa !28    ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !27 ; 2 uses
  %.not4.i.i.i302 = icmp eq ptr %i.xp, %i.xr
  br i1 %.not4.i.i.i302, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i310, label %.lr.ph.i.i.i303

.lr.ph.i.i.i303:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit301, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i306
  %.05.i.i.i304 = phi ptr [ %i.xx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i306 ], [ %i.xp, %_ZNSt6vectorIiSaIiEED2Ev.exit301 ] ; 3 uses
  %i.xs = load ptr, ptr %.05.i.i.i304, align 8, !tbaa !33 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.05.i.i.i304, i64 16 ; 2 uses
  %i.xu = icmp eq ptr %i.xs, %i.xt
  br i1 %i.xu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i306, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i305: ; preds = %.lr.ph.i.i.i303
  %i.xv = load i64, ptr %i.xt, align 8, !tbaa !34
  %i.xw = add i64 %i.xv, 1
  call void @_ZdlPvm(ptr noundef %i.xs, i64 noundef %i.xw) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i306

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i306: ; preds = %.lr.ph.i.i.i303, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i305
  %i.xx = getelementptr inbounds nuw i8, ptr %.05.i.i.i304, i64 32 ; 2 uses
  %.not.i.i.i307 = icmp eq ptr %i.xx, %i.xr
  br i1 %.not.i.i.i307, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i308, label %.lr.ph.i.i.i303, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i308: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i306
  %.pr.i309 = load ptr, ptr %5, align 8, !tbaa !28
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i310

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i310: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i308, %_ZNSt6vectorIiSaIiEED2Ev.exit301
  %i.xy = phi ptr [ %.pr.i309, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i308 ], [ %i.xp, %_ZNSt6vectorIiSaIiEED2Ev.exit301 ] ; 3 uses
  %.not.i.i1.i311 = icmp eq ptr %i.xy, null
  br i1 %.not.i.i1.i311, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit313, label %bb.eq

bb.eq:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i310
  %i.xz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !43
  %i.yb = ptrtoint ptr %i.ya to i64
  %i.yc = ptrtoint ptr %i.xy to i64
  %i.yd = sub i64 %i.yb, %i.yc
  call void @_ZdlPvm(ptr noundef nonnull %i.xy, i64 noundef %i.yd) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit313

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit313: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i310, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.er

bb.er:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit313, %bb.d
  %.pn123 = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn120.pn, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit313 ]
  resume { ptr, i32 } %.pn123

bb.es:                                            ; preds = %bb.dy, %bb.bf, %bb.ao, %bb.n
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
