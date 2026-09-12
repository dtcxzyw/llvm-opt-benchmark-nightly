Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/spacer_global_generalizer?download=true
inline.NumInlined: 1276
inline.NumDeleted: 639
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6spacer24lemma_global_generalizer10generalizeER3refINS_5lemmaEE:bb.a

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = trunc i64 %i.bp to i32
  %i.br = and i32 %i.bq, 65535
  %.sroa.speculated97 = call i32 @llvm.umin.i32(i32 %i.br, i32 %i.bm)
  br label %bb.w

bb.u:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.v:                                             ; preds = %bb.w, %_ZNK6spacer13lemma_cluster11get_pob_gasEv.exit75
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.w:                                             ; preds = %bb.t, %bb.s
  %.0103 = phi i32 [ %.sroa.speculated97, %bb.t ], [ %i.bm, %bb.s ]
  %i.bu = invoke noundef zeroext i1 @_ZN6spacer24lemma_global_generalizer13do_conjectureER3refINS_3pobEERS1_INS_5lemmaEERK7obj_refI4expr11ast_managerEjj(ptr noundef nonnull align 8 dereferenceable(225) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %.0103, i32 noundef %.0.i.i74)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w
  br i1 %i.bu, label %bb.y, label %_ZN6spacer13lemma_cluster7dec_gasEv.exit77

bb.y:                                             ; preds = %bb.x
  %i.bv = load i32, ptr %i.g, align 8, !tbaa !132 ; 2 uses
  %.not.i76 = icmp eq i32 %i.bv, 0
  br i1 %.not.i76, label %_ZN6spacer13lemma_cluster7dec_gasEv.exit77, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = add i32 %i.bv, -1
  store i32 %i.bw, ptr %i.g, align 8, !tbaa !132
  br label %_ZN6spacer13lemma_cluster7dec_gasEv.exit77

bb.aa:                                            ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !138 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN6spacer13lemma_cluster7dec_gasEv.exit77, label %_ZNK6spacer13lemma_cluster8get_sizeEv.exit

_ZNK6spacer13lemma_cluster8get_sizeEv.exit:       ; preds = %bb.aa
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !80
  %i.cc = icmp ult i32 %i.cb, 2
  br i1 %i.cc, label %_ZN6spacer13lemma_cluster7dec_gasEv.exit77, label %bb.ab

bb.ab:                                            ; preds = %_ZNK6spacer13lemma_cluster8get_sizeEv.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !104, !range !100, !noundef !47
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.ac, label %_ZN6spacer13lemma_cluster7dec_gasEv.exit77

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.cg = load ptr, ptr %i.t, align 8, !tbaa !135, !nonnull !47, !align !48
  %i.ch = ptrtoint ptr %i.cg to i64
  store i64 %i.ch, ptr %4, align 8, !tbaa !28
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr null, ptr %i.ci, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.cj = load ptr, ptr %1, align 8, !tbaa !110   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !85, !nonnull !47, !align !48
  %i.cm = ptrtoint ptr %i.cl to i64
  store i64 %i.cm, ptr %5, align 8, !tbaa !28
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store ptr null, ptr %i.cn, align 8, !tbaa !49
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 72 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !49 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %_ZN10ref_vectorI3app11ast_managerEC2ERKS2_.exit, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i: ; preds = %bb.ac, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.cr = phi ptr [ %i.di, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.ac ] ; 4 uses
  %i.cs = phi ptr [ %i.dj, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cp, %bb.ac ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ 0, %bb.ac ] ; 3 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !80
  %i.cv = zext i32 %i.cu to i64
  %i.cw = icmp samesign ult i64 %indvars.iv.i.i, %i.cv
  br i1 %i.cw, label %bb.ad, label %_ZN10ref_vectorI3app11ast_managerEC2ERKS2_.exit

bb.ad:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i.i
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !84 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !87
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !87
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %i.dc = icmp eq ptr %i.cr, null
  br i1 %i.dc, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.dd = getelementptr inbounds i8, ptr %i.cr, i64 -4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !80 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.cr, i64 -8
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !80
  %i.dh = icmp eq i32 %i.de, %i.dg
  br i1 %i.dh, label %bb.ag, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.ag:                                            ; preds = %bb.af, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cn)
          to label %.noexc.i unwind label %bb.ah

.noexc.i:                                         ; preds = %bb.ag
  %.pre.i.i.i.i = load ptr, ptr %i.cn, align 8, !tbaa !49 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !80
  %.pre.i.i = load ptr, ptr %i.co, align 8, !tbaa !49
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.af
  %i.di = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.cr, %bb.af ] ; 3 uses
  %i.dj = phi ptr [ %.pre.i.i, %.noexc.i ], [ %i.cs, %bb.af ] ; 2 uses
  %i.dk = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.de, %bb.af ] ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 -4
  %i.dm = zext i32 %i.dk to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dm
  store ptr %i.cy, ptr %i.dn, align 8, !tbaa !84
  %i.do = add i32 %i.dk, 1
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !80
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.dp = icmp eq ptr %i.dj, null
  br i1 %i.dp, label %_ZN10ref_vectorI3app11ast_managerEC2ERKS2_.exit, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i, !llvm.loop !362

bb.ah:                                            ; preds = %bb.ag
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN10ref_vectorI3app11ast_managerEC2ERKS2_.exit:  ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i, %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ds = invoke noundef zeroext i1 @_ZN6spacer24lemma_global_generalizer8subsumer7subsumeERKNS_13lemma_clusterER10ref_vectorI4expr11ast_managerERS5_I3appS7_E(ptr noundef nonnull align 8 dereferenceable(152) %i.dr, ptr noundef nonnull align 8 dereferenceable(148) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull align 8 poison)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %_ZN10ref_vectorI3app11ast_managerEC2ERKS2_.exit
  br i1 %i.ds, label %bb.aj, label %bb.bf

bb.aj:                                            ; preds = %bb.ai
  %i.dt = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !111
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %.0 = phi ptr [ %i.dv, %bb.aj ], [ %i.dx, %bb.ak ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !111 ; 2 uses
  %.not57 = icmp eq ptr %i.dx, null
  br i1 %.not57, label %bb.am, label %bb.ak

bb.al:                                            ; preds = %_ZN10ref_vectorI3app11ast_managerEC2ERKS2_.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.ak
  %i.dz = invoke noundef i32 @_ZN6spacer13lemma_cluster11get_min_lvlEv(ptr noundef nonnull align 8 dereferenceable(148) %2)
          to label %bb.an unwind label %bb.ap     ; 2 uses

bb.an:                                            ; preds = %bb.am
  %i.ea = load ptr, ptr %i.b, align 8, !tbaa !111 ; 2 uses
  %.not106 = icmp eq ptr %i.ea, null
  br i1 %.not106, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 72
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = and i32 %i.ed, 65535
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.ee, i32 %i.dz)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %.0104 = phi i32 [ %.sroa.speculated, %bb.ao ], [ %i.dz, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.eg = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 152)
          to label %bb.ar unwind label %bb.as     ; 4 uses

bb.ar:                                            ; preds = %bb.aq
  %i.eh = load ptr, ptr %i.b, align 8, !tbaa !111 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !123, !nonnull !47, !align !48
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 72
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = trunc i64 %i.el to i32
  %8 = lshr i32 %i.em, 16
  invoke void @_ZN6spacer3pobC1EPS0_RNS_16pred_transformerEjjb(ptr noundef nonnull align 8 dereferenceable(152) %i.eg, ptr noundef nonnull %.0, ptr noundef nonnull align 8 dereferenceable(472) %i.ej, i32 noundef %.0104, i32 noundef %8, i1 noundef zeroext false)
          to label %bb.au unwind label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.at:                                            ; preds = %bb.aw
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.au:                                            ; preds = %bb.ar
  store ptr %i.eg, ptr %6, align 8, !tbaa !141
  %i.ep = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 72 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = shl i64 %i.er, 32
  %i.ev = and i64 %i.eu, 281470681743360
  %i.ew = and i64 %i.et, -281470681743361
  %i.ex = or disjoint i64 %i.ew, %i.ev
  store i64 %i.ex, ptr %i.es, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_Z6mk_andRK10ref_vectorI4expr11ast_managerE(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.46) align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.ey = load ptr, ptr %7, align 8, !tbaa !134
  invoke void @_ZN6spacer3pob8set_postEP4exprRK10ref_vectorI3app11ast_managerE(ptr noundef nonnull align 8 dereferenceable(152) %i.eg, ptr noundef %i.ey, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %bb.av
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.ez = load ptr, ptr %6, align 8, !tbaa !141   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 72 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = or i64 %i.fb, 18014398509481984
  store i64 %i.fc, ptr %i.fa, align 8
  %i.fd = load ptr, ptr %i.b, align 8, !tbaa !111
  store ptr null, ptr %6, align 8, !tbaa !141
  invoke void @_ZN6spacer3pob8set_dataEPS0_(ptr noundef nonnull align 8 dereferenceable(152) %i.fd, ptr noundef nonnull %i.ez)
          to label %bb.ax unwind label %bb.at

bb.ax:                                            ; preds = %bb.aw
  %i.fe = load ptr, ptr %i.b, align 8, !tbaa !111 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !138 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %_ZNK6spacer13lemma_cluster11get_pob_gasEv.exit81, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fi = getelementptr inbounds i8, ptr %i.fg, i64 -4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !80
  %i.fk = mul i32 %i.fj, 5
  %i.fl = add i32 %i.fk, 1
  br label %_ZNK6spacer13lemma_cluster11get_pob_gasEv.exit81

_ZNK6spacer13lemma_cluster11get_pob_gasEv.exit81: ; preds = %bb.ay, %bb.ax
  %.0.i.i80 = phi i32 [ %i.fl, %bb.ay ], [ 1, %bb.ax ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 136
  store i32 %.0.i.i80, ptr %i.fm, align 8, !tbaa !139
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 72 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = or i64 %i.fo, 36028797018963968
  store i64 %i.fp, ptr %i.fn, align 8
  %i.fq = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 72 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = and i64 %i.fs, -4503599627370497
  store i64 %i.ft, ptr %i.fr, align 8
  %i.fu = load i32, ptr %i.g, align 8, !tbaa !132 ; 2 uses
  %.not.i82 = icmp eq i32 %i.fu, 0
  br i1 %.not.i82, label %_ZN6spacer13lemma_cluster7dec_gasEv.exit83, label %bb.az

bb.az:                                            ; preds = %_ZNK6spacer13lemma_cluster11get_pob_gasEv.exit81
  %i.fv = add i32 %i.fu, -1
  store i32 %i.fv, ptr %i.g, align 8, !tbaa !132
  br label %_ZN6spacer13lemma_cluster7dec_gasEv.exit83

_ZN6spacer13lemma_cluster7dec_gasEv.exit83:       ; preds = %_ZNK6spacer13lemma_cluster11get_pob_gasEv.exit81, %bb.az
  call void @_ZN10scoped_ptrIN6spacer3pobEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.bf

bb.ba:                                            ; preds = %bb.au
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %bb.av
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #19
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pn = phi { ptr, i32 } [ %i.fx, %bb.bb ], [ %i.fw, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.at
  %.pn59 = phi { ptr, i32 } [ %i.eo, %bb.at ], [ %.pn, %bb.bc ]
  call void @_ZN10scoped_ptrIN6spacer3pobEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #19
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.as
  %.pn59.pn = phi { ptr, i32 } [ %.pn59, %bb.bd ], [ %i.en, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.body

bb.bf:                                            ; preds = %_ZN6spacer13lemma_cluster7dec_gasEv.exit83, %bb.ai
  %i.fy = load ptr, ptr %i.cn, align 8, !tbaa !49 ; 5 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i:            ; preds = %bb.bf
  %i.ga = getelementptr inbounds i8, ptr %i.fy, i64 -4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !80 ; 2 uses
  %i.gc = zext i32 %i.gb to i64
  %i.gd = shl nuw nsw i64 %i.gc, 3
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gd
  %.not.i84 = icmp eq i32 %i.gb, 0
  br i1 %.not.i84, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.gl, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.fy, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.gf = load ptr, ptr %.06.i.i, align 8, !tbaa !84 ; 3 uses
  %i.gg = load ptr, ptr %5, align 8, !tbaa !85, !nonnull !47, !align !48
  %.not.i.i.i.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !87
  %i.gj = add i32 %i.gi, -1                       ; 2 uses
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !87
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.bh, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gg, ptr noundef nonnull %i.gf)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.bj

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.bh, %bb.bg, %.lr.ph.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.gm = icmp ult ptr %i.gl, %i.ge
  br i1 %i.gm, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !1

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.cn, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i85, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i
  %i.gn = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.fy, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ]
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.go)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.bi

bb.bi:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #20
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #20
  unreachable

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %bb.bf, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.gt = load ptr, ptr %i.ci, align 8, !tbaa !140 ; 5 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.gv = getelementptr inbounds i8, ptr %i.gt, i64 -4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !80 ; 2 uses
  %i.gx = zext i32 %i.gw to i64
  %i.gy = shl nuw nsw i64 %i.gx, 3
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gy
  %.not.i86 = icmp eq i32 %i.gw, 0
  br i1 %.not.i86, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i87

.lr.ph.i.i87:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i88 = phi ptr [ %i.hg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.gt, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.ha = load ptr, ptr %.06.i.i88, align 8, !tbaa !142 ; 3 uses
  %i.hb = load ptr, ptr %4, align 8, !tbaa !143, !nonnull !47, !align !48
  %.not.i.i.i.i.i89 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i.i89, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i87
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6spacer24lemma_global_generalizer13do_conjectureER3refINS_3pobEERS1_INS_5lemmaEERK7obj_refI4expr11ast_managerEjj:bb.a
_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %.noexc65
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !87, !noalias !441
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !87, !noalias !441
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i, %.noexc65
  %i.df = load ptr, ptr %8, align 8, !tbaa !134   ; 3 uses
  %.not.i.i67 = icmp eq ptr %i.df, null
  br i1 %.not.i.i67, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit69, label %bb.aa

bb.aa:                                            ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit
  %i.dg = load ptr, ptr %i.i, align 8, !tbaa !137, !nonnull !47, !align !48
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !87
  %i.dj = add i32 %i.di, -1                       ; 2 uses
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !87
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.ab, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit69

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dg, ptr noundef nonnull %i.df)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit69 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #20
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit69:       ; preds = %bb.ab, %bb.aa, %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit
  store ptr %i.db, ptr %8, align 8, !tbaa !134
  invoke void @_ZN6spacer15normalize_orderEP4exprR7obj_refIS0_11ast_managerE(ptr noundef %i.db, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit69
  %i.dn = load ptr, ptr %i.e, align 8, !tbaa !140 ; 5 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit81, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i70

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i70:         ; preds = %bb.ad
  %i.dp = getelementptr inbounds i8, ptr %i.dn, i64 -4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !80 ; 2 uses
  %i.dr = zext i32 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ds
  %.not.i71 = icmp eq i32 %i.dq, 0
  br i1 %.not.i71, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i79, label %.lr.ph.i.i72

.lr.ph.i.i72:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i70, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i75
  %.06.i.i73 = phi ptr [ %i.ea, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i75 ], [ %i.dn, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i70 ] ; 2 uses
  %i.du = load ptr, ptr %.06.i.i73, align 8, !tbaa !142 ; 3 uses
  %i.dv = load ptr, ptr %7, align 8, !tbaa !143, !nonnull !47, !align !48
  %.not.i.i.i.i.i74 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i74, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i75, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i72
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !87
  %i.dy = add i32 %i.dx, -1                       ; 2 uses
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !87
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.af, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i75

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dv, ptr noundef nonnull %i.du)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i75 unwind label %.loopexit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i75: ; preds = %bb.af, %bb.ae, %.lr.ph.i.i72
  %i.ea = getelementptr inbounds nuw i8, ptr %.06.i.i73, i64 8 ; 2 uses
  %i.eb = icmp ult ptr %i.ea, %i.dt
  br i1 %i.eb, label %.lr.ph.i.i72, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i76, !llvm.loop !2

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i76: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i75
  %.pre.i77 = load ptr, ptr %i.e, align 8, !tbaa !140 ; 2 uses
  %.not.i.i78 = icmp eq ptr %.pre.i77, null
  br i1 %.not.i.i78, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit81, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i79

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i79: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i76, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i70
  %i.ec = phi ptr [ %.pre.i77, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i76 ], [ %i.dn, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i70 ] ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -4
  store i32 0, ptr %i.ed, align 4, !tbaa !80
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit81

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit81: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i79, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i76, %bb.ad
  %i.ee = phi ptr [ %i.ec, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i79 ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i76 ], [ null, %bb.ad ] ; 4 uses
  %i.ef = load ptr, ptr %8, align 8, !tbaa !134   ; 3 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i82, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i83, label %bb.ag

bb.ag:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit81
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !87
  %i.ei = add i32 %i.eh, 1
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !87
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i83

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i83: ; preds = %bb.ag, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit81
  %i.ej = icmp eq ptr %i.ee, null
  br i1 %i.ej, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i83
  %i.ek = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !80 ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.ee, i64 -8
  %i.en = load i32, ptr %i.em, align 4, !tbaa !80
  %i.eo = icmp eq i32 %i.el, %i.en
  br i1 %i.eo, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i83
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc87 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc87:                                         ; preds = %bb.ai
  %.pre.i.i84 = load ptr, ptr %i.e, align 8, !tbaa !140 ; 2 uses
  %.phi.trans.insert.i.i85 = getelementptr inbounds i8, ptr %.pre.i.i84, i64 -4
  %.pre2.i.i86 = load i32, ptr %.phi.trans.insert.i.i85, align 4, !tbaa !80
  br label %bb.aj

bb.aj:                                            ; preds = %.noexc87, %bb.ah
  %i.ep = phi i32 [ %.pre2.i.i86, %.noexc87 ], [ %i.el, %bb.ah ] ; 2 uses
  %i.eq = phi ptr [ %.pre.i.i84, %.noexc87 ], [ %i.ee, %bb.ah ] ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -4
  %i.es = zext i32 %i.ep to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.es
  store ptr %i.ef, ptr %i.et, align 8, !tbaa !142
  %i.eu = add i32 %i.ep, 1
  store i32 %i.eu, ptr %i.er, align 4, !tbaa !80
  invoke void @_Z11flatten_andR10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  %i.ev = invoke noundef zeroext i1 @_ZN6spacer14filter_out_litERK10ref_vectorI4expr11ast_managerERK7obj_refIS1_S2_ERS3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %.thread136 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.thread136:                                       ; preds = %bb.h, %bb.ak, %bb.v
  %.1.in = phi i1 [ true, %bb.v ], [ %i.ev, %bb.ak ], [ true, %bb.h ]
  %i.ex = load ptr, ptr %i.af, align 8, !tbaa !140 ; 4 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit: ; preds = %.thread136
  %i.ez = getelementptr inbounds i8, ptr %i.ex, i64 -4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !80
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, label %bb.am

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread: ; preds = %.thread136, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit
  %i.fc = load ptr, ptr %1, align 8, !tbaa !111
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 72 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = and i64 %i.fe, -4503599627370497
  store i64 %i.ff, ptr %i.fd, align 8
  br label %bb.bg

bb.am:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit
  %i.fg = load ptr, ptr %1, align 8, !tbaa !111   ; 2 uses
  br i1 %.1.in, label %bb.an, label %.thread179

.thread179:                                       ; preds = %bb.am
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 72 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = and i64 %i.fi, -4503599627370497
  store i64 %i.fj, ptr %i.fh, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !250
  %i.fm = add i32 %i.fl, 1
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !250
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i99

bb.an:                                            ; preds = %bb.am
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !111
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bb.an
  %.0 = phi ptr [ %i.fo, %bb.an ], [ %i.fq, %bb.ao ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !111 ; 2 uses
  %.not = icmp eq ptr %i.fq, null
  br i1 %.not, label %bb.ap, label %bb.ao

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.fr = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 152)
          to label %bb.aq unwind label %bb.ar     ; 6 uses

bb.aq:                                            ; preds = %bb.ap
  %i.fs = load ptr, ptr %1, align 8, !tbaa !111   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !123, !nonnull !47, !align !48
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 72
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = trunc i64 %i.fw to i32
  %13 = lshr i32 %i.fx, 16
  invoke void @_ZN6spacer3pobC1EPS0_RNS_16pred_transformerEjjb(ptr noundef nonnull align 8 dereferenceable(152) %i.fr, ptr noundef nonnull %.0, ptr noundef nonnull align 8 dereferenceable(472) %i.fu, i32 noundef %4, i32 noundef %13, i1 noundef zeroext false)
          to label %bb.at unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.as:                                            ; preds = %bb.ba
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.at:                                            ; preds = %bb.aq
  store ptr %i.fr, ptr %11, align 8, !tbaa !141
  %i.ga = load ptr, ptr %1, align 8, !tbaa !111
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 72
  %i.gc = load i64, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fr, i64 72 ; 4 uses
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = shl i64 %i.gc, 32
  %i.gg = and i64 %i.gf, 281470681743360
  %i.gh = and i64 %i.ge, -281470681743361
  %i.gi = or disjoint i64 %i.gh, %i.gg
  store i64 %i.gi, ptr %i.gd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %i.gj = load ptr, ptr %9, align 8, !tbaa !143, !noalias !442, !nonnull !47, !align !48
  %i.gk = load ptr, ptr %i.af, align 8, !tbaa !140, !noalias !442 ; 3 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i89, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gm = getelementptr inbounds i8, ptr %i.gk, i64 -4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !80, !noalias !442
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i89

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i89: ; preds = %bb.au, %bb.at
  %.0.i.i.i90 = phi i32 [ %i.gn, %bb.au ], [ 0, %bb.at ]
  %i.go = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.gj, i32 noundef %.0.i.i.i90, ptr noundef %i.gk)
          to label %.noexc93 unwind label %bb.bb  ; 6 uses

.noexc93:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i89
  %i.gp = load ptr, ptr %9, align 8, !tbaa !143, !noalias !442, !nonnull !47, !align !48 ; 2 uses
  store ptr %i.go, ptr %12, align 8, !tbaa !134, !alias.scope !442
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !28, !alias.scope !442
  %.not.i.i.i91 = icmp eq ptr %i.go, null         ; 2 uses
  br i1 %.not.i.i.i91, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit94, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i92

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i92:      ; preds = %.noexc93
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !87, !noalias !442
  %i.gt = add i32 %i.gs, 1
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !87, !noalias !442
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit94

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit94: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i92, %.noexc93
  invoke void @_ZN6spacer3pob8set_postEP4expr(ptr noundef nonnull align 8 dereferenceable(152) %i.fr, ptr noundef %i.go)
          to label %bb.av unwind label %bb.bc

bb.av:                                            ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit94
  br i1 %.not.i.i.i91, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit96, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !87
  %i.gw = add i32 %i.gv, -1                       ; 2 uses
  store i32 %i.gw, ptr %i.gu, align 4, !tbaa !87
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.ax, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit96

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gp, ptr noundef nonnull %i.go)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit96 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  call void @__clang_call_terminate(ptr %i.gz) #20
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit96:       ; preds = %bb.av, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.ha = load i64, ptr %i.gd, align 8
  %i.hb = or i64 %i.ha, 2251799813685248
  store i64 %i.hb, ptr %i.gd, align 8
  %i.hc = load ptr, ptr %1, align 8, !tbaa !111   ; 3 uses
  store ptr null, ptr %11, align 8, !tbaa !141
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 144 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !141 ; 4 uses
  %.not.i.i97 = icmp eq ptr %i.he, %i.fr
  br i1 %.not.i.i97, label %_ZN10scoped_ptrIN6spacer3pobEED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit96
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %_Z7deallocIN6spacer3pobEEvPT_.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZN6spacer3pobD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.he) #19, !inline_history !9
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.he)
          to label %._Z7deallocIN6spacer3pobEEvPT_.exit.i.i_crit_edge unwind label %bb.as

._Z7deallocIN6spacer3pobEEvPT_.exit.i.i_crit_edge: ; preds = %bb.ba
  %.pre.pre = load ptr, ptr %1, align 8, !tbaa !111
  br label %_Z7deallocIN6spacer3pobEEvPT_.exit.i.i

_Z7deallocIN6spacer3pobEEvPT_.exit.i.i:           ; preds = %._Z7deallocIN6spacer3pobEEvPT_.exit.i.i_crit_edge, %bb.az
  %.pre = phi ptr [ %.pre.pre, %._Z7deallocIN6spacer3pobEEvPT_.exit.i.i_crit_edge ], [ %i.hc, %bb.az ]
  store ptr %i.fr, ptr %i.hd, align 8, !tbaa !141
  br label %_ZN10scoped_ptrIN6spacer3pobEED2Ev.exit

bb.bb:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i89
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit94
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #19
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn43 = phi { ptr, i32 } [ %i.hh, %bb.bc ], [ %i.hg, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.be

_ZN10scoped_ptrIN6spacer3pobEED2Ev.exit:          ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit96, %_Z7deallocIN6spacer3pobEEvPT_.exit.i.i
  %i.hi = phi ptr [ %i.hc, %_ZN7obj_refI4expr11ast_managerED2Ev.exit96 ], [ %.pre, %_Z7deallocIN6spacer3pobEEvPT_.exit.i.i ]
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 72 ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8
  %i.hl = or i64 %i.hk, 36028797018963968
  store i64 %i.hl, ptr %i.hj, align 8
  %i.hm = load ptr, ptr %1, align 8, !tbaa !111   ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 136
  store i32 %5, ptr %i.hn, align 8, !tbaa !139
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 72 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8
  %i.hq = and i64 %i.hp, -4503599627370497
  store i64 %i.hq, ptr %i.ho, align 8
  %.pre143.pre = load ptr, ptr %i.af, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.bg

bb.be:                                            ; preds = %bb.bd, %bb.as
  %.pn45 = phi { ptr, i32 } [ %i.fz, %bb.as ], [ %.pn43, %bb.bd ]
  call void @_ZN10scoped_ptrIN6spacer3pobEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #19
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.ar
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %bb.be ], [ %i.fy, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %.loopexit.split-lp

bb.bg:                                            ; preds = %_ZN10scoped_ptrIN6spacer3pobEED2Ev.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread
  %i.hr = phi ptr [ %i.ex, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread ], [ %.pre143.pre, %_ZN10scoped_ptrIN6spacer3pobEED2Ev.exit ] ; 2 uses
  %.141 = phi i1 [ false, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread ], [ true, %_ZN10scoped_ptrIN6spacer3pobEED2Ev.exit ] ; 2 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i99

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i99:         ; preds = %.thread179, %bb.bg
  %.141181 = phi i1 [ false, %.thread179 ], [ %.141, %bb.bg ] ; 2 uses
  %i.ht = phi ptr [ %i.ex, %.thread179 ], [ %i.hr, %bb.bg ] ; 4 uses
  %i.hu = getelementptr inbounds i8, ptr %i.ht, i64 -4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !80 ; 2 uses
  %i.hw = zext i32 %i.hv to i64
  %i.hx = shl nuw nsw i64 %i.hw, 3
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hx
  %.not.i100 = icmp eq i32 %i.hv, 0
  br i1 %.not.i100, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i108, label %.lr.ph.i.i101

.lr.ph.i.i101:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i99, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i104
  %.06.i.i102 = phi ptr [ %i.if, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i104 ], [ %i.ht, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i99 ] ; 2 uses
  %i.hz = load ptr, ptr %.06.i.i102, align 8, !tbaa !142 ; 3 uses
  %i.ia = load ptr, ptr %9, align 8, !tbaa !143, !nonnull !47, !align !48
  %.not.i.i.i.i.i103 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i.i.i103, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i104, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i101
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !87
  %i.id = add i32 %i.ic, -1                       ; 2 uses
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !87
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.bi, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i104

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ia, ptr noundef nonnull %i.hz)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i104 unwind label %bb.bk

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i104: ; preds = %bb.bi, %bb.bh, %.lr.ph.i.i101
  %i.if = getelementptr inbounds nuw i8, ptr %.06.i.i102, i64 8 ; 2 uses
  %i.ig = icmp ult ptr %i.if, %i.hy
  br i1 %i.ig, label %.lr.ph.i.i101, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i105, !llvm.loop !2

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i105: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i104
  %.pre.i106 = load ptr, ptr %i.af, align 8, !tbaa !140 ; 2 uses
  %.not.i.i.i107 = icmp eq ptr %.pre.i106, null
  br i1 %.not.i.i.i107, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i108
end_hunk_1
begin_hunk_2_@_ZN6spacer16pred_transformer11clstr_matchERK3refINS_5lemmaEE:bb.a
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !138 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZNK6spacer13lemma_cluster8get_sizeEv.exit19.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !80
  br label %_ZNK6spacer13lemma_cluster8get_sizeEv.exit19.i

_ZNK6spacer13lemma_cluster8get_sizeEv.exit19.i:   ; preds = %bb.j, %bb.i, %bb.h, %_ZNK6spacer13lemma_cluster8get_sizeEv.exit.i8, %.lr.ph.i7
  %.116.i = phi i32 [ %.01521.i, %.lr.ph.i7 ], [ %.01521.i, %bb.h ], [ %.01521.i, %_ZNK6spacer13lemma_cluster8get_sizeEv.exit.i8 ], [ %i.ao, %bb.j ], [ 0, %bb.i ]
  %.1.i10 = phi ptr [ %.01422.i, %.lr.ph.i7 ], [ %.01422.i, %bb.h ], [ %.01422.i, %_ZNK6spacer13lemma_cluster8get_sizeEv.exit.i8 ], [ %i.ab, %bb.j ], [ %i.ab, %bb.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.023.i, i64 8 ; 2 uses
  %.not.i11 = icmp eq ptr %i.ap, %i.aa
  br i1 %.not.i11, label %_ZN6spacer16pred_transformer10cluster_db11can_containERK3refINS_5lemmaEE.exit, label %.lr.ph.i7

_ZN6spacer16pred_transformer10cluster_db11can_containERK3refINS_5lemmaEE.exit: ; preds = %_ZNK6spacer13lemma_cluster8get_sizeEv.exit19.i, %bb.a, %_ZNK15ref_vector_coreIN6spacer13lemma_clusterE21ref_unmanaged_wrapperIS1_EE3endEv.exit.i6, %_ZN6spacer16pred_transformer10cluster_db11get_clusterERK3refINS_5lemmaEE.exit.thread, %_ZN6spacer16pred_transformer10cluster_db11get_clusterERK3refINS_5lemmaEE.exit
  %.0 = phi ptr [ %.1.i, %_ZN6spacer16pred_transformer10cluster_db11get_clusterERK3refINS_5lemmaEE.exit ], [ null, %_ZNK15ref_vector_coreIN6spacer13lemma_clusterE21ref_unmanaged_wrapperIS1_EE3endEv.exit.i6 ], [ null, %_ZN6spacer16pred_transformer10cluster_db11get_clusterERK3refINS_5lemmaEE.exit.thread ], [ null, %bb.a ], [ %.1.i10, %_ZNK6spacer13lemma_cluster8get_sizeEv.exit19.i ]
  ret ptr %.0
}

declare void @_ZN6spacer13lemma_clusterC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef nonnull align 8 dereferenceable(148)) unnamed_addr #1

declare noundef zeroext i1 @_ZN6spacer13lemma_cluster9add_lemmaERK3refINS_5lemmaEEb(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN6spacer21has_nonlinear_var_mulEP4exprR11ast_manager(ptr noundef, ptr noundef nonnull align 8 dereferenceable(952)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN6spacer24find_unique_mono_var_litERK7obj_refI4expr11ast_managerERS3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef i32 @_ZN6spacer13lemma_cluster11get_min_lvlEv(ptr noundef nonnull align 8 dereferenceable(148)) local_unnamed_addr #1

declare void @_ZN6spacer3pob8set_postEP4exprRK10ref_vectorI3app11ast_managerE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spacer13lemma_clusterD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !448  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6vectorISt4pairIP4exprS2_ELb0EjED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.c)
          to label %_ZN6vectorISt4pairIP4exprS2_ELb0EjED2Ev.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #20
  unreachable

_ZN6vectorISt4pairIP4exprS2_ELb0EjED2Ev.exit.i:   ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !140  ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN6spacer11sem_matcherD2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i:         ; preds = %_ZN6vectorISt4pairIP4exprS2_ELb0EjED2Ev.exit.i
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !80   ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i ], [ %i.h, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  %i.o = load ptr, ptr %.06.i.i.i, align 8, !tbaa !142 ; 3 uses
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !143, !nonnull !47, !align !48
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !87
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.q, align 4, !tbaa !87
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.p, ptr noundef nonnull %i.o)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i unwind label %bb.g

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i: ; preds = %bb.e, %bb.d, %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %i.v = icmp ult ptr %i.u, %i.n
  br i1 %i.v, label %.lr.ph.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i, !llvm.loop !2

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.g, align 8, !tbaa !140 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN6spacer11sem_matcherD2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i
  %i.w = phi ptr [ %.pre.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i ], [ %i.h, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ]
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.x)
          to label %_ZN6spacer11sem_matcherD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #20
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #20
  unreachable

_ZN6spacer11sem_matcherD2Ev.exit:                 ; preds = %_ZN6vectorISt4pairIP4exprS2_ELb0EjED2Ev.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN6vectorIN6spacer13lemma_cluster10lemma_infoELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ac) #19
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !134 ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6spacer11sem_matcherD2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !137, !nonnull !47, !align !48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !87
  %i.aj = add i32 %i.ai, -1                       ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !87
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ag, ptr noundef nonnull %i.ae)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #20
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN6spacer11sem_matcherD2Ev.exit, %bb.h, %bb.i
  ret void
}

declare void @_ZN9var_substclEP4exprjPKS1_(ptr dead_on_unwind writable sret(%class.obj_ref.46) align 8, ptr noundef nonnull align 8 dereferenceable(545), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6spacer24lemma_global_generalizer17mk_concretize_pobERNS_3pobER3refI5modelE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(225) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector.48, align 8       ; 10 uses
  %4 = alloca %"class.spacer::pob_concretizer", align 8 ; 13 uses
  %5 = alloca %class.obj_ref.46, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135, !nonnull !47, !align !48 ; 3 uses
  %i.c = ptrtoint ptr %i.b to i64
  store i64 %i.c, ptr %3, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134
  store ptr %i.b, ptr %4, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void @_ZN10arith_utilC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(952) %i.b)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %i.h, align 8, !tbaa !452
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.f, ptr %i.i, align 8, !tbaa !453
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !214
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  store i32 0, ptr %i.l, align 8, !tbaa !215
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 16, ptr %i.m, align 4, !tbaa !216
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !134
  %i.p = invoke noundef zeroext i1 @_ZN6spacer15pob_concretizer5applyEP4exprR10ref_vectorIS1_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef %i.o, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !123, !nonnull !47, !align !48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !111
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load i64, ptr %i.u, align 8
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = and i32 %i.w, 65535
  %6 = lshr i32 %i.w, 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.y = load ptr, ptr %3, align 8, !tbaa !143, !noalias !454, !nonnull !47, !align !48
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !140, !noalias !454 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !80, !noalias !454
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi i32 [ %i.ac, %bb.e ], [ 0, %bb.d ]
  %i.ad = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.y, i32 noundef %.0.i.i.i, ptr noundef %i.z)
          to label %.noexc unwind label %bb.k     ; 6 uses

.noexc:                                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.ae = load ptr, ptr %3, align 8, !tbaa !143, !noalias !454, !nonnull !47, !align !48 ; 2 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !134, !alias.scope !454
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !28, !alias.scope !454
  %.not.i.i.i = icmp eq ptr %i.ad, null           ; 2 uses
  br i1 %.not.i.i.i, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %.noexc
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !87, !noalias !454
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !87, !noalias !454
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i, %.noexc
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.al = invoke noundef ptr @_ZN6spacer16pred_transformer11pob_manager6mk_pobEPNS_3pobEjjP4exprRK10ref_vectorI3app11ast_managerE(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef %i.t, i32 noundef %i.x, i32 noundef %6, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.aj)
          to label %_ZN6spacer16pred_transformer6mk_pobEPNS_3pobEjjP4exprRK10ref_vectorI3app11ast_managerE.exit unwind label %bb.l

_ZN6spacer16pred_transformer6mk_pobEPNS_3pobEjjP4exprRK10ref_vectorI3app11ast_managerE.exit: ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit
  br i1 %.not.i.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6spacer16pred_transformer6mk_pobEPNS_3pobEjjP4exprRK10ref_vectorI3app11ast_managerE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !87
  %i.ao = add i32 %i.an, -1                       ; 2 uses
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !87
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.g, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ae, ptr noundef nonnull %i.ad)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #20
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN6spacer16pred_transformer6mk_pobEPNS_3pobEjjP4exprRK10ref_vectorI3app11ast_managerE.exit, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.j:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.k:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.av, %bb.l ], [ %i.au, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.u

bb.n:                                             ; preds = %bb.c, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %.016 = phi ptr [ %i.al, %_ZN7obj_refI4expr11ast_managerED2Ev.exit ], [ null, %bb.c ]
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !214 ; 4 uses
  %i.ax = load i32, ptr %i.l, align 8, !tbaa !215 ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ay, 3          ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i.i.i
  %.not8.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not8.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.n
  %i.ba = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.bb = lshr exact i64 %i.ba, 3
  %i.bc = add nuw nsw i64 %i.bb, 1
  %xtraiter = and i64 %i.bc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi ptr [ %i.bh, %.lr.ph.i.i.i.prol ], [ %i.aw, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bd = load ptr, ptr %.09.i.i.i.prol, align 8, !tbaa !218
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = and i32 %i.bf, -131073
  store i32 %i.bg, ptr %i.be, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !451

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi ptr [ %i.aw, %.lr.ph.i.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.i.prol ]
  %i.bi = icmp ult i64 %i.ba, 24
  br i1 %i.bi, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.bj = load ptr, ptr %.09.i.i.i, align 8, !tbaa !218
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = and i32 %i.bl, -131073
  store i32 %i.bm, ptr %i.bk, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !218
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, -131073
  store i32 %i.br, ptr %i.bp, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !218
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = and i32 %i.bv, -131073
  store i32 %i.bw, ptr %i.bu, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !218
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = and i32 %i.ca, -131073
  store i32 %i.cb, ptr %i.bz, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i22.3 = icmp eq ptr %i.cc, %i.az
  br i1 %.not.i.i.i22.3, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i.i

.loopexit.loopexit.i.i:                           ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !214
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %bb.n
  %i.cd = phi ptr [ %.pre.i.i, %.loopexit.loopexit.i.i ], [ %i.aw, %bb.n ] ; 3 uses
  store i32 0, ptr %i.l, align 8, !tbaa !215
  %.not.i.i.i.i.i = icmp eq ptr %i.cd, %i.k
  %i.ce = icmp eq ptr %i.cd, null
  %or.cond.i.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.ce
  br i1 %or.cond.i.i.i.i.i, label %_ZN6spacer15pob_concretizerD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cd)
          to label %_ZN6spacer15pob_concretizerD2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #20
  unreachable

_ZN6spacer15pob_concretizerD2Ev.exit:             ; preds = %.loopexit.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ch = load ptr, ptr %i.d, align 8, !tbaa !140 ; 5 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN6spacer15pob_concretizerD2Ev.exit
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !80 ; 2 uses
  %i.cl = zext i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cm
  %.not.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.cu, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ch, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.co = load ptr, ptr %.06.i.i, align 8, !tbaa !142 ; 3 uses
  %i.cp = load ptr, ptr %3, align 8, !tbaa !143, !nonnull !47, !align !48
  %.not.i.i.i.i.i23 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i23, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !87
  %i.cs = add i32 %i.cr, -1                       ; 2 uses
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !87
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cp, ptr noundef nonnull %i.co)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.t

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.r, %bb.q, %.lr.ph.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.cv = icmp ult ptr %i.cu, %i.cn
  br i1 %i.cv, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !2

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !140 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i24, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.cw = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.ch, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cx)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #20
  unreachable

bb.t:                                             ; preds = %bb.r
end_hunk_2
begin_hunk_3_@_ZN6spacer15pob_concretizer5applyEP4exprR10ref_vectorIS1_11ast_managerE:bb.a

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.r, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.e, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.l = load ptr, ptr %.06.i.i, align 8, !tbaa !142 ; 3 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !143, !nonnull !47, !align !48
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !87
  %i.p = add i32 %i.o, -1                         ; 2 uses
  store i32 %i.p, ptr %i.n, align 4, !tbaa !87
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.m, ptr noundef nonnull %i.l)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.g

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.e, %bb.d, %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.s = icmp ult ptr %i.r, %i.k
  br i1 %i.s, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !2

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !140 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.t = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.e, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.u)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #20
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #20
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %bb.c, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i1 %i.d

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.z
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spacer15pob_concretizerD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !214  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !215  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 3             ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.g = add nsw i64 %.idx.i.i, -8                ; 2 uses
  %i.h = lshr exact i64 %i.g, 3
  %i.i = add nuw nsw i64 %i.h, 1
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.09.i.i.prol = phi ptr [ %i.n, %.lr.ph.i.i.prol ], [ %i.b, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.j = load ptr, ptr %.09.i.i.prol, align 8, !tbaa !218
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, -131073
  store i32 %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !456

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.09.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.preheader ], [ %i.n, %.lr.ph.i.i.prol ]
  %i.o = icmp ult i64 %i.g, 24
  br i1 %i.o, label %.loopexit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %.09.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.p = load ptr, ptr %.09.i.i, align 8, !tbaa !218
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, -131073
  store i32 %i.s, ptr %i.q, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !218
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, -131073
  store i32 %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !218
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, -131073
  store i32 %i.ac, ptr %i.aa, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !218
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, -131073
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.ai, %i.f
  br i1 %.not.i.i.3, label %.loopexit.loopexit.i, label %.lr.ph.i.i

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !214
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.a
  %i.aj = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %i.b, %bb.a ] ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !215
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.ak
  %i.al = icmp eq ptr %i.aj, null
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i, %i.al
  br i1 %or.cond.i.i.i.i, label %_ZN13ast_fast_markILj2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.aj)
          to label %_ZN13ast_fast_markILj2EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #20
  unreachable

_ZN13ast_fast_markILj2EED2Ev.exit:                ; preds = %.loopexit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6spacer24lemma_global_generalizer14mk_subsume_pobERNS_3pobE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(225) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141  ; 5 uses
  %.not26 = icmp eq ptr %i.b, null
  br i1 %.not26, label %_ZN6spacer3pob10reset_dataEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 18014398509481984
  %.not27 = icmp eq i64 %i.e, 0
  br i1 %.not27, label %_ZN6spacer3pob10reset_dataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123, !nonnull !47, !align !48
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !111
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !134
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.m = tail call noundef ptr @_ZN6spacer16pred_transformer11pob_manager8find_pobEPNS_3pobEP4expr(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef %i.i, ptr noundef %i.k) ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, 1407374883553280
  %or.cond.not = icmp eq i64 %i.p, 281474976710656
  br i1 %or.cond.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !141  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN6spacer3pob10reset_dataEv.exit, label %_ZN6spacer3pob10reset_dataEv.exit.sink.split

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !123, !nonnull !47, !align !48
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !111
  %i.t = load i64, ptr %i.c, align 8
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = and i32 %i.u, 65535
  %2 = lshr i32 %i.u, 16
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !134
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.z = tail call noundef ptr @_ZN6spacer16pred_transformer11pob_manager6mk_pobEPNS_3pobEjjP4exprRK10ref_vectorI3app11ast_managerE(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef %i.s, i32 noundef %i.v, i32 noundef %2, ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x) ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = or i64 %i.ab, 18014398509481984
  store i64 %i.ac, ptr %i.aa, align 8
  tail call void @_ZN6spacer3pob7inheritERKS0_(ptr noundef nonnull align 8 dereferenceable(152) %i.z, ptr noundef nonnull align 8 dereferenceable(152) %i.b)
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !141 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i24, label %_ZN6spacer3pob10reset_dataEv.exit, label %_ZN6spacer3pob10reset_dataEv.exit.sink.split

_ZN6spacer3pob10reset_dataEv.exit.sink.split:     ; preds = %bb.f, %bb.e
  %.sink31 = phi ptr [ %i.q, %bb.e ], [ %i.ad, %bb.f ] ; 2 uses
  %.1.ph = phi ptr [ null, %bb.e ], [ %i.z, %bb.f ]
  tail call void @_ZN6spacer3pobD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %.sink31) #19
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.sink31)
  store ptr null, ptr %i.a, align 8, !tbaa !141
  br label %_ZN6spacer3pob10reset_dataEv.exit

_ZN6spacer3pob10reset_dataEv.exit:                ; preds = %_ZN6spacer3pob10reset_dataEv.exit.sink.split, %bb.f, %bb.e, %bb.a, %bb.b
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.z, %bb.f ], [ null, %bb.e ], [ %.1.ph, %_ZN6spacer3pob10reset_dataEv.exit.sink.split ]
  ret ptr %.1
}

declare void @_ZN6spacer3pob7inheritERKS0_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6spacer24lemma_global_generalizer17mk_conjecture_pobERNS_3pobE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(225) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(152) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.ref_vector, align 8          ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141  ; 5 uses
  %.not31 = icmp eq ptr %i.b, null
  br i1 %.not31, label %_ZN6spacer3pob10reset_dataEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 2251799813685248
  %i.f = icmp eq i64 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.h = load i32, ptr %i.g, align 8
  %.not = icmp eq i32 %i.h, 0
  %or.cond = select i1 %i.f, i1 true, i1 %.not
  br i1 %or.cond, label %_ZN6spacer3pob10reset_dataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123, !nonnull !47, !align !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !111
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.p = tail call noundef ptr @_ZN6spacer16pred_transformer11pob_manager8find_pobEPNS_3pobEP4expr(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef %i.l, ptr noundef %i.n) ; 2 uses
  %.not24 = icmp eq ptr %i.p, null
  br i1 %.not24, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, 1407374883553280
  %or.cond30.not = icmp eq i64 %i.s, 281474976710656
  br i1 %or.cond30.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !141  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZN6spacer3pob10reset_dataEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6spacer3pobD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.t) #19, !inline_history !9
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.t), !inline_history !9
  br label %_ZN6spacer3pob10reset_dataEv.exit.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !123, !nonnull !47, !align !48
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !111
  %i.w = load i64, ptr %i.c, align 8
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %i.y = and i32 %i.x, 65535
  %3 = lshr i32 %i.x, 16
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !135, !nonnull !47, !align !48
  %i.ac = ptrtoint ptr %i.ab to i64
  store i64 %i.ac, ptr %2, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.af = invoke noundef ptr @_ZN6spacer16pred_transformer11pob_manager6mk_pobEPNS_3pobEjjP4exprRK10ref_vectorI3app11ast_managerE(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef %i.v, i32 noundef %i.y, i32 noundef %3, ptr noundef %i.z, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN6spacer16pred_transformer6mk_pobEPNS_3pobEjjP4exprRK10ref_vectorI3app11ast_managerE.exit unwind label %bb.m ; 3 uses

_ZN6spacer16pred_transformer6mk_pobEPNS_3pobEjjP4exprRK10ref_vectorI3app11ast_managerE.exit: ; preds = %bb.g
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !49 ; 5 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i:            ; preds = %_ZN6spacer16pred_transformer6mk_pobEPNS_3pobEjjP4exprRK10ref_vectorI3app11ast_managerE.exit
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !80 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.al
  %.not.i25 = icmp eq i32 %i.aj, 0
  br i1 %.not.i25, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.at, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ag, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.an = load ptr, ptr %.06.i.i, align 8, !tbaa !84 ; 3 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !85, !nonnull !47, !align !48
  %.not.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !87
  %i.ar = add i32 %i.aq, -1                       ; 2 uses
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !87
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ao, ptr noundef nonnull %i.an)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.k

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.i, %bb.h, %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.au = icmp ult ptr %i.at, %i.am
  br i1 %i.au, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !1

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i26, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i
  %i.av = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.ag, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ]
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.aw)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #20
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #20
  unreachable

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN6spacer16pred_transformer6mk_pobEPNS_3pobEjjP4exprRK10ref_vectorI3app11ast_managerE.exit, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @_ZN6spacer3pob7inheritERKS0_(ptr noundef nonnull align 8 dereferenceable(152) %i.af, ptr noundef nonnull align 8 dereferenceable(152) %i.b)
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !141 ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i27, label %_ZN6spacer3pob10reset_dataEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  call void @_ZN6spacer3pobD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.bb) #19, !inline_history !9
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bb), !inline_history !9
  br label %_ZN6spacer3pob10reset_dataEv.exit.sink.split

bb.m:                                             ; preds = %bb.g
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.bc

_ZN6spacer3pob10reset_dataEv.exit.sink.split:     ; preds = %bb.f, %bb.l
  %.1.ph = phi ptr [ null, %bb.f ], [ %i.af, %bb.l ]
  store ptr null, ptr %i.a, align 8, !tbaa !141
  br label %_ZN6spacer3pob10reset_dataEv.exit

_ZN6spacer3pob10reset_dataEv.exit:                ; preds = %_ZN6spacer3pob10reset_dataEv.exit.sink.split, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %bb.e, %bb.a, %bb.b
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.b ], [ %i.af, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ], [ %.1.ph, %_ZN6spacer3pob10reset_dataEv.exit.sink.split ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6spacer24lemma_global_generalizer8subsumer18collect_statisticsER10statistics(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !246
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.6, i32 noundef %i.b)
  %i.c = load i32, ptr %0, align 8, !tbaa !225
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.7, i32 noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !457
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.8, i32 noundef %i.e)
  ret void
}

declare void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6spacer24lemma_global_generalizer18collect_statisticsER10statistics(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(225) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !105, !range !100, !noundef !47
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN9stopwatch4stopEv.exit.i, label %_ZNK9stopwatch11get_secondsEv.exit

_ZN9stopwatch4stopEv.exit.i:                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #19
  %.sroa.0.0.copyload.i2.i.i.i = load i64, ptr %i.d, align 8, !tbaa !106
  %i.f = sub i64 %i.e, %.sroa.0.0.copyload.i2.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !107
  %i.i = add nsw i64 %i.f, %i.h
  store i64 %i.i, ptr %i.g, align 8, !tbaa !107
  store i8 0, ptr %i.a, align 8, !tbaa !105
  %i.j = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #19
  store i64 %i.j, ptr %i.d, align 8, !tbaa !106
  store i8 1, ptr %i.a, align 8, !tbaa !105
  br label %_ZNK9stopwatch11get_secondsEv.exit

_ZNK9stopwatch11get_secondsEv.exit:               ; preds = %bb.a, %_ZN9stopwatch4stopEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !107
  %i.n = sdiv i64 %i.m, 1000000
  %i.o = sitofp i64 %i.n to double
  %i.p = fdiv double %i.o, 1.000000e+03
  tail call void @_ZN10statistics6updateEPKcd(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.9, double noundef %i.p)
  %i.q = load i32, ptr %i.k, align 8, !tbaa !133
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.10, i32 noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !136
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.11, i32 noundef %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !250
  tail call void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.12, i32 noundef %i.u)
  ret void
}

declare void @_ZN10statistics6updateEPKcd(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spacer24lemma_global_generalizerD2Ev(ptr noundef nonnull align 8 dead_on_return(225) dereferenceable(225) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6spacer24lemma_global_generalizerE, i64 16), ptr %0, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6spacer24lemma_global_generalizer8subsumerD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.a) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spacer24lemma_global_generalizerD0Ev(ptr noundef nonnull align 8 dereferenceable(225) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6spacer24lemma_global_generalizerE, i64 16), ptr %0, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6spacer24lemma_global_generalizer8subsumerD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.a) #19, !inline_history !458
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spacer24lemma_global_generalizer16reset_statisticsEv(ptr noundef nonnull align 8 dereferenceable(225) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.b, align 8, !tbaa !106
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #1
end_hunk_3
