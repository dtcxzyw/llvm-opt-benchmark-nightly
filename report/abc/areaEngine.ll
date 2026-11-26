Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/areaEngine?download=true
inline.NumInlined: 1126
inline.NumDeleted: 588
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5eSLIM10AreaEngine24setupConnectionVariablesEv:bb.a
.lr.ph.i66:                                       ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i, %bb.y
  %.031.i = phi i64 [ %.1.i67, %bb.y ], [ 0, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i ] ; 2 uses
  %.02530.i = phi ptr [ %i.dk, %bb.y ], [ %i.dj, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i ] ; 8 uses
  %i.dk = load ptr, ptr %.02530.i, align 8, !tbaa !82 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.02530.i, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !39
  %i.dn = sext i32 %i.dm to i64
  %i.do = urem i64 %i.dn, %i.dd                   ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.do ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !90 ; 2 uses
  %.not27.i = icmp eq ptr %i.dq, null
  br i1 %.not27.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.lr.ph.i66
  %i.dr = load ptr, ptr %i.g, align 8, !tbaa !83
  store ptr %i.dr, ptr %.02530.i, align 8, !tbaa !82
  store ptr %.02530.i, ptr %i.g, align 8, !tbaa !83
  store ptr %i.g, ptr %i.dp, align 8, !tbaa !90
  %i.ds = load ptr, ptr %.02530.i, align 8, !tbaa !82
  %.not28.i = icmp eq ptr %i.ds, null
  br i1 %.not28.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %.031.i
  store ptr %.02530.i, ptr %i.dt, align 8, !tbaa !90
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph.i66
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !82
  store ptr %i.du, ptr %.02530.i, align 8, !tbaa !82
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !90
  store ptr %.02530.i, ptr %i.dv, align 8, !tbaa !82
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.1.i67 = phi i64 [ %.031.i, %bb.x ], [ %i.do, %bb.w ], [ %i.do, %bb.v ]
  %.not.i68 = icmp eq ptr %i.dk, null
  br i1 %.not.i68, label %._crit_edge.i, label %.lr.ph.i66, !llvm.loop !136

._crit_edge.i:                                    ; preds = %bb.y, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i
  %i.dw = load ptr, ptr %i.d, align 8, !tbaa !33  ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.k
  br i1 %i.dx, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i
  %i.dy = load i64, ptr %i.f, align 8, !tbaa !34
  %i.dz = shl i64 %i.dy, 3
  tail call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #14
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit: ; preds = %._crit_edge.i, %bb.z
  store i64 %i.dd, ptr %i.f, align 8, !tbaa !34
  store ptr %.0.i.i, ptr %i.d, align 8, !tbaa !33
  %i.ea = urem i64 %i.cf, %i.dd
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.i._crit_edge, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit
  %i.eb = phi ptr [ %.0.i.i, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit ], [ %.pre, %.loopexit.i._crit_edge ] ; 2 uses
  %.0.i19.i = phi i64 [ %i.ea, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit ], [ %i.ch, %.loopexit.i._crit_edge ]
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.0.i19.i ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !90 ; 3 uses
  %.not.i.i20.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i20.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !82
  store ptr %i.ee, ptr %i.cv, align 8, !tbaa !82
  store ptr %i.cv, ptr %i.ed, align 8, !tbaa !82
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.ef = load ptr, ptr %i.g, align 8, !tbaa !83  ; 3 uses
  store ptr %i.ef, ptr %i.cv, align 8, !tbaa !82
  store ptr %i.cv, ptr %i.g, align 8, !tbaa !83
  %.not11.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not11.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i64, ptr %i.f, align 8, !tbaa !34
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !39
  %i.ej = sext i32 %i.ei to i64
  %i.ek = urem i64 %i.ej, %i.eh
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ek
  store ptr %i.cv, ptr %i.el, align 8, !tbaa !90
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store ptr %i.g, ptr %i.ec, align 8, !tbaa !90
  br label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i: ; preds = %bb.ae, %bb.ab
  %i.em = load i64, ptr %i.e, align 8, !tbaa !89
  %i.en = add i64 %i.em, 1
  store i64 %i.en, ptr %i.e, align 8, !tbaa !89
  br label %_ZNSt8__detail9_Map_baseIiSt4pairIKiSt6vectorIiSaIiEEESaIS6_ENS_10_Select1stESt8equal_toIiESt4hashIiENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit

_ZNSt8__detail9_Map_baseIiSt4pairIKiSt6vectorIiSaIiEEESaIS6_ENS_10_Select1stESt8equal_toIiESt4hashIiENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit: ; preds = %bb.n, %bb.m, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i
  %.pn.i = phi ptr [ %i.cv, %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i ], [ %i.cl, %bb.m ], [ %i.cq, %bb.n ] ; 3 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16 ; 2 uses
  %i.eo = load ptr, ptr %.1.i, align 8, !tbaa !25 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !80
  store ptr %.lcssa8.i, ptr %.1.i, align 8, !tbaa !25
  store ptr %.sroa.9.1, ptr %i.ep, align 8, !tbaa !24
  store ptr %.lcssa.i, ptr %i.eq, align 8, !tbaa !80
  %.not.i.i.i.i.i43 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i43, label %_ZNSt13unordered_mapIiSt6vectorIiSaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE4findERS8_.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt8__detail9_Map_baseIiSt4pairIKiSt6vectorIiSaIiEEESaIS6_ENS_10_Select1stESt8equal_toIiESt4hashIiENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.eo to i64
  %i.eu = sub i64 %i.es, %i.et
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.eu) #14
  br label %_ZNSt13unordered_mapIiSt6vectorIiSaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE4findERS8_.exit

_ZNSt13unordered_mapIiSt6vectorIiSaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE4findERS8_.exit: ; preds = %bb.f, %bb.c, %_ZNSt8__detail9_Map_baseIiSt4pairIKiSt6vectorIiSaIiEEESaIS6_ENS_10_Select1stESt8equal_toIiESt4hashIiENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit, %bb.af, %bb.e
  %i.ev = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0101.0127) #17 ; 2 uses
  %.not110 = icmp eq ptr %i.ev, %i.w
  br i1 %.not110, label %.loopexit117, label %.lr.ph

.loopexit:                                        ; preds = %._crit_edge134, %.lr.ph.i47
  %.sroa.089.0 = load ptr, ptr %.sroa.089.0139, align 8, !tbaa !82 ; 2 uses
  %.not109 = icmp eq ptr %.sroa.089.0, null
  br i1 %.not109, label %._crit_edge142, label %bb.ag

._crit_edge142:                                   ; preds = %.loopexit, %._crit_edge
  ret void

bb.ag:                                            ; preds = %.lr.ph141, %.loopexit
  %.sroa.089.0139 = phi ptr [ %.sroa.089.0137, %.lr.ph141 ], [ %.sroa.089.0, %.loopexit ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.089.0139, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.089.0139, i64 16 ; 3 uses
  %i.ey = load i64, ptr %i.m, align 8, !tbaa !92
  %.not.not.i.i.i = icmp eq i64 %i.ey, 0
  %i.ez = load i32, ptr %i.ew, align 4            ; 4 uses
  br i1 %.not.not.i.i.i, label %.preheader206, label %bb.ai

.preheader206:                                    ; preds = %bb.ag, %bb.ah
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.ah ], [ %i.p, %bb.ag ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !82 ; 4 uses
  %.not.i.i.i46 = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i46, label %.loopexit.i.i, label %bb.ah

bb.ah:                                            ; preds = %.preheader206
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !39
  %i.fc = icmp eq i32 %i.ez, %i.fb
  br i1 %i.fc, label %.lr.ph.i47, label %.preheader206, !llvm.loop !2

bb.ai:                                            ; preds = %bb.ag
  %i.fd = sext i32 %i.ez to i64
  %i.fe = load i64, ptr %i.o, align 8, !tbaa !38  ; 2 uses
  %i.ff = urem i64 %i.fd, %i.fe                   ; 2 uses
  %i.fg = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.ff
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !90 ; 2 uses
  %.not.i.i.i.i.i45 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i45, label %.loopexit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !82 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !39
  %i.fm = icmp eq i32 %i.ez, %i.fl
  br i1 %i.fm, label %.lr.ph.i47, label %.lr.ph.i.i.i.i.i

bb.ak:                                            ; preds = %bb.al
  %i.fn = icmp eq i32 %i.ez, %i.fq
  br i1 %i.fn, label %.lr.ph.i47, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aj, %bb.ak
  %.020.i.i.i.i.i = phi ptr [ %i.fo, %bb.ak ], [ %i.fj, %bb.aj ]
  %i.fo = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !82 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !39 ; 2 uses
  %i.fr = sext i32 %i.fq to i64
  %i.fs = urem i64 %i.fr, %i.fe
  %.not19.i.i.i.i.i = icmp eq i64 %i.fs, %i.ff
  br i1 %.not19.i.i.i.i.i, label %bb.ak, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.al
  br label %.loopexit.i.i, !llvm.loop !3

.loopexit.i.i:                                    ; preds = %bb.ai, %.lr.ph.i.i.i.i.i, %.preheader206, %..loopexit_crit_edge21.i.i.i.i.i
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.4) #15
  unreachable

.lr.ph.i47:                                       ; preds = %bb.ak, %bb.ah, %bb.aj
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.ah ], [ %i.fj, %bb.aj ], [ %i.fo, %bb.ak ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 12
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !39
  %i.fv = sext i32 %i.fu to i64
  %i.fw = load ptr, ptr %i.ex, align 8, !tbaa !25
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.fv
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !39
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i32 noundef %i.fy) #13
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i32 noundef 0) #13
  %i.fz = load i32, ptr %i.r, align 8, !tbaa !77
  %.not143 = icmp eq i32 %i.fz, 0
  br i1 %.not143, label %.loopexit, label %.lr.ph136

.lr.ph136:                                        ; preds = %.lr.ph.i47, %._crit_edge134
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %._crit_edge134 ], [ 0, %.lr.ph.i47 ] ; 8 uses
  %i.ga = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv164
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !39 ; 2 uses
  %i.gd = load ptr, ptr %i.a, align 8, !tbaa !67, !nonnull !68, !align !69 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !24
  %i.gh = load ptr, ptr %i.ge, align 8, !tbaa !25
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj                    ; 2 uses
  %.not144 = icmp eq i64 %i.gk, 0
  br i1 %.not144, label %.preheader, label %.lr.ph.i52.lr.ph

.lr.ph.i52.lr.ph:                                 ; preds = %.lr.ph136
  %i.gl = sub nsw i32 0, %i.gc                    ; 2 uses
  br label %.lr.ph.i52

.preheader:                                       ; preds = %.lr.ph.i52, %.lr.ph136
  %.not145 = icmp eq i64 %indvars.iv164, 0
  br i1 %.not145, label %._crit_edge134, label %.lr.ph.i59.lr.ph

.lr.ph.i59.lr.ph:                                 ; preds = %.preheader
  %i.gm = sub nsw i32 0, %i.gc                    ; 2 uses
  br label %.lr.ph.i59

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.lr.ph, %.lr.ph.i52
  %indvars.iv = phi i64 [ 0, %.lr.ph.i52.lr.ph ], [ %indvars.iv.next, %.lr.ph.i52 ] ; 3 uses
  %i.gn = phi i64 [ %i.gk, %.lr.ph.i52.lr.ph ], [ %i.hm, %.lr.ph.i52 ]
  %i.go = load ptr, ptr %i.t, align 8, !tbaa !93
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.go, i64 %indvars.iv164
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !25
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !39
  %i.gt = sub nsw i32 0, %i.gs
  %i.gu = load ptr, ptr %i.ex, align 8, !tbaa !25 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !39
  %i.gx = sub nsw i32 0, %i.gw
  %i.gy = getelementptr i8, ptr %i.gu, i64 %i.gn
  %i.gz = getelementptr [4 x i8], ptr %i.gy, i64 %indvars.iv164
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !39
  %i.hb = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #16 ; 5 uses
  store i32 %i.gl, ptr %i.hb, align 4
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hb, i64 4 ; 2 uses
  store i32 %i.gt, ptr %.sroa.475.0..sroa_idx, align 4
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  store i32 %i.gx, ptr %.sroa.576.0..sroa_idx, align 4
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hb, i64 12 ; 2 uses
  store i32 %i.ha, ptr %.sroa.677.0..sroa_idx, align 4
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i32 noundef %i.gl) #13
  %i.hc = load i32, ptr %.sroa.475.0..sroa_idx, align 4, !tbaa !39
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i32 noundef %i.hc) #13
  %i.hd = load i32, ptr %.sroa.576.0..sroa_idx, align 4, !tbaa !39
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i32 noundef %i.hd) #13
  %i.he = load i32, ptr %.sroa.677.0..sroa_idx, align 4, !tbaa !39
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i32 noundef %i.he) #13
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i32 noundef 0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef 16) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hf = load ptr, ptr %i.a, align 8, !tbaa !67, !nonnull !68, !align !69 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !24
  %i.hj = load ptr, ptr %i.hg, align 8, !tbaa !25
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl                    ; 2 uses
  %i.hn = ashr exact i64 %i.hm, 2
  %i.ho = icmp ugt i64 %i.hn, %indvars.iv.next
  br i1 %i.ho, label %.lr.ph.i52, label %.preheader, !llvm.loop !137

._crit_edge134:                                   ; preds = %.lr.ph.i59, %.preheader
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %i.hp = load i32, ptr %i.r, align 8, !tbaa !77
  %i.hq = zext i32 %i.hp to i64
  %i.hr = icmp samesign ult i64 %indvars.iv.next165, %i.hq
  br i1 %i.hr, label %.lr.ph136, label %.loopexit, !llvm.loop !138

.lr.ph.i59:                                       ; preds = %.lr.ph.i59.lr.ph, %.lr.ph.i59
  %indvars.iv161 = phi i64 [ 0, %.lr.ph.i59.lr.ph ], [ %indvars.iv.next162, %.lr.ph.i59 ] ; 2 uses
  %i.hs = load ptr, ptr %i.t, align 8, !tbaa !93
  %i.ht = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %indvars.iv164
  %i.hu = load ptr, ptr %i.a, align 8, !tbaa !67, !nonnull !68, !align !69 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !24
  %i.hy = load ptr, ptr %i.hv, align 8, !tbaa !25
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = sub i64 %i.hz, %i.ia                    ; 2 uses
  %i.ic = ashr exact i64 %i.ib, 2
  %i.id = add nsw i64 %i.ic, %indvars.iv161       ; 2 uses
  %i.ie = load ptr, ptr %i.ht, align 8, !tbaa !25
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.id
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !39
  %i.ih = sub nsw i32 0, %i.ig
  %i.ii = load ptr, ptr %i.ex, align 8, !tbaa !25 ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.id
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !39
  %i.il = sub nsw i32 0, %i.ik
  %i.im = getelementptr i8, ptr %i.ii, i64 %i.ib
  %i.in = getelementptr [4 x i8], ptr %i.im, i64 %indvars.iv164
  %i.io = load i32, ptr %i.in, align 4, !tbaa !39
  %i.ip = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #16 ; 5 uses
  store i32 %i.gm, ptr %i.ip, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ip, i64 4 ; 2 uses
  store i32 %i.ih, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ip, i64 8 ; 2 uses
  store i32 %i.il, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ip, i64 12 ; 2 uses
  store i32 %i.io, ptr %.sroa.6.0..sroa_idx, align 4
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i32 noundef %i.gm) #13
  %i.iq = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !39
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i32 noundef %i.iq) #13
  %i.ir = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !39
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i32 noundef %i.ir) #13
  %i.is = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !39
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i32 noundef %i.is) #13
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i32 noundef 0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ip, i64 noundef 16) #14
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next162, %indvars.iv164
  br i1 %exitcond.not, label %._crit_edge134, label %.lr.ph.i59, !llvm.loop !139
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5eSLIM10AreaEngine36connectionVariablesForCombinedCyclesEv(ptr noundef nonnull align 8 dereferenceable(392) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.std::unordered_map.76", align 8 ; 21 uses
  %2 = alloca %"class.std::unordered_set", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 7 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  store i64 1, ptr %i.b, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !98
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  store i64 1, ptr %i.g, align 8, !tbaa !99
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 14 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67, !nonnull !68, !align !69
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %.sroa.0342.0456 = load ptr, ptr %i.m, align 8, !tbaa !82 ; 2 uses
  %.not457 = icmp eq ptr %.sroa.0342.0456, null
  br i1 %.not457, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph459

.lr.ph459:                                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  br label %bb.b

.loopexit394:                                     ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKiSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_.exit208, %bb.b
  %.sroa.0342.0 = load ptr, ptr %.sroa.0342.0458, align 8, !tbaa !82 ; 2 uses
  %.not = icmp eq ptr %.sroa.0342.0, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.loopexit394
  %.pre574 = load ptr, ptr %i.c, align 8, !tbaa !100 ; 2 uses
  %.pre578.pre = load ptr, ptr %i.h, align 8, !tbaa !101 ; 2 uses
  %.not352474 = icmp eq ptr %.pre574, null
  br i1 %.not352474, label %._crit_edge478, label %.lr.ph477

.lr.ph477:                                        ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
end_hunk_0
