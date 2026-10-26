Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_mk_coalesce?download=true
inline.NumInlined: 518
inline.NumDeleted: 305
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7datalog11mk_coalesce11merge_rulesER7obj_refINS_4ruleENS_12rule_managerEERKS2_:bb.a
  %i.ca = load ptr, ptr %3, align 8, !tbaa !94    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !87
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !87
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.m, %bb.l
  %i.ce = load ptr, ptr %i.aw, align 8, !tbaa !134 ; 4 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !83 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 -8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !83
  %i.ck = icmp eq i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.o
  %.pre.i.i = load ptr, ptr %i.aw, align 8, !tbaa !134 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !83
  br label %bb.p

bb.p:                                             ; preds = %.noexc, %bb.n
  %i.cl = phi i32 [ %.pre2.i.i, %.noexc ], [ %i.ch, %bb.n ] ; 2 uses
  %i.cm = phi ptr [ %.pre.i.i, %.noexc ], [ %i.ce, %bb.n ] ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -4
  %i.co = zext i32 %i.cl to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.co
  store ptr %i.ca, ptr %i.cp, align 8, !tbaa !112
  %i.cq = add i32 %i.cl, 1
  store i32 %i.cq, ptr %i.cn, align 4, !tbaa !83
  %i.cr = load ptr, ptr %i.bo, align 8, !tbaa !112
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = and i64 %i.cs, 7
  %i.cu = icmp eq i64 %i.ct, 1
  %i.cv = zext i1 %i.cu to i8
  %i.cw = load ptr, ptr %16, align 8, !tbaa !104  ; 4 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 -4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !83 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 -8
  %i.db = load i32, ptr %i.da, align 4, !tbaa !83
  %i.dc = icmp eq i32 %i.cz, %i.db
  br i1 %i.dc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  invoke void @_ZN6vectorIbLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb.r
  %.pre.i46 = load ptr, ptr %16, align 8, !tbaa !104 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i46, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !83
  br label %bb.s

bb.s:                                             ; preds = %.noexc47, %bb.q
  %i.dd = phi i32 [ %.pre2.i, %.noexc47 ], [ %i.cz, %bb.q ] ; 2 uses
  %i.de = phi ptr [ %.pre.i46, %.noexc47 ], [ %i.cw, %bb.q ] ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dg = zext i32 %i.dd to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dg
  store i8 %i.cv, ptr %i.dh, align 1, !tbaa !105
  %i.di = add i32 %i.dd, 1
  store i32 %i.di, ptr %i.df, align 4, !tbaa !83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dj = load i32, ptr %i.bk, align 4, !tbaa !111
  %i.dk = zext i32 %i.dj to i64
  %i.dl = icmp samesign ult i64 %indvars.iv.next, %i.dk
  br i1 %i.dl, label %bb.k, label %._crit_edge, !llvm.loop !311

bb.t:                                             ; preds = %._crit_edge
  %i.dm = load ptr, ptr %1, align 8, !tbaa !102
  invoke void @_ZN7datalog11mk_coalesce13extract_conjsERK10ref_vectorI4expr11ast_managerERKNS_4ruleER7obj_refIS2_S3_E(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(80) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.dn = load ptr, ptr %5, align 8, !tbaa !106
  %i.do = load ptr, ptr %6, align 8, !tbaa !106
  invoke void @_ZN13bool_rewriter5mk_orEP4exprS1_R7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %14, ptr noundef %i.dn, ptr noundef %i.do, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %i.dp = load ptr, ptr %7, align 8, !tbaa !106   ; 3 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i48, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !87
  %i.ds = add i32 %i.dr, 1
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !87
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49: ; preds = %bb.w, %bb.v
  %i.dt = load ptr, ptr %i.aw, align 8, !tbaa !134 ; 4 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49
  %i.dv = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !83 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !83
  %i.dz = icmp eq i32 %i.dw, %i.dy
  br i1 %i.dz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc53:                                         ; preds = %bb.y
  %.pre.i.i50 = load ptr, ptr %i.aw, align 8, !tbaa !134 ; 2 uses
  %.phi.trans.insert.i.i51 = getelementptr inbounds i8, ptr %.pre.i.i50, i64 -4
  %.pre2.i.i52 = load i32, ptr %.phi.trans.insert.i.i51, align 4, !tbaa !83
  br label %bb.z

bb.z:                                             ; preds = %.noexc53, %bb.x
  %i.ea = phi i32 [ %.pre2.i.i52, %.noexc53 ], [ %i.dw, %bb.x ] ; 2 uses
  %i.eb = phi ptr [ %.pre.i.i50, %.noexc53 ], [ %i.dt, %bb.x ] ; 3 uses
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -4
  %i.ed = zext i32 %i.ea to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ed
  store ptr %i.dp, ptr %i.ee, align 8, !tbaa !112
  %i.ef = add i32 %i.ea, 1
  store i32 %i.ef, ptr %i.ec, align 4, !tbaa !83
  %i.eg = load ptr, ptr %16, align 8, !tbaa !104  ; 6 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 -4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !83 ; 3 uses
  %i.ek = getelementptr inbounds i8, ptr %i.eg, i64 -8
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !83
  %i.em = icmp eq i32 %i.ej, %i.el
  br i1 %i.em, label %bb.ab, label %.thread

.thread:                                          ; preds = %bb.aa
  %i.en = getelementptr inbounds i8, ptr %i.eg, i64 -4
  %i.eo = zext i32 %i.ej to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eo
  store i8 0, ptr %i.ep, align 1, !tbaa !105
  %i.eq = add i32 %i.ej, 1
  store i32 %i.eq, ptr %i.en, align 4, !tbaa !83
  %i.er = load ptr, ptr %i.az, align 8, !tbaa !100, !nonnull !76, !align !77
  %i.es = load ptr, ptr %4, align 8, !tbaa !94
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa, %bb.z
  invoke void @_ZN6vectorIbLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %.pre.i55 = load ptr, ptr %16, align 8, !tbaa !104 ; 5 uses
  %.phi.trans.insert.i56 = getelementptr inbounds i8, ptr %.pre.i55, i64 -4
  %.pre2.i57 = load i32, ptr %.phi.trans.insert.i56, align 4, !tbaa !83 ; 2 uses
  %.pre = load ptr, ptr %i.aw, align 8, !tbaa !134 ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %.pre.i55, i64 -4
  %i.eu = zext i32 %.pre2.i57 to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %.pre.i55, i64 %i.eu
  store i8 0, ptr %i.ev, align 1, !tbaa !105
  %i.ew = add i32 %.pre2.i57, 1
  store i32 %i.ew, ptr %i.et, align 4, !tbaa !83
  %i.ex = load ptr, ptr %i.az, align 8, !tbaa !100, !nonnull !76, !align !77 ; 2 uses
  %i.ey = load ptr, ptr %4, align 8, !tbaa !94    ; 2 uses
  %i.ez = icmp eq ptr %.pre, null
  br i1 %i.ez, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.ad

bb.ad:                                            ; preds = %.thread, %bb.ac
  %i.fa = phi ptr [ %i.es, %.thread ], [ %i.ey, %bb.ac ]
  %i.fb = phi ptr [ %i.er, %.thread ], [ %i.ex, %bb.ac ]
  %i.fc = phi ptr [ %i.eg, %.thread ], [ %.pre.i55, %bb.ac ]
  %i.fd = phi ptr [ %i.eb, %.thread ], [ %.pre, %bb.ac ] ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !83
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.ac, %bb.ad
  %i.fg = phi ptr [ %i.fa, %bb.ad ], [ %i.ey, %bb.ac ]
  %i.fh = phi ptr [ %i.fb, %bb.ad ], [ %i.ex, %bb.ac ]
  %i.fi = phi ptr [ %i.fc, %bb.ad ], [ %.pre.i55, %bb.ac ]
  %i.fj = phi ptr [ %i.fd, %bb.ad ], [ null, %bb.ac ]
  %.0.i.i = phi i32 [ %i.ff, %bb.ad ], [ 0, %bb.ac ]
  %i.fk = load ptr, ptr %1, align 8, !tbaa !102
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 72
  %i.fm = invoke noundef ptr @_ZN7datalog12rule_manager2mkEP3appjPKS2_PKbRK6symbolb(ptr noundef nonnull align 8 dereferenceable(1104) %i.fh, ptr noundef %i.fg, i32 noundef %.0.i.i, ptr noundef %i.fj, ptr noundef %i.fi, ptr noundef nonnull align 8 dereferenceable(8) %i.fl, i1 noundef zeroext true)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

bb.ae:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.not.i60 = icmp eq ptr %i.fm, null             ; 3 uses
  br i1 %.not.i60, label %.noexc62, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fn = load ptr, ptr %i.bb, align 8, !tbaa !114, !nonnull !76, !align !77
  invoke void @_ZN7datalog12rule_manager7inc_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.fn, ptr noundef nonnull %i.fm)
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc62:                                         ; preds = %bb.af, %bb.ae
  %i.fo = load ptr, ptr %13, align 8, !tbaa !102  ; 2 uses
  %.not.i.i61 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i61, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.noexc62
  %i.fp = load ptr, ptr %i.bb, align 8, !tbaa !114, !nonnull !76, !align !77
  invoke void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.fp, ptr noundef nonnull %i.fo)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %.noexc62, %bb.ag
  store ptr %i.fm, ptr %13, align 8, !tbaa !102
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !135, !nonnull !76, !align !77
  %i.fs = invoke noundef zeroext i1 @_ZNK7datalog7context20generate_proof_traceEv(ptr noundef nonnull align 8 dereferenceable(3028) %i.fr)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.fs, label %bb.aj, label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %i.ft = load ptr, ptr %i.az, align 8, !tbaa !100, !nonnull !76, !align !77
  invoke void @_ZN7datalog12rule_manager10to_formulaERKNS_4ruleER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(1104) %i.ft, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  %i.fu = load ptr, ptr %i.az, align 8, !tbaa !100, !nonnull !76, !align !77
  %i.fv = load ptr, ptr %1, align 8, !tbaa !102
  invoke void @_ZN7datalog12rule_manager10to_formulaERKNS_4ruleER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(1104) %i.fu, ptr noundef nonnull align 8 dereferenceable(80) %i.fv, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  %i.fw = load ptr, ptr %i.az, align 8, !tbaa !100, !nonnull !76, !align !77
  invoke void @_ZN7datalog12rule_manager10to_formulaERKNS_4ruleER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(1104) %i.fw, ptr noundef nonnull align 8 dereferenceable(80) %i.fm, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  store ptr null, ptr %17, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  store ptr null, ptr %18, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !313
  store ptr %i.fy, ptr %i.a, align 8, !tbaa !112
  %i.fz = load ptr, ptr %i.ao, align 8, !tbaa !92, !nonnull !76, !align !77
  %i.ga = load ptr, ptr %7, align 8, !tbaa !106
  %i.gb = invoke noundef ptr @_ZN11ast_manager16mk_hyper_resolveEjPKP3appP4exprRK7svectorISt4pairIjjEjERK6vectorI10ref_vectorIS4_S_ELb1EjE(ptr noundef nonnull align 8 dereferenceable(952) %i.fz, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef %i.ga, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.an unwind label %bb.at     ; 2 uses

bb.an:                                            ; preds = %bb.am
  store ptr %i.gb, ptr %i.a, align 8, !tbaa !112
  %i.gc = load ptr, ptr %i.ao, align 8, !tbaa !92, !nonnull !76, !align !77
  invoke void @_ZN7datalog4rule9set_proofER11ast_managerP3app(ptr noundef nonnull align 8 dereferenceable(80) %i.fm, ptr noundef nonnull align 8 dereferenceable(952) %i.gc, ptr noundef %i.gb)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.gd = load ptr, ptr %18, align 8, !tbaa !141
  %.not.i.i64 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i64, label %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE16destroy_elementsEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %.noexc.i unwind label %bb.aq

.noexc.i:                                         ; preds = %bb.ap
  %i.ge = load ptr, ptr %18, align 8, !tbaa !141
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gf)
          to label %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjED2Ev.exit unwind label %bb.aq

bb.aq:                                            ; preds = %.noexc.i, %bb.ap
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  call void @__clang_call_terminate(ptr %i.gh) #17
  unreachable

_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjED2Ev.exit: ; preds = %bb.ao, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.gi = load ptr, ptr %17, align 8, !tbaa !138  ; 2 uses
  %.not.i.i65 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i65, label %_ZN6vectorISt4pairIjjELb0EjED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjED2Ev.exit
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gj)
          to label %_ZN6vectorISt4pairIjjELb0EjED2Ev.exit unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #17
  unreachable

_ZN6vectorISt4pairIjjELb0EjED2Ev.exit:            ; preds = %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjED2Ev.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.au

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %bb.o, %bb.k, %bb.ax, %bb.aw, %bb.ag, %bb.af, %bb.y, %bb.g, %bb.h, %bb.i, %._crit_edge, %bb.t, %bb.u, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %bb.ah, %bb.aj, %bb.ak, %bb.al, %bb.ab
  %lpad.loopexit.split-lp153 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.at:                                            ; preds = %bb.an, %bb.am
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @_ZN6vectorISt4pairIjjELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %.loopexit.split-lp

bb.au:                                            ; preds = %_ZN6vectorISt4pairIjjELb0EjED2Ev.exit, %bb.ai
  %i.gn = load ptr, ptr %1, align 8, !tbaa !102   ; 3 uses
  %.not.i66 = icmp eq ptr %i.gn, %i.fm
  br i1 %.not.i66, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not.i.i67 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i67, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !114, !nonnull !76, !align !77
  invoke void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.gp, ptr noundef nonnull %i.gn)
          to label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit.i: ; preds = %bb.aw, %bb.av
  store ptr %i.fm, ptr %1, align 8, !tbaa !102
  br i1 %.not.i60, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit.i
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !114, !nonnull !76, !align !77
  invoke void @_ZN7datalog12rule_manager7inc_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.gr, ptr noundef nonnull %i.fm)
          to label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit: ; preds = %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit.i, %bb.au, %bb.ax
  %i.gs = load ptr, ptr %16, align 8, !tbaa !104  ; 2 uses
  %.not.i.i70 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i70, label %_ZN6vectorIbLb0EjED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gt)
          to label %_ZN6vectorIbLb0EjED2Ev.exit unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #17
  unreachable

_ZN6vectorIbLb0EjED2Ev.exit:                      ; preds = %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @_ZN13bool_rewriterD2Ev(ptr noundef nonnull align 8 dead_on_return(368) dereferenceable(368) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br i1 %.not.i60, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN6vectorIbLb0EjED2Ev.exit
  %i.gw = load ptr, ptr %i.bb, align 8, !tbaa !114, !nonnull !76, !align !77
  invoke void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.gw, ptr noundef nonnull %i.fm)
          to label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  call void @__clang_call_terminate(ptr %i.gy) #17
  unreachable

_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit: ; preds = %_ZN6vectorIbLb0EjED2Ev.exit, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.gz = load ptr, ptr %i.ay, align 8, !tbaa !80 ; 5 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i73

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i73:         ; preds = %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit
  %i.hb = getelementptr inbounds i8, ptr %i.gz, i64 -4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !83 ; 2 uses
  %i.hd = zext i32 %i.hc to i64
  %i.he = shl nuw nsw i64 %i.hd, 3
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.he
  %.not.i74 = icmp eq i32 %i.hc, 0
end_hunk_0
begin_hunk_1_@_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev:bb.a
bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !87
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4, !tbaa !87
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.j, ptr noundef nonnull %i.i)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i unwind label %bb.e

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.h
  br i1 %i.p, label %.lr.ph.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit, !llvm.loop !1

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !134 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN6vectorIP3appLb0EjED2Ev.exit, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7: ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit
  %i.q = phi ptr [ %.pre, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit ], [ %i.b, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit ]
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.r)
          to label %_ZN6vectorIP3appLb0EjED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #17
  unreachable

_ZN6vectorIP3appLb0EjED2Ev.exit:                  ; preds = %bb.a, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #17
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !94     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refI3app11ast_managerE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95, !nonnull !76, !align !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !87
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !87
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN7obj_refI3app11ast_managerE7dec_refEv.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.c, ptr noundef nonnull %i.a)
          to label %_ZN7obj_refI3app11ast_managerE7dec_refEv.exit unwind label %bb.d

_ZN7obj_refI3app11ast_managerE7dec_refEv.exit:    ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #17
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK7datalog11mk_coalesce9same_bodyERKNS_4ruleES3_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(84) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.b = load i32, ptr %i.a, align 4, !tbaa !111  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.d = load i32, ptr %i.c, align 4, !tbaa !111
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.not2021 = icmp eq i32 %i.b, 0
  br i1 %.not2021, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !2

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = and i64 %i.i, -8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !93
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !112
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = and i64 %i.p, -8
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !93
  %.not18 = icmp eq ptr %i.m, %i.t
  br i1 %.not18, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.u = and i64 %i.i, 7
  %i.v = icmp eq i64 %i.u, 1
  %i.w = and i64 %i.p, 7
  %i.x = icmp eq i64 %i.w, 1
  %i.y = xor i1 %i.v, %i.x
  br i1 %i.y, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.b, %.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog11mk_coalesceclERKNS_8rule_setE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator.143", align 1 ; 4 uses
  %4 = alloca %class.obj_ref.135, align 8         ; 9 uses
  %i.a = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 248) ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !135, !nonnull !76, !align !77
  tail call void @_ZN7datalog8rule_setC1ERNS_7contextE(ptr noundef nonnull align 8 dereferenceable(248) %i.a, ptr noundef nonnull align 8 dereferenceable(3028) %i.c)
  invoke void @_ZN7datalog8rule_set18inherit_predicatesERKS0_(ptr noundef nonnull align 8 dereferenceable(248) %i.a, ptr noundef nonnull align 8 dereferenceable(248) %1)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !317  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !318  ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.h, 4
  %i.i = getelementptr i8, ptr %i.e, i64 %.idx.i.i.i ; 4 uses
  %.not1.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not1.i.i.i.i.i, label %.loopexit114, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !322
  %i.k = icmp ult ptr %i.j, inttoptr (i64 2 to ptr)
  br i1 %i.k, label %bb.c, label %.loopexit114

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, %i.i
  br i1 %.not.i.i.i.i.i, label %.loopexit114, label %.lr.ph.i.i.i.i.i, !llvm.loop !314

.loopexit114:                                     ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.b
  %.sroa.0.1.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.i, %bb.c ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %.not136 = icmp eq ptr %.sroa.0.1.i.i.i, %i.m
  br i1 %.not136, label %_ZN10scoped_ptrIN7datalog8rule_setEED2Ev.exit, label %.lr.ph138

.lr.ph138:                                        ; preds = %.loopexit114
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph138, %_ZN14core_hashtableIN7obj_mapI9func_declP10ptr_vectorIN7datalog4ruleEEE13obj_map_entryE8obj_hashINS7_8key_dataEE10default_eqISA_EE8iteratorppEv.exit
  %.sroa.094.0137 = phi ptr [ %.sroa.0.1.i.i.i, %.lr.ph138 ], [ %.sroa.094.2, %_ZN14core_hashtableIN7obj_mapI9func_declP10ptr_vectorIN7datalog4ruleEEE13obj_map_entryE8obj_hashINS7_8key_dataEE10default_eqISA_EE8iteratorppEv.exit ] ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !100, !nonnull !76, !align !77 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.094.0137, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !323
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !324  ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEED2Ev.exit, label %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit

_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit:   ; preds = %bb.d
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !83   ; 2 uses
  %i.w = zext i32 %i.v to i64
  %.idx.i.i = shl nuw nsw i64 %i.w, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i.i
  %i.y = icmp eq i32 %i.v, 0
  br i1 %i.y, label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit, %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE9push_backEPS1_.exit.i.i
  %.sroa.10.1 = phi ptr [ %.sroa.10.2, %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE9push_backEPS1_.exit.i.i ], [ null, %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit ] ; 7 uses
  %.sroa.04.09.i.i = phi ptr [ %i.bq, %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE9push_backEPS1_.exit.i.i ], [ %i.s, %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit ] ; 2 uses
  %i.z = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !325 ; 2 uses
  invoke void @_ZN7datalog12rule_manager7inc_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.p, ptr noundef %i.z)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %.lr.ph.i.i
  %i.aa = icmp eq ptr %.sroa.10.1, null
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.ab = getelementptr inbounds i8, ptr %.sroa.10.1, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !83 ; 5 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.10.1, i64 -8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !83
  %i.af = icmp eq i32 %i.ac, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE9push_backEPS1_.exit.i.i

bb.f:                                             ; preds = %.noexc
  %i.ag = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc70 unwind label %bb.t   ; 3 uses

.noexc70:                                         ; preds = %bb.f
  store i32 2, ptr %i.ag, align 4, !tbaa !83
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 0, ptr %i.ah, align 4, !tbaa !83
  br label %.noexc38

bb.g:                                             ; preds = %bb.e
  %i.ai = mul i32 %i.ac, 3
  %i.aj = add i32 %i.ai, 1
  %i.ak = lshr i32 %i.aj, 1                       ; 3 uses
  %i.al = shl i32 %i.ak, 3
  %i.am = add i32 %i.al, 8                        ; 2 uses
  %.not.i68 = icmp ugt i32 %i.ak, %i.ac
  br i1 %.not.i68, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = shl i32 %i.ac, 3
  %i.ao = add i32 %i.an, 8
  %.not27.i = icmp ugt i32 %i.am, %i.ao
  br i1 %.not27.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.ap, align 8, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 3 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !144
  %i.as = load ptr, ptr %2, align 8, !tbaa !146   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !147 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !146
  %i.az = load i64, ptr %i.at, align 8, !tbaa !148
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !148
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i69 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !147
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.k
  %i.ba = phi i64 [ %i.aw, %bb.k ], [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !147
  store ptr %i.at, ptr %2, align 8, !tbaa !146
  store i64 0, ptr %i.bb, align 8, !tbaa !147
  store i8 0, ptr %i.at, align 8, !tbaa !148
  invoke void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #19
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %2, align 8, !tbaa !146   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.at
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.l
  %i.bg = load i64, ptr %i.at, align 8, !tbaa !148
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i57

bb.m:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @__cxa_free_exception(ptr %i.ap) #18
  br label %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i57

bb.n:                                             ; preds = %bb.h
  %i.bj = zext i32 %i.am to i64
  %i.bk = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ad, i64 noundef %i.bj)
          to label %.noexc71 unwind label %bb.t   ; 3 uses

.noexc71:                                         ; preds = %bb.n
  store i32 %i.ak, ptr %i.bk, align 4, !tbaa !83
  %.phi.trans.insert.i.i.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %.pre2.i.i.i.i.pre = load i32, ptr %.phi.trans.insert.i.i.i.i.phi.trans.insert, align 4, !tbaa !83
  br label %.noexc38

bb.o:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc38:                                         ; preds = %.noexc71, %.noexc70
  %.pre2.i.i.i.i = phi i32 [ 0, %.noexc70 ], [ %.pre2.i.i.i.i.pre, %.noexc71 ]
  %.pn = phi ptr [ %i.ag, %.noexc70 ], [ %i.bk, %.noexc71 ]
  %.sroa.10.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  br label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE9push_backEPS1_.exit.i.i

_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE9push_backEPS1_.exit.i.i: ; preds = %.noexc38, %bb.e
  %.sroa.10.2 = phi ptr [ %.sroa.10.4, %.noexc38 ], [ %.sroa.10.1, %bb.e ] ; 12 uses
  %i.bl = phi i32 [ %.pre2.i.i.i.i, %.noexc38 ], [ %i.ac, %bb.e ] ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.sroa.10.2, i64 -4
  %i.bn = zext i32 %i.bl to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.2, i64 %i.bn
  store ptr %i.z, ptr %i.bo, align 8, !tbaa !325
  %i.bp = add i32 %i.bl, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !83
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.x
  br i1 %i.br, label %_ZNK15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE4sizeEv.exit.thread.lr.ph, label %.lr.ph.i.i

_ZNK15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE4sizeEv.exit.thread.lr.ph: ; preds = %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE9push_backEPS1_.exit.i.i
  %i.bs = getelementptr inbounds i8, ptr %.sroa.10.2, i64 -4 ; 7 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !83
  %.not251 = icmp eq i32 %i.bt, 0
  br i1 %.not251, label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.thread6.i, label %.lr.ph249

_ZNK15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE4sizeEv.exit.thread._ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i_crit_edge: ; preds = %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit
  %i.bu = icmp eq i32 %i.er, 0
  %i.bv = shl nuw nsw i64 %i.es, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.10.2, i64 %i.bv
  br i1 %i.bu, label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.thread6.i, label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %_ZNK15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE4sizeEv.exit.thread._ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i_crit_edge, %.noexc.i
  %.06.i.i = phi ptr [ %i.by, %.noexc.i ], [ %.sroa.10.2, %_ZNK15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE4sizeEv.exit.thread._ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i_crit_edge ] ; 2 uses
  %i.bx = load ptr, ptr %.06.i.i, align 8, !tbaa !325
  invoke void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.p, ptr noundef %i.bx)
          to label %.noexc.i unwind label %bb.q

.noexc.i:                                         ; preds = %.lr.ph.i.i39
  %i.by = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.bz = icmp ult ptr %i.by, %i.bw
  br i1 %i.bz, label %.lr.ph.i.i39, label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.thread6.i, !llvm.loop !315

_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.thread6.i: ; preds = %.noexc.i, %_ZNK15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE4sizeEv.exit.thread.lr.ph, %_ZNK15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE4sizeEv.exit.thread._ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i_crit_edge
  %i.ca = getelementptr inbounds i8, ptr %.sroa.10.2, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ca)
          to label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEED2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.thread6.i
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  tail call void @__clang_call_terminate(ptr %i.cc) #17
  unreachable

bb.q:                                             ; preds = %.lr.ph.i.i39
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  tail call void @__clang_call_terminate(ptr %i.ce) #17
  unreachable

_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEED2Ev.exit: ; preds = %bb.d, %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit, %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.thread6.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.094.0137, i64 16 ; 3 uses
  %.not1.i.i = icmp eq ptr %i.cf, %i.i
  br i1 %.not1.i.i, label %_ZN14core_hashtableIN7obj_mapI9func_declP10ptr_vectorIN7datalog4ruleEEE13obj_map_entryE8obj_hashINS7_8key_dataEE10default_eqISA_EE8iteratorppEv.exit, label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEED2Ev.exit, %bb.r
  %.sroa.094.1 = phi ptr [ %i.ci, %bb.r ], [ %i.cf, %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEED2Ev.exit ] ; 3 uses
  %i.cg = load ptr, ptr %.sroa.094.1, align 8, !tbaa !322
  %i.ch = icmp ult ptr %i.cg, inttoptr (i64 2 to ptr)
  br i1 %i.ch, label %bb.r, label %_ZN14core_hashtableIN7obj_mapI9func_declP10ptr_vectorIN7datalog4ruleEEE13obj_map_entryE8obj_hashINS7_8key_dataEE10default_eqISA_EE8iteratorppEv.exit

bb.r:                                             ; preds = %.lr.ph.i.i40
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.094.1, i64 16 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ci, %i.i
  br i1 %.not.i.i, label %_ZN14core_hashtableIN7obj_mapI9func_declP10ptr_vectorIN7datalog4ruleEEE13obj_map_entryE8obj_hashINS7_8key_dataEE10default_eqISA_EE8iteratorppEv.exit, label %.lr.ph.i.i40, !llvm.loop !314

_ZN14core_hashtableIN7obj_mapI9func_declP10ptr_vectorIN7datalog4ruleEEE13obj_map_entryE8obj_hashINS7_8key_dataEE10default_eqISA_EE8iteratorppEv.exit: ; preds = %.lr.ph.i.i40, %bb.r, %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEED2Ev.exit
  %.sroa.094.2 = phi ptr [ %i.cf, %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEED2Ev.exit ], [ %.sroa.094.1, %.lr.ph.i.i40 ], [ %i.ci, %bb.r ] ; 2 uses
  %.not = icmp eq ptr %.sroa.094.2, %i.m
  br i1 %.not, label %_ZN10scoped_ptrIN7datalog8rule_setEED2Ev.exit, label %bb.d

bb.s:                                             ; preds = %bb.a
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEED2Ev.exit66

bb.t:                                             ; preds = %bb.n, %bb.f, %.lr.ph.i.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph249:                                        ; preds = %_ZNK15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE4sizeEv.exit.thread.lr.ph, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit
  %indvars.iv248 = phi i64 [ %indvars.iv.next, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ], [ 0, %_ZNK15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE4sizeEv.exit.thread.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.2, i64 %indvars.iv248
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !325 ; 4 uses
  %i.cn = load ptr, ptr %i.n, align 8, !tbaa !100, !nonnull !76, !align !77 ; 2 uses
  store ptr %i.cm, ptr %4, align 8, !tbaa !102
  store ptr %i.cn, ptr %i.o, align 8, !tbaa !79
  %.not.i.i41 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i41, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEC2EPS1_RS2_.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph249
  invoke void @_ZN7datalog12rule_manager7inc_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.cn, ptr noundef nonnull %i.cm)
          to label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEC2EPS1_RS2_.exit unwind label %bb.v

_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEC2EPS1_RS2_.exit: ; preds = %.lr.ph249, %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv248, 1 ; 4 uses
  %i.co = load i32, ptr %i.bs, align 4, !tbaa !83 ; 2 uses
  %i.cp = zext i32 %i.co to i64
  %i.cq = icmp samesign ult i64 %indvars.iv.next, %i.cp
  br i1 %i.cq, label %.lr.ph.preheader, label %_ZNK15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE4sizeEv.exit45._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEC2EPS1_RS2_.exit
  %i.cr = trunc nuw i64 %indvars.iv.next to i32
  br label %.lr.ph

_ZNK15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE4sizeEv.exit45._crit_edge.loopexit: ; preds = %_ZNK7datalog11mk_coalesce9same_bodyERKNS_4ruleES3_.exit.thread
  %.pre159 = load ptr, ptr %4, align 8, !tbaa !102
  br label %_ZNK15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE4sizeEv.exit45._crit_edge

_ZNK15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE4sizeEv.exit45._crit_edge: ; preds = %_ZNK15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE4sizeEv.exit45._crit_edge.loopexit, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEC2EPS1_RS2_.exit
  %i.cs = phi ptr [ %.pre159, %_ZNK15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE4sizeEv.exit45._crit_edge.loopexit ], [ %i.cm, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEC2EPS1_RS2_.exit ] ; 4 uses
  invoke void @_ZN7datalog8rule_set8add_ruleEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(248) %i.a, ptr noundef %i.cs)
          to label %bb.ab unwind label %.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit56

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK7datalog11mk_coalesce9same_bodyERKNS_4ruleES3_.exit.thread
  %i.cu = phi i32 [ %i.el, %_ZNK7datalog11mk_coalesce9same_bodyERKNS_4ruleES3_.exit.thread ], [ %i.co, %.lr.ph.preheader ] ; 3 uses
  %.0134 = phi i32 [ %i.em, %_ZNK7datalog11mk_coalesce9same_bodyERKNS_4ruleES3_.exit.thread ], [ %i.cr, %.lr.ph.preheader ] ; 5 uses
  %i.cv = load ptr, ptr %4, align 8, !tbaa !102   ; 2 uses
  %i.cw = zext i32 %.0134 to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.2, i64 %i.cw ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !325 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 68
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !111 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 68
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !111
  %.not.i46 = icmp eq i32 %i.da, %i.dc
  br i1 %.not.i46, label %.preheader.i, label %_ZNK7datalog11mk_coalesce9same_bodyERKNS_4ruleES3_.exit.thread

.preheader.i:                                     ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 80
  %.not2021.i = icmp eq i32 %i.da, 0
  br i1 %.not2021.i, label %_ZNK7datalog11mk_coalesce9same_bodyERKNS_4ruleES3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  %wide.trip.count.i = zext i32 %i.da to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.y
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK7datalog11mk_coalesce9same_bodyERKNS_4ruleES3_.exit, label %bb.x, !llvm.loop !2

bb.x:                                             ; preds = %bb.w, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.w ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !112
  %i.dh = ptrtoint ptr %i.dg to i64               ; 2 uses
  %i.di = and i64 %i.dh, -8
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !93
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.i
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !112
  %i.do = ptrtoint ptr %i.dn to i64               ; 2 uses
  %i.dp = and i64 %i.do, -8
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !93
  %.not18.i = icmp eq ptr %i.dl, %i.ds
  br i1 %.not18.i, label %bb.y, label %_ZNK7datalog11mk_coalesce9same_bodyERKNS_4ruleES3_.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.dt = and i64 %i.dh, 7
  %i.du = icmp eq i64 %i.dt, 1
  %i.dv = and i64 %i.do, 7
  %i.dw = icmp eq i64 %i.dv, 1
  %i.dx = xor i1 %i.du, %i.dw
  br i1 %i.dx, label %_ZNK7datalog11mk_coalesce9same_bodyERKNS_4ruleES3_.exit.thread, label %bb.w

_ZNK7datalog11mk_coalesce9same_bodyERKNS_4ruleES3_.exit: ; preds = %bb.w, %.preheader.i
  invoke void @_ZN7datalog11mk_coalesce11merge_rulesER7obj_refINS_4ruleENS_12rule_managerEERKS2_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(80) %i.cy)
          to label %bb.z unwind label %.loopexit

bb.z:                                             ; preds = %_ZNK7datalog11mk_coalesce9same_bodyERKNS_4ruleES3_.exit
  %i.dy = load i32, ptr %i.bs, align 4, !tbaa !83
  %i.dz = add i32 %i.dy, -1
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.2, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !325 ; 2 uses
  invoke void @_ZN7datalog12rule_manager7inc_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.p, ptr noundef %i.ec)
          to label %.noexc49 unwind label %.loopexit

.noexc49:                                         ; preds = %bb.z
  %i.ed = load ptr, ptr %i.cx, align 8, !tbaa !325
  invoke void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.p, ptr noundef %i.ed)
          to label %_ZN6vectorIPN7datalog4ruleELb0EjE4backEv.exit.i unwind label %.loopexit

_ZN6vectorIPN7datalog4ruleELb0EjE4backEv.exit.i:  ; preds = %.noexc49
  store ptr %i.ec, ptr %i.cx, align 8, !tbaa !325
  %i.ee = load i32, ptr %i.bs, align 4, !tbaa !83
  %i.ef = add i32 %i.ee, -1                       ; 2 uses
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.2, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !325
  store i32 %i.ef, ptr %i.bs, align 4, !tbaa !83
  invoke void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.p, ptr noundef %i.ei)
          to label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE8pop_backEv.exit unwind label %.loopexit

_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE8pop_backEv.exit: ; preds = %_ZN6vectorIPN7datalog4ruleELb0EjE4backEv.exit.i
  %i.ej = add i32 %.0134, -1
  %.pre = load i32, ptr %i.bs, align 4, !tbaa !83
  br label %_ZNK7datalog11mk_coalesce9same_bodyERKNS_4ruleES3_.exit.thread

.loopexit:                                        ; preds = %bb.z, %.noexc49, %_ZN6vectorIPN7datalog4ruleELb0EjE4backEv.exit.i, %_ZNK7datalog11mk_coalesce9same_bodyERKNS_4ruleES3_.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  %.pre160 = load ptr, ptr %4, align 8, !tbaa !102
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %_ZNK15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE4sizeEv.exit45._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %i.ek = phi ptr [ %.pre160, %.loopexit ], [ %i.cs, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i55 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i55, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit56, label %bb.ae

_ZNK7datalog11mk_coalesce9same_bodyERKNS_4ruleES3_.exit.thread: ; preds = %bb.y, %bb.x, %.lr.ph, %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE8pop_backEv.exit
  %i.el = phi i32 [ %.pre, %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE8pop_backEv.exit ], [ %i.cu, %.lr.ph ], [ %i.cu, %bb.x ], [ %i.cu, %bb.y ] ; 2 uses
  %.1 = phi i32 [ %i.ej, %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE8pop_backEv.exit ], [ %.0134, %.lr.ph ], [ %.0134, %bb.x ], [ %.0134, %bb.y ]
  %i.em = add i32 %.1, 1                          ; 2 uses
  %i.en = icmp ult i32 %i.em, %i.el
  br i1 %i.en, label %.lr.ph, label %_ZNK15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE4sizeEv.exit45._crit_edge.loopexit, !llvm.loop !316

bb.ab:                                            ; preds = %_ZNK15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE4sizeEv.exit45._crit_edge
  %.not.i.i54 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i54, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eo = load ptr, ptr %i.o, align 8, !tbaa !114, !nonnull !76, !align !77
  invoke void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.eo, ptr noundef nonnull %i.cs)
          to label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  tail call void @__clang_call_terminate(ptr %i.eq) #17
  unreachable

_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.er = load i32, ptr %i.bs, align 4, !tbaa !83 ; 2 uses
  %i.es = zext i32 %i.er to i64                   ; 2 uses
  %i.et = icmp samesign ult i64 %indvars.iv.next, %i.es
  br i1 %i.et, label %.lr.ph249, label %_ZNK15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE4sizeEv.exit.thread._ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i_crit_edge

bb.ae:                                            ; preds = %bb.aa
  %i.eu = load ptr, ptr %i.o, align 8, !tbaa !114, !nonnull !76, !align !77
  invoke void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.eu, ptr noundef nonnull %i.ek)
          to label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit56 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  tail call void @__clang_call_terminate(ptr %i.ew) #17
  unreachable

_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit56: ; preds = %bb.ae, %bb.aa, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ct, %bb.v ], [ %lpad.phi, %bb.aa ], [ %lpad.phi, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.body

.body:                                            ; preds = %bb.t, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit56
  %.sroa.10.0 = phi ptr [ %.sroa.10.2, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit56 ], [ %.sroa.10.1, %bb.t ] ; 2 uses
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit56 ], [ %i.ck, %bb.t ] ; 2 uses
  %i.ex = icmp eq ptr %.sroa.10.0, null
  br i1 %i.ex, label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEED2Ev.exit66, label %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i57

_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i57: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %.body
  %.pn.pn.pn.pn.pn112 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %.body ], [ %i.bi, %bb.m ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %.sroa.10.0111 = phi ptr [ %.sroa.10.0, %.body ], [ %.sroa.10.1, %bb.m ], [ %.sroa.10.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ] ; 4 uses
  %i.ey = getelementptr inbounds i8, ptr %.sroa.10.0111, i64 -4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !83 ; 2 uses
  %i.fa = zext i32 %i.ez to i64
  %i.fb = shl nuw nsw i64 %i.fa, 3
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.10.0111, i64 %i.fb
  %.not.i58 = icmp eq i32 %i.ez, 0
  br i1 %.not.i58, label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.thread6.i65, label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i57, %.noexc.i61
  %.06.i.i60 = phi ptr [ %i.fe, %.noexc.i61 ], [ %.sroa.10.0111, %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i57 ] ; 2 uses
  %i.fd = load ptr, ptr %.06.i.i60, align 8, !tbaa !325
  invoke void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.p, ptr noundef %i.fd)
          to label %.noexc.i61 unwind label %bb.ah

.noexc.i61:                                       ; preds = %.lr.ph.i.i59
  %i.fe = getelementptr inbounds nuw i8, ptr %.06.i.i60, i64 8 ; 2 uses
  %i.ff = icmp ult ptr %i.fe, %i.fc
  br i1 %i.ff, label %.lr.ph.i.i59, label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.thread6.i65, !llvm.loop !315

_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.thread6.i65: ; preds = %.noexc.i61, %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i57
  %i.fg = getelementptr inbounds i8, ptr %.sroa.10.0111, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fg)
          to label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEED2Ev.exit66 unwind label %bb.ag

bb.ag:                                            ; preds = %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.thread6.i65
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #17
  unreachable

bb.ah:                                            ; preds = %.lr.ph.i.i59
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  call void @__clang_call_terminate(ptr %i.fk) #17
  unreachable

_ZN10scoped_ptrIN7datalog8rule_setEED2Ev.exit:    ; preds = %_ZN14core_hashtableIN7obj_mapI9func_declP10ptr_vectorIN7datalog4ruleEEE13obj_map_entryE8obj_hashINS7_8key_dataEE10default_eqISA_EE8iteratorppEv.exit, %.loopexit114
  ret ptr %i.a

_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEED2Ev.exit66: ; preds = %bb.s, %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.thread6.i65, %.body
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.s ], [ %.pn.pn.pn.pn.pn112, %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.thread6.i65 ], [ %.pn.pn.pn.pn.pn, %.body ]
  call void @_ZN7datalog8rule_setD1Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.a) #18
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN10scoped_ptrIN7datalog8rule_setEED2Ev.exit67 unwind label %bb.ai

bb.ai:                                            ; preds = %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEED2Ev.exit66
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #17
  unreachable

_ZN10scoped_ptrIN7datalog8rule_setEED2Ev.exit67:  ; preds = %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEED2Ev.exit66
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef) local_unnamed_addr #4

declare void @_ZN7datalog8rule_setC1ERNS_7contextE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(3028)) unnamed_addr #4

declare void @_ZN7datalog8rule_set18inherit_predicatesERKS0_(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(248)) local_unnamed_addr #4

declare void @_ZN7datalog8rule_set8add_ruleEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7datalog11mk_coalesceD2Ev(ptr noundef nonnull align 8 dead_on_return(84) dereferenceable(84) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7datalog11mk_coalesceE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80   ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !83   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.p, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.c, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.j = load ptr, ptr %.06.i.i, align 8, !tbaa !84 ; 3 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !85, !nonnull !76, !align !77
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !87
  %i.n = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.n, ptr %i.l, align 4, !tbaa !87
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.k, ptr noundef nonnull %i.j)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.e

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.q = icmp ult ptr %i.p, %i.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !80 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.r = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.c, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.s)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #17
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %bb.a, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !80   ; 5 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit11, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i1

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i1:          ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !83 ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %.not.i2 = icmp eq i32 %i.ac, 0
  br i1 %.not.i2, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i10, label %.lr.ph.i.i3

.lr.ph.i.i3:                                      ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i6
  %.06.i.i4 = phi ptr [ %i.am, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i6 ], [ %i.z, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i1 ] ; 2 uses
  %i.ag = load ptr, ptr %.06.i.i4, align 8, !tbaa !84 ; 3 uses
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !85, !nonnull !76, !align !77
  %.not.i.i.i.i.i5 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i5, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i6, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !87
  %i.ak = add i32 %i.aj, -1                       ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !87
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.g, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i6

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ah, ptr noundef nonnull %i.ag)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i6 unwind label %bb.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i6: ; preds = %bb.g, %bb.f, %.lr.ph.i.i3
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i4, i64 8 ; 2 uses
  %i.an = icmp ult ptr %i.am, %i.af
  br i1 %i.an, label %.lr.ph.i.i3, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i7, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i7: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i6
  %.pre.i8 = load ptr, ptr %i.y, align 8, !tbaa !80 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %.pre.i8, null
  br i1 %.not.i.i.i9, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit11, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i10

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i10: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i7, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i1
  %i.ao = phi ptr [ %.pre.i8, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i7 ], [ %i.z, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i1 ]
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ap)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit11 unwind label %bb.h

bb.h:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i10
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #17
  unreachable

bb.i:                                             ; preds = %bb.g
end_hunk_1
