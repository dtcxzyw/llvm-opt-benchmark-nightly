Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/bin?download=true
inline.NumInlined: 9544
inline.NumDeleted: 2682
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 530
loop-unroll.NumUnrolled: 531
begin_hunk_0_@_ZN8LightGBM9BinMapper7FindBinEPdimiiibNS_7BinTypeEbbRKSt6vectorIdSaIdEE:bb.a
bb.ed:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit321
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !304 ; 3 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !51
  %i.xx = icmp eq i32 %i.xm, %i.xw
  br i1 %i.xx, label %.loopexit575, label %.lr.ph.i.i.i.i323

bb.ee:                                            ; preds = %bb.ef
  %i.xy = icmp eq i32 %i.xm, %i.yb
  br i1 %i.xy, label %.loopexit575, label %.lr.ph.i.i.i.i323, !llvm.loop !17

.lr.ph.i.i.i.i323:                                ; preds = %bb.ed, %bb.ee
  %.020.i.i.i.i324 = phi ptr [ %i.xz, %bb.ee ], [ %i.xu, %bb.ed ]
  %i.xz = load ptr, ptr %.020.i.i.i.i324, align 8, !tbaa !304 ; 4 uses
  %.not18.i.i.i.i325 = icmp eq ptr %i.xz, null
  br i1 %.not18.i.i.i.i325, label %.loopexit.i.i328, label %bb.ef

bb.ef:                                            ; preds = %.lr.ph.i.i.i.i323
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !51 ; 2 uses
  %i.yc = sext i32 %i.yb to i64
  %i.yd = urem i64 %i.yc, %i.xp
  %.not19.i.i.i.i326 = icmp eq i64 %i.yd, %i.xq
  br i1 %.not19.i.i.i.i326, label %bb.ee, label %..loopexit_crit_edge21.i.i.i.i327, !llvm.loop !17

..loopexit_crit_edge21.i.i.i.i327:                ; preds = %bb.ef
  br label %.loopexit.i.i328, !llvm.loop !17

.loopexit.i.i328:                                 ; preds = %.lr.ph.i.i.i.i323, %..loopexit_crit_edge21.i.i.i.i327, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit321
  %i.ye = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #39
          to label %.noexc332 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc332:                                        ; preds = %.loopexit.i.i328
  store ptr null, ptr %i.ye, align 8, !tbaa !304
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %i.yg = load i32, ptr %i.wn, align 4, !tbaa !51
  store i32 %i.yg, ptr %i.yf, align 8, !tbaa !316
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ye, i64 12
  store i32 0, ptr %i.yh, align 4, !tbaa !317
  %i.yi = invoke ptr @_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.tc, i64 noundef %i.xq, i64 noundef %i.xo, ptr noundef nonnull %i.ye, i64 noundef 1)
          to label %.loopexit575 unwind label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i329

_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i329: ; preds = %.noexc332
  %i.yj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ye, i64 noundef 16) #38
  br label %.body

.loopexit575:                                     ; preds = %bb.ee, %.noexc332, %bb.ed
  %.pn.i.i330 = phi ptr [ %i.yi, %.noexc332 ], [ %i.xu, %bb.ed ], [ %i.xz, %bb.ee ]
  %.1.i.i331 = getelementptr inbounds nuw i8, ptr %.pn.i.i330, i64 12
  store i32 %i.xn, ptr %.1.i.i331, align 4, !tbaa !51
  %i.yk = load i32, ptr %i.wj, align 4, !tbaa !51 ; 2 uses
  %i.yl = load ptr, ptr %i.ts, align 8, !tbaa !166 ; 4 uses
  %i.ym = load ptr, ptr %i.vk, align 8, !tbaa !235
  %.not.i335 = icmp eq ptr %i.yl, %i.ym
  br i1 %.not.i335, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %.loopexit575
  store i32 %i.yk, ptr %i.yl, align 4, !tbaa !51
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yl, i64 4
  store ptr %i.yn, ptr %i.ts, align 8, !tbaa !166
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit344

bb.eh:                                            ; preds = %.loopexit575
  %i.yo = load ptr, ptr %12, align 8, !tbaa !76   ; 4 uses
  %i.yp = ptrtoint ptr %i.yl to i64
  %i.yq = ptrtoint ptr %i.yo to i64               ; 2 uses
  %i.yr = sub i64 %i.yp, %i.yq                    ; 5 uses
  %i.ys = icmp eq i64 %i.yr, 9223372036854775804
  br i1 %i.ys, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i336

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i336: ; preds = %bb.eh
  %i.yt = ashr exact i64 %i.yr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i337 = tail call i64 @llvm.umax.i64(i64 %i.yt, i64 1)
  %i.yu = add nsw i64 %.sroa.speculated.i.i.i337, %i.yt ; 2 uses
  %i.yv = icmp ult i64 %i.yu, %i.yt
  %i.yw = tail call i64 @llvm.umin.i64(i64 %i.yu, i64 2305843009213693951)
  %i.yx = select i1 %i.yv, i64 2305843009213693951, i64 %i.yw ; 3 uses
  %.not.i.i.i338 = icmp ne i64 %i.yx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i338)
  %i.yy = shl nuw nsw i64 %i.yx, 2
  %i.yz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yy) #39
          to label %.noexc343 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc343:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i336
  %i.za = getelementptr inbounds i8, ptr %i.yz, i64 %i.yr ; 2 uses
  %i.zb = load i32, ptr %i.wj, align 4, !tbaa !51
  store i32 %i.zb, ptr %i.za, align 4, !tbaa !51
  %i.zc = icmp sgt i64 %i.yr, 0
  br i1 %i.zc, label %bb.ei, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i339

bb.ei:                                            ; preds = %.noexc343
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.yz, ptr align 4 %i.yo, i64 %i.yr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i339

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i339: ; preds = %bb.ei, %.noexc343
  %i.zd = getelementptr inbounds nuw i8, ptr %i.za, i64 4
  %.not.i17.i.i340 = icmp eq ptr %i.yo, null
  br i1 %.not.i17.i.i340, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i341, label %bb.ej

bb.ej:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i339
  %i.ze = load ptr, ptr %i.vk, align 8, !tbaa !235
  %i.zf = ptrtoint ptr %i.ze to i64
  %i.zg = sub i64 %i.zf, %i.yq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.yo, i64 noundef %i.zg) #38
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i341

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i341: ; preds = %bb.ej, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i339
  store ptr %i.yz, ptr %12, align 8, !tbaa !76
  store ptr %i.zd, ptr %i.ts, align 8, !tbaa !166
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.yx
  store ptr %i.zh, ptr %i.vk, align 8, !tbaa !235
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit344

_ZNSt6vectorIiSaIiEE9push_backERKi.exit344:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i341, %bb.eg
  %i.zi = add nsw i32 %i.yk, %.0776               ; 2 uses
  %i.zj = load i32, ptr %0, align 8, !tbaa !294
  %i.zk = add nsw i32 %i.zj, 1                    ; 2 uses
  store i32 %i.zk, ptr %0, align 8, !tbaa !294
  %i.zl = add nuw i64 %.0120775, 1                ; 2 uses
  %exitcond881.not = icmp eq i64 %i.zl, %i.oh
  br i1 %exitcond881.not, label %.critedge5, label %.lr.ph777, !llvm.loop !1581

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i336, %.loopexit.i.i328, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i313, %.invoke, %.loopexit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i289, %bb.cz, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i303
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.critedge5:                                       ; preds = %.critedge7, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit344, %.lr.ph777, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit311
  %.0120.lcssa = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit311 ], [ %i.oh, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit344 ], [ %.0120775, %.critedge7 ], [ %.0120775, %.lr.ph777 ]
  %.0.lcssa = phi i32 [ 0, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit311 ], [ %i.zi, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit344 ], [ %.0776, %.critedge7 ], [ %.0776, %.lr.ph777 ]
  %i.zm = icmp eq i64 %.0120.lcssa, %i.oh
  %i.zn = icmp eq i32 %.1137.lcssa, 0
  %or.cond11 = and i1 %i.zm, %i.zn
  %spec.select1084 = select i1 %or.cond11, i32 0, i32 2
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %spec.select1084, ptr %i.zo, align 4, !tbaa !320
  %i.zp = trunc i64 %3 to i32
  %i.zq = sub i32 %i.zp, %.0.lcssa
  %i.zr = load ptr, ptr %12, align 8, !tbaa !76
  store i32 %i.zq, ptr %i.zr, align 4, !tbaa !51
  br label %bb.ek

bb.ek:                                            ; preds = %.critedge5, %._crit_edge767
  %.not.i.i.i345 = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i345, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.zs = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.zt = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.zu = sub i64 %i.zs, %i.zt
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.zu) #38
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ek, %bb.el
  %.not.i.i.i346 = icmp eq ptr %.sroa.0395.0.lcssa, null
  br i1 %.not.i.i.i346, label %_ZNSt6vectorIiSaIiEED2Ev.exit347thread-pre-split, label %bb.em

bb.em:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.zv = ptrtoint ptr %.sroa.27.0.lcssa to i64
  %i.zw = ptrtoint ptr %.sroa.0395.0.lcssa to i64
  %i.zx = sub i64 %i.zv, %i.zw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0395.0.lcssa, i64 noundef %i.zx) #38
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit347thread-pre-split

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit582, %.loopexit.split-lp583, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i329, %.body.i, %bb.df
  %.sroa.0.0656 = phi ptr [ %.sroa.0.0.lcssa, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i329 ], [ %.sroa.0.0.lcssa, %.body.i ], [ %.sroa.0.0.lcssa, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %.sroa.0.0.lcssa, %bb.df ], [ %.sroa.0.0761, %.loopexit.split-lp583 ], [ %.sroa.0.0761, %.loopexit582 ], [ %.sroa.0.0.lcssa, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.20.0643 = phi ptr [ %.sroa.20.0.lcssa, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i329 ], [ %.sroa.20.0.lcssa, %.body.i ], [ %.sroa.20.0.lcssa, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %.sroa.20.0.lcssa, %bb.df ], [ %.sroa.20.0763, %.loopexit.split-lp583 ], [ %.sroa.20.0763, %.loopexit582 ], [ %.sroa.20.0.lcssa, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0395.3 = phi ptr [ %.sroa.0395.0.lcssa, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i329 ], [ %.sroa.0395.0.lcssa, %.body.i ], [ %.sroa.0395.0.lcssa, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %.sroa.0395.0.lcssa, %bb.df ], [ %.sroa.0395.1.ph584, %.loopexit.split-lp583 ], [ %.sroa.0395.1.ph, %.loopexit582 ], [ %.sroa.0395.0.lcssa, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.27.3 = phi ptr [ %.sroa.27.0.lcssa, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i329 ], [ %.sroa.27.0.lcssa, %.body.i ], [ %.sroa.27.0.lcssa, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %.sroa.27.0.lcssa, %bb.df ], [ %.sroa.27.1.ph585, %.loopexit.split-lp583 ], [ %.sroa.27.1.ph, %.loopexit582 ], [ %.sroa.27.0.lcssa, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn145 = phi { ptr, i32 } [ %i.yj, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i329 ], [ %eh.lpad-body.i, %.body.i ], [ %i.vi, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %eh.lpad-body.i, %bb.df ], [ %lpad.loopexit.split-lp587, %.loopexit.split-lp583 ], [ %lpad.loopexit586, %.loopexit582 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i348 = icmp eq ptr %.sroa.0.0656, null
  br i1 %.not.i.i.i348, label %_ZNSt6vectorIiSaIiEED2Ev.exit349, label %bb.en

bb.en:                                            ; preds = %.body
  %i.zy = ptrtoint ptr %.sroa.20.0643 to i64
  %i.zz = ptrtoint ptr %.sroa.0.0656 to i64
  %i.aaa = sub i64 %i.zy, %i.zz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0656, i64 noundef %i.aaa) #38
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit349

_ZNSt6vectorIiSaIiEED2Ev.exit349:                 ; preds = %.body, %bb.en
  %.not.i.i.i350 = icmp eq ptr %.sroa.0395.3, null
  br i1 %.not.i.i.i350, label %_ZNSt6vectorIiSaIiEED2Ev.exit351, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit349
  %i.aab = ptrtoint ptr %.sroa.27.3 to i64
  %i.aac = ptrtoint ptr %.sroa.0395.3 to i64
  %i.aad = sub i64 %i.aab, %i.aac
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0395.3, i64 noundef %i.aad) #38
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit351

_ZNSt6vectorIiSaIiEED2Ev.exit347thread-pre-split: ; preds = %bb.ch, %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.em
  %.pr550 = load i32, ptr %0, align 8, !tbaa !294
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit347

_ZNSt6vectorIiSaIiEED2Ev.exit347:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit347thread-pre-split, %bb.cg
  %i.aae = phi i32 [ %.pr550, %_ZNSt6vectorIiSaIiEED2Ev.exit347thread-pre-split ], [ %i.lz, %bb.cg ]
  %i.aaf = icmp slt i32 %i.aae, 2
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %i.aaf, label %_ZN8LightGBM10NeedFilterERKSt6vectorIiSaIiEEiiNS_7BinTypeE.exit.thread1004, label %bb.ep

_ZN8LightGBM10NeedFilterERKSt6vectorIiSaIiEEiiNS_7BinTypeE.exit.thread1004: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit347
  store i8 1, ptr %i.aag, align 8, !tbaa !295
  %.pre900.pre = load ptr, ptr %12, align 8, !tbaa !76
  br label %.thread998

bb.ep:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit347
  store i8 0, ptr %i.aag, align 8, !tbaa !295
  br i1 %7, label %bb.eq, label %.loopexit1004

bb.eq:                                            ; preds = %bb.ep
  %i.aah = trunc i64 %3 to i32                    ; 2 uses
  %i.aai = load i32, ptr %i.ab, align 8, !tbaa !296
  %i.aaj = icmp eq i32 %i.aai, 0
  %i.aak = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !166
  %i.aam = load ptr, ptr %12, align 8, !tbaa !76  ; 4 uses
  %i.aan = ptrtoint ptr %i.aal to i64
  %i.aao = ptrtoint ptr %i.aam to i64
  %i.aap = sub i64 %i.aan, %i.aao
  %i.aaq = ashr exact i64 %i.aap, 2               ; 3 uses
  br i1 %i.aaj, label %.preheader.i, label %bb.es

.preheader.i:                                     ; preds = %bb.eq
  %i.aar = add nsw i64 %i.aaq, -1                 ; 2 uses
  %.not4151.not.i = icmp eq i64 %i.aar, 0
  br i1 %.not4151.not.i, label %_ZN8LightGBM10NeedFilterERKSt6vectorIiSaIiEEiiNS_7BinTypeE.exit.thread553, label %.lr.ph54.i

bb.er:                                            ; preds = %.lr.ph54.i
  %i.aas = add nuw i64 %.02953.i, 1               ; 2 uses
  %exitcond61.not.i = icmp eq i64 %i.aas, %i.aar
  br i1 %exitcond61.not.i, label %_ZN8LightGBM10NeedFilterERKSt6vectorIiSaIiEEiiNS_7BinTypeE.exit.thread553, label %.lr.ph54.i, !llvm.loop !18

.lr.ph54.i:                                       ; preds = %.preheader.i, %bb.er
  %.02953.i = phi i64 [ %i.aas, %bb.er ], [ 0, %.preheader.i ] ; 2 uses
  %.03052.i = phi i32 [ %i.aav, %bb.er ], [ 0, %.preheader.i ]
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.aam, i64 %.02953.i
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !51
  %i.aav = add nsw i32 %i.aau, %.03052.i          ; 3 uses
  %.not39.i = icmp slt i32 %i.aav, %6
  %i.aaw = sub nsw i32 %i.aah, %i.aav
  %.not40.i = icmp slt i32 %i.aaw, %6
  %or.cond.i = select i1 %.not39.i, i1 true, i1 %.not40.i
  br i1 %or.cond.i, label %bb.er, label %.loopexit1004

bb.es:                                            ; preds = %bb.eq
  %i.aax = icmp ult i64 %i.aaq, 3
  br i1 %i.aax, label %.preheader45.i, label %.loopexit1004

.preheader45.i:                                   ; preds = %bb.es
  %i.aay = add nsw i64 %i.aaq, -1                 ; 2 uses
  %.not58.i = icmp eq i64 %i.aay, 0
  br i1 %.not58.i, label %_ZN8LightGBM10NeedFilterERKSt6vectorIiSaIiEEiiNS_7BinTypeE.exit.thread553, label %.lr.ph.i352

bb.et:                                            ; preds = %.lr.ph.i352
  %i.aaz = add nuw i64 %.048.i, 1                 ; 2 uses
  %exitcond.not.i354 = icmp eq i64 %i.aaz, %i.aay
  br i1 %exitcond.not.i354, label %_ZN8LightGBM10NeedFilterERKSt6vectorIiSaIiEEiiNS_7BinTypeE.exit.thread553, label %.lr.ph.i352, !llvm.loop !19

.lr.ph.i352:                                      ; preds = %.preheader45.i, %bb.et
  %.048.i = phi i64 [ %i.aaz, %bb.et ], [ 0, %.preheader45.i ] ; 2 uses
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.aam, i64 %.048.i
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !51 ; 2 uses
  %.not.i353 = icmp slt i32 %i.abb, %6
  %i.abc = sub nsw i32 %i.aah, %i.abb
  %.not38.i = icmp slt i32 %i.abc, %6
  %or.cond42.i = select i1 %.not.i353, i1 true, i1 %.not38.i
  br i1 %or.cond42.i, label %bb.et, label %.loopexit1004

_ZN8LightGBM10NeedFilterERKSt6vectorIiSaIiEEiiNS_7BinTypeE.exit.thread553: ; preds = %bb.et, %bb.er, %.preheader.i, %.preheader45.i
  store i8 1, ptr %i.aag, align 8, !tbaa !295
  br label %.thread998

.loopexit1004:                                    ; preds = %.lr.ph.i352, %.lr.ph54.i, %bb.es, %bb.ep
  %i.abd = invoke noundef i32 @_ZNK8LightGBM9BinMapper10ValueToBinEd(ptr noundef nonnull align 8 dereferenceable(160) %0, double noundef 0.000000e+00)
          to label %bb.eu unwind label %bb.ci     ; 5 uses

bb.eu:                                            ; preds = %.loopexit1004
  store i32 %i.abd, ptr %i.ac, align 8, !tbaa !1584
  %i.abe = load ptr, ptr %12, align 8, !tbaa !64  ; 9 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !64 ; 2 uses
  %i.abh = icmp eq ptr %i.abe, %i.abg
  br i1 %i.abh, label %_ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.abi = ptrtoint ptr %i.abg to i64
  %i.abj = ptrtoint ptr %i.abe to i64
  %i.abk = sub i64 %i.abi, %i.abj
  %i.abl = ashr exact i64 %i.abk, 2               ; 5 uses
  %i.abm = icmp ugt i64 %i.abl, 1024
  br i1 %i.abm, label %bb.ew, label %.preheader.i355

.preheader.i355:                                  ; preds = %bb.ev
  %i.abn = icmp samesign ugt i64 %i.abl, 1
  br i1 %i.abn, label %.lr.ph.preheader.i, label %_ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i355
  %.pre.i357 = load i32, ptr %i.abe, align 4, !tbaa !51 ; 3 uses
  %i.abo = add nsw i64 %i.abl, -1                 ; 2 uses
  %min.iters.check1199 = icmp ult i64 %i.abl, 9
  br i1 %min.iters.check1199, label %.lr.ph.i358.preheader, label %vector.ph1200

vector.ph1200:                                    ; preds = %.lr.ph.preheader.i
  %n.vec1201 = and i64 %i.abo, -4                 ; 3 uses
  %i.abp = or disjoint i64 %n.vec1201, 1
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.pre.i357, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %vector.ph1200
  %index1203 = phi i64 [ 0, %vector.ph1200 ], [ %index.next1209, %vector.body1202 ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %broadcast.splat, %vector.ph1200 ], [ %i.abx, %vector.body1202 ] ; 2 uses
  %vec.phi1204 = phi <2 x i32> [ %broadcast.splat, %vector.ph1200 ], [ %i.aby, %vector.body1202 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph1200 ], [ %vec.ind.next, %vector.body1202 ] ; 3 uses
  %vec.phi1205 = phi <2 x i64> [ poison, %vector.ph1200 ], [ %i.abv, %vector.body1202 ]
  %vec.phi1206 = phi <2 x i64> [ poison, %vector.ph1200 ], [ %i.abw, %vector.body1202 ]
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.abe, i64 %index1203 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 4
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abq, i64 12
  %wide.load1207 = load <2 x i32>, ptr %i.abr, align 4, !tbaa !51 ; 2 uses
  %wide.load1208 = load <2 x i32>, ptr %i.abs, align 4, !tbaa !51 ; 2 uses
  %i.abt = icmp sgt <2 x i32> %wide.load1207, %vec.phi
  %i.abu = icmp sgt <2 x i32> %wide.load1208, %vec.phi1204
  %i.abv = select <2 x i1> %i.abt, <2 x i64> %vec.ind, <2 x i64> %vec.phi1205 ; 2 uses
  %i.abw = select <2 x i1> %i.abu, <2 x i64> %step.add, <2 x i64> %vec.phi1206 ; 2 uses
  %i.abx = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %wide.load1207, <2 x i32> %vec.phi) ; 3 uses
  %i.aby = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %wide.load1208, <2 x i32> %vec.phi1204) ; 3 uses
  %index.next1209 = add nuw i64 %index1203, 4     ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.abz = icmp eq i64 %index.next1209, %n.vec1201
  br i1 %i.abz, label %middle.block1210, label %vector.body1202, !llvm.loop !1582

middle.block1210:                                 ; preds = %vector.body1202
  %rdx.minmax = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.abx, <2 x i32> %i.aby)
  %i.aca = call i32 @llvm.vector.reduce.smax.v2i32(<2 x i32> %rdx.minmax) ; 3 uses
  %broadcast.splatinsert1211 = insertelement <2 x i32> poison, i32 %i.aca, i64 0
  %broadcast.splat1212 = shufflevector <2 x i32> %broadcast.splatinsert1211, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.acb = icmp eq <2 x i32> %i.abx, %broadcast.splat1212
  %i.acc = icmp eq <2 x i32> %i.aby, %broadcast.splat1212
  %i.acd = select <2 x i1> %i.acc, <2 x i64> %i.abw, <2 x i64> splat (i64 -1) ; 2 uses
  %i.ace = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.abv, <2 x i64> %i.acd)
  %rdx.minmax1213 = select <2 x i1> %i.acb, <2 x i64> %i.ace, <2 x i64> %i.acd
  %i.acf = call i64 @llvm.vector.reduce.umin.v2i64(<2 x i64> %rdx.minmax1213)
  %i.acg = add i64 %i.acf, 1
  %i.ach = icmp eq i32 %i.aca, %.pre.i357
  %i.aci = select i1 %i.ach, i64 0, i64 %i.acg    ; 2 uses
  %cmp.n1214 = icmp eq i64 %i.abo, %n.vec1201
  br i1 %cmp.n1214, label %_ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i358.preheader

.lr.ph.i358.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block1210
  %.ph = phi i32 [ %.pre.i357, %.lr.ph.preheader.i ], [ %i.aca, %middle.block1210 ]
  %.015.i.ph = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.abp, %middle.block1210 ]
  %.01214.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.aci, %middle.block1210 ]
  br label %.lr.ph.i358

bb.ew:                                            ; preds = %bb.ev
  %i.acj = invoke noundef i64 @_ZN8LightGBM9ArrayArgsIiE8ArgMaxMTERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %._ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit_crit_edge unwind label %bb.ci

._ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit_crit_edge: ; preds = %bb.ew
  %.pre897 = load ptr, ptr %12, align 8, !tbaa !76
  %.pre898 = load i32, ptr %i.ac, align 8, !tbaa !1584
  br label %_ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit

.lr.ph.i358:                                      ; preds = %.lr.ph.i358.preheader, %.lr.ph.i358
  %i.ack = phi i32 [ %i.acp, %.lr.ph.i358 ], [ %.ph, %.lr.ph.i358.preheader ] ; 2 uses
  %.015.i = phi i64 [ %i.aco, %.lr.ph.i358 ], [ %.015.i.ph, %.lr.ph.i358.preheader ] ; 3 uses
  %.01214.i = phi i64 [ %spec.select.i, %.lr.ph.i358 ], [ %.01214.i.ph, %.lr.ph.i358.preheader ]
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.abe, i64 %.015.i
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !51 ; 2 uses
  %i.acn = icmp sgt i32 %i.acm, %i.ack
  %spec.select.i = select i1 %i.acn, i64 %.015.i, i64 %.01214.i ; 2 uses
  %i.aco = add nuw nsw i64 %.015.i, 1             ; 2 uses
  %exitcond.not.i359 = icmp eq i64 %i.aco, %i.abl
  %i.acp = call i32 @llvm.smax.i32(i32 %i.acm, i32 %i.ack)
  br i1 %exitcond.not.i359, label %_ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i358, !llvm.loop !1583

_ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit: ; preds = %.lr.ph.i358, %middle.block1210, %._ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit_crit_edge, %.preheader.i355, %bb.eu
  %i.acq = phi i32 [ %i.abd, %bb.eu ], [ %.pre898, %._ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit_crit_edge ], [ %i.abd, %.preheader.i355 ], [ %i.abd, %middle.block1210 ], [ %i.abd, %.lr.ph.i358 ] ; 3 uses
  %i.acr = phi ptr [ %i.abe, %bb.eu ], [ %.pre897, %._ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit_crit_edge ], [ %i.abe, %.preheader.i355 ], [ %i.abe, %middle.block1210 ], [ %i.abe, %.lr.ph.i358 ] ; 3 uses
  %.013.i = phi i64 [ 0, %bb.eu ], [ %i.acj, %._ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit_crit_edge ], [ 0, %.preheader.i355 ], [ %i.aci, %middle.block1210 ], [ %spec.select.i, %.lr.ph.i358 ] ; 2 uses
  %i.acs = trunc i64 %.013.i to i32               ; 3 uses
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  store i32 %i.acs, ptr %i.act, align 4, !tbaa !1596
  %i.acu = and i64 %.013.i, 4294967295
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.acr, i64 %i.acu
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !51
  %i.acx = sitofp i32 %i.acw to double
  %i.acy = uitofp i64 %3 to double                ; 2 uses
  %i.acz = fdiv double %i.acx, %i.acy
  %i.ada = icmp ne i32 %i.acq, %i.acs
  %i.adb = fcmp olt double %i.acz, f0x3FE6666666666666
  %or.cond15 = select i1 %i.ada, i1 %i.adb, i1 false
  br i1 %or.cond15, label %bb.ex, label %.thread1002

bb.ex:                                            ; preds = %_ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit
  store i32 %i.acq, ptr %i.act, align 4, !tbaa !1596
  br label %.thread1002

.thread1002:                                      ; preds = %_ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit, %bb.ex
  %i.adc = phi i32 [ %i.acq, %bb.ex ], [ %i.acs, %_ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit ]
  %i.add = zext i32 %i.adc to i64
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.acr, i64 %i.add
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !51
  %i.adg = sitofp i32 %i.adf to double
  %i.adh = fdiv double %i.adg, %i.acy
  %i.adi = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.adh, ptr %i.adi, align 8, !tbaa !306
  br label %bb.ey

.thread998:                                       ; preds = %_ZN8LightGBM10NeedFilterERKSt6vectorIiSaIiEEiiNS_7BinTypeE.exit.thread553, %_ZN8LightGBM10NeedFilterERKSt6vectorIiSaIiEEiiNS_7BinTypeE.exit.thread1004
  %.pre900 = phi ptr [ %.pre900.pre, %_ZN8LightGBM10NeedFilterERKSt6vectorIiSaIiEEiiNS_7BinTypeE.exit.thread1004 ], [ %i.aam, %_ZN8LightGBM10NeedFilterERKSt6vectorIiSaIiEEiiNS_7BinTypeE.exit.thread553 ] ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double 1.000000e+00, ptr %i.adj, align 8, !tbaa !306
  %.not.i.i.i361 = icmp eq ptr %.pre900, null
  br i1 %.not.i.i.i361, label %_ZNSt6vectorIiSaIiEED2Ev.exit362, label %bb.ey

bb.ey:                                            ; preds = %.thread1002, %.thread998
  %i.adk = phi ptr [ %i.acr, %.thread1002 ], [ %.pre900, %.thread998 ] ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !235
  %i.adn = ptrtoint ptr %i.adm to i64
  %i.ado = ptrtoint ptr %i.adk to i64
  %i.adp = sub i64 %i.adn, %i.ado
  call void @_ZdlPvm(ptr noundef nonnull %i.adk, i64 noundef %i.adp) #38
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit362

_ZNSt6vectorIiSaIiEED2Ev.exit362:                 ; preds = %.thread998, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %.not.i.i.i363 = icmp eq ptr %.sroa.0428.6, null
  br i1 %.not.i.i.i363, label %_ZNSt6vectorIdSaIdEED2Ev.exit366, label %bb.ez

bb.ez:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit362
  %i.adq = ptrtoint ptr %.sroa.39.6 to i64
  %i.adr = ptrtoint ptr %.sroa.0428.6 to i64
  %i.ads = sub i64 %i.adq, %i.adr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0428.6, i64 noundef %i.ads) #38
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit366

_ZNSt6vectorIdSaIdEED2Ev.exit366:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit362, %bb.ez
  %i.adt = ptrtoint ptr %.sroa.43.6 to i64
  %i.adu = sub i64 %i.adt, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0458.6, i64 noundef %i.adu) #38
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit351:                 ; preds = %bb.eo, %_ZNSt6vectorIiSaIiEED2Ev.exit349, %bb.ci, %bb.cd, %bb.bz, %bb.bp, %bb.bk
  %.pn148 = phi { ptr, i32 } [ %i.ma, %bb.ci ], [ %i.lm, %bb.cd ], [ %i.hr, %bb.bk ], [ %i.il, %bb.bp ], [ %.pn145, %bb.eo ], [ %i.kd, %bb.bz ], [ %.pn145, %_ZNSt6vectorIiSaIiEED2Ev.exit349 ]
  %i.adv = load ptr, ptr %12, align 8, !tbaa !76  ; 3 uses
  %.not.i.i.i367 = icmp eq ptr %i.adv, null
  br i1 %.not.i.i.i367, label %_ZNSt6vectorIiSaIiEED2Ev.exit368, label %bb.fa

bb.fa:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit351
  %i.adw = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !235
  %i.ady = ptrtoint ptr %i.adx to i64
  %i.adz = ptrtoint ptr %i.adv to i64
  %i.aea = sub i64 %i.ady, %i.adz
  call void @_ZdlPvm(ptr noundef nonnull %i.adv, i64 noundef %i.aea) #38
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit368

_ZNSt6vectorIiSaIiEED2Ev.exit368:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit351, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.fb

bb.fb:                                            ; preds = %.loopexit589, %.loopexit.split-lp590, %.loopexit.split-lp604.loopexit.split-lp, %.loopexit594, %.loopexit.split-lp595, %_ZNSt6vectorIiSaIiEED2Ev.exit368, %bb.v
  %.sroa.0458.7 = phi ptr [ %.sroa.0458.6, %_ZNSt6vectorIiSaIiEED2Ev.exit368 ], [ %.sroa.0458.3.ph596, %.loopexit.split-lp595 ], [ %i.bd, %bb.v ], [ %.sroa.0458.11, %.loopexit.split-lp604.loopexit.split-lp ], [ %.sroa.0458.3.ph, %.loopexit594 ], [ %.sroa.0458.2726, %.loopexit.split-lp590 ], [ %.sroa.0458.2743, %.loopexit589 ] ; 3 uses
  %.sroa.43.7 = phi ptr [ %.sroa.43.6, %_ZNSt6vectorIiSaIiEED2Ev.exit368 ], [ %.sroa.43.3.ph597, %.loopexit.split-lp595 ], [ %i.bi, %bb.v ], [ %.sroa.43.11, %.loopexit.split-lp604.loopexit.split-lp ], [ %.sroa.43.3.ph, %.loopexit594 ], [ %.sroa.43.2710, %.loopexit.split-lp590 ], [ %.sroa.43.2745, %.loopexit589 ]
  %.sroa.0428.7 = phi ptr [ %.sroa.0428.6, %_ZNSt6vectorIiSaIiEED2Ev.exit368 ], [ %.sroa.0428.3.ph598, %.loopexit.split-lp595 ], [ %.sroa.0428.0516531, %bb.v ], [ %.sroa.0428.4, %.loopexit.split-lp604.loopexit.split-lp ], [ %.sroa.0428.3.ph, %.loopexit594 ], [ %.sroa.0428.2701, %.loopexit.split-lp590 ], [ %.sroa.0428.2746, %.loopexit589 ] ; 3 uses
  %.sroa.39.7 = phi ptr [ %.sroa.39.6, %_ZNSt6vectorIiSaIiEED2Ev.exit368 ], [ %.sroa.39.3.ph599, %.loopexit.split-lp595 ], [ %.sroa.23.0517530, %bb.v ], [ %.sroa.23.3, %.loopexit.split-lp604.loopexit.split-lp ], [ %.sroa.39.3.ph, %.loopexit594 ], [ %.sroa.39.2685, %.loopexit.split-lp590 ], [ %.sroa.39.2748, %.loopexit589 ]
  %.pn150.pn = phi { ptr, i32 } [ %.pn148, %_ZNSt6vectorIiSaIiEED2Ev.exit368 ], [ %lpad.loopexit.split-lp601, %.loopexit.split-lp595 ], [ %i.bx, %bb.v ], [ %lpad.loopexit.split-lp1266, %.loopexit.split-lp604.loopexit.split-lp ], [ %lpad.loopexit600, %.loopexit594 ], [ %lpad.loopexit.split-lp592, %.loopexit.split-lp590 ], [ %lpad.loopexit591, %.loopexit589 ]
  %.not.i.i.i369 = icmp eq ptr %.sroa.0428.7, null
  br i1 %.not.i.i.i369, label %_ZNSt6vectorIiSaIiEED2Ev.exit370, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.aeb = ptrtoint ptr %.sroa.39.7 to i64
  %i.aec = ptrtoint ptr %.sroa.0428.7 to i64
  %i.aed = sub i64 %i.aeb, %i.aec
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0428.7, i64 noundef %i.aed) #38
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit370

_ZNSt6vectorIiSaIiEED2Ev.exit370:                 ; preds = %bb.fb, %bb.fc
  %.not.i.i.i371 = icmp eq ptr %.sroa.0458.7, null
  br i1 %.not.i.i.i371, label %_ZNSt6vectorIdSaIdEED2Ev.exit372, label %bb.fd

bb.fd:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit370
  %i.aee = ptrtoint ptr %.sroa.43.7 to i64
  %i.aef = ptrtoint ptr %.sroa.0458.7 to i64
  %i.aeg = sub i64 %i.aee, %i.aef
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0458.7, i64 noundef %i.aeg) #38
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit372

_ZNSt6vectorIdSaIdEED2Ev.exit372:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit370, %bb.fd
  resume { ptr, i32 } %.pn150.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef %0, ...) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.va_start.p0(ptr nonnull %1)
  call void @_ZN8LightGBM3Log5WriteENS_8LogLevelEPKcS3_P13__va_list_tag(i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef %0, ptr noundef nonnull %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK8LightGBM9BinMapper10ValueToBinEd(ptr noundef nonnull align 8 dereferenceable(160) %0, double noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = fcmp uno double %1, 0.000000e+00
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !296  ; 2 uses
  br i1 %i.a, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %_ZNKSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE5countERS5_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !320
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %0, align 8, !tbaa !294
  %i.i = add nsw i32 %i.h, -1
  br label %_ZNKSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE5countERS5_.exit.thread

._crit_edge:                                      ; preds = %bb.a, %bb.c
  %.015 = phi double [ 0.000000e+00, %bb.c ], [ %1, %bb.a ] ; 2 uses
  %i.j = icmp eq i32 %i.c, 0
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.k = load i32, ptr %0, align 8, !tbaa !294
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !320
  %i.n = icmp eq i32 %i.m, 2
  %spec.select.v = select i1 %i.n, i32 -2, i32 -1
  %spec.select = add nsw i32 %spec.select.v, %i.k ; 2 uses
  %i.o = icmp sgt i32 %spec.select, 0
  br i1 %i.o, label %.lr.ph, label %_ZNKSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE5countERS5_.exit.thread

.lr.ph:                                           ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !300
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.148 = phi i32 [ %spec.select, %.lr.ph ], [ %.2, %bb.f ] ; 2 uses
  %.01347 = phi i32 [ 0, %.lr.ph ], [ %.114, %bb.f ] ; 2 uses
  %i.r = add nsw i32 %.01347, -1
  %i.s = add i32 %i.r, %.148
  %i.t = lshr i32 %i.s, 1                         ; 3 uses
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !80
  %i.x = fcmp ugt double %.015, %i.w              ; 2 uses
  %i.y = add nuw nsw i32 %i.t, 1
  %.114 = select i1 %i.x, i32 %i.y, i32 %.01347   ; 3 uses
  %.2 = select i1 %i.x, i32 %.148, i32 %i.t       ; 2 uses
  %i.z = icmp slt i32 %.114, %.2
  br i1 %i.z, label %bb.f, label %_ZNKSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE5countERS5_.exit.thread, !llvm.loop !1597

bb.g:                                             ; preds = %._crit_edge
  %i.aa = fptosi double %.015 to i32              ; 9 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %_ZNKSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE5countERS5_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !309
  %.not.not.i.i.i = icmp eq i64 %i.ae, 0          ; 2 uses
  br i1 %.not.not.i.i.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.af, %bb.i ], [ %.sroa.06.0.i.i.i, %bb.k ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !304 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE5countERS5_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !51
  %i.ai = icmp eq i32 %i.ah, %i.aa
  br i1 %i.ai, label %.loopexit, label %bb.j, !llvm.loop !1598

bb.l:                                             ; preds = %bb.h
  %i.aj = zext nneg i32 %i.aa to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !298 ; 3 uses
  %i.am = urem i64 %i.aj, %i.al                   ; 3 uses
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !297 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE5countERS5_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !304 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !51
  %i.at = icmp eq i32 %i.as, %i.aa
  br i1 %i.at, label %.thread, label %.lr.ph.i.i.i.i.i

bb.n:                                             ; preds = %bb.o
  %i.au = icmp eq i32 %i.ax, %i.aa
  br i1 %i.au, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !17

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %bb.n
  %.020.i.i.i.i.i = phi ptr [ %i.av, %bb.n ], [ %i.aq, %bb.m ]
  %i.av = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !304 ; 3 uses
end_hunk_0
