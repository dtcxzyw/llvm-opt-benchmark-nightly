Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/data_parallel_tree_learner?download=true
inline.NumInlined: 2212
inline.NumDeleted: 868
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN8LightGBM10ColSampler9GetByNodeEPKNS_4TreeEi:bb.a
  br i1 %.not18.i.i.i167, label %.critedge.i170, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i165
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i32, ptr %i.em, align 4, !tbaa !203 ; 2 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = urem i64 %i.eo, %i.dv
  %.not19.i.i.i168 = icmp eq i64 %i.ep, %i.dw
  br i1 %.not19.i.i.i168, label %bb.af, label %..loopexit_crit_edge21.i.i.i169, !llvm.loop !4

..loopexit_crit_edge21.i.i.i169:                  ; preds = %bb.ag
  br label %.critedge.i170, !llvm.loop !4

.critedge.i170:                                   ; preds = %.lr.ph.i.i.i165, %..loopexit_crit_edge21.i.i.i169, %bb.ad, %.thread34.i163
  %i.eq = phi i64 [ %i.ef, %bb.ad ], [ %i.dw, %.thread34.i163 ], [ %i.dw, %..loopexit_crit_edge21.i.i.i169 ], [ %i.dw, %.lr.ph.i.i.i165 ]
  %i.er = phi i64 [ %i.ed, %bb.ad ], [ %i.du, %.thread34.i163 ], [ %i.du, %..loopexit_crit_edge21.i.i.i169 ], [ %i.du, %.lr.ph.i.i.i165 ]
  %i.es = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33
          to label %.noexc179 unwind label %bb.ab ; 4 uses

.noexc179:                                        ; preds = %.critedge.i170
  store ptr null, ptr %i.es, align 8, !tbaa !311
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i32, ptr %i.dr, align 4, !tbaa !203
  store i32 %i.eu, ptr %i.et, align 8, !tbaa !203
  %i.ev = invoke ptr @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIiLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %6, i64 noundef %i.eq, i64 noundef %i.er, ptr noundef nonnull %i.es, i64 noundef 1)
          to label %.noexc75 unwind label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i171 ; 0 uses

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i171: ; preds = %.noexc179
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef 16) #31
  br label %.body

.noexc75:                                         ; preds = %bb.af, %bb.ac, %.noexc179, %bb.ae
  %i.ex = load ptr, ptr %.sroa.03.07.i.i.i73, align 8, !tbaa !311 ; 2 uses
  %.not.i.i.i74 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i74, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, label %.lr.ph.i.i.i72, !llvm.loop !390

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread: ; preds = %bb.x, %.lr.ph.split, %bb.u, %.noexc75, %.lr.ph.i.i.i.i.i, %bb.v, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit, %..loopexit_crit_edge21.i.i.i.i.i
  %.pr252 = load ptr, ptr %i.ap, align 8, !tbaa !315 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.pr252, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i.i ], [ %.pr252, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread ] ; 2 uses
  %i.ey = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !311 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #31
  %.not.i.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %.split.us, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread
  %i.ez = load ptr, ptr %7, align 8, !tbaa !309
  %i.fa = load i64, ptr %i.ao, align 8, !tbaa !310
  %i.fb = shl i64 %i.fa, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ez, i8 0, i64 %i.fb, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.fc = load ptr, ptr %7, align 8, !tbaa !309   ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.as
  br i1 %i.fd, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.fe = load i64, ptr %i.ao, align 8, !tbaa !310
  %i.ff = shl i64 %i.fe, 3
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #31
  br label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0221.0286, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.fg, %i.an
  br i1 %.not, label %._crit_edge, label %bb.l

.body:                                            ; preds = %bb.ab, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i171, %bb.t, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i
  %.pn = phi { ptr, i32 } [ %i.cj, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i ], [ %i.cm, %bb.t ], [ %i.dn, %bb.ab ], [ %i.ew, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i171 ]
  call void @_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #20
  br label %bb.ai

bb.ai:                                            ; preds = %.body, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cl, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ai ], [ %i.ax, %bb.k ] ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIiSaIiEED2Ev.exit78, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aa) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit78

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.i, %._crit_edge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.fh = load ptr, ptr %1, align 8, !tbaa !316
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 80
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !400 ; 3 uses
  %i.fk = sext i32 %i.fj to i64                   ; 3 uses
  %i.fl = icmp slt i32 %i.fj, 0
  br i1 %i.fl, label %bb.al, label %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #32
          to label %.noexc80 unwind label %bb.as

.noexc80:                                         ; preds = %bb.al
  unreachable

_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %.not.i.i.i.i79 = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i.i.i79, label %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i, label %bb.am

_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.an

bb.am:                                            ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %i.fn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fk) #33
          to label %.noexc81 unwind label %bb.as  ; 5 uses

.noexc81:                                         ; preds = %bb.am
  store ptr %i.fn, ptr %8, align 16, !tbaa !225
  %i.fo = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !401
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fk ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.fp, ptr %i.fq, align 16, !tbaa !281
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fn, i8 0, i64 %i.fk, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %.noexc81, %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i
  %i.fr = phi ptr [ null, %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i ], [ %i.fn, %.noexc81 ] ; 2 uses
  %i.fs = phi ptr [ %i.fm, %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i ], [ %i.fo, %.noexc81 ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i ], [ %i.fp, %.noexc81 ] ; 3 uses
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.fs, align 8, !tbaa !401
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !402 ; 3 uses
  %i.fv = fcmp ult double %i.fu, 1.000000e+00
  br i1 %i.fv, label %bb.ax, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fw = load ptr, ptr %i.m, align 8, !tbaa !394
  %i.fx = load ptr, ptr %i.o, align 8, !tbaa !394
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.fz = load ptr, ptr %1, align 8, !tbaa !316
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 80
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !400 ; 3 uses
  %i.gc = sext i32 %i.gb to i64                   ; 3 uses
  %i.gd = icmp slt i32 %i.gb, 0
  br i1 %i.gd, label %bb.aq, label %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i82

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #32
          to label %.noexc86 unwind label %bb.at

.noexc86:                                         ; preds = %bb.aq
  unreachable

_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i82: ; preds = %bb.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i83 = icmp eq i32 %i.gb, 0
  br i1 %.not.i.i.i.i83, label %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i85, label %bb.ar

_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i85: ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i82
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.cy

bb.ar:                                            ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i82
  %i.gf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #33
          to label %.noexc87 unwind label %bb.at  ; 4 uses

.noexc87:                                         ; preds = %bb.ar
  store ptr %i.gf, ptr %0, align 8, !tbaa !225
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !401
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gc ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !281
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gf, i8 1, i64 %i.gc, i1 false)
  %.pr.pre = load ptr, ptr %8, align 16, !tbaa !225
  br label %bb.cy

bb.as:                                            ; preds = %bb.am, %bb.al
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit157

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.au:                                            ; preds = %bb.ao
  %i.gl = load ptr, ptr %i.j, align 8, !tbaa !315 ; 2 uses
  %.not255288 = icmp eq ptr %i.gl, null
  %i.gm = insertelement <2 x ptr> poison, ptr %i.fr, i64 0
  %i.gn = insertelement <2 x ptr> %i.gm, ptr %.0.i.i.i.i.i.i.i, i64 1
  br i1 %.not255288, label %._crit_edge292, label %.lr.ph291

._crit_edge292.loopexit:                          ; preds = %bb.aw
  %i.go = load <2 x ptr>, ptr %8, align 16, !tbaa !403
  %.phi.trans.insert314 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.pre315 = load ptr, ptr %.phi.trans.insert314, align 16, !tbaa !281
  br label %._crit_edge292

._crit_edge292:                                   ; preds = %._crit_edge292.loopexit, %bb.au
  %i.gp = phi ptr [ %.pre315, %._crit_edge292.loopexit ], [ %.0.i.i.i.i.i.i.i, %bb.au ]
  %i.gq = phi <2 x ptr> [ %i.go, %._crit_edge292.loopexit ], [ %i.gn, %bb.au ]
  store <2 x ptr> %i.gq, ptr %0, align 8, !tbaa !403
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gp, ptr %i.gr, align 8, !tbaa !281
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

.lr.ph291:                                        ; preds = %bb.au, %bb.aw
  %.sroa.0207.0289.a = phi ptr [ %i.hb, %bb.aw ], [ %i.gl, %bb.au ] ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.0207.0289.a, i64 8
  %14 = load i32, ptr %13, align 4, !tbaa !203
  %15 = load ptr, ptr %1, align 8, !tbaa !316
  %i.gs = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.gt = sext i32 %14 to i64
  %i.gu = load ptr, ptr %i.gs, align 8, !tbaa !178
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.gt
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !203 ; 2 uses
  %i.gx = icmp sgt i32 %i.gw, -1
  br i1 %i.gx, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph291
  %i.gy = zext nneg i32 %i.gw to i64
  %i.gz = load ptr, ptr %8, align 16, !tbaa !225
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gy
  store i8 1, ptr %i.ha, align 1, !tbaa !226
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph291
  %i.hb = load ptr, ptr %.sroa.0207.0289.a, align 8, !tbaa !311 ; 2 uses
  %.not255 = icmp eq ptr %i.hb, null
  br i1 %.not255, label %._crit_edge292.loopexit, label %.lr.ph291

bb.ax:                                            ; preds = %bb.an
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hd = load i8, ptr %i.hc, align 8, !tbaa !404, !range !154, !noundef !155
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %bb.ay, label %bb.bx

bb.ay:                                            ; preds = %bb.ax
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !177 ; 3 uses
  %i.hi = load ptr, ptr %i.hf, align 8, !tbaa !178 ; 3 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = ptrtoint ptr %i.hi to i64               ; 2 uses
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = ashr exact i64 %i.hl, 2                 ; 2 uses
  %i.hn = trunc i64 %i.hm to i32
  %.sroa.speculated5.i = call i32 @llvm.smin.i32(i32 %i.hn, i32 1)
  %i.ho = uitofp i64 %i.hm to double
  %i.hp = fmul double %i.fu, %i.ho
  %i.hq = fadd double %i.hp, 5.000000e-01
  %i.hr = fptosi double %i.hq to i32
  %.sroa.speculated.i = call noundef i32 @llvm.smax.i32(i32 %.sroa.speculated5.i, i32 %i.hr) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.hs = load ptr, ptr %i.m, align 8, !tbaa !394
  %i.ht = load ptr, ptr %i.o, align 8, !tbaa !394
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %bb.bk, label %.preheader

.preheader:                                       ; preds = %bb.ay
  %.not257297 = icmp eq ptr %i.hi, %i.hh
  br i1 %.not257297, label %._crit_edge300, label %.lr.ph299

.lr.ph299:                                        ; preds = %.preheader
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.hw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.hx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.az

._crit_edge300.loopexit:                          ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.hz = ptrtoint ptr %i.jz to i64
  %i.ia = ptrtoint ptr %i.jx to i64
  br label %._crit_edge300

._crit_edge300:                                   ; preds = %._crit_edge300.loopexit, %.preheader
  %.pre320 = phi i64 [ %i.ia, %._crit_edge300.loopexit ], [ 0, %.preheader ] ; 2 uses
  %i.ib = phi i64 [ %i.hz, %._crit_edge300.loopexit ], [ 0, %.preheader ]
  %i.ic = sub i64 %i.ib, %.pre320
  %i.id = lshr exact i64 %i.ic, 2
  %i.ie = trunc i64 %i.id to i32
  %.sroa.speculated194 = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i, i32 %i.ie)
  br label %bb.bk

bb.az:                                            ; preds = %.lr.ph299, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.if = phi ptr [ null, %.lr.ph299 ], [ %i.jx, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 11 uses
  %i.ig = phi ptr [ null, %.lr.ph299 ], [ %i.jy, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %i.ih = phi ptr [ null, %.lr.ph299 ], [ %i.jz, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %.sroa.0200.0298 = phi ptr [ %i.hi, %.lr.ph299 ], [ %i.ka, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.ii = load i32, ptr %.sroa.0200.0298, align 4, !tbaa !203 ; 3 uses
  %i.ij = sext i32 %i.ii to i64
  %i.ik = load ptr, ptr %i.hv, align 8, !tbaa !178
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.ij
  %i.im = load i64, ptr %i.hw, align 8, !tbaa !312
  %.not.not.i.i.i89 = icmp eq i64 %i.im, 0
  %i.in = load i32, ptr %i.il, align 4            ; 4 uses
  br i1 %.not.not.i.i.i89, label %.preheader418, label %bb.bb

.preheader418:                                    ; preds = %bb.az, %bb.ba
  %.sroa.06.0.in.i.i.i99 = phi ptr [ %.sroa.06.0.i.i.i100, %bb.ba ], [ %i.j, %bb.az ]
  %.sroa.06.0.i.i.i100 = load ptr, ptr %.sroa.06.0.in.i.i.i99, align 8, !tbaa !311 ; 3 uses
  %.not.i.i.i101 = icmp eq ptr %.sroa.06.0.i.i.i100, null
  br i1 %.not.i.i.i101, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.ba

bb.ba:                                            ; preds = %.preheader418
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i100, i64 8
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !203
  %i.iq = icmp eq i32 %i.in, %i.ip
  br i1 %i.iq, label %.loopexit, label %.preheader418, !llvm.loop !391

bb.bb:                                            ; preds = %bb.az
  %i.ir = sext i32 %i.in to i64
  %i.is = load i64, ptr %i.i, align 8, !tbaa !310 ; 2 uses
  %i.it = urem i64 %i.ir, %i.is                   ; 2 uses
  %i.iu = load ptr, ptr %6, align 8, !tbaa !309
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.it
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i.i.i90 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i.i90, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !311 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !203
  %i.ja = icmp eq i32 %i.in, %i.iz
  br i1 %i.ja, label %.loopexit, label %.lr.ph.i.i.i.i.i91

bb.bd:                                            ; preds = %bb.be
  %i.jb = icmp eq i32 %i.in, %i.je
  br i1 %i.jb, label %.loopexit, label %.lr.ph.i.i.i.i.i91, !llvm.loop !392

.lr.ph.i.i.i.i.i91:                               ; preds = %bb.bc, %bb.bd
  %.020.i.i.i.i.i92 = phi ptr [ %i.jc, %bb.bd ], [ %i.ix, %bb.bc ]
  %i.jc = load ptr, ptr %.020.i.i.i.i.i92, align 8, !tbaa !311 ; 3 uses
  %.not18.i.i.i.i.i93 = icmp eq ptr %i.jc, null
  br i1 %.not18.i.i.i.i.i93, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i.i.i91
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !203 ; 2 uses
  %i.jf = sext i32 %i.je to i64
  %i.jg = urem i64 %i.jf, %i.is
  %.not19.i.i.i.i.i94 = icmp eq i64 %i.jg, %i.it
  br i1 %.not19.i.i.i.i.i94, label %bb.bd, label %..loopexit_crit_edge21.i.i.i.i.i95, !llvm.loop !392

..loopexit_crit_edge21.i.i.i.i.i95:               ; preds = %bb.be
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, !llvm.loop !392

.loopexit:                                        ; preds = %bb.bd, %bb.ba, %bb.bc
  %.not.i = icmp eq ptr %i.ih, %i.ig
  br i1 %.not.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.loopexit
  store i32 %i.ii, ptr %i.ih, align 4, !tbaa !203
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ih, i64 4 ; 2 uses
  store ptr %i.jh, ptr %i.hx, align 8, !tbaa !177
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.bg:                                            ; preds = %.loopexit
  %i.ji = ptrtoint ptr %i.ig to i64
  %i.jj = ptrtoint ptr %i.if to i64
  %i.jk = sub i64 %i.ji, %i.jj                    ; 6 uses
  %i.jl = icmp eq i64 %i.jk, 9223372036854775804
  br i1 %i.jl, label %bb.bh, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #32
          to label %.noexc104 unwind label %.loopexit.split-lp

.noexc104:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bg
  %i.jm = ashr exact i64 %i.jk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jm, i64 1)
  %i.jn = add nsw i64 %.sroa.speculated.i.i.i, %i.jm ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %i.jm
  %i.jp = call i64 @llvm.umin.i64(i64 %i.jn, i64 2305843009213693951)
  %i.jq = select i1 %i.jo, i64 2305843009213693951, i64 %i.jp ; 3 uses
  %.not.i.i.i103 = icmp ne i64 %i.jq, 0
  call void @llvm.assume(i1 %.not.i.i.i103)
  %i.jr = shl nuw nsw i64 %i.jq, 2
  %i.js = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jr) #33
          to label %.noexc105 unwind label %.loopexit260 ; 5 uses

.noexc105:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 %i.jk ; 2 uses
  store i32 %i.ii, ptr %i.jt, align 4, !tbaa !203
  %i.ju = icmp sgt i64 %i.jk, 0
  br i1 %i.ju, label %bb.bi, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.bi:                                            ; preds = %.noexc105
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.js, ptr align 4 %i.if, i64 %i.jk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.bi, %.noexc105
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.jk) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.bj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.js, ptr %9, align 8, !tbaa !178
  store ptr %i.jv, ptr %i.hx, align 8, !tbaa !177
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.jq ; 2 uses
  store ptr %i.jw, ptr %i.hy, align 8, !tbaa !202
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit260:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit.split-lp:                               ; preds = %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %.lr.ph.i.i.i.i.i91, %.preheader418, %bb.bb, %..loopexit_crit_edge21.i.i.i.i.i95, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.bf
  %i.jx = phi ptr [ %i.if, %.preheader418 ], [ %i.if, %bb.bf ], [ %i.if, %bb.bb ], [ %i.if, %..loopexit_crit_edge21.i.i.i.i.i95 ], [ %i.js, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.if, %.lr.ph.i.i.i.i.i91 ] ; 2 uses
  %i.jy = phi ptr [ %i.ig, %.preheader418 ], [ %i.ig, %bb.bf ], [ %i.ig, %bb.bb ], [ %i.ig, %..loopexit_crit_edge21.i.i.i.i.i95 ], [ %i.jw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ig, %.lr.ph.i.i.i.i.i91 ]
  %i.jz = phi ptr [ %i.ih, %.preheader418 ], [ %i.jh, %bb.bf ], [ %i.ih, %bb.bb ], [ %i.ih, %..loopexit_crit_edge21.i.i.i.i.i95 ], [ %i.jv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ih, %.lr.ph.i.i.i.i.i91 ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0200.0298, i64 4 ; 2 uses
end_hunk_0
