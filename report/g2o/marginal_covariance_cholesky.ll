Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/marginal_covariance_cholesky?download=true
inline.NumInlined: 987
inline.NumDeleted: 523
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3g2o26MarginalCovarianceCholesky12computeEntryEii:bb.a
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !47
  %i.ca = icmp eq i32 %i.c, %i.bz
  br i1 %i.ca, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit, label %.lr.ph.i.i.i.i36

bb.q:                                             ; preds = %bb.r
  %i.cb = icmp eq i32 %i.c, %i.ce
  br i1 %i.cb, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit, label %.lr.ph.i.i.i.i36, !llvm.loop !2

.lr.ph.i.i.i.i36:                                 ; preds = %bb.p, %bb.q
  %.020.i.i.i.i37 = phi ptr [ %i.cc, %bb.q ], [ %i.bx, %bb.p ]
  %i.cc = load ptr, ptr %.020.i.i.i.i37, align 8, !tbaa !40 ; 4 uses
  %.not18.i.i.i.i38 = icmp eq ptr %i.cc, null
  br i1 %.not18.i.i.i.i38, label %.loopexit.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i36
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !47 ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = urem i64 %i.cf, %i.bs
  %.not19.i.i.i.i39 = icmp eq i64 %i.cg, %i.bt
  br i1 %.not19.i.i.i.i39, label %bb.q, label %..loopexit_crit_edge21.i.i.i.i40, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i40:                 ; preds = %bb.r
  br label %.loopexit.i.i, !llvm.loop !2

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i36, %..loopexit_crit_edge21.i.i.i.i40, %bb.o
  %i.ch = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 5 uses
  store ptr null, ptr %i.ch, align 8, !tbaa !40
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i32 %i.c, ptr %i.ci, align 8, !tbaa !114
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store double 0.000000e+00, ptr %i.cj, align 8, !tbaa !54
  %i.ck = invoke ptr @_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 noundef %i.bt, i64 noundef %i.bq, ptr noundef nonnull %i.ch, i64 noundef 1)
          to label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 24) #21
  resume { ptr, i32 } %i.cl

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit: ; preds = %bb.q, %bb.p, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.ck, %.loopexit.i.i ], [ %i.bx, %bb.p ], [ %i.cc, %bb.q ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store double %.029, ptr %.1.i.i, align 8, !tbaa !49
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit
  %.0 = phi double [ %i.ac, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit ], [ %.029, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit ]
  ret double %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o26MarginalCovarianceCholesky17computeCovarianceEPPdRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i, align 8, !tbaa !40 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #21
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56   ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !57     ; 2 uses
  %.not211 = icmp eq ptr %i.j, %i.k
  br i1 %.not211, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

._crit_edge197:                                   ; preds = %._crit_edge
  %.not.i.i = icmp eq ptr %.sroa.0118.1.lcssa, %.sroa.11.1.lcssa
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread, label %bb.b

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread: ; preds = %._crit_edge197, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit
  %.sroa.17.0.lcssa298 = phi ptr [ %.sroa.17.1.lcssa, %._crit_edge197 ], [ null, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit ]
  %.sroa.0118.0.lcssa295 = phi ptr [ %.sroa.0118.1.lcssa, %._crit_edge197 ], [ null, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit ] ; 2 uses
  %.pre269 = ptrtoint ptr %.sroa.0118.0.lcssa295 to i64
  br label %.preheader154

bb.b:                                             ; preds = %._crit_edge197
  %i.m = ptrtoint ptr %.sroa.11.1.lcssa to i64
  %i.n = ptrtoint ptr %.sroa.0118.1.lcssa to i64  ; 3 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = shl nuw nsw i64 %i.q, 1
  %i.s = xor i64 %i.r, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %.sroa.0118.1.lcssa, ptr %.sroa.11.1.lcssa, i64 noundef %i.s)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.b
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %.sroa.0118.1.lcssa, ptr %.sroa.11.1.lcssa)
          to label %.lr.ph202 unwind label %bb.m

bb.c:                                             ; preds = %.lr.ph, %._crit_edge
  %i.t = phi ptr [ %i.k, %.lr.ph ], [ %i.ac, %._crit_edge ] ; 2 uses
  %i.u = phi ptr [ %i.j, %.lr.ph ], [ %i.ad, %._crit_edge ]
  %.069196 = phi i32 [ 0, %.lr.ph ], [ %i.w, %._crit_edge ] ; 3 uses
  %.070195 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %._crit_edge ] ; 2 uses
  %.sroa.17.0194 = phi ptr [ null, %.lr.ph ], [ %.sroa.17.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.11.0193 = phi ptr [ null, %.lr.ph ], [ %.sroa.11.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0118.0192 = phi ptr [ null, %.lr.ph ], [ %.sroa.0118.1.lcssa, %._crit_edge ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.070195
  %i.w = load i32, ptr %i.v, align 4, !tbaa !47   ; 2 uses
  %i.x = sub nsw i32 %i.w, %.069196               ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.preheader155.preheader, label %._crit_edge

.preheader155.preheader:                          ; preds = %bb.c
  %i.z = sext i32 %.069196 to i64                 ; 2 uses
  %wide.trip.count225 = zext nneg i32 %i.x to i64 ; 2 uses
  br label %.preheader155

.preheader155:                                    ; preds = %.preheader155.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader155.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.sroa.17.1188 = phi ptr [ %.sroa.17.0194, %.preheader155.preheader ], [ %.sroa.17.4, %bb.d ]
  %.sroa.11.1187 = phi ptr [ %.sroa.11.0193, %.preheader155.preheader ], [ %.sroa.11.3, %bb.d ]
  %.sroa.0118.1186 = phi ptr [ %.sroa.0118.0192, %.preheader155.preheader ], [ %.sroa.0118.4, %bb.d ]
  %i.aa = add nsw i64 %indvars.iv, %i.z           ; 2 uses
  %i.ab = trunc nsw i64 %i.aa to i32
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !56
  %.pre266 = load ptr, ptr %2, align 8, !tbaa !57
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.ac = phi ptr [ %i.t, %bb.c ], [ %.pre266, %._crit_edge.loopexit ] ; 2 uses
  %i.ad = phi ptr [ %i.u, %bb.c ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.0118.1.lcssa = phi ptr [ %.sroa.0118.0192, %bb.c ], [ %.sroa.0118.4, %._crit_edge.loopexit ] ; 10 uses
  %.sroa.11.1.lcssa = phi ptr [ %.sroa.11.0193, %bb.c ], [ %.sroa.11.3, %._crit_edge.loopexit ] ; 5 uses
  %.sroa.17.1.lcssa = phi ptr [ %.sroa.17.0194, %bb.c ], [ %.sroa.17.4, %._crit_edge.loopexit ] ; 5 uses
  %i.ae = add nuw i64 %.070195, 1                 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = icmp ult i64 %i.ae, %i.ai
  br i1 %i.aj, label %bb.c, label %._crit_edge197, !llvm.loop !115

bb.d:                                             ; preds = %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond226.not.a = icmp eq i64 %indvars.iv.next, %wide.trip.count225
  br i1 %exitcond226.not.a, label %._crit_edge.loopexit, label %.preheader155, !llvm.loop !116

bb.e:                                             ; preds = %.preheader155, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit
  %indvars.iv221 = phi i64 [ %indvars.iv, %.preheader155 ], [ %indvars.iv.next222, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.17.2184 = phi ptr [ %.sroa.17.1188, %.preheader155 ], [ %.sroa.17.4, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit ] ; 7 uses
  %.sroa.11.2183 = phi ptr [ %.sroa.11.1187, %.preheader155 ], [ %.sroa.11.3, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.0118.2182 = phi ptr [ %.sroa.0118.1186, %.preheader155 ], [ %.sroa.0118.4, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit ] ; 8 uses
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !45  ; 3 uses
  %.not83 = icmp eq ptr %i.ak, null
  br i1 %.not83, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.aa
  %i.am = load i32, ptr %i.al, align 4, !tbaa !47
  %i.an = getelementptr [4 x i8], ptr %i.ak, i64 %indvars.iv221
  %i.ao = getelementptr [4 x i8], ptr %i.an, i64 %i.z
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !47
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aq = trunc i64 %indvars.iv221 to i32
  %i.ar = add i32 %.069196, %i.aq
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = phi i32 [ %i.am, %bb.f ], [ %i.ab, %bb.g ] ; 2 uses
  %i.at = phi i32 [ %i.ap, %bb.f ], [ %i.ar, %bb.g ] ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.at) ; 2 uses
  %spec.select149.a = tail call i32 @llvm.smax.i32(i32 %i.as, i32 %i.at) ; 2 uses
  %.not.i.i87 = icmp eq ptr %.sroa.11.2183, %.sroa.17.2184
  br i1 %.not.i.i87, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.6.0.insert.ext = zext i32 %spec.select149.a to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.0103.0.insert.ext = zext i32 %spec.select to i64
  %.sroa.0103.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.0103.0.insert.ext
  store i64 %.sroa.0103.0.insert.insert, ptr %.sroa.11.2183, align 4, !tbaa !47
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.au = ptrtoint ptr %.sroa.17.2184 to i64
  %i.av = ptrtoint ptr %.sroa.0118.2182 to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 4 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.k, label %_ZNKSt6vectorIN3g2o10MatrixElemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %.noexc88 unwind label %.loopexit.split-lp

.noexc88:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN3g2o10MatrixElemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #22
          to label %.noexc89 unwind label %.loopexit ; 5 uses

.noexc89:                                         ; preds = %_ZNKSt6vectorIN3g2o10MatrixElemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw
  %.sroa.6.0.insert.ext109 = zext i32 %spec.select149.a to i64
  %.sroa.6.0.insert.shift110 = shl nuw i64 %.sroa.6.0.insert.ext109, 32
  %.sroa.0103.0.insert.ext105 = zext i32 %spec.select to i64
  %.sroa.0103.0.insert.insert107 = or disjoint i64 %.sroa.6.0.insert.shift110, %.sroa.0103.0.insert.ext105
  store i64 %.sroa.0103.0.insert.insert107, ptr %i.bf, align 4, !tbaa !47
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0118.2182, %.sroa.17.2184
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc89, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i ], [ %i.be, %.noexc89 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0118.2182, %.noexc89 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.bg = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !47, !alias.scope !126, !noalias !125
  store i64 %i.bg, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !47, !alias.scope !125, !noalias !126
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bh, %.sroa.17.2184
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc89
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.be, %.noexc89 ], [ %i.bi, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0118.2182, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0118.2182, i64 noundef %i.aw) #21
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.i
  %.sroa.0118.4 = phi ptr [ %i.be, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0118.2182, %bb.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.11.2183, %bb.i ]
  %.sroa.17.4 = phi ptr [ %i.bj, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.17.2184, %bb.i ] ; 3 uses
  %.sroa.11.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 8 ; 3 uses
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count225
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !120

.loopexit:                                        ; preds = %_ZNKSt6vectorIN3g2o10MatrixElemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.preheader154:                                    ; preds = %bb.n, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread
  %.pre-phi270308 = phi i64 [ %.pre269, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread ], [ %i.n, %bb.n ]
  %.sroa.0118.0.lcssa294307 = phi ptr [ %.sroa.0118.0.lcssa295, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread ], [ %.sroa.0118.1.lcssa, %bb.n ] ; 2 uses
  %.sroa.17.0.lcssa297306 = phi ptr [ %.sroa.17.0.lcssa298, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread ], [ %.sroa.17.1.lcssa, %bb.n ]
  %i.bk = load ptr, ptr %i.i, align 8, !tbaa !56  ; 2 uses
  %i.bl = load ptr, ptr %2, align 8, !tbaa !57    ; 3 uses
  %.not213 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not213, label %._crit_edge210, label %.lr.ph209

.lr.ph209:                                        ; preds = %.preheader154
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.p

bb.m:                                             ; preds = %.noexc, %bb.b
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.lr.ph202:                                        ; preds = %.noexc, %bb.n
  %.068201 = phi i64 [ %i.by, %bb.n ], [ 0, %.noexc ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0118.1.lcssa, i64 %.068201 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !59
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !60
  %i.bx = invoke noundef double @_ZN3g2o26MarginalCovarianceCholesky12computeEntryEii(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.bu, i32 noundef %i.bw)
          to label %bb.n unwind label %.thread135 ; 0 uses

bb.n:                                             ; preds = %.lr.ph202
  %i.by = add nuw i64 %.068201, 1                 ; 2 uses
  %exitcond227.not = icmp eq i64 %i.by, %i.p
  br i1 %exitcond227.not, label %.preheader154, label %.lr.ph202, !llvm.loop !121

.thread135:                                       ; preds = %.lr.ph202
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

._crit_edge210:                                   ; preds = %._crit_edge206, %.preheader154
  %.not.i.i.i90 = icmp eq ptr %.sroa.0118.0.lcssa294307, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge210
  %i.ca = ptrtoint ptr %.sroa.17.0.lcssa297306 to i64
  %i.cb = sub i64 %i.ca, %.pre-phi270308
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0118.0.lcssa294307, i64 noundef %i.cb) #21
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit: ; preds = %._crit_edge210, %bb.o
  ret void

bb.p:                                             ; preds = %.lr.ph209, %._crit_edge206
  %.067208 = phi i64 [ 0, %.lr.ph209 ], [ %i.dx, %._crit_edge206 ] ; 3 uses
  %.1207 = phi i32 [ 0, %.lr.ph209 ], [ %i.cd, %._crit_edge206 ] ; 5 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.067208
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !47 ; 2 uses
  %i.ce = sub nsw i32 %i.cd, %.1207               ; 7 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.067208
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !127 ; 6 uses
  %i.ch = icmp sgt i32 %i.ce, 0
  br i1 %i.ch, label %.preheader153.lr.ph, label %._crit_edge206

.preheader153.lr.ph:                              ; preds = %bb.p
  %i.ci = load ptr, ptr %i.bq, align 8, !tbaa !45 ; 5 uses
  %.not = icmp eq ptr %i.ci, null                 ; 2 uses
  %i.cj = load i32, ptr %0, align 8, !tbaa !34    ; 3 uses
  %i.ck = load i64, ptr %i.br, align 8, !tbaa !51
  %.not.not.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.not.i.i, label %.preheader153.lr.ph.split.us, label %.preheader153.lr.ph.split

.preheader153.lr.ph.split.us:                     ; preds = %.preheader153.lr.ph
  %i.cl = zext nneg i32 %i.ce to i64              ; 5 uses
  br i1 %.not, label %.preheader153.us.us.preheader, label %.preheader153.us.preheader

.preheader153.us.preheader:                       ; preds = %.preheader153.lr.ph.split.us
  %i.cm = sext i32 %.1207 to i64                  ; 2 uses
  %wide.trip.count246 = zext nneg i32 %i.ce to i64 ; 2 uses
  %invariant.gep322 = getelementptr [4 x i8], ptr %i.ci, i64 %i.cm
  %invariant.gep318 = getelementptr [4 x i8], ptr %i.ci, i64 %i.cm
  br label %.preheader153.us

.preheader153.us.us.preheader:                    ; preds = %.preheader153.lr.ph.split.us
  %i.cn = zext i32 %.1207 to i64                  ; 2 uses
  %i.co = zext i32 %i.cj to i64
  br label %.preheader153.us.us

.preheader153.us.us:                              ; preds = %.preheader153.us.us.preheader, %.split.us.us.split.us.us
  %indvars.iv257 = phi i64 [ %i.cn, %.preheader153.us.us.preheader ], [ %indvars.iv.next258, %.split.us.us.split.us.us ] ; 2 uses
  %indvars.iv250 = phi i64 [ 0, %.preheader153.us.us.preheader ], [ %indvars.iv.next251, %.split.us.us.split.us.us ] ; 5 uses
  %i.cp = mul nuw nsw i64 %indvars.iv250, %i.cl
  %i.cq = mul i64 %indvars.iv257, %i.co
  %invariant.op = add i64 %i.cq, %i.cn
  %invariant.gep324 = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cp
  %invariant.gep326 = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv250
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %bb.s, %.preheader153.us.us
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %bb.s ], [ %indvars.iv250, %.preheader153.us.us ] ; 5 uses
  %.reass = add i64 %indvars.iv252, %invariant.op
  %i.cr = trunc i64 %.reass to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader.us.us.us.us
  %.sroa.06.0.in.i.i.us.us.us.us = phi ptr [ %.sroa.06.0.i.i.us.us.us.us, %bb.q ], [ %i.b, %.preheader.us.us.us.us ]
  %.sroa.06.0.i.i.us.us.us.us = load ptr, ptr %.sroa.06.0.in.i.i.us.us.us.us, align 8, !tbaa !40, !nonnull !61, !noundef !61 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us.us.us, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !47
  %i.cu = icmp eq i32 %i.ct, %i.cr
  br i1 %i.cu, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us.us.us, label %bb.q, !llvm.loop !1

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us.us.us: ; preds = %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us.us.us, i64 16
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !54 ; 2 uses
  %gep325 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep324, i64 %indvars.iv252
  store double %i.cw, ptr %gep325, align 8, !tbaa !49
  %.not82.us.us.us.us = icmp eq i64 %indvars.iv250, %indvars.iv252
  br i1 %.not82.us.us.us.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us.us.us
  %i.cx = mul nuw nsw i64 %indvars.iv252, %i.cl
  %gep327 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep326, i64 %i.cx
  store double %i.cw, ptr %gep327, align 8, !tbaa !49
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us.us.us
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %exitcond256.not = icmp eq i64 %indvars.iv.next253, %i.cl
  br i1 %exitcond256.not, label %.split.us.us.split.us.us, label %.preheader.us.us.us.us, !llvm.loop !122

.split.us.us.split.us.us:                         ; preds = %bb.s
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %indvars.iv.next258 = add i64 %indvars.iv257, 1
  %exitcond263.not = icmp eq i64 %indvars.iv.next251, %i.cl
  br i1 %exitcond263.not, label %._crit_edge206, label %.preheader153.us.us, !llvm.loop !123

.preheader153.us:                                 ; preds = %.preheader153.us.preheader, %.split.us.us.split
  %indvars.iv238 = phi i64 [ 0, %.preheader153.us.preheader ], [ %indvars.iv.next239, %.split.us.us.split ] ; 6 uses
  %gep323 = getelementptr [4 x i8], ptr %invariant.gep322, i64 %indvars.iv238
  %i.cy = mul nuw nsw i64 %indvars.iv238, %i.cl
  %i.cz = load i32, ptr %gep323, align 4, !tbaa !47 ; 2 uses
  %invariant.gep320 = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cy
  %i.da = trunc nuw nsw i64 %indvars.iv238 to i32
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %bb.v, %.preheader153.us
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %bb.v ], [ %indvars.iv238, %.preheader153.us ] ; 5 uses
  %gep319 = getelementptr [4 x i8], ptr %invariant.gep318, i64 %indvars.iv240
  %i.db = load i32, ptr %gep319, align 4, !tbaa !47 ; 2 uses
  %spec.select150.us.us.a = tail call i32 @llvm.smin.i32(i32 %i.cz, i32 %i.db)
  %spec.select151.us.us = tail call i32 @llvm.smax.i32(i32 %i.cz, i32 %i.db)
  %i.dc = mul nsw i32 %i.cj, %spec.select150.us.us.a
  %i.dd = add nsw i32 %i.dc, %spec.select151.us.us
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader.us.us
  %.sroa.06.0.in.i.i.us.us = phi ptr [ %.sroa.06.0.i.i.us.us, %bb.t ], [ %i.b, %.preheader.us.us ]
  %.sroa.06.0.i.i.us.us = load ptr, ptr %.sroa.06.0.in.i.i.us.us, align 8, !tbaa !40, !nonnull !61, !noundef !61 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us, i64 8
  %i.df = load i32, ptr %i.de, align 4, !tbaa !47
end_hunk_0
begin_hunk_1_@_ZN3g2o26MarginalCovarianceCholesky17computeCovarianceEPPdRKSt6vectorIiSaIiEE:bb.a
  br i1 %i.et, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.z
  %.sroa.06.1.i.i = phi ptr [ %i.ek, %bb.z ], [ %i.eo, %.lr.ph.i.i.i.i ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !54 ; 2 uses
  %gep317 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep316, i64 %indvars.iv230
  store double %i.ev, ptr %gep317, align 8, !tbaa !49
  %.not82 = icmp eq i64 %indvars.iv228, %indvars.iv230
  br i1 %.not82, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit
  %i.ew = trunc nuw nsw i64 %indvars.iv230 to i32
  %i.ex = mul nuw nsw i32 %i.ce, %i.ew
  %i.ey = add nuw nsw i32 %i.ex, %i.dw
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ez
  store double %i.ev, ptr %i.fa, align 8, !tbaa !49
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count236
  br i1 %exitcond234.not, label %.split, label %bb.w, !llvm.loop !122

bb.ac:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.m
  %.sroa.0118.3 = phi ptr [ %.sroa.0118.1.lcssa, %bb.m ], [ %.sroa.0118.2182, %.loopexit ], [ %.sroa.0118.2182, %.loopexit.split-lp ] ; 3 uses
  %.sroa.17.3 = phi ptr [ %.sroa.17.1.lcssa, %bb.m ], [ %.sroa.17.2184, %.loopexit ], [ %.sroa.17.2184, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %.sroa.0118.3, null
  br i1 %.not.i.i.i93, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit94, label %._crit_edge267

._crit_edge267:                                   ; preds = %bb.ac
  %.pre275 = ptrtoint ptr %.sroa.0118.3 to i64
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge267, %.thread135
  %.pre-phi276 = phi i64 [ %.pre275, %._crit_edge267 ], [ %i.n, %.thread135 ]
  %.pn142.a = phi { ptr, i32 } [ %.pn, %._crit_edge267 ], [ %i.bz, %.thread135 ]
  %.sroa.17.3141 = phi ptr [ %.sroa.17.3, %._crit_edge267 ], [ %.sroa.17.1.lcssa, %.thread135 ]
  %.sroa.0118.3140 = phi ptr [ %.sroa.0118.3, %._crit_edge267 ], [ %.sroa.0118.1.lcssa, %.thread135 ]
  %i.fb = ptrtoint ptr %.sroa.17.3141 to i64
  %i.fc = sub i64 %i.fb, %.pre-phi276
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0118.3140, i64 noundef %i.fc) #21
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit94

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit94: ; preds = %bb.ac, %bb.ad
  %.pn143 = phi { ptr, i32 } [ %.pn, %bb.ac ], [ %.pn142.a, %bb.ad ]
  resume { ptr, i32 } %.pn143
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o26MarginalCovarianceCholesky17computeCovarianceERNS_17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorIiSaIiEERKS7_ISt4pairIiiESaISD_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.g2o::SparseBlockMatrix", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = load ptr, ptr %2, align 8, !tbaa !57     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  call void @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2EPKiS6_iib(ptr noundef nonnull align 8 dereferenceable(73) %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i32 noundef %i.h, i32 noundef %i.h, i1 noundef zeroext true)
  %i.i = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %.noexc unwind label %bb.d     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.noexc99 unwind label %bb.d   ; 0 uses

.noexc99:                                         ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.o = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEaSERKSD_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %.noexc99
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.q = load i8, ptr %i.p, align 8, !tbaa !72, !range !73, !noundef !61
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i8 %i.q, ptr %i.r, align 8, !tbaa !72
  call void @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.u, %bb.b ] ; 2 uses
  %i.v = load ptr, ptr %.06.i.i.i, align 8, !tbaa !40 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #21
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.b
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !36
  %i.z = shl i64 %i.y, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.w, i8 0, i64 %i.z, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !140
  %i.ac = load ptr, ptr %3, align 8, !tbaa !141   ; 2 uses
  %.not257 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not257, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread, label %.lr.ph229

.lr.ph229:                                        ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.e

._crit_edge230:                                   ; preds = %._crit_edge219
  %.not.i.i = icmp eq ptr %.sroa.0138.1.lcssa, %.sroa.11.1.lcssa
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread, label %bb.c

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread: ; preds = %._crit_edge230, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit
  %.sroa.17.0.lcssa341 = phi ptr [ %.sroa.17.1.lcssa, %._crit_edge230 ], [ null, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit ]
  %.sroa.0138.0.lcssa338 = phi ptr [ %.sroa.0138.1.lcssa, %._crit_edge230 ], [ null, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit ] ; 2 uses
  %.pre305 = ptrtoint ptr %.sroa.0138.0.lcssa338 to i64
  br label %.preheader175

bb.c:                                             ; preds = %._crit_edge230
  %i.ae = ptrtoint ptr %.sroa.11.1.lcssa to i64
  %i.af = ptrtoint ptr %.sroa.0138.1.lcssa to i64 ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 2 uses
  %i.ai = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.aj = shl nuw nsw i64 %i.ai, 1
  %i.ak = xor i64 %i.aj, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %.sroa.0138.1.lcssa, ptr %.sroa.11.1.lcssa, i64 noundef %i.ak)
          to label %.noexc101 unwind label %bb.o

.noexc101:                                        ; preds = %bb.c
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %.sroa.0138.1.lcssa, ptr %.sroa.11.1.lcssa)
          to label %.lr.ph235 unwind label %bb.o

bb.d:                                             ; preds = %.noexc99, %.noexc, %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit115

bb.e:                                             ; preds = %.lr.ph229, %._crit_edge219
  %i.am = phi ptr [ %i.ac, %.lr.ph229 ], [ %i.bt, %._crit_edge219 ]
  %.083228 = phi i64 [ 0, %.lr.ph229 ], [ %i.br, %._crit_edge219 ] ; 2 uses
  %.sroa.17.0227 = phi ptr [ null, %.lr.ph229 ], [ %.sroa.17.1.lcssa, %._crit_edge219 ] ; 4 uses
  %.sroa.11.0226 = phi ptr [ null, %.lr.ph229 ], [ %.sroa.11.1.lcssa, %._crit_edge219 ] ; 3 uses
  %.sroa.0138.0225 = phi ptr [ null, %.lr.ph229 ], [ %.sroa.0138.1.lcssa, %._crit_edge219 ] ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.083228 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !143 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !144 ; 3 uses
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %1, align 8, !tbaa !57
  %i.as = sext i32 %i.ao to i64
  %i.at = getelementptr [4 x i8], ptr %i.ar, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 -4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !47
  %i.aw = sext i32 %i.av to i64
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit: ; preds = %bb.e, %bb.f
  %i.ax = phi i64 [ %i.aw, %bb.f ], [ 0, %bb.e ]
  %.not.i103 = icmp eq i32 %i.aq, 0
  br i1 %.not.i103, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.az = sext i32 %i.aq to i64
  %i.ba = getelementptr [4 x i8], ptr %i.ay, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !47
  %i.bd = sext i32 %i.bc to i64
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit: ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit, %bb.g
  %i.be = phi i64 [ %i.bd, %bb.g ], [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit ]
  %i.bf = invoke noundef ptr @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockEiib(ptr noundef nonnull align 8 dereferenceable(73) %1, i32 noundef %i.ao, i32 noundef %i.aq, i1 noundef zeroext true)
          to label %.preheader178 unwind label %bb.h ; 2 uses

.preheader178:                                    ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !75 ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.preheader176.lr.ph, label %._crit_edge219

.preheader176.lr.ph:                              ; preds = %.preheader178
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !76 ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, 0
  br i1 %i.bl, label %.preheader176, label %._crit_edge219

.preheader176:                                    ; preds = %.preheader176.lr.ph, %._crit_edge
  %5 = phi i64 [ %6, %._crit_edge ], [ %i.bh, %.preheader176.lr.ph ]
  %i.bm = phi i64 [ %i.ca, %._crit_edge ], [ %i.bk, %.preheader176.lr.ph ] ; 2 uses
  %i.bn = phi i64 [ %i.cb, %._crit_edge ], [ %i.bk, %.preheader176.lr.ph ] ; 2 uses
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %._crit_edge ], [ 0, %.preheader176.lr.ph ] ; 2 uses
  %.sroa.17.1217 = phi ptr [ %.sroa.17.2.lcssa, %._crit_edge ], [ %.sroa.17.0227, %.preheader176.lr.ph ] ; 2 uses
  %.sroa.11.1216 = phi ptr [ %.sroa.11.2.lcssa, %._crit_edge ], [ %.sroa.11.0226, %.preheader176.lr.ph ] ; 2 uses
  %.sroa.0138.1215 = phi ptr [ %.sroa.0138.2.lcssa, %._crit_edge ], [ %.sroa.0138.0225, %.preheader176.lr.ph ] ; 2 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader176
  %i.bp = add nsw i64 %indvars.iv276, %i.ax       ; 2 uses
  %i.bq = trunc nsw i64 %i.bp to i32
  br label %bb.i

._crit_edge219:                                   ; preds = %._crit_edge, %.preheader176.lr.ph, %.preheader178
  %.sroa.0138.1.lcssa = phi ptr [ %.sroa.0138.0225, %.preheader178 ], [ %.sroa.0138.0225, %.preheader176.lr.ph ], [ %.sroa.0138.2.lcssa, %._crit_edge ] ; 10 uses
  %.sroa.11.1.lcssa = phi ptr [ %.sroa.11.0226, %.preheader178 ], [ %.sroa.11.0226, %.preheader176.lr.ph ], [ %.sroa.11.2.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.17.1.lcssa = phi ptr [ %.sroa.17.0227, %.preheader178 ], [ %.sroa.17.0227, %.preheader176.lr.ph ], [ %.sroa.17.2.lcssa, %._crit_edge ] ; 5 uses
  %i.br = add nuw i64 %.083228, 1                 ; 2 uses
  %i.bs = load ptr, ptr %i.aa, align 8, !tbaa !140
  %i.bt = load ptr, ptr %3, align 8, !tbaa !141   ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3
  %i.by = icmp ult i64 %i.br, %i.bx
  br i1 %i.by, label %bb.e, label %._crit_edge230, !llvm.loop !128

bb.h:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit
  %.pre.a = load i64, ptr %i.bg, align 8, !tbaa !75
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader176
  %6 = phi i64 [ %5, %.preheader176 ], [ %.pre.a, %._crit_edge.loopexit ] ; 2 uses
  %i.ca = phi i64 [ %i.bm, %.preheader176 ], [ %8, %._crit_edge.loopexit ]
  %i.cb = phi i64 [ %i.bn, %.preheader176 ], [ %8, %._crit_edge.loopexit ]
  %.sroa.0138.2.lcssa = phi ptr [ %.sroa.0138.1215, %.preheader176 ], [ %.sroa.0138.4, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.11.2.lcssa = phi ptr [ %.sroa.11.1216, %.preheader176 ], [ %.sroa.11.3, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.17.2.lcssa = phi ptr [ %.sroa.17.1217, %.preheader176 ], [ %.sroa.17.4, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %i.cc = icmp sgt i64 %6, %indvars.iv.next277
  br i1 %i.cc, label %.preheader176, label %._crit_edge219, !llvm.loop !129

bb.i:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit
  %7 = phi i64 [ %i.bm, %.lr.ph ], [ %8, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %.sroa.17.2211 = phi ptr [ %.sroa.17.1217, %.lr.ph ], [ %.sroa.17.4, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit ] ; 7 uses
  %.sroa.11.2210 = phi ptr [ %.sroa.11.1216, %.lr.ph ], [ %.sroa.11.3, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.0138.2209 = phi ptr [ %.sroa.0138.1215, %.lr.ph ], [ %.sroa.0138.4, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit ] ; 8 uses
  %i.cd = add nsw i64 %indvars.iv, %i.be          ; 2 uses
  %i.ce = load ptr, ptr %i.ad, align 8, !tbaa !45 ; 3 uses
  %.not93 = icmp eq ptr %i.ce, null
  %i.cf = trunc nsw i64 %i.cd to i32
  br i1 %.not93, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.bp
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !47
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cd
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !47
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %i.ck = phi i32 [ %i.ch, %bb.j ], [ %i.bq, %bb.i ] ; 2 uses
  %i.cl = phi i32 [ %i.cj, %bb.j ], [ %i.cf, %bb.i ] ; 2 uses
  %spec.select = call i32 @llvm.smin.i32(i32 %i.ck, i32 %i.cl) ; 2 uses
  %spec.select169.a = call i32 @llvm.smax.i32(i32 %i.ck, i32 %i.cl) ; 2 uses
  %.not.i.i104 = icmp eq ptr %.sroa.11.2210, %.sroa.17.2211
  br i1 %.not.i.i104, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread
  %.sroa.6.0.insert.ext = zext i32 %spec.select169.a to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.0123.0.insert.ext = zext i32 %spec.select to i64
  %.sroa.0123.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.0123.0.insert.ext
  store i64 %.sroa.0123.0.insert.insert, ptr %.sroa.11.2210, align 4, !tbaa !47
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit

bb.l:                                             ; preds = %.thread
  %i.cm = ptrtoint ptr %.sroa.17.2211 to i64
  %i.cn = ptrtoint ptr %.sroa.0138.2209 to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 4 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775800
  br i1 %i.cp, label %bb.m, label %_ZNKSt6vectorIN3g2o10MatrixElemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %.noexc105 unwind label %.loopexit.split-lp

.noexc105:                                        ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN3g2o10MatrixElemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.cq = ashr exact i64 %i.co, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cq ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = call i64 @llvm.umin.i64(i64 %i.cr, i64 1152921504606846975)
  %i.cu = select i1 %i.cs, i64 1152921504606846975, i64 %i.ct ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #22
          to label %.noexc106 unwind label %.loopexit177 ; 5 uses

.noexc106:                                        ; preds = %_ZNKSt6vectorIN3g2o10MatrixElemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.co
  %.sroa.6.0.insert.ext129 = zext i32 %spec.select169.a to i64
  %.sroa.6.0.insert.shift130 = shl nuw i64 %.sroa.6.0.insert.ext129, 32
  %.sroa.0123.0.insert.ext125 = zext i32 %spec.select to i64
  %.sroa.0123.0.insert.insert127 = or disjoint i64 %.sroa.6.0.insert.shift130, %.sroa.0123.0.insert.ext125
  store i64 %.sroa.0123.0.insert.insert127, ptr %i.cx, align 4, !tbaa !47
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0138.2209, %.sroa.17.2211
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc106, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i ], [ %i.cw, %.noexc106 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0138.2209, %.noexc106 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.cy = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !47, !alias.scope !146, !noalias !145
  store i64 %i.cy, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !47, !alias.scope !145, !noalias !146
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cz, %.sroa.17.2211
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc106
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cw, %.noexc106 ], [ %i.da, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0138.2209, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0138.2209, i64 noundef %i.co) #21
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu
  %.pre = load i64, ptr %i.bj, align 8, !tbaa !76
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.k
  %8 = phi i64 [ %.pre, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %7, %bb.k ] ; 4 uses
  %.sroa.0138.4 = phi ptr [ %i.cw, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0138.2209, %bb.k ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.11.2210, %bb.k ]
  %.sroa.17.4 = phi ptr [ %i.db, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.17.2211, %bb.k ] ; 2 uses
  %.sroa.11.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dc = icmp sgt i64 %8, %indvars.iv.next
  br i1 %i.dc, label %bb.i, label %._crit_edge.loopexit, !llvm.loop !133

.loopexit177:                                     ; preds = %_ZNKSt6vectorIN3g2o10MatrixElemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.preheader175:                                    ; preds = %bb.p, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread
  %.pre-phi306351 = phi i64 [ %.pre305, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread ], [ %i.af, %bb.p ]
  %.sroa.0138.0.lcssa337350 = phi ptr [ %.sroa.0138.0.lcssa338, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread ], [ %.sroa.0138.1.lcssa, %bb.p ] ; 3 uses
  %.sroa.17.0.lcssa340349 = phi ptr [ %.sroa.17.0.lcssa341, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.thread ], [ %.sroa.17.1.lcssa, %bb.p ] ; 2 uses
  %i.dd = load ptr, ptr %i.aa, align 8, !tbaa !140
  %i.de = load ptr, ptr %3, align 8, !tbaa !141   ; 2 uses
  %.not259 = icmp eq ptr %i.dd, %i.de
  br i1 %.not259, label %._crit_edge256, label %.lr.ph255

.lr.ph255:                                        ; preds = %.preheader175
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.r

bb.o:                                             ; preds = %.noexc101, %bb.c
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.lr.ph235:                                        ; preds = %.noexc101, %bb.p
  %.074234 = phi i64 [ %i.dn, %bb.p ], [ 0, %.noexc101 ] ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0138.1.lcssa, i64 %.074234 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !59
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !60
  %i.dm = invoke noundef double @_ZN3g2o26MarginalCovarianceCholesky12computeEntryEii(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.dj, i32 noundef %i.dl)
          to label %bb.p unwind label %.thread155 ; 0 uses

bb.p:                                             ; preds = %.lr.ph235
  %i.dn = add nuw i64 %.074234, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dn, %i.ah
  br i1 %exitcond.not, label %.preheader175, label %.lr.ph235, !llvm.loop !134

.thread155:                                       ; preds = %.lr.ph235
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

._crit_edge256:                                   ; preds = %._crit_edge241.split, %.preheader175
  %.not.i.i.i107 = icmp eq ptr %.sroa.0138.0.lcssa337350, null
  br i1 %.not.i.i.i107, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge256
  %i.dp = ptrtoint ptr %.sroa.17.0.lcssa340349 to i64
  %i.dq = sub i64 %i.dp, %.pre-phi306351
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0138.0.lcssa337350, i64 noundef %i.dq) #21
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit: ; preds = %._crit_edge256, %bb.q
  ret void

bb.r:                                             ; preds = %.lr.ph255, %._crit_edge241.split
  %i.dr = phi ptr [ %i.de, %.lr.ph255 ], [ %i.gf, %._crit_edge241.split ]
  %.073254 = phi i64 [ 0, %.lr.ph255 ], [ %i.gd, %._crit_edge241.split ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.073254 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !143 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !144 ; 3 uses
  %.not.i108 = icmp eq i32 %i.dt, 0
  br i1 %.not.i108, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit109, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dw = load ptr, ptr %1, align 8, !tbaa !57
  %i.dx = sext i32 %i.dt to i64
  %i.dy = getelementptr [4 x i8], ptr %i.dw, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.dy, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !47
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit109

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit109: ; preds = %bb.r, %bb.s
  %i.eb = phi i32 [ %i.ea, %bb.s ], [ 0, %bb.r ]  ; 3 uses
  %.not.i110 = icmp eq i32 %i.dv, 0
  br i1 %.not.i110, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit111, label %bb.t

bb.t:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit109
  %i.ec = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.ed = sext i32 %i.dv to i64
  %i.ee = getelementptr [4 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 -4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !47
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit111

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit111: ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit109, %bb.t
  %i.eh = phi i32 [ %i.eg, %bb.t ], [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit109 ] ; 3 uses
  %i.ei = invoke noundef ptr @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockEiib(ptr noundef nonnull align 8 dereferenceable(73) %1, i32 noundef %i.dt, i32 noundef %i.dv, i1 noundef zeroext false)
          to label %.preheader174 unwind label %bb.w ; 3 uses

.preheader174:                                    ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit111
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !75 ; 7 uses
  %i.el = icmp sgt i64 %i.ek, 0
  br i1 %i.el, label %.preheader173.lr.ph, label %._crit_edge241.split

.preheader173.lr.ph:                              ; preds = %.preheader174
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.en = load i64, ptr %i.em, align 8, !tbaa !76 ; 4 uses
  %i.eo = icmp sgt i64 %i.en, 0
  br i1 %i.eo, label %.preheader173.lr.ph.split, label %._crit_edge241.split

.preheader173.lr.ph.split:                        ; preds = %.preheader173.lr.ph
  %i.ep = load ptr, ptr %i.df, align 8, !tbaa !45 ; 5 uses
  %.not = icmp eq ptr %i.ep, null                 ; 2 uses
  %i.eq = load i32, ptr %0, align 8, !tbaa !34    ; 3 uses
  %i.er = load i64, ptr %i.dg, align 8, !tbaa !51
  %.not.not.i.i = icmp eq i64 %i.er, 0
  %i.es = load ptr, ptr %i.ei, align 8, !tbaa !78 ; 3 uses
  br i1 %.not.not.i.i, label %.preheader173.lr.ph.split.split.us, label %.preheader173.lr.ph.split.split

.preheader173.lr.ph.split.split.us:               ; preds = %.preheader173.lr.ph.split
  br i1 %.not, label %.preheader173.us.us, label %.preheader173.us.preheader

.preheader173.us.preheader:                       ; preds = %.preheader173.lr.ph.split.split.us
  %i.et = sext i32 %i.eh to i64
  %i.eu = sext i32 %i.eb to i64
  %invariant.gep366 = getelementptr [4 x i8], ptr %i.ep, i64 %i.eu
  %invariant.gep = getelementptr [4 x i8], ptr %i.ep, i64 %i.et
  br label %.preheader173.us

.preheader173.us.us:                              ; preds = %.preheader173.lr.ph.split.split.us, %._crit_edge239.split.us.split.us.us.us
  %indvars.iv299 = phi i64 [ %indvars.iv.next300, %._crit_edge239.split.us.split.us.us.us ], [ 0, %.preheader173.lr.ph.split.split.us ] ; 3 uses
  %i.ev = getelementptr [8 x i8], ptr %i.es, i64 %indvars.iv299
  %i.ew = trunc i64 %indvars.iv299 to i32
  %i.ex = add i32 %i.eb, %i.ew                    ; 2 uses
  br label %.thread154.us.us.us.us

.thread154.us.us.us.us:                           ; preds = %.loopexit.us.us.us.us, %.preheader173.us.us
  %indvars.iv295 = phi i64 [ %indvars.iv.next296, %.loopexit.us.us.us.us ], [ 0, %.preheader173.us.us ] ; 3 uses
  %i.ey = trunc i64 %indvars.iv295 to i32
  %i.ez = add i32 %i.eh, %i.ey                    ; 2 uses
  %spec.select170.us.us.us.us.a = call i32 @llvm.smin.i32(i32 %i.ex, i32 %i.ez)
  %spec.select171.us.us.us.us = call i32 @llvm.smax.i32(i32 %i.ex, i32 %i.ez)
  %i.fa = mul nsw i32 %i.eq, %spec.select170.us.us.us.us.a
  %i.fb = add nsw i32 %i.fa, %spec.select171.us.us.us.us
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.thread154.us.us.us.us
  %.sroa.06.0.in.i.i.us.us.us.us = phi ptr [ %.sroa.06.0.i.i.us.us.us.us, %bb.u ], [ %i.t, %.thread154.us.us.us.us ]
  %.sroa.06.0.i.i.us.us.us.us = load ptr, ptr %.sroa.06.0.in.i.i.us.us.us.us, align 8, !tbaa !40, !nonnull !61, !noundef !61 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us.us.us, i64 8
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !47
  %i.fe = icmp eq i32 %i.fb, %i.fd
  br i1 %i.fe, label %.loopexit.us.us.us.us, label %bb.u, !llvm.loop !1

.loopexit.us.us.us.us:                            ; preds = %bb.u
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us.us.us, i64 16
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !54
  %i.fh = mul nuw nsw i64 %indvars.iv295, %i.ek
  %i.fi = getelementptr [8 x i8], ptr %i.ev, i64 %i.fh
  store double %i.fg, ptr %i.fi, align 8, !tbaa !49
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next296, %i.en
  br i1 %exitcond298.not, label %._crit_edge239.split.us.split.us.us.us, label %.thread154.us.us.us.us, !llvm.loop !135

._crit_edge239.split.us.split.us.us.us:           ; preds = %.loopexit.us.us.us.us
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %exitcond302.not = icmp eq i64 %indvars.iv.next300, %i.ek
  br i1 %exitcond302.not, label %._crit_edge241.split, label %.preheader173.us.us, !llvm.loop !136

.preheader173.us:                                 ; preds = %.preheader173.us.preheader, %._crit_edge239.split.us.split.us251
  %indvars.iv291 = phi i64 [ 0, %.preheader173.us.preheader ], [ %indvars.iv.next292, %._crit_edge239.split.us.split.us251 ] ; 3 uses
  %gep367 = getelementptr [4 x i8], ptr %invariant.gep366, i64 %indvars.iv291
  %i.fj = getelementptr [8 x i8], ptr %i.es, i64 %indvars.iv291
  %i.fk = load i32, ptr %gep367, align 4, !tbaa !47 ; 2 uses
  br label %.thread154.us.us243

.thread154.us.us243:                              ; preds = %.loopexit.us.us249, %.preheader173.us
  %indvars.iv287 = phi i64 [ %indvars.iv.next288, %.loopexit.us.us249 ], [ 0, %.preheader173.us ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv287
  %i.fl = load i32, ptr %gep, align 4, !tbaa !47  ; 2 uses
  %spec.select170.us.us245.a = call i32 @llvm.smin.i32(i32 %i.fk, i32 %i.fl)
  %spec.select171.us.us246 = call i32 @llvm.smax.i32(i32 %i.fk, i32 %i.fl)
  %i.fm = mul nsw i32 %i.eq, %spec.select170.us.us245.a
  %i.fn = add nsw i32 %i.fm, %spec.select171.us.us246
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.thread154.us.us243
  %.sroa.06.0.in.i.i.us.us247 = phi ptr [ %.sroa.06.0.i.i.us.us248, %bb.v ], [ %i.t, %.thread154.us.us243 ]
  %.sroa.06.0.i.i.us.us248 = load ptr, ptr %.sroa.06.0.in.i.i.us.us247, align 8, !tbaa !40, !nonnull !61, !noundef !61 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us248, i64 8
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !47
  %i.fq = icmp eq i32 %i.fn, %i.fp
  br i1 %i.fq, label %.loopexit.us.us249, label %bb.v, !llvm.loop !1

.loopexit.us.us249:                               ; preds = %bb.v
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us248, i64 16
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !54
  %i.ft = mul nuw nsw i64 %indvars.iv287, %i.ek
  %i.fu = getelementptr [8 x i8], ptr %i.fj, i64 %i.ft
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm:bb.a
bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !36
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !52   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !40
  store ptr %i.w, ptr %3, align 8, !tbaa !40
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !52
  store ptr %3, ptr %i.x, align 8, !tbaa !40
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39
  store ptr %i.z, ptr %3, align 8, !tbaa !40
  store ptr %3, ptr %i.y, align 8, !tbaa !39
  %i.aa = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !36
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !47
  %i.ae = sext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !52
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !52
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !51
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !51
  ret ptr %3
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !165
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKidELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKidELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #22 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKidELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKidELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !39
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !47
  %i.l = sext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !52   ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !39
  store ptr %i.p, ptr %.02530, align 8, !tbaa !40
  store ptr %.02530, ptr %i.g, align 8, !tbaa !39
  store ptr %i.g, ptr %i.n, align 8, !tbaa !52
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !40
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !52
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !40
  store ptr %i.s, ptr %.02530, align 8, !tbaa !40
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !52
  store ptr %.02530, ptr %i.t, align 8, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !164

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !36
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #21
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !36
  store ptr %.0.i, ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i13 = freeze i64 %i.c                      ; 2 uses
  %i.d = icmp sgt i64 %.fr.i13, 128
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph29

.lr.ph:                                           ; preds = %.lr.ph29
  %i.f = icmp eq i64 %i.ba, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph29, !llvm.loop !166

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.fr.i16.lcssa = phi i64 [ %.fr.i13, %.lr.ph.preheader ], [ %.fr.i, %.lr.ph ] ; 2 uses
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.bb, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.g = lshr i64 %.fr.i16.lcssa, 3               ; 2 uses
  %i.h = add nsw i64 %i.g, -2                     ; 2 uses
  %i.i = lshr i64 %i.h, 1                         ; 3 uses
  %i.j = add nsw i64 %i.g, -1
  %i.k = lshr i64 %i.j, 1                         ; 2 uses
  %i.l = and i64 %.fr.i16.lcssa, 8
  %i.m = icmp eq i64 %i.l, 0
  %i.n = or disjoint i64 %i.h, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i, %.lr.ph._crit_edge
  %.09.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.az, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i ] ; 8 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.q, align 4, !tbaa !47 ; 3 uses
  %i.r = icmp slt i64 %.09.i.i, %i.k
  br i1 %i.r, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i
  %.039.i.i.i = phi i64 [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i ], [ %.09.i.i, %bb.b ] ; 2 uses
  %i.s = shl i64 %.039.i.i.i, 1                   ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 3 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !60   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !60  ; 2 uses
  %i.ab = icmp sgt i32 %i.y, %i.aa
  br i1 %i.ab, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = icmp eq i32 %i.y, %i.aa
  br i1 %i.ac, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i: ; preds = %bb.c
  %i.ad = load i32, ptr %i.u, align 4, !tbaa !59
  %i.ae = load i32, ptr %i.w, align 4, !tbaa !59
  %i.af = icmp sgt i32 %i.ad, %i.ae
  %cond.fr.i.i.i = freeze i1 %i.af
  br i1 %cond.fr.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i, %.lr.ph.i.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i, %bb.c
  %i.ag = phi i64 [ %i.v, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i ], [ %i.t, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i ], [ %i.t, %bb.c ] ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.039.i.i.i
  %i.aj = load i64, ptr %i.ah, align 4, !tbaa !47
  store i64 %i.aj, ptr %i.ai, align 4, !tbaa !47
  %i.ak = icmp slt i64 %i.ag, %i.k
  br i1 %i.ak, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !7

._crit_edge.i.i.i:                                ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ %.09.i.i, %bb.b ], [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i ] ; 2 uses
  %i.al = icmp eq i64 %.0.lcssa.i.i.i, %i.i
  %or.cond.i.i = select i1 %i.m, i1 %i.al, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.am = load i64, ptr %i.o, align 4, !tbaa !47
  store i64 %i.am, ptr %i.p, align 4, !tbaa !47
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.n, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.sroa.012.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.02.0.copyload.i.i to i32
  %.sroa.3.0.extract.shift.i.i.i.i = lshr i64 %.sroa.02.0.copyload.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i.i to i32 ; 2 uses
  %i.an = icmp sgt i64 %.1.i.i.i, %.09.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i
  %.021.i.i.i.i = phi i64 [ %.0922.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i ], [ %.1.i.i.i, %bb.e ] ; 4 uses
  %.0922.in.i.i.i.i = add nsw i64 %.021.i.i.i.i, -1
  %.0922.i.i.i.i = sdiv i64 %.0922.in.i.i.i.i, 2  ; 4 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %.0922.i.i.i.i ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !60 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, %.sroa.3.0.extract.trunc.i.i.i.i
  br i1 %i.ar, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.as = icmp eq i32 %i.aq, %.sroa.3.0.extract.trunc.i.i.i.i
  br i1 %i.as, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i.i: ; preds = %bb.f
  %i.at = load i32, ptr %i.ao, align 4, !tbaa !59
  %i.au = icmp sgt i32 %i.at, %.sroa.012.0.extract.trunc.i.i.i.i
  br i1 %i.au, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.021.i.i.i.i
  %i.aw = load i64, ptr %i.ao, align 4, !tbaa !47
  store i64 %i.aw, ptr %i.av, align 4, !tbaa !47
  %i.ax = icmp sgt i64 %.0922.i.i.i.i, %.09.i.i
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i, !llvm.loop !8

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.e ], [ %.021.i.i.i.i, %bb.f ], [ %.0922.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i ], [ %.021.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i.i ]
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %.sroa.02.0.copyload.i.i, ptr %i.ay, align 4, !tbaa !47
  %.not.i.i = icmp eq i64 %.09.i.i, 0
  %i.az = add nsw i64 %.09.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit, label %bb.b, !llvm.loop !167

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr nonnull %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.lr.ph29:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %storemerge1428 = phi ptr [ %i.bb, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.01527 = phi i64 [ %i.ba, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.ba = add nsw i64 %.01527, -1                 ; 3 uses
  %i.bb = tail call ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_(ptr %0, ptr %storemerge1428) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.bb, ptr %storemerge1428, i64 noundef %i.ba)
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.a
  %.fr.i = freeze i64 %i.bd                       ; 2 uses
  %i.be = icmp sgt i64 %.fr.i, 128
  br i1 %i.be, label %.lr.ph, label %.loopexit, !llvm.loop !166

.loopexit:                                        ; preds = %.lr.ph29, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.k

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.h ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.h ] ; 2 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !60   ; 2 uses
  %i.h = load i32, ptr %i.e, align 4, !tbaa !60   ; 2 uses
  %i.i = icmp sgt i32 %i.g, %i.h
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.g, %i.h
  br i1 %i.j, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.c
  %i.k = load i32, ptr %.sroa.0.019.i.ptr, align 4, !tbaa !59
  %i.l = load i32, ptr %0, align 4, !tbaa !59
  %i.m = icmp sgt i32 %i.k, %i.l
  br i1 %i.m, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.b
  %i.n = load i64, ptr %.sroa.0.019.i.ptr, align 4, !tbaa !47
  %i.o = icmp samesign ugt i64 %.sroa.0.019.i.idx, 8
  br i1 %i.o, label %bb.d, label %bb.e, !prof !98

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i
  %i.p = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  %i.q = load i64, ptr %0, align 4, !tbaa !47
  store i64 %i.q, ptr %i.p, align 4, !tbaa !47
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %bb.e, %bb.d
  store i64 %i.n, ptr %0, align 4, !tbaa !47
  br label %bb.h

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.c
  %i.r = load i64, ptr %.sroa.0.019.i.ptr, align 4, !tbaa !47 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i = trunc i64 %i.r to i32
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.r, 32
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i64 %.sroa.5.0.extract.shift.i.i to i32 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i
  %.sroa.05.0.i.i = phi ptr [ %.sroa.0.019.i.ptr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i ], [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i ] ; 4 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.05.0.i.i, i64 -8 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.05.0.i.i, i64 -4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !60   ; 2 uses
  %i.u = icmp slt i32 %i.t, %.sroa.5.0.extract.trunc.i.i
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq i32 %i.t, %.sroa.5.0.extract.trunc.i.i
  br i1 %i.v, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i: ; preds = %bb.g
  %i.w = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !59
  %i.x = icmp slt i32 %i.w, %.sroa.03.0.extract.trunc.i.i
  br i1 %i.x, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i, %bb.f
  %i.y = load i64, ptr %.sroa.0.0.i.i, align 4, !tbaa !47
  store i64 %i.y, ptr %.sroa.05.0.i.i, align 4, !tbaa !47
  br label %bb.f, !llvm.loop !168

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i, %bb.g
  store i64 %i.r, ptr %.sroa.05.0.i.i, align 4, !tbaa !47
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %bb.b, !llvm.loop !169

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit: ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not4.i = icmp eq ptr %i.z, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12
  %.sroa.0.05.i = phi ptr [ %i.ai, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12 ], [ %i.z, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit ] ; 3 uses
  %i.aa = load i64, ptr %.sroa.0.05.i, align 4, !tbaa !47 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i7 = trunc i64 %i.aa to i32
  %.sroa.5.0.extract.shift.i.i8 = lshr i64 %i.aa, 32
  %.sroa.5.0.extract.trunc.i.i9 = trunc nuw i64 %.sroa.5.0.extract.shift.i.i8 to i32 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15, %.lr.ph.i6
  %.sroa.05.0.i.i10 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i11, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15 ] ; 4 uses
  %.sroa.0.0.i.i11 = getelementptr inbounds i8, ptr %.sroa.05.0.i.i10, i64 -8 ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %.sroa.05.0.i.i10, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !60 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %.sroa.5.0.extract.trunc.i.i9
  br i1 %i.ad, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = icmp eq i32 %i.ac, %.sroa.5.0.extract.trunc.i.i9
  br i1 %i.ae, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i14: ; preds = %bb.j
  %i.af = load i32, ptr %.sroa.0.0.i.i11, align 4, !tbaa !59
  %i.ag = icmp slt i32 %i.af, %.sroa.03.0.extract.trunc.i.i7
  br i1 %i.ag, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i14, %bb.i
  %i.ah = load i64, ptr %.sroa.0.0.i.i11, align 4, !tbaa !47
  store i64 %i.ah, ptr %.sroa.05.0.i.i10, align 4, !tbaa !47
  br label %bb.i, !llvm.loop !168

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i14, %bb.j
  store i64 %i.aa, ptr %.sroa.05.0.i.i10, align 4, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ai, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i6, !llvm.loop !170

bb.k:                                             ; preds = %bb.a
  %i.aj = icmp eq ptr %0, %1
  br i1 %i.aj, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.preheader.i16

.preheader.i16:                                   ; preds = %bb.k
  %.sroa.0.016.i17 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not17.i18 = icmp eq ptr %.sroa.0.016.i17, %1
  br i1 %.not17.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.s, %.lr.ph.i19
  %.sroa.0.019.i20 = phi ptr [ %.sroa.0.016.i17, %.lr.ph.i19 ], [ %.sroa.0.0.i29, %bb.s ] ; 7 uses
  %.pn18.i21 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.0.019.i20, %bb.s ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pn18.i21, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !60 ; 2 uses
  %i.an = load i32, ptr %i.ak, align 4, !tbaa !60 ; 2 uses
  %i.ao = icmp sgt i32 %i.am, %i.an
  br i1 %i.ao, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i34, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = icmp eq i32 %i.am, %i.an
  br i1 %i.ap, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i33, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i22

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i33: ; preds = %bb.m
  %i.aq = load i32, ptr %.sroa.0.019.i20, align 4, !tbaa !59
  %i.ar = load i32, ptr %0, align 4, !tbaa !59
  %i.as = icmp sgt i32 %i.aq, %i.ar
  br i1 %i.as, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i34, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i22

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i34: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i33, %bb.l
  %i.at = load i64, ptr %.sroa.0.019.i20, align 4, !tbaa !47
  %i.au = ptrtoint ptr %.sroa.0.019.i20 to i64
  %i.av = sub i64 %i.au, %i.b                     ; 3 uses
  %i.aw = ashr exact i64 %i.av, 3                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 1
  br i1 %i.ax, label %bb.n, label %bb.o, !prof !98

bb.n:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i34
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn18.i21, i64 16
  %i.az = sub nsw i64 0, %i.aw
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ba, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.av, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i35

bb.o:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i34
  %i.bb = icmp eq i64 %i.av, 8
  br i1 %i.bb, label %bb.p, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i35

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn18.i21, i64 8
  %i.bd = load i64, ptr %0, align 4, !tbaa !47
  store i64 %i.bd, ptr %i.bc, align 4, !tbaa !47
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i35: ; preds = %bb.p, %bb.o, %bb.n
  store i64 %i.at, ptr %0, align 4, !tbaa !47
  br label %bb.s

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i22: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i33, %bb.m
  %i.be = load i64, ptr %.sroa.0.019.i20, align 4, !tbaa !47 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i23 = trunc i64 %i.be to i32
  %.sroa.5.0.extract.shift.i.i24 = lshr i64 %i.be, 32
  %.sroa.5.0.extract.trunc.i.i25 = trunc nuw i64 %.sroa.5.0.extract.shift.i.i24 to i32 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i32, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i22
  %.sroa.05.0.i.i26 = phi ptr [ %.sroa.0.019.i20, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i22 ], [ %.sroa.0.0.i.i27, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i32 ] ; 4 uses
  %.sroa.0.0.i.i27 = getelementptr inbounds i8, ptr %.sroa.05.0.i.i26, i64 -8 ; 3 uses
  %i.bf = getelementptr inbounds i8, ptr %.sroa.05.0.i.i26, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !60 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %.sroa.5.0.extract.trunc.i.i25
  br i1 %i.bh, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i32, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = icmp eq i32 %i.bg, %.sroa.5.0.extract.trunc.i.i25
  br i1 %i.bi, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i28

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i31: ; preds = %bb.r
  %i.bj = load i32, ptr %.sroa.0.0.i.i27, align 4, !tbaa !59
  %i.bk = icmp slt i32 %i.bj, %.sroa.03.0.extract.trunc.i.i23
  br i1 %i.bk, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i28

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i32: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i31, %bb.q
  %i.bl = load i64, ptr %.sroa.0.0.i.i27, align 4, !tbaa !47
  store i64 %i.bl, ptr %.sroa.05.0.i.i26, align 4, !tbaa !47
  br label %bb.q, !llvm.loop !168

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i28: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i31, %bb.r
  store i64 %i.be, ptr %.sroa.05.0.i.i26, align 4, !tbaa !47
  br label %bb.s

bb.s:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i35
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i20, i64 8 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %bb.l, !llvm.loop !169

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit: ; preds = %bb.s, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12, %.preheader.i16, %bb.k, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %i.e = sdiv i64 %i.d, 2
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -8 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !60   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !60   ; 6 uses
  %i.m = icmp sgt i32 %i.j, %i.l
  br i1 %i.m, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %i.j, %i.l
  br i1 %i.n, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.b
  %i.o = load i32, ptr %i.g, align 4, !tbaa !59
  %i.p = load i32, ptr %i.f, align 4, !tbaa !59
  %i.q = icmp sgt i32 %i.o, %i.p
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.a
  %i.r = getelementptr inbounds i8, ptr %1, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !60   ; 4 uses
  %i.t = icmp sgt i32 %i.l, %i.s
  br i1 %i.t, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i
  %i.u = icmp eq i32 %i.l, %i.s
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i: ; preds = %bb.c
  %i.v = load i32, ptr %i.f, align 4, !tbaa !59
  %i.w = load i32, ptr %i.h, align 4, !tbaa !59
  %i.x = icmp sgt i32 %i.v, %i.w
  br i1 %i.x, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i, %bb.c
  %i.y = icmp sgt i32 %i.j, %i.s
  br i1 %i.y, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i
  %i.z = icmp eq i32 %i.j, %i.s
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i: ; preds = %bb.d
  %i.aa = load i32, ptr %i.g, align 4, !tbaa !59
  %i.ab = load i32, ptr %i.h, align 4, !tbaa !59
  %i.ac = icmp sgt i32 %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.b
  %i.ad = getelementptr inbounds i8, ptr %1, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !60 ; 4 uses
  %i.af = icmp sgt i32 %i.j, %i.ae
  br i1 %i.af, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i
  %i.ag = icmp eq i32 %i.j, %i.ae
  br i1 %i.ag, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i: ; preds = %bb.e
  %i.ah = load i32, ptr %i.g, align 4, !tbaa !59
  %i.ai = load i32, ptr %i.h, align 4, !tbaa !59
  %i.aj = icmp sgt i32 %i.ah, %i.ai
  br i1 %i.aj, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i, %bb.e
  %i.ak = icmp sgt i32 %i.l, %i.ae
  br i1 %i.ak, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i
  %i.al = icmp eq i32 %i.l, %i.ae
  br i1 %i.al, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i: ; preds = %bb.f
  %i.am = load i32, ptr %i.f, align 4, !tbaa !59
  %i.an = load i32, ptr %i.h, align 4, !tbaa !59
  %i.ao = icmp sgt i32 %i.am, %i.an
  br i1 %i.ao, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i, %bb.f
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i
  %.sink41.i = phi ptr [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i ] ; 2 uses
  %i.ap = load i64, ptr %0, align 4, !tbaa !47
  %i.aq = load i64, ptr %.sink41.i, align 4, !tbaa !47
  store i64 %i.aq, ptr %0, align 4, !tbaa !47
  store i64 %i.ap, ptr %.sink41.i, align 4, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit
  %.sroa.011.0.i = phi ptr [ %i.g, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit ], [ %i.bl, %bb.k ]
  %.sroa.0.0.i = phi ptr [ %1, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit ], [ %.sroa.0.1.i, %bb.k ]
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !60 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10, %bb.g
  %.sroa.011.1.i = phi ptr [ %.sroa.011.0.i, %bb.g ], [ %i.ba, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10 ] ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !60 ; 2 uses
  %i.av = icmp sgt i32 %i.au, %i.as
  br i1 %i.av, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = icmp eq i32 %i.au, %i.as
  br i1 %i.aw, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9, %bb.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9: ; preds = %bb.i
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !59
  %i.ay = load i32, ptr %0, align 4, !tbaa !59
  %i.az = icmp sgt i32 %i.ax, %i.ay
  br i1 %i.az, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9, %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 8
  br label %bb.h, !llvm.loop !171

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader
  %.sroa.0.0.pn.i = phi ptr [ %.sroa.0.0.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader ], [ %.sroa.0.1.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge ] ; 2 uses
  %.sroa.0.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -8 ; 6 uses
  %i.bb = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !60 ; 2 uses
  %i.bd = icmp sgt i32 %i.as, %i.bc
  br i1 %i.bd, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge, label %bb.j

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i
  %i.be = icmp eq i32 %i.as, %i.bc
  br i1 %i.be, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i: ; preds = %bb.j
  %i.bf = load i32, ptr %0, align 4, !tbaa !59
  %i.bg = load i32, ptr %.sroa.0.1.i, align 4, !tbaa !59
  %i.bh = icmp sgt i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i, !llvm.loop !172

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i, %bb.j
  %i.bi = icmp ult ptr %.sroa.011.1.i, %.sroa.0.1.i
  br i1 %i.bi, label %bb.k, label %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_SB_T0_.exit

bb.k:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i
  %i.bj = load i64, ptr %.sroa.011.1.i, align 4, !tbaa !47
  %i.bk = load i64, ptr %.sroa.0.1.i, align 4, !tbaa !47
  store i64 %i.bk, ptr %.sroa.011.1.i, align 4, !tbaa !47
  store i64 %i.bj, ptr %.sroa.0.1.i, align 4, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 8
  br label %bb.g, !llvm.loop !173

_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_SB_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i
  ret ptr %.sroa.011.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 8
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit ], [ %1, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 4 uses
  %.sroa.02.0.copyload.i = load i64, ptr %i.e, align 4, !tbaa !47 ; 3 uses
  %i.f = load i64, ptr %0, align 4, !tbaa !47
  store i64 %i.f, ptr %i.e, align 4, !tbaa !47
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.g, %i.a                       ; 3 uses
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = add nsw i64 %i.i, -1
  %i.k = sdiv i64 %i.j, 2
  %i.l = icmp sgt i64 %i.i, 2
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i
  %.039.i.i = phi i64 [ %i.aa, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = shl i64 %.039.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 3 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !60   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !60   ; 2 uses
  %i.v = icmp sgt i32 %i.s, %i.u
  br i1 %i.v, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.w = icmp eq i32 %i.s, %i.u
  br i1 %i.w, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i: ; preds = %bb.b
  %i.x = load i32, ptr %i.o, align 4, !tbaa !59
  %i.y = load i32, ptr %i.q, align 4, !tbaa !59
  %i.z = icmp sgt i32 %i.x, %i.y
  %cond.fr.i.i = freeze i1 %i.z
  br i1 %cond.fr.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i, %.lr.ph.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i, %bb.b
  %i.aa = phi i64 [ %i.p, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i ], [ %i.n, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i ], [ %i.n, %bb.b ] ; 4 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.039.i.i
  %i.ad = load i64, ptr %i.ab, align 4, !tbaa !47
  store i64 %i.ad, ptr %i.ac, align 4, !tbaa !47
  %i.ae = icmp slt i64 %i.aa, %i.k
  br i1 %i.ae, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !7

._crit_edge.i.i:                                  ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %i.aa, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i ] ; 5 uses
  %i.af = and i64 %i.h, 8
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ah = add nsw i64 %i.i, -2
  %i.ai = ashr exact i64 %i.ah, 1
  %i.aj = icmp eq i64 %.0.lcssa.i.i, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = shl nsw i64 %.0.lcssa.i.i, 1
  %i.al = or disjoint i64 %i.ak, 1                ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %i.al
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  %i.ao = load i64, ptr %i.am, align 4, !tbaa !47
  store i64 %i.ao, ptr %i.an, align 4, !tbaa !47
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.al, %bb.d ], [ %.0.lcssa.i.i, %bb.c ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.sroa.012.0.extract.trunc.i.i.i = trunc i64 %.sroa.02.0.copyload.i to i32
  %.sroa.3.0.extract.shift.i.i.i = lshr i64 %.sroa.02.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i to i32 ; 2 uses
  %i.ap = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ap, label %.lr.ph.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i
  %.021.i.i.i = phi i64 [ %.0922.i.i78.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i ], [ %.1.i.i, %bb.e ] ; 4 uses
  %.0922.in.i.i.i = add nsw i64 %.021.i.i.i, -1
  %.0922.i.i78.i = lshr i64 %.0922.in.i.i.i, 1    ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0922.i.i78.i ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !60 ; 2 uses
  %i.at = icmp sgt i32 %i.as, %.sroa.3.0.extract.trunc.i.i.i
  br i1 %i.at, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.au = icmp eq i32 %i.as, %.sroa.3.0.extract.trunc.i.i.i
  br i1 %i.au, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i: ; preds = %bb.f
  %i.av = load i32, ptr %i.aq, align 4, !tbaa !59
  %i.aw = icmp sgt i32 %i.av, %.sroa.012.0.extract.trunc.i.i.i
  br i1 %i.aw, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i, %.lr.ph.i.i.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.021.i.i.i
  %i.ay = load i64, ptr %i.aq, align 4, !tbaa !47
  store i64 %i.ay, ptr %i.ax, align 4, !tbaa !47
  %.not.i = icmp eq i64 %.0922.i.i78.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !8

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit: ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.e ], [ %.021.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i ], [ 0, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i ], [ %.021.i.i.i, %bb.f ]
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i64 %.sroa.02.0.copyload.i, ptr %i.az, align 4, !tbaa !47
  %i.ba = icmp sgt i64 %i.h, 8
  br i1 %i.ba, label %.lr.ph, label %._crit_edge, !llvm.loop !174

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5clearEb(ptr noundef nonnull align 8 dereferenceable(73) %0, i1 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !80   ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 48                  ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph34, label %._crit_edge35

.lr.ph34:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  br i1 %1, label %.lr.ph34.split.us, label %.lr.ph34.split.split

.lr.ph34.split.us:                                ; preds = %.lr.ph34, %._crit_edge.split.us44.thread
  %i.l = phi ptr [ %i.bd, %._crit_edge.split.us44.thread ], [ %i.d, %.lr.ph34 ] ; 5 uses
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %._crit_edge.split.us44.thread ], [ 0, %.lr.ph34 ] ; 3 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %indvars.iv50 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %.not19.us = icmp eq ptr %i.o, %i.p
  %.pre54 = load i8, ptr %i.k, align 8, !tbaa !72, !range !73 ; 2 uses
  br i1 %.not19.us, label %._crit_edge.split.us44, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph34.split.us
  %i.q = trunc nuw i8 %.pre54 to i1
  br i1 %i.q, label %.lr.ph.split.split.us37, label %.lr.ph.split.split.us.us

.lr.ph.split.split.us.us:                         ; preds = %.lr.ph.us, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us26.us
  %.sroa.015.020.us23.us = phi ptr [ %i.aa, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us26.us ], [ %i.o, %.lr.ph.us ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.015.020.us23.us, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !96   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !76
  %i.x = mul nsw i64 %i.w, %i.u                   ; 2 uses
  %i.y = icmp slt i64 %i.x, 1
  br i1 %i.y, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us26.us, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.us24.us

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.us24.us: ; preds = %.lr.ph.split.split.us.us
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !78
  %.idx.i.i.i.i.i.i.i.i.i.i.i.us25.us = shl nuw nsw i64 %i.x, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.us25.us, i1 false), !tbaa !49
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us26.us

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us26.us: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.us24.us, %.lr.ph.split.split.us.us
  %i.aa = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.020.us23.us) #26 ; 2 uses
  %.not.us27.us = icmp eq ptr %i.aa, %i.p
  br i1 %.not.us27.us, label %._crit_edge.split.us44.thread, label %.lr.ph.split.split.us.us, !llvm.loop !175

.lr.ph.split.split.us37:                          ; preds = %.lr.ph.us, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us41
  %i.ab = phi ptr [ %i.aq, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us41 ], [ %i.l, %.lr.ph.us ] ; 3 uses
  %i.ac = phi ptr [ %i.ar, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us41 ], [ %i.l, %.lr.ph.us ] ; 3 uses
  %.sroa.015.020.us38 = phi ptr [ %i.as, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us41 ], [ %i.o, %.lr.ph.us ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.015.020.us38, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !96 ; 6 uses
  %i.af = load i8, ptr %i.k, align 8, !tbaa !72, !range !73, !noundef !61
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.split.us37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !75
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !76
  %i.al = mul nsw i64 %i.ak, %i.ai                ; 2 uses
  %i.am = icmp slt i64 %i.al, 1
  br i1 %i.am, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us41, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.us39

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.us39: ; preds = %bb.b
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !78
  %.idx.i.i.i.i.i.i.i.i.i.i.i.us40 = shl nuw nsw i64 %i.al, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.an, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.us40, i1 false), !tbaa !49
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us41

bb.c:                                             ; preds = %.lr.ph.split.split.us37
  %i.ao = icmp eq ptr %i.ae, null
  br i1 %i.ao, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us41, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !78
  tail call void @free(ptr noundef %i.ap) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 24) #21
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !80  ; 2 uses
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us41

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us41: ; preds = %bb.d, %bb.c, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.us39, %bb.b
  %i.aq = phi ptr [ %.pre, %bb.d ], [ %i.ab, %bb.c ], [ %i.ab, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.us39 ], [ %i.ab, %bb.b ] ; 2 uses
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.ac, %bb.c ], [ %i.ac, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.us39 ], [ %i.ac, %bb.b ] ; 2 uses
  %i.as = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.020.us38) #26 ; 2 uses
  %i.at = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %indvars.iv50 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %.not.us42 = icmp eq ptr %i.as, %i.au
  br i1 %.not.us42, label %._crit_edge.split.us44.loopexit, label %.lr.ph.split.split.us37, !llvm.loop !176

._crit_edge.split.us44.loopexit:                  ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us41
  %.pre53 = load i8, ptr %i.k, align 8, !tbaa !72, !range !73
  br label %._crit_edge.split.us44

._crit_edge.split.us44:                           ; preds = %._crit_edge.split.us44.loopexit, %.lr.ph34.split.us
  %i.av = phi ptr [ %i.l, %.lr.ph34.split.us ], [ %i.aq, %._crit_edge.split.us44.loopexit ]
  %i.aw = phi i8 [ %.pre54, %.lr.ph34.split.us ], [ %.pre53, %._crit_edge.split.us44.loopexit ]
  %.lcssa18.us = phi ptr [ %i.m, %.lr.ph34.split.us ], [ %i.at, %._crit_edge.split.us44.loopexit ] ; 5 uses
  %.lcssa.us = phi ptr [ %i.p, %.lr.ph34.split.us ], [ %i.au, %._crit_edge.split.us44.loopexit ] ; 2 uses
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.e, label %._crit_edge.split.us44.thread

bb.e:                                             ; preds = %._crit_edge.split.us44
  %i.ay = getelementptr inbounds nuw i8, ptr %.lcssa18.us, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !90
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %.lcssa18.us, ptr noundef %i.az)
          to label %_ZNSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS3_EEE5clearEv.exit.us unwind label %.split.us

_ZNSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS3_EEE5clearEv.exit.us: ; preds = %bb.e
  store ptr null, ptr %i.ay, align 8, !tbaa !90
  %i.ba = getelementptr inbounds nuw i8, ptr %.lcssa18.us, i64 24
  store ptr %.lcssa.us, ptr %i.ba, align 8, !tbaa !86
  %i.bb = getelementptr inbounds nuw i8, ptr %.lcssa18.us, i64 32
  store ptr %.lcssa.us, ptr %i.bb, align 8, !tbaa !87
  %i.bc = getelementptr inbounds nuw i8, ptr %.lcssa18.us, i64 40
  store i64 0, ptr %i.bc, align 8, !tbaa !88
  %.pre55 = load ptr, ptr %i.a, align 8, !tbaa !80
  br label %._crit_edge.split.us44.thread

._crit_edge.split.us44.thread:                    ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us26.us, %_ZNSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS3_EEE5clearEv.exit.us, %._crit_edge.split.us44
  %i.bd = phi ptr [ %.pre55, %_ZNSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS3_EEE5clearEv.exit.us ], [ %i.av, %._crit_edge.split.us44 ], [ %i.l, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us26.us ] ; 2 uses
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !89
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = sdiv exact i64 %i.bh, 48
  %sext = shl i64 %i.bi, 32
  %i.bj = ashr exact i64 %sext, 32
  %i.bk = icmp slt i64 %indvars.iv.next51, %i.bj
  br i1 %i.bk, label %.lr.ph34.split.us, label %._crit_edge35, !llvm.loop !177

.split.us:                                        ; preds = %bb.e
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #25
  unreachable

.lr.ph34.split.split:                             ; preds = %.lr.ph34
  %wide.trip.count = and i64 %i.h, 2147483647
  br label %bb.f

._crit_edge35:                                    ; preds = %._crit_edge.split.us, %._crit_edge.split.us44.thread, %bb.a
  ret void

bb.f:                                             ; preds = %.lr.ph34.split.split, %._crit_edge.split.us
  %indvars.iv = phi i64 [ 0, %.lr.ph34.split.split ], [ %indvars.iv.next, %._crit_edge.split.us ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !86 ; 2 uses
  %i.bq = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.not19 = icmp eq ptr %i.bp, %i.br
  br i1 %.not19, label %._crit_edge.split.us, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us, %.lr.ph
  %.sroa.015.020.us = phi ptr [ %i.bp, %.lr.ph ], [ %i.cc, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.015.020.us, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !96 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !75
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !76
  %i.bz = mul nsw i64 %i.by, %i.bw                ; 2 uses
  %i.ca = icmp slt i64 %i.bz, 1
  br i1 %i.ca, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.us

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.us: ; preds = %bb.g
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !78
  %.idx.i.i.i.i.i.i.i.i.i.i.i.us = shl nuw nsw i64 %i.bz, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cb, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.us, i1 false), !tbaa !49
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us

end_hunk_2
