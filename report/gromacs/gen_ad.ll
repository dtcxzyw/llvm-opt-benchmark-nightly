Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gen_ad?download=true
inline.NumInlined: 1525
inline.NumDeleted: 549
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES3_P7t_atomsbb:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.034.0.lcssa.i.i.i.i.i.i, i64 112
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i.i.i
  %.sroa.034.1.i.i.i.i.i.i = phi ptr [ %i.cf, %bb.o ], [ %.sroa.034.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.cg = invoke fastcc noundef zeroext i1 @_ZL24is_dihedral_on_same_bondRK17InteractionOfTypeS1_(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0107.0128, ptr noundef nonnull align 8 dereferenceable(105) %.sroa.034.1.i.i.i.i.i.i)
          to label %.noexc30 unwind label %.loopexit.split-lp122

.noexc30:                                         ; preds = %bb.p
  br i1 %i.cg, label %.noexc.thread, label %bb.q

bb.q:                                             ; preds = %.noexc30
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.034.1.i.i.i.i.i.i, i64 112
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i.i.i
  %.sroa.034.2.i.i.i.i.i.i = phi ptr [ %i.ch, %bb.q ], [ %.sroa.034.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.ci = invoke fastcc noundef zeroext i1 @_ZL24is_dihedral_on_same_bondRK17InteractionOfTypeS1_(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0107.0128, ptr noundef nonnull align 8 dereferenceable(105) %.sroa.034.2.i.i.i.i.i.i)
          to label %.noexc31 unwind label %.loopexit.split-lp122

.noexc31:                                         ; preds = %bb.r
  %spec.select.i.i.i.i.i.i = select i1 %i.ci, ptr %.sroa.034.2.i.i.i.i.i.i, ptr %i.d
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %.noexc70, %.noexc78, %.noexc87, %.noexc28, %.noexc27, %.noexc26, %.noexc, %.noexc31, %.noexc30, %.noexc29
  %.sroa.010.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.034.1.i.i.i.i.i.i, %.noexc30 ], [ %spec.select.i.i.i.i.i.i, %.noexc31 ], [ %.sroa.034.0.lcssa.i.i.i.i.i.i, %.noexc29 ], [ %i.bd, %.noexc70 ], [ %.sroa.034.042.i.i.i.i.i.i, %.noexc87 ], [ %i.by, %.noexc28 ], [ %i.bd, %.noexc27 ], [ %i.ai, %.noexc26 ], [ %.sroa.034.042.i.i.i.i.i.i, %.noexc ], [ %i.ai, %.noexc78 ]
  %.not = icmp eq ptr %4, %.sroa.010.0.in.sroa.speculated.i.i.i.i.i.i
  br i1 %.not, label %.thread, label %bb.s

bb.s:                                             ; preds = %.noexc.thread
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0107.0128, i64 112
  br label %.backedge

.backedge:                                        ; preds = %bb.bn, %_ZL7n_hydroN3gmx8ArrayRefIKiEEPPPc.exit66, %.noexc47, %bb.as, %.noexc34, %bb.v, %bb.s
  %.sroa.0107.0.be = phi ptr [ %i.cj, %bb.s ], [ %i.ck, %.noexc34 ], [ %i.ck, %bb.v ], [ %.sroa.010.0.in.sroa.speculated.i.i.i, %bb.as ], [ %.sroa.010.0.in.sroa.speculated.i.i.i, %.noexc47 ], [ %.sroa.010.0.in.sroa.speculated.i.i.i, %_ZL7n_hydroN3gmx8ArrayRefIKiEEPPPc.exit66 ], [ %.sroa.010.0.in.sroa.speculated.i.i.i, %bb.bn ] ; 2 uses
  %.not118 = icmp eq ptr %.sroa.0107.0.be, %2
  br i1 %.not118, label %._crit_edge, label %bb.b, !llvm.loop !172

.thread:                                          ; preds = %._crit_edge.i.i.i.i.i.i, %.noexc.thread, %bb.b
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0107.0128, i64 112 ; 7 uses
  br i1 %6, label %bb.t, label %bb.x

bb.t:                                             ; preds = %.thread
  %i.cl = load ptr, ptr %i.j, align 8, !tbaa !74  ; 3 uses
  %i.cm = load ptr, ptr %i.k, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN17InteractionOfTypeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(105) %i.cl, ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0107.0128)
          to label %.noexc34 unwind label %bb.w

.noexc34:                                         ; preds = %bb.u
  %i.cn = load ptr, ptr %i.j, align 8, !tbaa !74
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 112
  store ptr %i.co, ptr %i.j, align 8, !tbaa !74
  br label %.backedge

bb.v:                                             ; preds = %bb.t
  invoke void @_ZNSt6vectorI17InteractionOfTypeSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.cl, ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0107.0128)
          to label %.backedge unwind label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.x:                                             ; preds = %.thread
  %i.cq = ptrtoint ptr %i.ck to i64
  %i.cr = sub i64 %i.h, %i.cq                     ; 2 uses
  %i.cs = sdiv exact i64 %i.cr, 112
  %i.ct = ashr i64 %i.cs, 2                       ; 2 uses
  %i.cu = icmp sgt i64 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.x, %bb.ab
  %.042.i.i.i = phi i64 [ %i.dp, %bb.ab ], [ %i.ct, %bb.x ] ; 2 uses
  %.sroa.033.041.i.i.i = phi ptr [ %i.do, %bb.ab ], [ %i.ck, %bb.x ] ; 11 uses
  %i.cv = invoke fastcc noundef zeroext i1 @_ZL24is_dihedral_on_same_bondRK17InteractionOfTypeS1_(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0107.0128, ptr noundef nonnull align 8 dereferenceable(105) %.sroa.033.041.i.i.i)
          to label %.noexc38 unwind label %.loopexit120

.noexc38:                                         ; preds = %.lr.ph.i.i.i
  br i1 %i.cv, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.i.i.i", label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK17InteractionOfTypeEEZL9clean_dihNS0_8ArrayRefIS3_EES6_P7t_atomsbbE3$_1ET_SA_SA_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.i.i.i": ; preds = %.noexc38
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.033.041.i.i.i, i64 68
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !168
  %i.cy = fcmp oeq float %i.cx, 0.000000e+00
  br i1 %i.cy, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK17InteractionOfTypeEEZL9clean_dihNS0_8ArrayRefIS3_EES6_P7t_atomsbbE3$_1ET_SA_SA_T0_.exit", label %bb.y

bb.y:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.i.i.i"
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.033.041.i.i.i, i64 112 ; 3 uses
  %i.da = invoke fastcc noundef zeroext i1 @_ZL24is_dihedral_on_same_bondRK17InteractionOfTypeS1_(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0107.0128, ptr noundef nonnull align 8 dereferenceable(105) %i.cz)
          to label %.noexc39 unwind label %.loopexit120

.noexc39:                                         ; preds = %bb.y
  br i1 %i.da, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit24.i.i.i", label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK17InteractionOfTypeEEZL9clean_dihNS0_8ArrayRefIS3_EES6_P7t_atomsbbE3$_1ET_SA_SA_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit24.i.i.i": ; preds = %.noexc39
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.033.041.i.i.i, i64 180
  %i.dc = load float, ptr %i.db, align 4, !tbaa !168
  %i.dd = fcmp oeq float %i.dc, 0.000000e+00
  br i1 %i.dd, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK17InteractionOfTypeEEZL9clean_dihNS0_8ArrayRefIS3_EES6_P7t_atomsbbE3$_1ET_SA_SA_T0_.exit", label %bb.z

bb.z:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit24.i.i.i"
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.033.041.i.i.i, i64 224 ; 3 uses
  %i.df = invoke fastcc noundef zeroext i1 @_ZL24is_dihedral_on_same_bondRK17InteractionOfTypeS1_(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0107.0128, ptr noundef nonnull align 8 dereferenceable(105) %i.de)
          to label %.noexc40 unwind label %.loopexit120

.noexc40:                                         ; preds = %bb.z
  br i1 %i.df, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit25.i.i.i", label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK17InteractionOfTypeEEZL9clean_dihNS0_8ArrayRefIS3_EES6_P7t_atomsbbE3$_1ET_SA_SA_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit25.i.i.i": ; preds = %.noexc40
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.033.041.i.i.i, i64 292
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !168
  %i.di = fcmp oeq float %i.dh, 0.000000e+00
  br i1 %i.di, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK17InteractionOfTypeEEZL9clean_dihNS0_8ArrayRefIS3_EES6_P7t_atomsbbE3$_1ET_SA_SA_T0_.exit", label %bb.aa

bb.aa:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit25.i.i.i"
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.033.041.i.i.i, i64 336 ; 3 uses
  %i.dk = invoke fastcc noundef zeroext i1 @_ZL24is_dihedral_on_same_bondRK17InteractionOfTypeS1_(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0107.0128, ptr noundef nonnull align 8 dereferenceable(105) %i.dj)
          to label %.noexc41 unwind label %.loopexit120

.noexc41:                                         ; preds = %bb.aa
  br i1 %i.dk, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit26.i.i.i", label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK17InteractionOfTypeEEZL9clean_dihNS0_8ArrayRefIS3_EES6_P7t_atomsbbE3$_1ET_SA_SA_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit26.i.i.i": ; preds = %.noexc41
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.033.041.i.i.i, i64 404
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !168
  %i.dn = fcmp oeq float %i.dm, 0.000000e+00
  br i1 %i.dn, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK17InteractionOfTypeEEZL9clean_dihNS0_8ArrayRefIS3_EES6_P7t_atomsbbE3$_1ET_SA_SA_T0_.exit", label %bb.ab

bb.ab:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit26.i.i.i"
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.033.041.i.i.i, i64 448 ; 3 uses
  %i.dp = add nsw i64 %.042.i.i.i, -1
  %i.dq = icmp sgt i64 %.042.i.i.i, 1
  br i1 %i.dq, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !173

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.ab
  %.pre.i.i.i = ptrtoint ptr %i.do to i64
  %.pre43.i.i.i = sub i64 %i.h, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.x
  %.pre-phi44.i.i.i = phi i64 [ %.pre43.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.cr, %bb.x ]
  %.sroa.033.0.lcssa.i.i.i = phi ptr [ %i.do, %._crit_edge.loopexit.i.i.i ], [ %i.ck, %bb.x ] ; 7 uses
  %i.dr = sdiv exact i64 %.pre-phi44.i.i.i, 112
  switch i64 %i.dr, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK17InteractionOfTypeEEZL9clean_dihNS0_8ArrayRefIS3_EES6_P7t_atomsbbE3$_1ET_SA_SA_T0_.exit" [
    i64 3, label %bb.ac
    i64 2, label %bb.ae
    i64 1, label %bb.ag
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.i
  %i.ds = invoke fastcc noundef zeroext i1 @_ZL24is_dihedral_on_same_bondRK17InteractionOfTypeS1_(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0107.0128, ptr noundef nonnull align 8 dereferenceable(105) %.sroa.033.0.lcssa.i.i.i)
          to label %.noexc42 unwind label %.loopexit.split-lp

.noexc42:                                         ; preds = %bb.ac
  br i1 %i.ds, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit27.i.i.i", label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK17InteractionOfTypeEEZL9clean_dihNS0_8ArrayRefIS3_EES6_P7t_atomsbbE3$_1ET_SA_SA_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit27.i.i.i": ; preds = %.noexc42
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.033.0.lcssa.i.i.i, i64 68
  %i.du = load float, ptr %i.dt, align 4, !tbaa !168
  %i.dv = fcmp oeq float %i.du, 0.000000e+00
  br i1 %i.dv, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK17InteractionOfTypeEEZL9clean_dihNS0_8ArrayRefIS3_EES6_P7t_atomsbbE3$_1ET_SA_SA_T0_.exit", label %bb.ad

bb.ad:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit27.i.i.i"
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.033.0.lcssa.i.i.i, i64 112
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.i.i.i
  %.sroa.033.1.i.i.i = phi ptr [ %i.dw, %bb.ad ], [ %.sroa.033.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 5 uses
  %i.dx = invoke fastcc noundef zeroext i1 @_ZL24is_dihedral_on_same_bondRK17InteractionOfTypeS1_(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0107.0128, ptr noundef nonnull align 8 dereferenceable(105) %.sroa.033.1.i.i.i)
          to label %.noexc43 unwind label %.loopexit.split-lp

.noexc43:                                         ; preds = %bb.ae
  br i1 %i.dx, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit28.i.i.i", label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK17InteractionOfTypeEEZL9clean_dihNS0_8ArrayRefIS3_EES6_P7t_atomsbbE3$_1ET_SA_SA_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit28.i.i.i": ; preds = %.noexc43
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i.i.i, i64 68
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !168
  %i.ea = fcmp oeq float %i.dz, 0.000000e+00
  br i1 %i.ea, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK17InteractionOfTypeEEZL9clean_dihNS0_8ArrayRefIS3_EES6_P7t_atomsbbE3$_1ET_SA_SA_T0_.exit", label %bb.af

bb.af:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit28.i.i.i"
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i.i.i, i64 112
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge.i.i.i
  %.sroa.033.2.i.i.i = phi ptr [ %i.eb, %bb.af ], [ %.sroa.033.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 4 uses
  %i.ec = invoke fastcc noundef zeroext i1 @_ZL24is_dihedral_on_same_bondRK17InteractionOfTypeS1_(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0107.0128, ptr noundef nonnull align 8 dereferenceable(105) %.sroa.033.2.i.i.i)
          to label %.noexc44 unwind label %.loopexit.split-lp

.noexc44:                                         ; preds = %bb.ag
  br i1 %i.ec, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit29.i.i.i", label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK17InteractionOfTypeEEZL9clean_dihNS0_8ArrayRefIS3_EES6_P7t_atomsbbE3$_1ET_SA_SA_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit29.i.i.i": ; preds = %.noexc44
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.033.2.i.i.i, i64 68
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !168
  %i.ef = fcmp oeq float %i.ee, 0.000000e+00
  br i1 %i.ef, label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK17InteractionOfTypeEEZL9clean_dihNS0_8ArrayRefIS3_EES6_P7t_atomsbbE3$_1ET_SA_SA_T0_.exit", label %8

8:                                                ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit29.i.i.i"
  br label %"_ZSt7find_ifIN3gmx12ArrayRefIterIK17InteractionOfTypeEEZL9clean_dihNS0_8ArrayRefIS3_EES6_P7t_atomsbbE3$_1ET_SA_SA_T0_.exit"

"_ZSt7find_ifIN3gmx12ArrayRefIterIK17InteractionOfTypeEEZL9clean_dihNS0_8ArrayRefIS3_EES6_P7t_atomsbbE3$_1ET_SA_SA_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit26.i.i.i", %.noexc41, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit25.i.i.i", %.noexc40, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit24.i.i.i", %.noexc39, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.i.i.i", %.noexc38, %8, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit29.i.i.i", %.noexc44, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit28.i.i.i", %.noexc43, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit27.i.i.i", %.noexc42, %._crit_edge.i.i.i
  %.sroa.010.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.033.1.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit28.i.i.i" ], [ %2, %._crit_edge.i.i.i ], [ %.sroa.033.1.i.i.i, %.noexc43 ], [ %.sroa.033.0.lcssa.i.i.i, %.noexc42 ], [ %.sroa.033.2.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit29.i.i.i" ], [ %.sroa.033.2.i.i.i, %.noexc44 ], [ %.sroa.033.0.lcssa.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit27.i.i.i" ], [ %2, %8 ], [ %.sroa.033.041.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.i.i.i" ], [ %i.cz, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit24.i.i.i" ], [ %i.de, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit25.i.i.i" ], [ %i.dj, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_1EclINS2_12ArrayRefIterIS5_EEEEbT_.exit26.i.i.i" ], [ %.sroa.033.041.i.i.i, %.noexc38 ], [ %i.cz, %.noexc39 ], [ %i.de, %.noexc40 ], [ %i.dj, %.noexc41 ] ; 7 uses
  %i.eg = icmp eq ptr %.sroa.0107.0128, %.sroa.010.0.in.sroa.speculated.i.i.i
  %.not11.i.i = icmp eq ptr %i.ck, %.sroa.010.0.in.sroa.speculated.i.i.i
  %or.cond117 = or i1 %i.eg, %.not11.i.i
  br i1 %or.cond117, label %.loopexit119, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZSt7find_ifIN3gmx12ArrayRefIterIK17InteractionOfTypeEEZL9clean_dihNS0_8ArrayRefIS3_EES6_P7t_atomsbbE3$_1ET_SA_SA_T0_.exit"
  %.val.val.i.i = load ptr, ptr %i.i, align 8, !tbaa !69 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_0EclINS2_12ArrayRefIterIS5_EESD_EEbT_T0_.exit.i.i", %.lr.ph.i.i
  %i.eh = phi ptr [ %i.ck, %.lr.ph.i.i ], [ %i.gt, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_0EclINS2_12ArrayRefIterIS5_EESD_EEbT_T0_.exit.i.i" ] ; 4 uses
  %.sroa.07.013.i.i = phi ptr [ %.sroa.0107.0128, %.lr.ph.i.i ], [ %spec.select.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_0EclINS2_12ArrayRefIterIS5_EESD_EEbT_T0_.exit.i.i" ] ; 3 uses
  %.sroa.010.012.i.i = phi ptr [ %.sroa.0107.0128, %.lr.ph.i.i ], [ %i.eh, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_0EclINS2_12ArrayRefIterIS5_EESD_EEbT_T0_.exit.i.i" ]
  %.val1.i.i.i = load ptr, ptr %i.eh, align 8, !tbaa !87 ; 2 uses
  %i.ei = getelementptr i8, ptr %.sroa.010.012.i.i, i64 120
  %.val2.i.i.i = load ptr, ptr %i.ei, align 8, !tbaa !144
  %.val3.i.i.i = load ptr, ptr %.sroa.07.013.i.i, align 8 ; 2 uses
  %i.ej = getelementptr i8, ptr %.sroa.07.013.i.i, i64 8
  %.val4.i.i.i = load ptr, ptr %i.ej, align 8
  %i.ek = ptrtoint ptr %.val2.i.i.i to i64        ; 2 uses
  %i.el = ptrtoint ptr %.val1.i.i.i to i64
  %i.em = sub i64 %i.el, %i.ek
  %i.en = icmp slt i64 %i.em, 0
  br i1 %i.en, label %.lr.ph.i.i.i.i.i, label %_ZL7n_hydroN3gmx8ArrayRefIKiEEPPPc.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ah, %bb.al
  %.022.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i, %bb.al ], [ 0, %bb.ah ] ; 3 uses
  %.sroa.0.021.i.i.i.i.i = phi ptr [ %i.fk, %bb.al ], [ %.val1.i.i.i, %bb.ah ] ; 2 uses
  %i.eo = load i32, ptr %.sroa.0.021.i.i.i.i.i, align 4, !tbaa !41
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %.val.val.i.i, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !70
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !72 ; 3 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !25
  %i.eu = sext i8 %i.et to i32
  %i.ev = tail call i32 @toupper(i32 noundef %i.eu) #27
  %sext.i.i.i.i.i = shl i32 %i.ev, 24             ; 2 uses
  %i.ew = icmp eq i32 %sext.i.i.i.i.i, 1207959552
  br i1 %i.ew, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ex = add nsw i32 %.022.i.i.i.i.i, 1
  br label %bb.al

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ey = ashr exact i32 %sext.i.i.i.i.i, 24
  %i.ez = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.es) #27
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = icmp sgt i32 %i.fa, 1
  %i.fc = add nsw i32 %i.ey, -48
  %i.fd = icmp ult i32 %i.fc, 10
  %or.cond5.i.i.i.i.i = select i1 %i.fb, i1 %i.fd, i1 false
  br i1 %or.cond5.i.i.i.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fe = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !25
  %i.fg = sext i8 %i.ff to i32
  %i.fh = tail call i32 @toupper(i32 noundef %i.fg) #27
  %sext17.mask.i.i.i.i.i = and i32 %i.fh, 255
  %i.fi = icmp eq i32 %sext17.mask.i.i.i.i.i, 72
  %i.fj = zext i1 %i.fi to i32
  %spec.select.i.i.i.i.i = add nsw i32 %.022.i.i.i.i.i, %i.fj
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.2.i.i.i.i.i = phi i32 [ %i.ex, %bb.ai ], [ %spec.select.i.i.i.i.i, %bb.ak ], [ %.022.i.i.i.i.i, %bb.aj ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i.i.i, i64 12 ; 2 uses
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = sub i64 %i.fl, %i.ek
  %i.fn = icmp slt i64 %i.fm, 0
  br i1 %i.fn, label %.lr.ph.i.i.i.i.i, label %_ZL7n_hydroN3gmx8ArrayRefIKiEEPPPc.exit.i.i.i.i, !llvm.loop !174

_ZL7n_hydroN3gmx8ArrayRefIKiEEPPPc.exit.i.i.i.i:  ; preds = %bb.al, %bb.ah
  %.0.lcssa.i.i.i.i.i = phi i32 [ 0, %bb.ah ], [ %.2.i.i.i.i.i, %bb.al ]
  %i.fo = ptrtoint ptr %.val4.i.i.i to i64        ; 2 uses
  %i.fp = ptrtoint ptr %.val3.i.i.i to i64
  %i.fq = sub i64 %i.fp, %i.fo
  %i.fr = icmp slt i64 %i.fq, 0
  br i1 %i.fr, label %.lr.ph.i8.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_0EclINS2_12ArrayRefIterIS5_EESD_EEbT_T0_.exit.i.i"

.lr.ph.i8.i.i.i.i:                                ; preds = %_ZL7n_hydroN3gmx8ArrayRefIKiEEPPPc.exit.i.i.i.i, %bb.ap
  %.022.i9.i.i.i.i = phi i32 [ %.2.i13.i.i.i.i, %bb.ap ], [ 0, %_ZL7n_hydroN3gmx8ArrayRefIKiEEPPPc.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.021.i10.i.i.i.i = phi ptr [ %i.go, %bb.ap ], [ %.val3.i.i.i, %_ZL7n_hydroN3gmx8ArrayRefIKiEEPPPc.exit.i.i.i.i ] ; 2 uses
  %i.fs = load i32, ptr %.sroa.0.021.i10.i.i.i.i, align 4, !tbaa !41
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %.val.val.i.i, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !70
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !72 ; 3 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !25
  %i.fy = sext i8 %i.fx to i32
  %i.fz = tail call i32 @toupper(i32 noundef %i.fy) #27
  %sext.i11.i.i.i.i = shl i32 %i.fz, 24           ; 2 uses
  %i.ga = icmp eq i32 %sext.i11.i.i.i.i, 1207959552
  br i1 %i.ga, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph.i8.i.i.i.i
  %i.gb = add nsw i32 %.022.i9.i.i.i.i, 1
  br label %bb.ap

bb.an:                                            ; preds = %.lr.ph.i8.i.i.i.i
  %i.gc = ashr exact i32 %sext.i11.i.i.i.i, 24
  %i.gd = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fw) #27
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = icmp sgt i32 %i.ge, 1
  %i.gg = add nsw i32 %i.gc, -48
  %i.gh = icmp ult i32 %i.gg, 10
  %or.cond5.i12.i.i.i.i = select i1 %i.gf, i1 %i.gh, i1 false
  br i1 %or.cond5.i12.i.i.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fw, i64 1
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !25
  %i.gk = sext i8 %i.gj to i32
  %i.gl = tail call i32 @toupper(i32 noundef %i.gk) #27
  %sext17.mask.i14.i.i.i.i = and i32 %i.gl, 255
  %i.gm = icmp eq i32 %sext17.mask.i14.i.i.i.i, 72
  %i.gn = zext i1 %i.gm to i32
  %spec.select.i15.i.i.i.i = add nsw i32 %.022.i9.i.i.i.i, %i.gn
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %.2.i13.i.i.i.i = phi i32 [ %i.gb, %bb.am ], [ %spec.select.i15.i.i.i.i, %bb.ao ], [ %.022.i9.i.i.i.i, %bb.an ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i10.i.i.i.i, i64 12 ; 2 uses
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = sub i64 %i.gp, %i.fo
  %i.gr = icmp slt i64 %i.gq, 0
  br i1 %i.gr, label %.lr.ph.i8.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_0EclINS2_12ArrayRefIterIS5_EESD_EEbT_T0_.exit.i.i", !llvm.loop !174

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_0EclINS2_12ArrayRefIterIS5_EESD_EEbT_T0_.exit.i.i": ; preds = %bb.ap, %_ZL7n_hydroN3gmx8ArrayRefIKiEEPPPc.exit.i.i.i.i
  %.0.lcssa.i7.i.i.i.i = phi i32 [ 0, %_ZL7n_hydroN3gmx8ArrayRefIKiEEPPPc.exit.i.i.i.i ], [ %.2.i13.i.i.i.i, %bb.ap ]
  %i.gs = icmp slt i32 %.0.lcssa.i.i.i.i.i, %.0.lcssa.i7.i.i.i.i
  %spec.select.i.i = select i1 %i.gs, ptr %i.eh, ptr %.sroa.07.013.i.i ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.eh, i64 112 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gt, %.sroa.010.0.in.sroa.speculated.i.i.i
  br i1 %.not.i.i, label %.loopexit119, label %bb.ah, !llvm.loop !175

.loopexit119:                                     ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_0EclINS2_12ArrayRefIterIS5_EESD_EEbT_T0_.exit.i.i", %"_ZSt7find_ifIN3gmx12ArrayRefIterIK17InteractionOfTypeEEZL9clean_dihNS0_8ArrayRefIS3_EES6_P7t_atomsbbE3$_1ET_SA_SA_T0_.exit"
  %.sroa.07.2.i.i = phi ptr [ %.sroa.0107.0128, %"_ZSt7find_ifIN3gmx12ArrayRefIterIK17InteractionOfTypeEEZL9clean_dihNS0_8ArrayRefIS3_EES6_P7t_atomsbbE3$_1ET_SA_SA_T0_.exit" ], [ %spec.select.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL9clean_dihN3gmx8ArrayRefIK17InteractionOfTypeEES6_P7t_atomsbbE3$_0EclINS2_12ArrayRefIterIS5_EESD_EEbT_T0_.exit.i.i" ] ; 8 uses
  %i.gu = load float, ptr %i.l, align 4, !tbaa !168
  %i.gv = fcmp oeq float %i.gu, 0.000000e+00
  %i.gw = load ptr, ptr %i.j, align 8, !tbaa !74  ; 5 uses
  %i.gx = load ptr, ptr %i.k, align 8, !tbaa !77
  %.not.i50 = icmp eq ptr %i.gw, %i.gx            ; 2 uses
  br i1 %i.gv, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %.loopexit119
  br i1 %.not.i50, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN17InteractionOfTypeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(105) %i.gw, ptr noundef nonnull align 8 dereferenceable(105) %.sroa.07.2.i.i)
          to label %.noexc47 unwind label %bb.at

.noexc47:                                         ; preds = %bb.ar
  %i.gy = load ptr, ptr %i.j, align 8, !tbaa !74
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 112
  store ptr %i.gz, ptr %i.j, align 8, !tbaa !74
  br label %.backedge

bb.as:                                            ; preds = %bb.aq
  invoke void @_ZNSt6vectorI17InteractionOfTypeSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.gw, ptr noundef nonnull align 8 dereferenceable(105) %.sroa.07.2.i.i)
          to label %.backedge unwind label %bb.at

.loopexit120:                                     ; preds = %.lr.ph.i.i.i, %bb.y, %bb.z, %bb.aa
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.loopexit.split-lp:                               ; preds = %bb.ac, %bb.ae, %bb.ag
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.at:                                            ; preds = %bb.aw, %bb.av, %bb.as, %bb.ar, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.au:                                            ; preds = %.loopexit119
  br i1 %.not.i50, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN17InteractionOfTypeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(105) %i.gw, ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0107.0128)
          to label %.noexc52 unwind label %bb.at

.noexc52:                                         ; preds = %bb.av
  %i.hb = load ptr, ptr %i.j, align 8, !tbaa !74
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 112
  store ptr %i.hc, ptr %i.j, align 8, !tbaa !74
  br label %.noexc53

bb.aw:                                            ; preds = %bb.au
  invoke void @_ZNSt6vectorI17InteractionOfTypeSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.gw, ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0107.0128)
          to label %.noexc53 unwind label %bb.at

.noexc53:                                         ; preds = %bb.aw, %.noexc52
  %i.hd = load ptr, ptr %.sroa.07.2.i.i, align 8, !tbaa !87 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i.i, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !144
  %i.hg = ptrtoint ptr %i.hf to i64               ; 2 uses
end_hunk_0
