Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/mbp_arrays?download=true
inline.NumInlined: 2024
inline.NumDeleted: 872
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN3mbp26array_project_selects_util9ackermannERK10ptr_vectorI3appE:bb.a
  %.not.i163 = icmp eq i32 %i.kp, 0
  br i1 %.not.i163, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i171, label %.lr.ph.i.i164

.lr.ph.i.i164:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i162, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i167
  %.06.i.i165 = phi ptr [ %i.kz, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i167 ], [ %i.km, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i162 ] ; 2 uses
  %i.kt = load ptr, ptr %.06.i.i165, align 8, !tbaa !79 ; 3 uses
  %i.ku = load ptr, ptr %5, align 8, !tbaa !75, !nonnull !68, !align !69
  %.not.i.i.i.i.i166 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i.i.i166, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i167, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i.i164
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !71
  %i.kx = add i32 %i.kw, -1                       ; 2 uses
  store i32 %i.kx, ptr %i.kv, align 4, !tbaa !71
  %i.ky = icmp eq i32 %i.kx, 0
  br i1 %i.ky, label %bb.bq, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i167

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ku, ptr noundef nonnull %i.kt)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i167 unwind label %bb.bs

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i167: ; preds = %bb.bq, %bb.bp, %.lr.ph.i.i164
  %i.kz = getelementptr inbounds nuw i8, ptr %.06.i.i165, i64 8 ; 2 uses
  %i.la = icmp ult ptr %i.kz, %i.ks
  br i1 %i.la, label %.lr.ph.i.i164, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i168, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i168: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i167
  %.pre.i169 = load ptr, ptr %i.ba, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i170 = icmp eq ptr %.pre.i169, null
  br i1 %.not.i.i.i170, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit172, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i171

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i171: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i168, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i162
  %i.lb = phi ptr [ %.pre.i169, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i168 ], [ %i.km, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i162 ]
  %i.lc = getelementptr inbounds i8, ptr %i.lb, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.lc)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit172 unwind label %bb.br

bb.br:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i171
  %i.ld = landingpad { ptr, i32 }
          catch ptr null
  %i.le = extractvalue { ptr, i32 } %i.ld, 0
  call void @__clang_call_terminate(ptr %i.le) #23
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.lf = landingpad { ptr, i32 }
          catch ptr null
  %i.lg = extractvalue { ptr, i32 } %i.lf, 0
  call void @__clang_call_terminate(ptr %i.lg) #23
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit172: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i168, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.lh = getelementptr inbounds nuw i8, ptr %.097316, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.lh, %i.az
  br i1 %.not, label %._crit_edge318.loopexit, label %bb.k

bb.bt:                                            ; preds = %bb.ag, %bb.ad, %bb.bj, %bb.bc
  %.pn128.pn.pn.pn = phi { ptr, i32 } [ %.pn128.pn.pn, %bb.bj ], [ %.pn126, %bb.bc ], [ %i.gh, %bb.ad ], [ %.pn121, %bb.ag ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #22
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.y
  %.pn128.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn128.pn.pn.pn, %bb.bt ], [ %i.fe, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

bb.bv:                                            ; preds = %_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit140
  br i1 %.099.lcssa, label %bb.bw, label %bb.cf

bb.bw:                                            ; preds = %bb.bv
  %i.li = zext i32 %.0.i to i64                   ; 2 uses
  %.idx287 = mul nuw nsw i64 %i.li, 40            ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx287 ; 4 uses
  br i1 %i.cm, label %_ZN6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE3endEv.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lk = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !72
  %i.lm = zext i32 %i.ll to i64
  br label %_ZN6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE3endEv.exit

_ZN6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE3endEv.exit: ; preds = %bb.bw, %bb.bx
  %.0.i.i173 = phi i64 [ %i.lm, %bb.bx ], [ 0, %bb.bw ] ; 2 uses
  %.idx = mul nuw nsw i64 %.0.i.i173, 40          ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx ; 3 uses
  %.not.i.i174 = icmp samesign eq i64 %.0.i.i173, %i.li
  br i1 %.not.i.i174, label %_ZSt4sortIPN3mbp26array_project_selects_util7idx_valENS1_11compare_idxEEvT_S5_T0_.exit, label %bb.by

bb.by:                                            ; preds = %_ZN6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE3endEv.exit
  %gepdiff = sub nsw i64 %.idx, %.idx287          ; 2 uses
  %i.lo = sdiv exact i64 %gepdiff, 40
  %i.lp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.lo, i1 true)
  %i.lq = shl nuw nsw i64 %i.lp, 1
  %i.lr = xor i64 %i.lq, 126
  call void @_ZSt16__introsort_loopIPN3mbp26array_project_selects_util7idx_valElN9__gnu_cxx5__ops15_Iter_comp_iterINS1_11compare_idxEEEEvT_S9_T0_T1_(ptr noundef %i.lj, ptr noundef %i.ln, i64 noundef %i.lr, ptr nonnull %0)
  %i.ls = icmp sgt i64 %gepdiff, 640
  br i1 %i.ls, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lj, i64 640 ; 2 uses
  call void @_ZSt16__insertion_sortIPN3mbp26array_project_selects_util7idx_valEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_11compare_idxEEEEvT_S9_T0_(ptr noundef %i.lj, ptr noundef nonnull %i.lt, ptr nonnull %0)
  %i.lu = add nuw nsw i64 %.idx287, 640
  %.not7.i.i.i.i = icmp samesign eq i64 %i.lu, %.idx
  br i1 %.not7.i.i.i.i, label %_ZSt4sortIPN3mbp26array_project_selects_util7idx_valENS1_11compare_idxEEvT_S5_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bz, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.lv, %.lr.ph.i.i.i.i ], [ %i.lt, %bb.bz ] ; 2 uses
  call void @_ZSt25__unguarded_linear_insertIPN3mbp26array_project_selects_util7idx_valEN9__gnu_cxx5__ops14_Val_comp_iterINS1_11compare_idxEEEEvT_T0_(ptr noundef nonnull %.08.i.i.i.i, ptr nonnull %0)
  %i.lv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i175 = icmp eq ptr %i.lv, %i.ln
  br i1 %.not.i.i.i.i175, label %_ZSt4sortIPN3mbp26array_project_selects_util7idx_valENS1_11compare_idxEEvT_S5_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !428

bb.ca:                                            ; preds = %bb.by
  call void @_ZSt16__insertion_sortIPN3mbp26array_project_selects_util7idx_valEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_11compare_idxEEEEvT_S9_T0_(ptr noundef %i.lj, ptr noundef %i.ln, ptr nonnull %0)
  br label %_ZSt4sortIPN3mbp26array_project_selects_util7idx_valENS1_11compare_idxEEvT_S5_T0_.exit

_ZSt4sortIPN3mbp26array_project_selects_util7idx_valENS1_11compare_idxEEvT_S5_T0_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZN6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE3endEv.exit, %bb.bz, %bb.ca
  %i.lw = load ptr, ptr %i.ao, align 8, !tbaa !107 ; 2 uses
  %i.lx = icmp eq ptr %i.lw, null
  br i1 %i.lx, label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit177.lr.ph

_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit177.lr.ph: ; preds = %_ZSt4sortIPN3mbp26array_project_selects_util7idx_valENS1_11compare_idxEEvT_S5_T0_.exit
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  br label %_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit177

_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit177: ; preds = %_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit177.lr.ph, %_ZN7obj_refI4expr11ast_managerED2Ev.exit184
  %i.lz = phi ptr [ %i.lw, %_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit177.lr.ph ], [ %i.mw, %_ZN7obj_refI4expr11ast_managerED2Ev.exit184 ] ; 3 uses
  %.068326 = phi i32 [ %.0.i, %_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit177.lr.ph ], [ %i.ma, %_ZN7obj_refI4expr11ast_managerED2Ev.exit184 ] ; 2 uses
  %i.ma = add i32 %.068326, 1                     ; 3 uses
  %i.mb = getelementptr inbounds i8, ptr %i.lz, i64 -4
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !72
  %i.md = icmp ult i32 %i.ma, %i.mc
  br i1 %i.md, label %bb.cb, label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.thread

bb.cb:                                            ; preds = %_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit177
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.me = zext i32 %.068326 to i64
  %i.mf = getelementptr inbounds nuw [40 x i8], ptr %i.lz, i64 %i.me
  %i.mg = zext i32 %i.ma to i64
  %i.mh = getelementptr inbounds nuw [40 x i8], ptr %i.lz, i64 %i.mg
  call void @_ZN3mbp26array_project_selects_util9mk_lex_ltERK10ref_vectorI4expr11ast_managerES6_(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %12, ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.mf, ptr noundef nonnull align 8 dereferenceable(16) %i.mh)
  %i.mi = load ptr, ptr %12, align 8, !tbaa !78
  %i.mj = load ptr, ptr %i.ly, align 8, !tbaa !35 ; 4 uses
  %i.mk = icmp eq ptr %i.mj, null
  br i1 %i.mk, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ml = getelementptr inbounds i8, ptr %i.mj, i64 -4
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !72 ; 2 uses
  %i.mn = getelementptr inbounds i8, ptr %i.mj, i64 -8
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !72
  %i.mp = icmp eq i32 %i.mm, %i.mo
  br i1 %i.mp, label %bb.cd, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit184

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ly)
          to label %.noexc181 unwind label %bb.ce

.noexc181:                                        ; preds = %bb.cd
  %.pre.i.i178 = load ptr, ptr %i.ly, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i.i179 = getelementptr inbounds i8, ptr %.pre.i.i178, i64 -4
  %.pre2.i.i180 = load i32, ptr %.phi.trans.insert.i.i179, align 4, !tbaa !72
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit184

_ZN7obj_refI4expr11ast_managerED2Ev.exit184:      ; preds = %bb.cc, %.noexc181
  %i.mq = phi i32 [ %.pre2.i.i180, %.noexc181 ], [ %i.mm, %bb.cc ] ; 2 uses
  %i.mr = phi ptr [ %.pre.i.i178, %.noexc181 ], [ %i.mj, %bb.cc ] ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %i.mr, i64 -4
  %i.mt = zext i32 %i.mq to i64
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.mt
  store ptr %i.mi, ptr %i.mu, align 8, !tbaa !79
  %i.mv = add i32 %i.mq, 1
  store i32 %i.mv, ptr %i.ms, align 4, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.mw = load ptr, ptr %i.ao, align 8, !tbaa !107 ; 2 uses
  %i.mx = icmp eq ptr %i.mw, null
  br i1 %i.mx, label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit177, !llvm.loop !429

bb.ce:                                            ; preds = %bb.cd
  %i.my = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %common.resume

bb.cf:                                            ; preds = %bb.bv
  %i.mz = icmp eq i32 %i.an, 1
  br i1 %i.mz, label %bb.cg, label %bb.cw

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.na = load ptr, ptr %0, align 8, !tbaa !286, !nonnull !68, !align !69 ; 2 uses
  %i.nb = ptrtoint ptr %i.na to i64
  store i64 %i.nb, ptr %13, align 8, !tbaa !31
  %i.nc = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  store ptr null, ptr %i.nc, align 8, !tbaa !35
  br i1 %i.cm, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit186.preheader

_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit186.preheader: ; preds = %bb.cg
  %24 = zext i32 %.0.i to i64
  br label %_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit186

_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit186: ; preds = %_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit186.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit
  %i.nd = phi ptr [ %i.ck, %_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit186.preheader ], [ %i.ot, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit ] ; 3 uses
  %i.ne = phi ptr [ null, %_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit186.preheader ], [ %i.ou, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit ] ; 3 uses
  %indvars.iv348 = phi i64 [ %24, %_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit186.preheader ], [ %indvars.iv.next349, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit ] ; 3 uses
  %i.nf = getelementptr inbounds i8, ptr %i.nd, i64 -4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !72
  %25 = zext i32 %i.ng to i64
  %i.nh = icmp samesign ult i64 %indvars.iv348, %25
  br i1 %i.nh, label %bb.ci, label %.critedge288

.critedge288:                                     ; preds = %_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit186, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit
  %i.ni = phi ptr [ %i.ou, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit ], [ %i.ne, %_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit186 ] ; 3 uses
  %.pre354 = load ptr, ptr %0, align 8, !tbaa !286 ; 2 uses
  %i.nj = icmp eq ptr %i.ni, null
  br i1 %i.nj, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.ch

bb.ch:                                            ; preds = %.critedge288
  %i.nk = getelementptr inbounds i8, ptr %i.ni, i64 -4
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !72
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.cg, %.critedge288, %bb.ch
  %i.nm = phi ptr [ %.pre354, %bb.ch ], [ %.pre354, %.critedge288 ], [ %i.na, %bb.cg ]
  %i.nn = phi ptr [ %i.ni, %bb.ch ], [ null, %.critedge288 ], [ null, %bb.cg ]
  %.0.i.i188 = phi i32 [ %i.nl, %bb.ch ], [ 0, %.critedge288 ], [ 0, %bb.cg ]
  %i.no = invoke noundef ptr @_ZN11ast_manager11mk_distinctEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.nm, i32 noundef %.0.i.i188, ptr noundef %i.nn)
          to label %bb.cn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ci:                                            ; preds = %_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit186
  %i.np = getelementptr inbounds nuw [40 x i8], ptr %i.nd, i64 %indvars.iv348
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !35 ; 2 uses
  %i.ns = icmp eq ptr %i.nr, null
  br i1 %i.ns, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i189

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i189: ; preds = %bb.ci, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i
  %i.nt = phi ptr [ %i.ok, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ %i.ne, %bb.ci ] ; 5 uses
  %i.nu = phi ptr [ %i.ol, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ %i.nr, %bb.ci ] ; 3 uses
  %indvars.iv.i190 = phi i64 [ %indvars.iv.next.i192, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ 0, %bb.ci ] ; 3 uses
  %i.nv = getelementptr inbounds i8, ptr %i.nu, i64 -4
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !72
  %i.nx = zext i32 %i.nw to i64
  %i.ny = icmp samesign ult i64 %indvars.iv.i190, %i.nx
  br i1 %i.ny, label %bb.cj, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit.loopexit

bb.cj:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i189
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %indvars.iv.i190
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !79 ; 3 uses
  %.not.i.i.i.i.i191 = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i.i.i191, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8 ; 2 uses
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !71
  %i.od = add i32 %i.oc, 1
  store i32 %i.od, ptr %i.ob, align 4, !tbaa !71
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.ck, %bb.cj
  %i.oe = icmp eq ptr %i.nt, null
  br i1 %i.oe, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.of = getelementptr inbounds i8, ptr %i.nt, i64 -4
  %i.og = load i32, ptr %i.of, align 4, !tbaa !72 ; 2 uses
  %i.oh = getelementptr inbounds i8, ptr %i.nt, i64 -8
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !72
  %i.oj = icmp eq i32 %i.og, %i.oi
  br i1 %i.oj, label %bb.cm, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

bb.cm:                                            ; preds = %bb.cl, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nc)
          to label %.noexc194 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc194:                                        ; preds = %bb.cm
  %.pre.i.i.i = load ptr, ptr %i.nc, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !72
  %.pre.i193 = load ptr, ptr %i.nq, align 8, !tbaa !35
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i: ; preds = %.noexc194, %bb.cl
  %i.ok = phi ptr [ %.pre.i.i.i, %.noexc194 ], [ %i.nt, %bb.cl ] ; 4 uses
  %i.ol = phi ptr [ %.pre.i193, %.noexc194 ], [ %i.nu, %bb.cl ] ; 2 uses
  %i.om = phi i32 [ %.pre2.i.i.i, %.noexc194 ], [ %i.og, %bb.cl ] ; 2 uses
  %i.on = getelementptr inbounds i8, ptr %i.ok, i64 -4
  %i.oo = zext i32 %i.om to i64
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %i.oo
  store ptr %i.oa, ptr %i.op, align 8, !tbaa !79
  %i.oq = add i32 %i.om, 1
  store i32 %i.oq, ptr %i.on, align 4, !tbaa !72
  %indvars.iv.next.i192 = add nuw nsw i64 %indvars.iv.i190, 1
  %i.or = icmp eq ptr %i.ol, null
  br i1 %i.or, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit.loopexit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i189, !llvm.loop !10

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit.loopexit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i189, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i
  %i.os = phi ptr [ %i.nt, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i189 ], [ %i.ok, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ]
  %.pre353 = load ptr, ptr %i.ao, align 8, !tbaa !107
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit.loopexit, %bb.ci
  %i.ot = phi ptr [ %.pre353, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit.loopexit ], [ %i.nd, %bb.ci ] ; 2 uses
  %i.ou = phi ptr [ %i.os, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit.loopexit ], [ %i.ne, %bb.ci ] ; 2 uses
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 1
  %i.ov = icmp eq ptr %i.ot, null
  br i1 %i.ov, label %.critedge288, label %_ZNK6vectorIN3mbp26array_project_selects_util7idx_valELb1EjE4sizeEv.exit186, !llvm.loop !430

bb.cn:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.not.i.i.i.i195 = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i.i195, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ow = getelementptr inbounds nuw i8, ptr %i.no, i64 8 ; 2 uses
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !71
  %i.oy = add i32 %i.ox, 1
  store i32 %i.oy, ptr %i.ow, align 4, !tbaa !71
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.co, %bb.cn
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !35 ; 4 uses
  %i.pb = icmp eq ptr %i.pa, null
  br i1 %i.pb, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.pc = getelementptr inbounds i8, ptr %i.pa, i64 -4
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !72 ; 2 uses
  %i.pe = getelementptr inbounds i8, ptr %i.pa, i64 -8
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !72
  %i.pg = icmp eq i32 %i.pd, %i.pf
  br i1 %i.pg, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.oz)
          to label %.noexc199 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc199:                                        ; preds = %bb.cq
  %.pre.i.i196 = load ptr, ptr %i.oz, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i.i197 = getelementptr inbounds i8, ptr %.pre.i.i196, i64 -4
  %.pre2.i.i198 = load i32, ptr %.phi.trans.insert.i.i197, align 4, !tbaa !72
  br label %bb.cr

bb.cr:                                            ; preds = %.noexc199, %bb.cp
  %i.ph = phi i32 [ %.pre2.i.i198, %.noexc199 ], [ %i.pd, %bb.cp ] ; 2 uses
  %i.pi = phi ptr [ %.pre.i.i196, %.noexc199 ], [ %i.pa, %bb.cp ] ; 2 uses
  %i.pj = getelementptr inbounds i8, ptr %i.pi, i64 -4
  %i.pk = zext i32 %i.ph to i64
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %i.pk
  store ptr %i.no, ptr %i.pl, align 8, !tbaa !79
  %i.pm = add i32 %i.ph, 1
  store i32 %i.pm, ptr %i.pj, align 4, !tbaa !72
  %i.pn = load ptr, ptr %i.nc, align 8, !tbaa !35 ; 5 uses
  %i.po = icmp eq ptr %i.pn, null
  br i1 %i.po, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit210, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i200

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i200:        ; preds = %bb.cr
  %i.pp = getelementptr inbounds i8, ptr %i.pn, i64 -4
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !72 ; 2 uses
  %i.pr = zext i32 %i.pq to i64
  %i.ps = shl nuw nsw i64 %i.pr, 3
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.ps
  %.not.i201 = icmp eq i32 %i.pq, 0
  br i1 %.not.i201, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i209, label %.lr.ph.i.i202

.lr.ph.i.i202:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i200, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i205
  %.06.i.i203 = phi ptr [ %i.qa, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i205 ], [ %i.pn, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i200 ] ; 2 uses
  %i.pu = load ptr, ptr %.06.i.i203, align 8, !tbaa !79 ; 3 uses
  %i.pv = load ptr, ptr %13, align 8, !tbaa !75, !nonnull !68, !align !69
  %.not.i.i.i.i.i204 = icmp eq ptr %i.pu, null
  br i1 %.not.i.i.i.i.i204, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i205, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph.i.i202
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pu, i64 8 ; 2 uses
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !71
  %i.py = add i32 %i.px, -1                       ; 2 uses
  store i32 %i.py, ptr %i.pw, align 4, !tbaa !71
  %i.pz = icmp eq i32 %i.py, 0
  br i1 %i.pz, label %bb.ct, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i205

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.pv, ptr noundef nonnull %i.pu)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i205 unwind label %bb.cv

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i205: ; preds = %bb.ct, %bb.cs, %.lr.ph.i.i202
  %i.qa = getelementptr inbounds nuw i8, ptr %.06.i.i203, i64 8 ; 2 uses
  %i.qb = icmp ult ptr %i.qa, %i.pt
  br i1 %i.qb, label %.lr.ph.i.i202, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i206, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i206: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i205
  %.pre.i207 = load ptr, ptr %i.nc, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i208 = icmp eq ptr %.pre.i207, null
  br i1 %.not.i.i.i208, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit210, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i209

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i209: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i206, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i200
  %i.qc = phi ptr [ %.pre.i207, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i206 ], [ %i.pn, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i200 ]
  %i.qd = getelementptr inbounds i8, ptr %i.qc, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.qd)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit210 unwind label %bb.cu

bb.cu:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i209
  %i.qe = landingpad { ptr, i32 }
          catch ptr null
  %i.qf = extractvalue { ptr, i32 } %i.qe, 0
  call void @__clang_call_terminate(ptr %i.qf) #23
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.qg = landingpad { ptr, i32 }
          catch ptr null
  %i.qh = extractvalue { ptr, i32 } %i.qg, 0
  call void @__clang_call_terminate(ptr %i.qh) #23
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit210: ; preds = %bb.cr, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i206, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cm, %bb.cq, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %lpad.loopexit.split-lp494 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %common.resume

bb.cw:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.qi = load ptr, ptr %0, align 8, !tbaa !286, !nonnull !68, !align !69
  call void @_ZN8datatype4utilC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(952) %i.qi)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.qj = load ptr, ptr %0, align 8, !tbaa !286, !nonnull !68, !align !69
  %i.qk = ptrtoint ptr %i.qj to i64
  store i64 %i.qk, ptr %15, align 8, !tbaa !31
  %i.ql = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  store ptr null, ptr %i.ql, align 8, !tbaa !289
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store ptr null, ptr %16, align 8, !tbaa !292
  %i.qm = load ptr, ptr %i.ao, align 8, !tbaa !107
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !35 ; 4 uses
  %i.qp = icmp eq ptr %i.qo, null
  br i1 %i.qp, label %._crit_edge323, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit: ; preds = %bb.cw
  %i.qq = getelementptr inbounds i8, ptr %i.qo, i64 -4
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !72 ; 2 uses
  %i.qs = zext i32 %i.qr to i64
  %i.qt = shl nuw nsw i64 %i.qs, 3
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.qt
  %.not102319 = icmp eq i32 %i.qr, 0
  br i1 %.not102319, label %._crit_edge323, label %.lr.ph322

.lr.ph322:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  %i.qv = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.qy = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.qz = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.ra = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.rb = getelementptr inbounds nuw i8, ptr %17, i64 96 ; 2 uses
  %i.rc = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.rd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.re = getelementptr i8, ptr %i.rc, i64 -24
  %i.rf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.rg = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %17, i64 112 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %17, i64 80
  %i.rj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.rk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.rl = getelementptr i8, ptr %i.rj, i64 -24
  %i.rm = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.rn = getelementptr inbounds nuw i8, ptr %17, i64 128
  br label %bb.cx

._crit_edge323:                                   ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.cw, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.14)
          to label %bb.dn unwind label %bb.dy

bb.cx:                                            ; preds = %.lr.ph322, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %indvars.iv342 = phi i64 [ 0, %.lr.ph322 ], [ %indvars.iv.next343, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  %.065321 = phi ptr [ %i.qo, %.lr.ph322 ], [ %i.tq, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  %i.ro = load ptr, ptr %.065321, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %17)
          to label %bb.cy unwind label %bb.di

bb.cy:                                            ; preds = %bb.cx
  %i.rp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qv, ptr noundef nonnull @.str.13, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.dj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.cy
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1
  %i.rq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.qv, i64 noundef %indvars.iv342)
          to label %_ZNSolsEj.exit unwind label %bb.dj ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.rr = load ptr, ptr %0, align 8, !tbaa !286, !nonnull !68, !align !69
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
  call void @llvm.experimental.noalias.scope.decl(metadata !438)
  store ptr %i.qw, ptr %19, align 8, !tbaa !252, !alias.scope !439
  store i64 0, ptr %i.qx, align 8, !tbaa !255, !alias.scope !439
end_hunk_0
