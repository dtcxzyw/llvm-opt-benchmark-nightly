Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/smt_parallel?download=true
inline.NumInlined: 3381
inline.NumDeleted: 1124
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3smt8parallel13batch_manager23collect_global_backboneER15ast_translationRK7obj_refI4expr11ast_managerEj:bb.a
bb.ah:                                            ; preds = %bb.ag
  %.not51 = icmp eq i32 %i.bq, 0
  br i1 %.not51, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.br = invoke noundef zeroext i1 @_Z11is_threadedv()
          to label %bb.aj unwind label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.br, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  invoke void @_Z12verbose_lockv()
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.am unwind label %bb.ap     ; 3 uses

bb.am:                                            ; preds = %bb.al
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.21, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90 unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90: ; preds = %bb.am
  %i.bu = load ptr, ptr %4, align 8, !tbaa !685
  %i.bv = load ptr, ptr %0, align 8, !tbaa !757, !nonnull !94, !align !95
  invoke void @_Z17ast_ll_bounded_ppRSoR11ast_managerP3astj(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull align 8 dereferenceable(952) %i.bv, ptr noundef %i.bu, i32 noundef 3)
          to label %_ZlsRSoRK13mk_bounded_pp.exit92 unwind label %bb.aq

_ZlsRSoRK13mk_bounded_pp.exit92:                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94 unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94: ; preds = %_ZlsRSoRK13mk_bounded_pp.exit92
  invoke void @_Z14verbose_unlockv()
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100 unwind label %bb.ap

bb.an:                                            ; preds = %bb.y
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.cp

bb.ao:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit86.thread
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.ap:                                            ; preds = %bb.as, %bb.am, %bb.ar, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94, %bb.al, %bb.ak, %bb.ai, %bb.ag, %bb.ae
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.aq:                                            ; preds = %_ZlsRSoRK13mk_bounded_pp.exit92, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ar:                                            ; preds = %bb.aj
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.as unwind label %bb.ap     ; 3 uses

bb.as:                                            ; preds = %bb.ar
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull @.str.21, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96 unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96: ; preds = %bb.as
  %i.cd = load ptr, ptr %4, align 8, !tbaa !685
  %i.ce = load ptr, ptr %0, align 8, !tbaa !757, !nonnull !94, !align !95
  invoke void @_Z17ast_ll_bounded_ppRSoR11ast_managerP3astj(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 8 dereferenceable(952) %i.ce, ptr noundef %i.cd, i32 noundef 3)
          to label %_ZlsRSoRK13mk_bounded_pp.exit98 unwind label %bb.at

_ZlsRSoRK13mk_bounded_pp.exit98:                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100 unwind label %bb.at ; 0 uses

bb.at:                                            ; preds = %_ZlsRSoRK13mk_bounded_pp.exit98, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100: ; preds = %_ZlsRSoRK13mk_bounded_pp.exit98, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94, %bb.ah
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !763, !range !147, !noundef !94
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.au, label %bb.bn

bb.au:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100
  %i.ck = load ptr, ptr %8, align 8, !tbaa !762   ; 4 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN6vectorIN3smt8parallel10node_leaseELb1EjED2Ev.exit136, label %_ZN6vectorIN3smt8parallel10node_leaseELb1EjE3endEv.exit

_ZN6vectorIN3smt8parallel10node_leaseELb1EjE3endEv.exit: ; preds = %bb.au
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !141 ; 2 uses
  %i.co = zext i32 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cp
  %.not57163 = icmp eq i32 %i.cn, 0
  br i1 %.not57163, label %.loopexit, label %.lr.ph165

.lr.ph165:                                        ; preds = %_ZN6vectorIN3smt8parallel10node_leaseELb1EjE3endEv.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph165, %_ZNK11search_tree4treeIN3smt11cube_configEE17is_lease_canceledEPNS_4nodeIS2_EE.exit.thread
  %.030164 = phi ptr [ %i.ck, %.lr.ph165 ], [ %i.ex, %_ZNK11search_tree4treeIN3smt11cube_configEE17is_lease_canceledEPNS_4nodeIS2_EE.exit.thread ] ; 4 uses
  %i.ct = load ptr, ptr %.030164, align 8, !tbaa !764 ; 2 uses
  %.not.i = icmp eq ptr %i.ct, null
  br i1 %.not.i, label %_ZNK11search_tree4treeIN3smt11cube_configEE17is_lease_canceledEPNS_4nodeIS2_EE.exit.thread, label %_ZNK11search_tree4treeIN3smt11cube_configEE17is_lease_canceledEPNS_4nodeIS2_EE.exit

_ZNK11search_tree4treeIN3smt11cube_configEE17is_lease_canceledEPNS_4nodeIS2_EE.exit: ; preds = %bb.av
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !766
  %i.cw = icmp eq i32 %i.cv, 1
  br i1 %i.cw, label %_ZNK11search_tree4treeIN3smt11cube_configEE17is_lease_canceledEPNS_4nodeIS2_EE.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %_ZNK11search_tree4treeIN3smt11cube_configEE17is_lease_canceledEPNS_4nodeIS2_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.cx = load ptr, ptr %1, align 8, !tbaa !144, !nonnull !94, !align !95
  %i.cy = ptrtoint ptr %i.cx to i64
  store i64 %i.cy, ptr %9, align 8, !tbaa !684
  store ptr null, ptr %i.cr, align 8, !tbaa !8
  %.0160 = load ptr, ptr %.030164, align 8, !tbaa !769 ; 2 uses
  %.not58161 = icmp eq ptr %.0160, null
  br i1 %.not58161, label %.loopexit195, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aw, %bb.bb
  %i.cz = phi ptr [ %i.dt, %bb.bb ], [ null, %bb.aw ] ; 5 uses
  %.0162 = phi ptr [ %.0, %bb.bb ], [ %.0160, %bb.aw ] ; 2 uses
  %i.da = load ptr, ptr %.0162, align 8, !tbaa !685 ; 4 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.dc = load ptr, ptr %1, align 8, !tbaa !144, !nonnull !94, !align !95
  store ptr %i.da, ptr %10, align 8, !tbaa !685
  store ptr %i.dc, ptr %i.cs, align 8, !tbaa !684
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !686
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !686
  %i.dg = icmp eq ptr %i.cz, null
  br i1 %i.dg, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dh = getelementptr inbounds i8, ptr %i.cz, i64 -4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !141 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.cz, i64 -8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !141
  %i.dl = icmp eq i32 %i.di, %i.dk
  br i1 %i.dl, label %bb.az, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit107

bb.az:                                            ; preds = %bb.ay, %bb.ax
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cr)
          to label %.noexc105 unwind label %bb.ba

.noexc105:                                        ; preds = %bb.az
  %.pre.i.i = load ptr, ptr %i.cr, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !141
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit107

_ZN7obj_refI4expr11ast_managerED2Ev.exit107:      ; preds = %bb.ay, %.noexc105
  %i.dm = phi ptr [ %.pre.i.i, %.noexc105 ], [ %i.cz, %bb.ay ] ; 3 uses
  %i.dn = phi i32 [ %.pre2.i.i, %.noexc105 ], [ %i.di, %bb.ay ] ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %i.dm, i64 -4
  %i.dp = zext i32 %i.dn to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dp
  store ptr %i.da, ptr %i.dq, align 8, !tbaa !142
  %i.dr = add i32 %i.dn, 1
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.bm

bb.bb:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit107, %.lr.ph
  %i.dt = phi ptr [ %i.dm, %_ZN7obj_refI4expr11ast_managerED2Ev.exit107 ], [ %i.cz, %.lr.ph ]
  %i.du = getelementptr inbounds nuw i8, ptr %.0162, i64 32
  %.0 = load ptr, ptr %i.du, align 8, !tbaa !769  ; 2 uses
  %.not58 = icmp eq ptr %.0, null
  br i1 %.not58, label %.loopexit195, label %.lr.ph, !llvm.loop !770

.loopexit195:                                     ; preds = %bb.bb, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(13) %.030164, i64 13, i1 false), !tbaa.struct !771
  store ptr null, ptr %11, align 8, !tbaa !762
  invoke void @_ZN6vectorIN3smt8parallel10node_leaseELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZN6vectorIN3smt8parallel10node_leaseELb1EjE9push_backERKS2_.exit.i unwind label %bb.bj

_ZN6vectorIN3smt8parallel10node_leaseELb1EjE9push_backERKS2_.exit.i: ; preds = %.loopexit195
  %.pre.i.i109 = load ptr, ptr %11, align 8, !tbaa !762 ; 3 uses
  %.phi.trans.insert.i.i110 = getelementptr inbounds i8, ptr %.pre.i.i109, i64 -4
  %.pre2.i.i111 = load i32, ptr %.phi.trans.insert.i.i110, align 4, !tbaa !141 ; 2 uses
  %i.dv = zext i32 %.pre2.i.i111 to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i109, i64 %i.dv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false), !tbaa.struct !771
  %14 = getelementptr inbounds i8, ptr %.pre.i.i109, i64 -4
  %i.dx = add i32 %.pre2.i.i111, 1
  store i32 %i.dx, ptr %14, align 4, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  invoke void @_ZN3smt8parallel13batch_manager18backtrack_unlockedER15ast_translationjRK10ref_vectorI4expr11ast_managerEPNS0_10node_leaseEPK6vectorISA_Lb1EjE(ptr noundef nonnull align 8 dereferenceable(426) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef null, ptr noundef nonnull %11)
          to label %bb.bc unwind label %bb.bk

bb.bc:                                            ; preds = %_ZN6vectorIN3smt8parallel10node_leaseELb1EjE9push_backERKS2_.exit.i
  %i.dy = load ptr, ptr %11, align 8, !tbaa !762  ; 2 uses
  %.not.i.i113 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i113, label %_ZN6vectorIN3smt8parallel10node_leaseELb1EjED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.dz)
          to label %_ZN6vectorIN3smt8parallel10node_leaseELb1EjED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #27
  unreachable

_ZN6vectorIN3smt8parallel10node_leaseELb1EjED2Ev.exit: ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.ec = load ptr, ptr %i.cr, align 8, !tbaa !8  ; 5 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN6vectorIN3smt8parallel10node_leaseELb1EjED2Ev.exit
  %i.ee = getelementptr inbounds i8, ptr %i.ec, i64 -4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !141 ; 2 uses
  %i.eg = zext i32 %i.ef to i64
  %i.eh = shl nuw nsw i64 %i.eg, 3
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eh
  %.not.i114 = icmp eq i32 %i.ef, 0
  br i1 %.not.i114, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ep, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ec, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.ej = load ptr, ptr %.06.i.i, align 8, !tbaa !142 ; 3 uses
  %i.ek = load ptr, ptr %9, align 8, !tbaa !710, !nonnull !94, !align !95
  %.not.i.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !686
  %i.en = add i32 %i.em, -1                       ; 2 uses
  store i32 %i.en, ptr %i.el, align 4, !tbaa !686
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.bg, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ek, ptr noundef nonnull %i.ej)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.bi

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.bg, %bb.bf, %.lr.ph.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.eq = icmp ult ptr %i.ep, %i.ei
  br i1 %i.eq, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !711

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i115 = load ptr, ptr %i.cr, align 8, !tbaa !8 ; 2 uses
  %.not.i.i.i116 = icmp eq ptr %.pre.i115, null
  br i1 %.not.i.i.i116, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.er = phi ptr [ %.pre.i115, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.ec, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.es)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.bh

bb.bh:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #27
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #27
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN6vectorIN3smt8parallel10node_leaseELb1EjED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZNK11search_tree4treeIN3smt11cube_configEE17is_lease_canceledEPNS_4nodeIS2_EE.exit.thread

_ZNK11search_tree4treeIN3smt11cube_configEE17is_lease_canceledEPNS_4nodeIS2_EE.exit.thread: ; preds = %bb.av, %_ZNK11search_tree4treeIN3smt11cube_configEE17is_lease_canceledEPNS_4nodeIS2_EE.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %.030164, i64 16 ; 2 uses
  %.not57 = icmp eq ptr %i.ex, %i.cq
  br i1 %.not57, label %.loopexit, label %bb.av

bb.bj:                                            ; preds = %.loopexit195
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.bl

bb.bk:                                            ; preds = %_ZN6vectorIN3smt8parallel10node_leaseELb1EjE9push_backERKS2_.exit.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIN3smt8parallel10node_leaseELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #24
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pn59 = phi { ptr, i32 } [ %i.ez, %bb.bk ], [ %i.ey, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.ba
  %.pn61.pn = phi { ptr, i32 } [ %i.ds, %bb.ba ], [ %.pn59, %bb.bl ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.cn

bb.bn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.fa = load ptr, ptr %1, align 8, !tbaa !144, !nonnull !94, !align !95
  %i.fb = ptrtoint ptr %i.fa to i64
  store i64 %i.fb, ptr %12, align 8, !tbaa !684
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  store ptr null, ptr %i.fc, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_Z6mk_notRK7obj_refI4expr11ast_managerE(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.bo unwind label %bb.bw

bb.bo:                                            ; preds = %bb.bn
  %i.fd = load ptr, ptr %13, align 8, !tbaa !685
  %i.fe = load ptr, ptr %i.fc, align 8, !tbaa !8  ; 4 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 -4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !141 ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %i.fe, i64 -8
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !141
  %i.fk = icmp eq i32 %i.fh, %i.fj
  br i1 %i.fk, label %bb.bq, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit123

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fc)
          to label %.noexc120 unwind label %bb.bx

.noexc120:                                        ; preds = %bb.bq
  %.pre.i.i117 = load ptr, ptr %i.fc, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert.i.i118 = getelementptr inbounds i8, ptr %.pre.i.i117, i64 -4
  %.pre2.i.i119 = load i32, ptr %.phi.trans.insert.i.i118, align 4, !tbaa !141
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit123

_ZN7obj_refI4expr11ast_managerED2Ev.exit123:      ; preds = %bb.bp, %.noexc120
  %i.fl = phi i32 [ %.pre2.i.i119, %.noexc120 ], [ %i.fh, %bb.bp ] ; 2 uses
  %i.fm = phi ptr [ %.pre.i.i117, %.noexc120 ], [ %i.fe, %bb.bp ] ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 -4
  %i.fo = zext i32 %i.fl to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fo
  store ptr %i.fd, ptr %i.fp, align 8, !tbaa !142
  %i.fq = add i32 %i.fl, 1
  store i32 %i.fq, ptr %i.fn, align 4, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  invoke void @_ZN3smt8parallel13batch_manager18backtrack_unlockedER15ast_translationjRK10ref_vectorI4expr11ast_managerEPNS0_10node_leaseEPK6vectorISA_Lb1EjE(ptr noundef nonnull align 8 dereferenceable(426) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef null, ptr noundef nonnull %8)
          to label %bb.br unwind label %bb.bz

bb.br:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit123
  %i.fr = load ptr, ptr %i.fc, align 8, !tbaa !8  ; 5 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit134, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i124

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i124:        ; preds = %bb.br
  %i.ft = getelementptr inbounds i8, ptr %i.fr, i64 -4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !141 ; 2 uses
  %i.fv = zext i32 %i.fu to i64
  %i.fw = shl nuw nsw i64 %i.fv, 3
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fw
  %.not.i125 = icmp eq i32 %i.fu, 0
  br i1 %.not.i125, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i133, label %.lr.ph.i.i126

.lr.ph.i.i126:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i124, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i129
  %.06.i.i127 = phi ptr [ %i.ge, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i129 ], [ %i.fr, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i124 ] ; 2 uses
  %i.fy = load ptr, ptr %.06.i.i127, align 8, !tbaa !142 ; 3 uses
  %i.fz = load ptr, ptr %12, align 8, !tbaa !710, !nonnull !94, !align !95
  %.not.i.i.i.i.i128 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i.i128, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i129, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i.i126
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !686
  %i.gc = add i32 %i.gb, -1                       ; 2 uses
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !686
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.bt, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i129

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fz, ptr noundef nonnull %i.fy)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i129 unwind label %bb.bv

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i129: ; preds = %bb.bt, %bb.bs, %.lr.ph.i.i126
  %i.ge = getelementptr inbounds nuw i8, ptr %.06.i.i127, i64 8 ; 2 uses
end_hunk_0
