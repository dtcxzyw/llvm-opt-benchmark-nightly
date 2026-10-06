Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/data_parallel_tree_learner?download=true
inline.NumInlined: 2212
inline.NumDeleted: 868
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN8LightGBM10ColSampler9GetByNodeEPKNS_4TreeEi:bb.a
  %.020.i.i.i.i.i = phi ptr [ %i.di, %bb.z ], [ %i.dd, %bb.y ]
  %i.di = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !311 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not18.i.i.i.i.i, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !203 ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = urem i64 %i.dl, %i.co
  %.not19.i.i.i.i.i = icmp eq i64 %i.dm, %i.da
  br i1 %.not19.i.i.i.i.i, label %bb.z, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !392

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.aa
  br label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, !llvm.loop !392

bb.ab:                                            ; preds = %.critedge.i170
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76: ; preds = %bb.z, %bb.y
  %i.do = add nuw nsw i32 %.039283, 1             ; 2 uses
  %i.dp = icmp eq i32 %i.do, %i.av
  br i1 %i.dp, label %.split.us, label %bb.x

.split.us:                                        ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76, %.loopexit273.us
  %i.dq = load ptr, ptr %i.ap, align 8, !tbaa !315 ; 2 uses
  %.not6.i.i.i71 = icmp eq ptr %i.dq, null
  br i1 %.not6.i.i.i71, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i72

.lr.ph.i.i.i72:                                   ; preds = %.split.us, %.noexc75
  %.sroa.03.07.i.i.i73 = phi ptr [ %i.ex, %.noexc75 ], [ %i.dq, %.split.us ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i73, i64 8 ; 2 uses
  %i.ds = load i64, ptr %i.au, align 8, !tbaa !312
  %.not.not.i162 = icmp eq i64 %i.ds, 0
  %i.dt = load i32, ptr %i.dr, align 4            ; 5 uses
  br i1 %.not.not.i162, label %.preheader425, label %.thread34.i163

.thread34.i163:                                   ; preds = %.lr.ph.i.i.i72
  %i.du = sext i32 %i.dt to i64                   ; 4 uses
  %i.dv = load i64, ptr %i.i, align 8, !tbaa !310 ; 2 uses
  %i.dw = urem i64 %i.du, %i.dv                   ; 5 uses
  %i.dx = load ptr, ptr %6, align 8, !tbaa !309
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i164 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i164, label %.critedge.i170, label %bb.ae

.preheader425:                                    ; preds = %.lr.ph.i.i.i72, %bb.ac
  %.sroa.028.0.in.i176 = phi ptr [ %.sroa.028.0.i177, %bb.ac ], [ %i.j, %.lr.ph.i.i.i72 ]
  %.sroa.028.0.i177 = load ptr, ptr %.sroa.028.0.in.i176, align 8, !tbaa !311 ; 3 uses
  %.not.i178 = icmp eq ptr %.sroa.028.0.i177, null
  br i1 %.not.i178, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.preheader425
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.028.0.i177, i64 8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !203
  %i.ec = icmp eq i32 %i.dt, %i.eb
  br i1 %i.ec, label %.noexc75, label %.preheader425, !llvm.loop !389

bb.ad:                                            ; preds = %.preheader425
  %i.ed = sext i32 %i.dt to i64                   ; 2 uses
  %i.ee = load i64, ptr %i.i, align 8, !tbaa !310
  %i.ef = urem i64 %i.ed, %i.ee
  br label %.critedge.i170

bb.ae:                                            ; preds = %.thread34.i163
  %i.eg = load ptr, ptr %i.dz, align 8, !tbaa !311 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !203
  %i.ej = icmp eq i32 %i.dt, %i.ei
  br i1 %i.ej, label %.noexc75, label %.lr.ph.i.i.i165

bb.af:                                            ; preds = %bb.ag
  %i.ek = icmp eq i32 %i.dt, %i.en
  br i1 %i.ek, label %.noexc75, label %.lr.ph.i.i.i165, !llvm.loop !4

.lr.ph.i.i.i165:                                  ; preds = %bb.ae, %bb.af
  %.020.i.i.i166 = phi ptr [ %i.el, %bb.af ], [ %i.eg, %bb.ae ]
  %i.el = load ptr, ptr %.020.i.i.i166, align 8, !tbaa !311 ; 3 uses
  %.not18.i.i.i167 = icmp eq ptr %i.el, null
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
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.cy

bb.ar:                                            ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i82
  %i.ge = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #33
          to label %.noexc87 unwind label %bb.at  ; 4 uses

.noexc87:                                         ; preds = %bb.ar
  store ptr %i.ge, ptr %0, align 8, !tbaa !225
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ge, ptr %14, align 8, !tbaa !401
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gc ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !281
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ge, i8 1, i64 %i.gc, i1 false)
  %.pr.pre = load ptr, ptr %8, align 16, !tbaa !225
  br label %bb.cy

bb.as:                                            ; preds = %bb.am, %bb.al
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit157

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.au:                                            ; preds = %bb.ao
  %i.gj = load ptr, ptr %i.j, align 8, !tbaa !315 ; 2 uses
  %.not255288 = icmp eq ptr %i.gj, null
  %i.gk = insertelement <2 x ptr> poison, ptr %i.fr, i64 0
  %i.gl = insertelement <2 x ptr> %i.gk, ptr %.0.i.i.i.i.i.i.i, i64 1
  br i1 %.not255288, label %._crit_edge292, label %.lr.ph291.preheader

.lr.ph291.preheader:                              ; preds = %bb.au
  %.pre313 = load ptr, ptr %1, align 8, !tbaa !316
  br label %.lr.ph291

._crit_edge292.loopexit:                          ; preds = %bb.aw
  %i.gm = load <2 x ptr>, ptr %8, align 16, !tbaa !403
  %.phi.trans.insert316 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.pre317 = load ptr, ptr %.phi.trans.insert316, align 16, !tbaa !281
  br label %._crit_edge292

._crit_edge292:                                   ; preds = %._crit_edge292.loopexit, %bb.au
  %i.gn = phi ptr [ %.pre317, %._crit_edge292.loopexit ], [ %.0.i.i.i.i.i.i.i, %bb.au ]
  %i.go = phi <2 x ptr> [ %i.gm, %._crit_edge292.loopexit ], [ %i.gl, %bb.au ]
  store <2 x ptr> %i.go, ptr %0, align 8, !tbaa !403
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gn, ptr %i.gp, align 8, !tbaa !281
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

.lr.ph291:                                        ; preds = %.lr.ph291.preheader, %bb.aw
  %i.gq = phi ptr [ %i.hc, %bb.aw ], [ %.pre313, %.lr.ph291.preheader ] ; 2 uses
  %.sroa.0207.0289 = phi ptr [ %i.hd, %bb.aw ], [ %i.gj, %.lr.ph291.preheader ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0207.0289, i64 8
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !203
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 56
  %i.gu = sext i32 %i.gs to i64
  %i.gv = load ptr, ptr %i.gt, align 8, !tbaa !178
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.gu
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !203 ; 2 uses
  %i.gy = icmp sgt i32 %i.gx, -1
  br i1 %i.gy, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph291
  %i.gz = zext nneg i32 %i.gx to i64
  %i.ha = load ptr, ptr %8, align 16, !tbaa !225
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gz
  store i8 1, ptr %i.hb, align 1, !tbaa !226
  %.pre = load ptr, ptr %1, align 8, !tbaa !316
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph291
  %i.hc = phi ptr [ %.pre, %bb.av ], [ %i.gq, %.lr.ph291 ]
  %i.hd = load ptr, ptr %.sroa.0207.0289, align 8, !tbaa !311 ; 2 uses
  %.not255 = icmp eq ptr %i.hd, null
  br i1 %.not255, label %._crit_edge292.loopexit, label %.lr.ph291

bb.ax:                                            ; preds = %bb.an
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hf = load i8, ptr %i.he, align 8, !tbaa !404, !range !154, !noundef !155
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.ay, label %bb.bx

bb.ay:                                            ; preds = %bb.ax
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !177 ; 3 uses
  %i.hk = load ptr, ptr %i.hh, align 8, !tbaa !178 ; 3 uses
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = ptrtoint ptr %i.hk to i64               ; 2 uses
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = ashr exact i64 %i.hn, 2                 ; 2 uses
  %i.hp = trunc i64 %i.ho to i32
  %.sroa.speculated5.i = call i32 @llvm.smin.i32(i32 %i.hp, i32 1)
  %i.hq = uitofp i64 %i.ho to double
  %i.hr = fmul double %i.fu, %i.hq
  %i.hs = fadd double %i.hr, 5.000000e-01
  %i.ht = fptosi double %i.hs to i32
  %.sroa.speculated.i = call noundef i32 @llvm.smax.i32(i32 %.sroa.speculated5.i, i32 %i.ht) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.hu = load ptr, ptr %i.m, align 8, !tbaa !394
  %i.hv = load ptr, ptr %i.o, align 8, !tbaa !394
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %bb.bk, label %.preheader

.preheader:                                       ; preds = %bb.ay
  %.not257297 = icmp eq ptr %i.hk, %i.hj
  br i1 %.not257297, label %._crit_edge300, label %.lr.ph299

.lr.ph299:                                        ; preds = %.preheader
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.hy = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.hz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.az

._crit_edge300.loopexit:                          ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ib = ptrtoint ptr %i.kb to i64
  %i.ic = ptrtoint ptr %i.jz to i64
  br label %._crit_edge300

._crit_edge300:                                   ; preds = %._crit_edge300.loopexit, %.preheader
  %.pre322 = phi i64 [ %i.ic, %._crit_edge300.loopexit ], [ 0, %.preheader ] ; 2 uses
  %i.id = phi i64 [ %i.ib, %._crit_edge300.loopexit ], [ 0, %.preheader ]
  %i.ie = sub i64 %i.id, %.pre322
  %i.if = lshr exact i64 %i.ie, 2
  %i.ig = trunc i64 %i.if to i32
  %.sroa.speculated194 = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i, i32 %i.ig)
  br label %bb.bk

bb.az:                                            ; preds = %.lr.ph299, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ih = phi ptr [ null, %.lr.ph299 ], [ %i.jz, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 11 uses
  %i.ii = phi ptr [ null, %.lr.ph299 ], [ %i.ka, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %i.ij = phi ptr [ null, %.lr.ph299 ], [ %i.kb, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %.sroa.0200.0298 = phi ptr [ %i.hk, %.lr.ph299 ], [ %i.kc, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.ik = load i32, ptr %.sroa.0200.0298, align 4, !tbaa !203 ; 3 uses
  %i.il = sext i32 %i.ik to i64
  %i.im = load ptr, ptr %i.hx, align 8, !tbaa !178
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.il
  %i.io = load i64, ptr %i.hy, align 8, !tbaa !312
  %.not.not.i.i.i89 = icmp eq i64 %i.io, 0
  %i.ip = load i32, ptr %i.in, align 4            ; 4 uses
  br i1 %.not.not.i.i.i89, label %.preheader420, label %bb.bb

.preheader420:                                    ; preds = %bb.az, %bb.ba
  %.sroa.06.0.in.i.i.i99 = phi ptr [ %.sroa.06.0.i.i.i100, %bb.ba ], [ %i.j, %bb.az ]
  %.sroa.06.0.i.i.i100 = load ptr, ptr %.sroa.06.0.in.i.i.i99, align 8, !tbaa !311 ; 3 uses
  %.not.i.i.i101 = icmp eq ptr %.sroa.06.0.i.i.i100, null
  br i1 %.not.i.i.i101, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.ba

bb.ba:                                            ; preds = %.preheader420
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i100, i64 8
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !203
  %i.is = icmp eq i32 %i.ip, %i.ir
  br i1 %i.is, label %.loopexit, label %.preheader420, !llvm.loop !391

bb.bb:                                            ; preds = %bb.az
  %i.it = sext i32 %i.ip to i64
  %i.iu = load i64, ptr %i.i, align 8, !tbaa !310 ; 2 uses
  %i.iv = urem i64 %i.it, %i.iu                   ; 2 uses
  %i.iw = load ptr, ptr %6, align 8, !tbaa !309
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.iv
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i.i.i90 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i.i.i90, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !311 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !203
  %i.jc = icmp eq i32 %i.ip, %i.jb
  br i1 %i.jc, label %.loopexit, label %.lr.ph.i.i.i.i.i91

bb.bd:                                            ; preds = %bb.be
  %i.jd = icmp eq i32 %i.ip, %i.jg
  br i1 %i.jd, label %.loopexit, label %.lr.ph.i.i.i.i.i91, !llvm.loop !392

.lr.ph.i.i.i.i.i91:                               ; preds = %bb.bc, %bb.bd
  %.020.i.i.i.i.i92 = phi ptr [ %i.je, %bb.bd ], [ %i.iz, %bb.bc ]
  %i.je = load ptr, ptr %.020.i.i.i.i.i92, align 8, !tbaa !311 ; 3 uses
  %.not18.i.i.i.i.i93 = icmp eq ptr %i.je, null
  br i1 %.not18.i.i.i.i.i93, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i.i.i91
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !203 ; 2 uses
  %i.jh = sext i32 %i.jg to i64
  %i.ji = urem i64 %i.jh, %i.iu
  %.not19.i.i.i.i.i94 = icmp eq i64 %i.ji, %i.iv
  br i1 %.not19.i.i.i.i.i94, label %bb.bd, label %..loopexit_crit_edge21.i.i.i.i.i95, !llvm.loop !392

..loopexit_crit_edge21.i.i.i.i.i95:               ; preds = %bb.be
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, !llvm.loop !392

.loopexit:                                        ; preds = %bb.bd, %bb.ba, %bb.bc
  %.not.i = icmp eq ptr %i.ij, %i.ii
  br i1 %.not.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.loopexit
  store i32 %i.ik, ptr %i.ij, align 4, !tbaa !203
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ij, i64 4 ; 2 uses
  store ptr %i.jj, ptr %i.hz, align 8, !tbaa !177
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.bg:                                            ; preds = %.loopexit
  %i.jk = ptrtoint ptr %i.ii to i64
end_hunk_0
begin_hunk_1_@_ZN8LightGBM10ColSampler9GetByNodeEPKNS_4TreeEi:bb.a
  %i.nu = sub i64 %i.ns, %i.nt                    ; 5 uses
  %i.nv = icmp eq i64 %i.nu, 9223372036854775804
  br i1 %i.nv, label %bb.ch, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i132

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #32
          to label %.noexc138 unwind label %.loopexit.split-lp267

.noexc138:                                        ; preds = %bb.ch
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i132: ; preds = %bb.cg
  %i.nw = ashr exact i64 %i.nu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i133 = call i64 @llvm.umax.i64(i64 %i.nw, i64 1)
  %i.nx = add nsw i64 %.sroa.speculated.i.i.i133, %i.nw ; 2 uses
  %i.ny = icmp ult i64 %i.nx, %i.nw
  %i.nz = call i64 @llvm.umin.i64(i64 %i.nx, i64 2305843009213693951)
  %i.oa = select i1 %i.ny, i64 2305843009213693951, i64 %i.nz ; 3 uses
  %.not.i.i.i134 = icmp ne i64 %i.oa, 0
  call void @llvm.assume(i1 %.not.i.i.i134)
  %i.ob = shl nuw nsw i64 %i.oa, 2
  %i.oc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ob) #33
          to label %.noexc139 unwind label %.loopexit266 ; 5 uses

.noexc139:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i132
  %i.od = getelementptr inbounds i8, ptr %i.oc, i64 %i.nu ; 2 uses
  store i32 %i.mw, ptr %i.od, align 4, !tbaa !203
  %i.oe = icmp sgt i64 %i.nu, 0
  br i1 %i.oe, label %bb.ci, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i135

bb.ci:                                            ; preds = %.noexc139
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.oc, ptr align 4 %i.mt, i64 %i.nu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i135

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i135: ; preds = %bb.ci, %.noexc139
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 4 ; 2 uses
  %.not.i17.i.i136 = icmp eq ptr %i.mt, null
  br i1 %.not.i17.i.i136, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i135
  %i.og = load ptr, ptr %i.mm, align 8, !tbaa !202
  %i.oh = ptrtoint ptr %i.og to i64
  %i.oi = sub i64 %i.oh, %i.nt
  call void @_ZdlPvm(ptr noundef nonnull %i.mt, i64 noundef %i.oi) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137: ; preds = %bb.cj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i135
  store ptr %i.oc, ptr %11, align 8, !tbaa !178
  store ptr %i.of, ptr %i.ml, align 8, !tbaa !177
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.oa ; 2 uses
  store ptr %i.oj, ptr %i.mm, align 8, !tbaa !202
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140

.loopexit266:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i132
  %lpad.loopexit268 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

.loopexit.split-lp267:                            ; preds = %bb.ch
  %lpad.loopexit.split-lp269 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

_ZNSt6vectorIiSaIiEE9push_backERKi.exit140:       ; preds = %.lr.ph.i.i.i.i.i119, %.preheader261, %bb.cb, %..loopexit_crit_edge21.i.i.i.i.i123, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137, %bb.cf
  %i.ok = phi ptr [ %i.mt, %.preheader261 ], [ %i.mt, %bb.cf ], [ %i.mt, %bb.cb ], [ %i.mt, %..loopexit_crit_edge21.i.i.i.i.i123 ], [ %i.oc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137 ], [ %i.mt, %.lr.ph.i.i.i.i.i119 ] ; 2 uses
  %i.ol = phi ptr [ %i.mu, %.preheader261 ], [ %i.mu, %bb.cf ], [ %i.mu, %bb.cb ], [ %i.mu, %..loopexit_crit_edge21.i.i.i.i.i123 ], [ %i.oj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137 ], [ %i.mu, %.lr.ph.i.i.i.i.i119 ]
  %i.om = phi ptr [ %i.mv, %.preheader261 ], [ %i.nr, %bb.cf ], [ %i.mv, %bb.cb ], [ %i.mv, %..loopexit_crit_edge21.i.i.i.i.i123 ], [ %i.of, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137 ], [ %i.mv, %.lr.ph.i.i.i.i.i119 ] ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.0188.0294, i64 4 ; 2 uses
  %.not256 = icmp eq ptr %i.on, %i.lw
  br i1 %.not256, label %._crit_edge296.loopexit, label %bb.bz

bb.ck:                                            ; preds = %._crit_edge296, %bb.by
  %.pre-phi330 = phi i32 [ %i.ms, %._crit_edge296 ], [ %.pre329, %bb.by ]
  %.0 = phi i32 [ %.sroa.speculated, %._crit_edge296 ], [ %.sroa.speculated.i115, %bb.by ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 36
  invoke void @_ZN8LightGBM6Random6SampleEii(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.35") align 8 %12, ptr noundef nonnull align 4 dereferenceable(4) %i.oo, i32 noundef %.pre-phi330, i32 noundef %.0)
          to label %bb.cl unwind label %bb.co

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.op = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !177
  %i.or = load ptr, ptr %12, align 8, !tbaa !178
  %i.os = ptrtoint ptr %i.oq to i64
  %i.ot = ptrtoint ptr %i.or to i64
  %i.ou = sub i64 %i.os, %i.ot
  %i.ov = lshr exact i64 %i.ou, 2
  %i.ow = trunc i64 %i.ov to i32                  ; 2 uses
  store i32 %i.ow, ptr %i.e, align 4, !tbaa !203
  %i.ox = invoke i32 @OMP_NUM_THREADS()
          to label %bb.cm unwind label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.ox)
  %i.oy = icmp sgt i32 %i.ow, 1023
  br i1 %i.oy, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %bb.cm
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN8LightGBM10ColSampler9GetByNodeEPKNS_4TreeEi.omp_outlined.15, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %12, ptr nonnull %1, ptr nonnull %8)
  br label %bb.cs

bb.co:                                            ; preds = %bb.ck
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit142

bb.cp:                                            ; preds = %bb.cl
  %i.pa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.pb = load ptr, ptr %12, align 8, !tbaa !178  ; 3 uses
  %.not.i.i.i141 = icmp eq ptr %i.pb, null
  br i1 %.not.i.i.i141, label %_ZNSt6vectorIiSaIiEED2Ev.exit142, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.pc = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !202
  %i.pe = ptrtoint ptr %i.pd to i64
  %i.pf = ptrtoint ptr %i.pb to i64
  %i.pg = sub i64 %i.pe, %i.pf
  call void @_ZdlPvm(ptr noundef nonnull %i.pb, i64 noundef %i.pg) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit142

bb.cr:                                            ; preds = %bb.cm
  call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.f, align 4, !tbaa !203
  call void @_ZN8LightGBM10ColSampler9GetByNodeEPKNS_4TreeEi.omp_outlined.15(ptr nonnull %i.f, ptr nonnull poison, ptr %i.e, ptr %i.d, ptr %12, ptr nonnull %1, ptr %8) #20
  call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.ph = load ptr, ptr %12, align 8, !tbaa !178  ; 3 uses
  %.not.i.i.i143 = icmp eq ptr %i.ph, null
  br i1 %.not.i.i.i143, label %_ZNSt6vectorIiSaIiEED2Ev.exit144, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pi = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !202
  %i.pk = ptrtoint ptr %i.pj to i64
  %i.pl = ptrtoint ptr %i.ph to i64
  %i.pm = sub i64 %i.pk, %i.pl
  call void @_ZdlPvm(ptr noundef nonnull %i.ph, i64 noundef %i.pm) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit144

_ZNSt6vectorIiSaIiEED2Ev.exit144:                 ; preds = %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.pn = load ptr, ptr %11, align 8, !tbaa !178  ; 3 uses
  %.not.i.i.i145 = icmp eq ptr %i.pn, null
  br i1 %.not.i.i.i145, label %_ZNSt6vectorIiSaIiEED2Ev.exit146, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit144
  %i.po = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !202
  %i.pq = ptrtoint ptr %i.pp to i64
  %i.pr = ptrtoint ptr %i.pn to i64
  %i.ps = sub i64 %i.pq, %i.pr
  call void @_ZdlPvm(ptr noundef nonnull %i.pn, i64 noundef %i.ps) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit146

_ZNSt6vectorIiSaIiEED2Ev.exit146:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit144, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.cx

_ZNSt6vectorIiSaIiEED2Ev.exit142:                 ; preds = %bb.cq, %bb.cp, %bb.co
  %.pn48 = phi { ptr, i32 } [ %i.oz, %bb.co ], [ %i.pa, %bb.cp ], [ %i.pa, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.cv

bb.cv:                                            ; preds = %.loopexit266, %.loopexit.split-lp267, %_ZNSt6vectorIiSaIiEED2Ev.exit142
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %_ZNSt6vectorIiSaIiEED2Ev.exit142 ], [ %lpad.loopexit268, %.loopexit266 ], [ %lpad.loopexit.split-lp269, %.loopexit.split-lp267 ]
  %i.pt = load ptr, ptr %11, align 8, !tbaa !178  ; 3 uses
  %.not.i.i.i147 = icmp eq ptr %i.pt, null
  br i1 %.not.i.i.i147, label %_ZNSt6vectorIiSaIiEED2Ev.exit148, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.pu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !202
  %i.pw = ptrtoint ptr %i.pv to i64
  %i.px = ptrtoint ptr %i.pt to i64
  %i.py = sub i64 %i.pw, %i.px
  call void @_ZdlPvm(ptr noundef nonnull %i.pt, i64 noundef %i.py) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit148

_ZNSt6vectorIiSaIiEED2Ev.exit148:                 ; preds = %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.db

bb.cx:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit146, %_ZNSt6vectorIiSaIiEED2Ev.exit111
  %i.pz = load <2 x ptr>, ptr %8, align 16, !tbaa !403
  store <2 x ptr> %i.pz, ptr %0, align 8, !tbaa !403
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.qc = load ptr, ptr %i.qb, align 16, !tbaa !281
  store ptr %i.qc, ptr %i.qa, align 8, !tbaa !281
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

bb.cy:                                            ; preds = %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i85, %.noexc87
  %.pr = phi ptr [ %i.fr, %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i85 ], [ %.pr.pre, %.noexc87 ] ; 3 uses
  %i.qd = phi ptr [ %13, %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i85 ], [ %14, %.noexc87 ]
  %.0.i.i.i.i.i.i.i84 = phi ptr [ null, %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i85 ], [ %i.gf, %.noexc87 ]
  store ptr %.0.i.i.i.i.i.i.i84, ptr %i.qd, align 8, !tbaa !401
  %.not.i.i.i149 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i149, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qe = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.qf = load ptr, ptr %i.qe, align 16, !tbaa !281
  %i.qg = ptrtoint ptr %i.qf to i64
  %i.qh = ptrtoint ptr %.pr to i64
  %i.qi = sub i64 %i.qg, %i.qh
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.qi) #31
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %._crit_edge292, %bb.cx, %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.qj = load ptr, ptr %i.j, align 8, !tbaa !315 ; 2 uses
  %.not5.i.i.i.i150 = icmp eq ptr %i.qj, null
  br i1 %.not5.i.i.i.i150, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i154, label %.lr.ph.i.i.i.i151

.lr.ph.i.i.i.i151:                                ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit, %.lr.ph.i.i.i.i151
  %.06.i.i.i.i152 = phi ptr [ %i.qk, %.lr.ph.i.i.i.i151 ], [ %i.qj, %_ZNSt6vectorIaSaIaEED2Ev.exit ] ; 2 uses
  %i.qk = load ptr, ptr %.06.i.i.i.i152, align 8, !tbaa !311 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i152, i64 noundef 16) #31
  %.not.i.i.i.i153 = icmp eq ptr %i.qk, null
  br i1 %.not.i.i.i.i153, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i154, label %.lr.ph.i.i.i.i151, !llvm.loop !5

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i154: ; preds = %.lr.ph.i.i.i.i151, %_ZNSt6vectorIaSaIaEED2Ev.exit
  %i.ql = load ptr, ptr %6, align 8, !tbaa !309
  %i.qm = load i64, ptr %i.i, align 8, !tbaa !310
  %i.qn = shl i64 %i.qm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ql, i8 0, i64 %i.qn, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.qo = load ptr, ptr %6, align 8, !tbaa !309   ; 2 uses
  %i.qp = icmp eq ptr %i.qo, %i.h
  br i1 %i.qp, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit155, label %bb.da

bb.da:                                            ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i154
  %i.qq = load i64, ptr %i.i, align 8, !tbaa !310
  %i.qr = shl i64 %i.qq, 3
  call void @_ZdlPvm(ptr noundef %i.qo, i64 noundef %i.qr) #31
  br label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit155

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit155: ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i154, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret void

bb.db:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit148, %_ZNSt6vectorIiSaIiEED2Ev.exit113, %bb.at
  %.pn56 = phi { ptr, i32 } [ %i.gi, %bb.at ], [ %.pn48.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit148 ], [ %.pn52.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit113 ] ; 2 uses
  %i.qs = load ptr, ptr %8, align 16, !tbaa !225  ; 3 uses
  %.not.i.i.i156 = icmp eq ptr %i.qs, null
  br i1 %.not.i.i.i156, label %_ZNSt6vectorIaSaIaEED2Ev.exit157, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.qt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.qu = load ptr, ptr %i.qt, align 16, !tbaa !281
  %i.qv = ptrtoint ptr %i.qu to i64
  %i.qw = ptrtoint ptr %i.qs to i64
  %i.qx = sub i64 %i.qv, %i.qw
  call void @_ZdlPvm(ptr noundef nonnull %i.qs, i64 noundef %i.qx) #31
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit157

_ZNSt6vectorIaSaIaEED2Ev.exit157:                 ; preds = %bb.dc, %bb.db, %bb.as
  %.pn56.pn = phi { ptr, i32 } [ %i.gh, %bb.as ], [ %.pn56, %bb.db ], [ %.pn56, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit78

_ZNSt6vectorIiSaIiEED2Ev.exit78:                  ; preds = %bb.j, %bb.aj, %bb.ak, %_ZNSt6vectorIaSaIaEED2Ev.exit157
  %.pn56.pn.pn = phi { ptr, i32 } [ %.pn56.pn, %_ZNSt6vectorIaSaIaEED2Ev.exit157 ], [ %i.aw, %bb.j ], [ %.pn.pn.pn, %bb.aj ], [ %.pn.pn.pn, %bb.ak ]
  call void @_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %.pn56.pn.pn
}

declare noundef double @_ZNK8LightGBM17SerialTreeLearner15GetParentOutputEPKNS_4TreeEPKNS_10LeafSplitsE(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM23DataParallelTreeLearnerINS_14GPUTreeLearnerEE28FindBestSplitsFromHistogramsERKSt6vectorIaSaIaEEbPKNS_4TreeE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3) #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !174  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.h, ptr %i.b, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !203
  %i.i = load i32, ptr %0, align 4, !tbaa !203    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !203
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !203
  %i.l = load i32, ptr %i.a, align 4, !tbaa !203  ; 2 uses
  %.not19 = icmp sgt i32 %i.l, %i.k
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !175
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 528
  %i.q = sext i32 %i.l to i64
  %i.r = add nsw i32 %i.k, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN8LightGBM16FeatureHistogram12CopyToBufferEPi.exit
  %indvars.iv = phi i64 [ %i.q, %.lr.ph ], [ %indvars.iv.next, %_ZN8LightGBM16FeatureHistogram12CopyToBufferEPi.exit ] ; 6 uses
  %i.s = trunc nsw i64 %indvars.iv to i32
  %i.t = sdiv i32 %i.s, 64
  %.sext = sext i32 %i.t to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.sext
  %i.v = and i64 %indvars.iv, -9223372036854775745
  %i.w = icmp ugt i64 %i.v, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.w, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.u, i64 %storemerge.idx.i.i.i.i.i
  %i.x = and i64 %indvars.iv, 63
  %i.y = shl nuw i64 1, %i.x
  %i.z = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !251
  %i.aa = and i64 %i.z, %i.y
  %.not18 = icmp eq i64 %i.aa, 0
  br i1 %.not18, label %_ZN8LightGBM16FeatureHistogram12CopyToBufferEPi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !318
  %i.ac = getelementptr inbounds [96 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !262
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 5312
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !199
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !178 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !299 ; 7 uses
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !303 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !305
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !306
  %i.ao = sext i8 %i.an to i32
  %i.ap = sub nsw i32 %i.al, %i.ao                ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.preheader.i, label %_ZN8LightGBM16FeatureHistogram12CopyToBufferEPi.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.ar = ptrtoaddr ptr %i.aj to i64
  %i.as = ptrtoaddr ptr %i.ah to i64
  %wide.trip.count.i = zext nneg i32 %i.ap to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ap, 4
  %i.at = sub i64 %i.ar, %i.as
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <2 x i64>, ptr %i.au, align 8, !tbaa !251
  %wide.load25 = load <2 x i64>, ptr %i.av, align 8, !tbaa !251
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <2 x i64> %wide.load, ptr %i.aw, align 8, !tbaa !251
  store <2 x i64> %wide.load25, ptr %i.ax, align 8, !tbaa !251
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !405

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN8LightGBM16FeatureHistogram12CopyToBufferEPi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i.prol
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !251
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.prol
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !251
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !406

end_hunk_1
