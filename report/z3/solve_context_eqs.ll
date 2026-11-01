Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/solve_context_eqs?download=true
inline.NumInlined: 688
inline.NumDeleted: 350
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@"_ZSt16__merge_adaptiveIPN3euf12dependent_eqElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_17solve_context_eqs25collect_nested_equalitiesER6vectorIS1_Lb1EjEE3$_0EEEvT_SC_SC_T0_SD_T1_T2_":bb.a
  %.024.i = phi ptr [ %i.ed, %bb.au ], [ %.024.i.ph, %.outer ] ; 9 uses
  %.0.i = phi ptr [ %i.bx, %bb.au ], [ %.0.i.ph, %.outer ] ; 9 uses
  %i.bv = getelementptr i8, ptr %.024.i, i64 8
  %.024.val.i = load ptr, ptr %i.bv, align 8, !tbaa !88
  %.026.val.i = load ptr, ptr %i.bu, align 8, !tbaa !88
  %.024.val.val.i = load i32, ptr %.024.val.i, align 4, !tbaa !39
  %.026.val.val.i = load i32, ptr %.026.val.i, align 4, !tbaa !39
  %i.bw = icmp ult i32 %.024.val.val.i, %.026.val.val.i
  %i.bx = getelementptr inbounds i8, ptr %.0.i, i64 -48 ; 6 uses
  %i.by = getelementptr inbounds i8, ptr %.0.i, i64 -32 ; 4 uses
  br i1 %i.bw, label %bb.ab, label %bb.al

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef nonnull align 8 dereferenceable(48) %.026.i.ph, i64 16, i1 false)
  %i.bz = getelementptr inbounds i8, ptr %.026.i.ph.pn, i64 -32 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %.0.i, %.026.i.ph.pn
  br i1 %.not.i.i.i20, label %_ZN3euf12dependent_eqaSEOS0_.exit.i24, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i21, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cb = getelementptr inbounds i8, ptr %.0.i, i64 -24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !91, !nonnull !28, !align !29
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !92
  %i.cf = add i32 %i.ce, -1                       ; 2 uses
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !92
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cc, ptr noundef nonnull %i.ca)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  tail call void @__clang_call_terminate(ptr %i.ci) #19
  unreachable

bb.ag:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.cj = load ptr, ptr %i.bz, align 8, !tbaa !89
  store ptr %i.cj, ptr %i.by, align 8, !tbaa !89
  store ptr null, ptr %i.bz, align 8, !tbaa !89
  %i.ck = getelementptr inbounds i8, ptr %.0.i, i64 -16 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.026.i.ph.pn, i64 -16 ; 2 uses
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !93 ; 4 uses
  %.not.i.i5.i.i22 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i5.i.i22, label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_E7dec_refEv.exit.i.i.i23, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cn = getelementptr inbounds i8, ptr %.0.i, i64 -8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !94, !nonnull !28, !align !29
  %i.cp = load i32, ptr %i.cm, align 4            ; 2 uses
  %i.cq = add i32 %i.cp, 1073741823
  %i.cr = and i32 %i.cq, 1073741823               ; 2 uses
  %i.cs = and i32 %i.cp, -1073741824
  %i.ct = or disjoint i32 %i.cr, %i.cs
  store i32 %i.ct, ptr %i.cm, align 4
  %i.cu = icmp eq i32 %i.cr, 0
  br i1 %i.cu, label %bb.ai, label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_E7dec_refEv.exit.i.i.i23

bb.ai:                                            ; preds = %bb.ah
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 648
  invoke void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull %i.cm)
          to label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_E7dec_refEv.exit.i.i.i23 unwind label %bb.aj

_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_E7dec_refEv.exit.i.i.i23: ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.cw = load ptr, ptr %i.cl, align 8, !tbaa !93
  store ptr %i.cw, ptr %i.ck, align 8, !tbaa !93
  store ptr null, ptr %i.cl, align 8, !tbaa !93
  br label %_ZN3euf12dependent_eqaSEOS0_.exit.i24

bb.aj:                                            ; preds = %bb.ai
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  tail call void @__clang_call_terminate(ptr %i.cy) #19
  unreachable

_ZN3euf12dependent_eqaSEOS0_.exit.i24:            ; preds = %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_E7dec_refEv.exit.i.i.i23, %bb.ab
  %i.cz = icmp eq ptr %0, %.026.i.ph
  br i1 %i.cz, label %bb.ak, label %.outer, !llvm.loop !223

bb.ak:                                            ; preds = %_ZN3euf12dependent_eqaSEOS0_.exit.i24
  %i.da = getelementptr inbounds nuw i8, ptr %.024.i, i64 48
  %i.db = tail call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN3euf12dependent_eqES5_EET0_T_S7_S6_(ptr noundef %5, ptr noundef nonnull %i.da, ptr noundef nonnull %i.bx) ; 0 uses
  br label %"_ZSt21__move_merge_adaptiveIPN3euf12dependent_eqES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_17solve_context_eqs25collect_nested_equalitiesER6vectorIS1_Lb1EjEE3$_0EEEvT_SC_T0_SD_T1_T2_.exit"

bb.al:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef nonnull align 8 dereferenceable(48) %.024.i, i64 16, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %.024.i, i64 16 ; 2 uses
  %.not.i.i32.i = icmp eq ptr %i.bx, %.024.i
  br i1 %.not.i.i32.i, label %_ZN3euf12dependent_eqaSEOS0_.exit36.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dd = load ptr, ptr %i.by, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i33.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i33.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.de = getelementptr inbounds i8, ptr %.0.i, i64 -24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !91, !nonnull !28, !align !29
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !92
  %i.di = add i32 %i.dh, -1                       ; 2 uses
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !92
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.df, ptr noundef nonnull %i.dd)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  tail call void @__clang_call_terminate(ptr %i.dl) #19
  unreachable

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.dm = load ptr, ptr %i.dc, align 8, !tbaa !89
  store ptr %i.dm, ptr %i.by, align 8, !tbaa !89
  store ptr null, ptr %i.dc, align 8, !tbaa !89
  %i.dn = getelementptr inbounds i8, ptr %.0.i, i64 -16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.024.i, i64 32 ; 2 uses
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !93 ; 4 uses
  %.not.i.i5.i34.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i5.i34.i, label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_E7dec_refEv.exit.i.i35.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dq = getelementptr inbounds i8, ptr %.0.i, i64 -8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !94, !nonnull !28, !align !29
  %i.ds = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.dt = add i32 %i.ds, 1073741823
  %i.du = and i32 %i.dt, 1073741823               ; 2 uses
  %i.dv = and i32 %i.ds, -1073741824
  %i.dw = or disjoint i32 %i.du, %i.dv
  store i32 %i.dw, ptr %i.dp, align 4
  %i.dx = icmp eq i32 %i.du, 0
  br i1 %i.dx, label %bb.as, label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_E7dec_refEv.exit.i.i35.i

bb.as:                                            ; preds = %bb.ar
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 648
  invoke void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull %i.dp)
          to label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_E7dec_refEv.exit.i.i35.i unwind label %bb.at

_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_E7dec_refEv.exit.i.i35.i: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.dz = load ptr, ptr %i.do, align 8, !tbaa !93
  store ptr %i.dz, ptr %i.dn, align 8, !tbaa !93
  store ptr null, ptr %i.do, align 8, !tbaa !93
  br label %_ZN3euf12dependent_eqaSEOS0_.exit36.i

bb.at:                                            ; preds = %bb.as
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  tail call void @__clang_call_terminate(ptr %i.eb) #19
  unreachable

_ZN3euf12dependent_eqaSEOS0_.exit36.i:            ; preds = %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_E7dec_refEv.exit.i.i35.i, %bb.al
  %i.ec = icmp eq ptr %5, %.024.i
  br i1 %i.ec, label %"_ZSt21__move_merge_adaptiveIPN3euf12dependent_eqES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_17solve_context_eqs25collect_nested_equalitiesER6vectorIS1_Lb1EjEE3$_0EEEvT_SC_T0_SD_T1_T2_.exit", label %bb.au

bb.au:                                            ; preds = %_ZN3euf12dependent_eqaSEOS0_.exit36.i
  %i.ed = getelementptr inbounds i8, ptr %.024.i, i64 -48
  br label %bb.aa, !llvm.loop !223

"_ZSt21__move_merge_adaptiveIPN3euf12dependent_eqES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_17solve_context_eqs25collect_nested_equalitiesER6vectorIS1_Lb1EjEE3$_0EEEvT_SC_T0_SD_T1_T2_.exit": ; preds = %_ZN3euf12dependent_eqaSEOS0_.exit36.i, %bb.ak, %bb.y, %bb.x, %bb.v, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIPN3euf12dependent_eqEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_17solve_context_eqs25collect_nested_equalitiesER6vectorIS1_Lb1EjEE3$_0EEEvT_SC_T0_"(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.025 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not26 = icmp eq ptr %.025, %1
  br i1 %.not26, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %.028 = phi ptr [ %.025, %.lr.ph ], [ %.0, %bb.y ] ; 7 uses
  %.pn27 = phi ptr [ %0, %.lr.ph ], [ %.028, %bb.y ] ; 7 uses
  %i.g = getelementptr i8, ptr %.pn27, i64 56
  %.0.val = load ptr, ptr %i.g, align 8, !tbaa !88 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !88
  %.0.val.val = load i32, ptr %.0.val, align 4, !tbaa !39 ; 2 uses
  %.val.val = load i32, ptr %.val, align 4, !tbaa !39
  %i.h = icmp ult i32 %.0.val.val, %.val.val
  br i1 %i.h, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %.sroa.0.sroa.0.0.copyload = load <2 x ptr>, ptr %.028, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.pn27, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !89
  store ptr null, ptr %i.i, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %.pn27, i64 80 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !93
  store ptr null, ptr %i.k, align 8, !tbaa !93
  %i.m = getelementptr inbounds nuw i8, ptr %.pn27, i64 96
  %i.n = tail call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN3euf12dependent_eqES5_EET0_T_S7_S6_(ptr noundef nonnull %0, ptr noundef nonnull %.028, ptr noundef nonnull %i.m) ; 0 uses
  store <2 x ptr> %.sroa.0.sroa.0.0.copyload, ptr %0, align 8
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !91, !nonnull !28, !align !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !92
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.q, align 4, !tbaa !92
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.p, ptr noundef nonnull %i.o)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #19
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  store ptr %i.j, ptr %i.c, align 8, !tbaa !89
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !93   ; 4 uses
  %.not.i.i5.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i5.i, label %_ZN3euf12dependent_eqD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !94, !nonnull !28, !align !29
  %i.y = load i32, ptr %i.w, align 4              ; 2 uses
  %i.z = add i32 %i.y, 1073741823
  %i.aa = and i32 %i.z, 1073741823                ; 2 uses
  %i.ab = and i32 %i.y, -1073741824
  %i.ac = or disjoint i32 %i.aa, %i.ab
  store i32 %i.ac, ptr %i.w, align 4
  %i.ad = icmp eq i32 %i.aa, 0
  br i1 %i.ad, label %bb.i, label %_ZN3euf12dependent_eqD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 648
  invoke void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull %i.w)
          to label %_ZN3euf12dependent_eqD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #19
  unreachable

_ZN3euf12dependent_eqD2Ev.exit:                   ; preds = %bb.i, %bb.h, %bb.g
  store ptr %i.l, ptr %i.e, align 8, !tbaa !93
  br label %bb.y

bb.k:                                             ; preds = %bb.b
  %2 = load <2 x ptr>, ptr %.028, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn27, i64 64 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !89
  store ptr null, ptr %i.ah, align 8, !tbaa !89
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn27, i64 80 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !93
  store ptr null, ptr %i.aj, align 8, !tbaa !93
  %i.al = getelementptr i8, ptr %.pn27, i64 8
  %.0.val18.i = load ptr, ptr %i.al, align 8, !tbaa !88
  %.0.val.val20.i = load i32, ptr %.0.val18.i, align 4, !tbaa !39
  %i.am = icmp ult i32 %.0.val.val, %.0.val.val20.i
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.k, %_ZN3euf12dependent_eqaSEOS0_.exit.i
  %.0921.i = phi ptr [ %.022.i, %_ZN3euf12dependent_eqaSEOS0_.exit.i ], [ %.028, %bb.k ] ; 10 uses
  %.022.i = getelementptr inbounds i8, ptr %.0921.i, i64 -48 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0921.i, ptr noundef nonnull align 8 dereferenceable(48) %.022.i, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.0921.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.0921.i, i64 -32 ; 6 uses
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0921.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !91, !nonnull !28, !align !29
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !92
  %i.au = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.au, ptr %i.as, align 4, !tbaa !92
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ar, ptr noundef nonnull %i.ap)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #19
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.l, %.lr.ph.i
  %i.ay = load ptr, ptr %i.ao, align 8, !tbaa !89
  store ptr %i.ay, ptr %i.an, align 8, !tbaa !89
  store ptr null, ptr %i.ao, align 8, !tbaa !89
  %i.az = getelementptr inbounds nuw i8, ptr %.0921.i, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.0921.i, i64 -16 ; 2 uses
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !93 ; 4 uses
  %.not.i.i5.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i5.i.i, label %_ZN3euf12dependent_eqaSEOS0_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %.0921.i, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !94, !nonnull !28, !align !29
  %i.be = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.bf = add i32 %i.be, 1073741823
  %i.bg = and i32 %i.bf, 1073741823               ; 2 uses
  %i.bh = and i32 %i.be, -1073741824
  %i.bi = or disjoint i32 %i.bg, %i.bh
  store i32 %i.bi, ptr %i.bb, align 4
  %i.bj = icmp eq i32 %i.bg, 0
  br i1 %i.bj, label %bb.q, label %_ZN3euf12dependent_eqaSEOS0_.exit.i

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 648
  invoke void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull %i.bb)
          to label %_ZN3euf12dependent_eqaSEOS0_.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #19
  unreachable

_ZN3euf12dependent_eqaSEOS0_.exit.i:              ; preds = %bb.q, %bb.p, %bb.o
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !93
  store ptr %i.bn, ptr %i.az, align 8, !tbaa !93
  store ptr null, ptr %i.ba, align 8, !tbaa !93
  %i.bo = getelementptr i8, ptr %.0921.i, i64 -88
  %.0.val.i = load ptr, ptr %i.bo, align 8, !tbaa !88
  %.val.val.i = load i32, ptr %.0.val, align 4, !tbaa !39
  %.0.val.val.i = load i32, ptr %.0.val.i, align 4, !tbaa !39
  %i.bp = icmp ult i32 %.val.val.i, %.0.val.val.i
  br i1 %i.bp, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !224

._crit_edge.i:                                    ; preds = %_ZN3euf12dependent_eqaSEOS0_.exit.i
  %.pre.i = load ptr, ptr %i.ao, align 8, !tbaa !89 ; 3 uses
  store <2 x ptr> %2, ptr %.022.i, align 8
  %.not.i.i.i10.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i10.i, label %._crit_edge.thread.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  %i.bq = getelementptr inbounds i8, ptr %.0921.i, i64 -24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !91, !nonnull !28, !align !29
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !92
  %i.bu = add i32 %i.bt, -1                       ; 2 uses
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !92
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.t, label %._crit_edge.thread.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.br, ptr noundef nonnull %.pre.i)
          to label %._crit_edge.thread.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  tail call void @__clang_call_terminate(ptr %i.bx) #19
  unreachable

._crit_edge.thread.i:                             ; preds = %bb.k, %bb.t, %bb.s, %._crit_edge.i
  %i.by = phi ptr [ %i.ao, %._crit_edge.i ], [ %i.ao, %bb.t ], [ %i.ao, %bb.s ], [ %i.ah, %bb.k ]
  %.09.lcssa34.i = phi ptr [ %.022.i, %._crit_edge.i ], [ %.022.i, %bb.t ], [ %.022.i, %bb.s ], [ %.028, %bb.k ] ; 2 uses
  store ptr %i.ai, ptr %i.by, align 8, !tbaa !89
  %i.bz = getelementptr inbounds nuw i8, ptr %.09.lcssa34.i, i64 32 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !93 ; 4 uses
  %.not.i.i5.i11.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i5.i11.i, label %"_ZSt25__unguarded_linear_insertIPN3euf12dependent_eqEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_17solve_context_eqs25collect_nested_equalitiesER6vectorIS1_Lb1EjEE3$_0EEEvT_T0_.exit", label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.09.lcssa34.i, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !94, !nonnull !28, !align !29
  %i.cd = load i32, ptr %i.ca, align 4            ; 2 uses
  %i.ce = add i32 %i.cd, 1073741823
  %i.cf = and i32 %i.ce, 1073741823               ; 2 uses
  %i.cg = and i32 %i.cd, -1073741824
  %i.ch = or disjoint i32 %i.cf, %i.cg
  store i32 %i.ch, ptr %i.ca, align 4
  %i.ci = icmp eq i32 %i.cf, 0
  br i1 %i.ci, label %bb.w, label %"_ZSt25__unguarded_linear_insertIPN3euf12dependent_eqEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_17solve_context_eqs25collect_nested_equalitiesER6vectorIS1_Lb1EjEE3$_0EEEvT_T0_.exit"

bb.w:                                             ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 648
  invoke void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull %i.ca)
          to label %"_ZSt25__unguarded_linear_insertIPN3euf12dependent_eqEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_17solve_context_eqs25collect_nested_equalitiesER6vectorIS1_Lb1EjEE3$_0EEEvT_T0_.exit" unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  tail call void @__clang_call_terminate(ptr %i.cl) #19
  unreachable

"_ZSt25__unguarded_linear_insertIPN3euf12dependent_eqEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_17solve_context_eqs25collect_nested_equalitiesER6vectorIS1_Lb1EjEE3$_0EEEvT_T0_.exit": ; preds = %._crit_edge.thread.i, %bb.v, %bb.w
  store ptr %i.ak, ptr %i.bz, align 8, !tbaa !93
  br label %bb.y

bb.y:                                             ; preds = %_ZN3euf12dependent_eqD2Ev.exit, %"_ZSt25__unguarded_linear_insertIPN3euf12dependent_eqEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_17solve_context_eqs25collect_nested_equalitiesER6vectorIS1_Lb1EjEE3$_0EEEvT_T0_.exit"
  %.0 = getelementptr inbounds nuw i8, ptr %.028, i64 48 ; 2 uses
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !225

.loopexit:                                        ; preds = %bb.y, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN3euf12dependent_eqES5_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 48
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN3euf12dependent_eqaSEOS0_.exit
  %.012 = phi i64 [ %i.ai, %_ZN3euf12dependent_eqaSEOS0_.exit ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.0611 = phi ptr [ %i.g, %_ZN3euf12dependent_eqaSEOS0_.exit ], [ %2, %.lr.ph.preheader ] ; 6 uses
  %.0710 = phi ptr [ %i.f, %_ZN3euf12dependent_eqaSEOS0_.exit ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.0710, i64 -48 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.0611, i64 -48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 16, i1 false)
  %i.h = getelementptr inbounds i8, ptr %.0611, i64 -32 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.0710, i64 -32 ; 2 uses
  %.not.i.i = icmp eq ptr %.0611, %.0710
  br i1 %.not.i.i, label %_ZN3euf12dependent_eqaSEOS0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %.0611, i64 -24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !91, !nonnull !28, !align !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !92
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 4, !tbaa !92
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.l, ptr noundef nonnull %i.j)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #19
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !89
  store ptr %i.s, ptr %i.h, align 8, !tbaa !89
  store ptr null, ptr %i.i, align 8, !tbaa !89
  %i.t = getelementptr inbounds i8, ptr %.0611, i64 -16 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.0710, i64 -16 ; 2 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !93   ; 4 uses
  %.not.i.i5.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i5.i, label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_E7dec_refEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds i8, ptr %.0611, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !94, !nonnull !28, !align !29
  %i.y = load i32, ptr %i.v, align 4              ; 2 uses
  %i.z = add i32 %i.y, 1073741823
  %i.aa = and i32 %i.z, 1073741823                ; 2 uses
  %i.ab = and i32 %i.y, -1073741824
  %i.ac = or disjoint i32 %i.aa, %i.ab
  store i32 %i.ac, ptr %i.v, align 4
  %i.ad = icmp eq i32 %i.aa, 0
  br i1 %i.ad, label %bb.h, label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_E7dec_refEv.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 648
  invoke void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull %i.v)
          to label %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_E7dec_refEv.exit.i.i unwind label %bb.i

_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_E7dec_refEv.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !93
  store ptr %i.af, ptr %i.t, align 8, !tbaa !93
  store ptr null, ptr %i.u, align 8, !tbaa !93
  br label %_ZN3euf12dependent_eqaSEOS0_.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #19
  unreachable

_ZN3euf12dependent_eqaSEOS0_.exit:                ; preds = %.lr.ph, %_ZN7obj_refIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyES1_E7dec_refEv.exit.i.i
  %i.ai = add nsw i64 %.012, -1
  %i.aj = icmp sgt i64 %.012, 1
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !226

._crit_edge:                                      ; preds = %_ZN3euf12dependent_eqaSEOS0_.exit, %bb.a
  %.06.lcssa = phi ptr [ %2, %bb.a ], [ %i.g, %_ZN3euf12dependent_eqaSEOS0_.exit ]
  ret ptr %.06.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @"_ZSt12__move_mergeIPN3euf12dependent_eqES2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_17solve_context_eqs25collect_nested_equalitiesER6vectorIS1_Lb1EjEE3$_0EEET0_T_SD_SD_SD_SC_T1_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.t
  %.040 = phi ptr [ %i.bj, %bb.t ], [ %4, %bb.a ] ; 12 uses
  %.01839 = phi ptr [ %.1, %bb.t ], [ %0, %bb.a ] ; 7 uses
  %.01938 = phi ptr [ %.120, %bb.t ], [ %2, %bb.a ] ; 7 uses
  %i.d = getelementptr i8, ptr %.01938, i64 8
  %.019.val = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.e = getelementptr i8, ptr %.01839, i64 8
  %.018.val = load ptr, ptr %i.e, align 8, !tbaa !88
  %.019.val.val = load i32, ptr %.019.val, align 4, !tbaa !39
  %.018.val.val = load i32, ptr %.018.val, align 4, !tbaa !39
  %i.f = icmp ult i32 %.019.val.val, %.018.val.val
  %i.g = getelementptr inbounds nuw i8, ptr %.040, i64 16 ; 4 uses
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.040, ptr noundef nonnull align 8 dereferenceable(48) %.01938, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %.01938, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %.040, %.01938
  br i1 %.not.i.i, label %_ZN3euf12dependent_eqaSEOS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
