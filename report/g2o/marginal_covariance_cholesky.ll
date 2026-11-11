Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/marginal_covariance_cholesky?download=true
inline.NumInlined: 987
inline.NumDeleted: 523
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3g2o26MarginalCovarianceCholesky12computeEntryEii:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !46
  %i.u = icmp eq i32 %i.c, %i.t
  br i1 %i.u, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.v = icmp eq i32 %i.c, %i.y
  br i1 %i.v, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.w, %bb.g ], [ %i.r, %bb.f ]
  %i.w = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !39 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !46   ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = urem i64 %i.z, %i.m
  %.not19.i.i.i.i = icmp eq i64 %i.aa, %i.n
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit, !llvm.loop !2

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.r, %bb.f ], [ %i.w, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !53
  br label %bb.s

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.af = sext i32 %1 to i64                      ; 3 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 4      ; 2 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !46 ; 2 uses
  %.03055 = add nsw i32 %i.ai, 1
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !46
  %i.ak = icmp slt i32 %.03055, %i.aj
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = sext i32 %i.ai to i64
  %i.ao = add nsw i64 %i.an, 1
  br label %bb.i

._crit_edge:                                      ; preds = %bb.l, %.loopexit
  %.031.lcssa = phi double [ 0.000000e+00, %.loopexit ], [ %i.ba, %bb.l ] ; 2 uses
  %i.ap = icmp eq i32 %1, %2
  br i1 %i.ap, label %bb.m, label %bb.n

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.03156 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ba, %bb.l ]
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !42
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !46 ; 3 uses
  %i.at = icmp slt i32 %i.as, %2
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = tail call noundef double @_ZN3g2o26MarginalCovarianceCholesky12computeEntryEii(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.as, i32 noundef %2)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.av = tail call noundef double @_ZN3g2o26MarginalCovarianceCholesky12computeEntryEii(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %2, i32 noundef %i.as)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = phi double [ %i.au, %bb.j ], [ %i.av, %bb.k ]
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !43
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %indvars.iv
  %i.az = load double, ptr %i.ay, align 8, !tbaa !48
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.az, double %.03156) ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bb = load i32, ptr %i.ah, align 4, !tbaa !46
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next, %i.bc
  br i1 %i.bd, label %bb.i, label %._crit_edge, !llvm.loop !114

bb.m:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !36
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.af
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !48 ; 2 uses
  %i.bi = fsub double %i.bh, %.031.lcssa
  %i.bj = fmul double %i.bh, %i.bi
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.bk = fneg double %.031.lcssa
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !36
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.af
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !48
  %i.bp = fmul double %i.bo, %i.bk
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.029 = phi double [ %i.bj, %bb.m ], [ %i.bp, %bb.n ] ; 2 uses
  %i.bq = sext i32 %i.c to i64                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !35 ; 2 uses
  %i.bt = urem i64 %i.bq, %i.bs                   ; 3 uses
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !51 ; 2 uses
  %.not.i.i.i.i35 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i35, label %.loopexit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !39 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !46
  %i.ca = icmp eq i32 %i.c, %i.bz
  br i1 %i.ca, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit, label %.lr.ph.i.i.i.i36

bb.q:                                             ; preds = %bb.r
  %i.cb = icmp eq i32 %i.c, %i.ce
  br i1 %i.cb, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit, label %.lr.ph.i.i.i.i36, !llvm.loop !2

.lr.ph.i.i.i.i36:                                 ; preds = %bb.p, %bb.q
  %.020.i.i.i.i37 = phi ptr [ %i.cc, %bb.q ], [ %i.bx, %bb.p ]
  %i.cc = load ptr, ptr %.020.i.i.i.i37, align 8, !tbaa !39 ; 4 uses
  %.not18.i.i.i.i38 = icmp eq ptr %i.cc, null
  br i1 %.not18.i.i.i.i38, label %.loopexit.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i36
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !46 ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = urem i64 %i.cf, %i.bs
  %.not19.i.i.i.i39 = icmp eq i64 %i.cg, %i.bt
  br i1 %.not19.i.i.i.i39, label %bb.q, label %..loopexit_crit_edge21.i.i.i.i40, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i40:                 ; preds = %bb.r
  br label %.loopexit.i.i, !llvm.loop !2

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i36, %..loopexit_crit_edge21.i.i.i.i40, %bb.o
  %i.ch = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 5 uses
  store ptr null, ptr %i.ch, align 8, !tbaa !39
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i32 %i.c, ptr %i.ci, align 8, !tbaa !115
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store double 0.000000e+00, ptr %i.cj, align 8, !tbaa !53
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
  store double %.029, ptr %.1.i.i, align 8, !tbaa !48
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i, align 8, !tbaa !39 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #21
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !35
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55   ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !56     ; 2 uses
  %.not212 = icmp eq ptr %i.j, %i.k
  br i1 %.not212, label %.preheader148, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

._crit_edge198:                                   ; preds = %._crit_edge
  %.not.i.i = icmp eq ptr %.sroa.0118.1.lcssa, %.sroa.11.1.lcssa
  br i1 %.not.i.i, label %.preheader148, label %bb.b

bb.b:                                             ; preds = %._crit_edge198
  %i.m = ptrtoint ptr %.sroa.11.1.lcssa to i64
  %i.n = ptrtoint ptr %.sroa.0118.1.lcssa to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = shl nuw nsw i64 %i.q, 1
  %i.s = xor i64 %i.r, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %.sroa.0118.1.lcssa, ptr %.sroa.11.1.lcssa, i64 noundef %i.s)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %.sroa.0118.1.lcssa, ptr %.sroa.11.1.lcssa)
          to label %.lr.ph203 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %.lr.ph, %._crit_edge
  %i.t = phi ptr [ %i.k, %.lr.ph ], [ %i.ac, %._crit_edge ] ; 2 uses
  %i.u = phi ptr [ %i.j, %.lr.ph ], [ %i.ad, %._crit_edge ]
  %.069197 = phi i32 [ 0, %.lr.ph ], [ %i.w, %._crit_edge ] ; 3 uses
  %.070196 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %._crit_edge ] ; 2 uses
  %.sroa.16.0195 = phi ptr [ null, %.lr.ph ], [ %.sroa.16.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.11.0194 = phi ptr [ null, %.lr.ph ], [ %.sroa.11.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0118.0193 = phi ptr [ null, %.lr.ph ], [ %.sroa.0118.1.lcssa, %._crit_edge ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.070196
  %i.w = load i32, ptr %i.v, align 4, !tbaa !46   ; 2 uses
  %i.x = sub nsw i32 %i.w, %.069197               ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.preheader149.preheader, label %._crit_edge

.preheader149.preheader:                          ; preds = %bb.c
  %i.z = sext i32 %.069197 to i64                 ; 2 uses
  %wide.trip.count227 = zext nneg i32 %i.x to i64 ; 2 uses
  br label %.preheader149

.preheader149:                                    ; preds = %.preheader149.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader149.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.sroa.16.1189 = phi ptr [ %.sroa.16.0195, %.preheader149.preheader ], [ %.sroa.16.4, %bb.d ]
  %.sroa.11.1188 = phi ptr [ %.sroa.11.0194, %.preheader149.preheader ], [ %.sroa.11.3, %bb.d ]
  %.sroa.0118.1187 = phi ptr [ %.sroa.0118.0193, %.preheader149.preheader ], [ %.sroa.0118.4, %bb.d ]
  %i.aa = add nsw i64 %indvars.iv, %i.z           ; 2 uses
  %i.ab = trunc nsw i64 %i.aa to i32
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !55
  %.pre268 = load ptr, ptr %2, align 8, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.ac = phi ptr [ %i.t, %bb.c ], [ %.pre268, %._crit_edge.loopexit ] ; 2 uses
  %i.ad = phi ptr [ %i.u, %bb.c ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.0118.1.lcssa = phi ptr [ %.sroa.0118.0193, %bb.c ], [ %.sroa.0118.4, %._crit_edge.loopexit ] ; 9 uses
  %.sroa.11.1.lcssa = phi ptr [ %.sroa.11.0194, %bb.c ], [ %.sroa.11.3, %._crit_edge.loopexit ] ; 5 uses
  %.sroa.16.1.lcssa = phi ptr [ %.sroa.16.0195, %bb.c ], [ %.sroa.16.4, %._crit_edge.loopexit ] ; 4 uses
  %i.ae = add nuw i64 %.070196, 1                 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = icmp ult i64 %i.ae, %i.ai
  br i1 %i.aj, label %bb.c, label %._crit_edge198, !llvm.loop !116

bb.d:                                             ; preds = %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next, %wide.trip.count227
  br i1 %exitcond228.not, label %._crit_edge.loopexit, label %.preheader149, !llvm.loop !117

bb.e:                                             ; preds = %.preheader149, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit
  %indvars.iv223 = phi i64 [ %indvars.iv, %.preheader149 ], [ %indvars.iv.next224, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.16.2185 = phi ptr [ %.sroa.16.1189, %.preheader149 ], [ %.sroa.16.4, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit ] ; 6 uses
  %.sroa.11.2184 = phi ptr [ %.sroa.11.1188, %.preheader149 ], [ %.sroa.11.3, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.0118.2183 = phi ptr [ %.sroa.0118.1187, %.preheader149 ], [ %.sroa.0118.4, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit ] ; 9 uses
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !44  ; 3 uses
  %.not83 = icmp eq ptr %i.ak, null
  br i1 %.not83, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.aa
  %i.am = load i32, ptr %i.al, align 4, !tbaa !46
  %i.an = getelementptr [4 x i8], ptr %i.ak, i64 %indvars.iv223
  %i.ao = getelementptr [4 x i8], ptr %i.an, i64 %i.z
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !46
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aq = trunc i64 %indvars.iv223 to i32
  %i.ar = add i32 %.069197, %i.aq
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = phi i32 [ %i.am, %bb.f ], [ %i.ab, %bb.g ] ; 2 uses
  %i.at = phi i32 [ %i.ap, %bb.f ], [ %i.ar, %bb.g ] ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.at) ; 2 uses
  %spec.select143 = tail call i32 @llvm.smax.i32(i32 %i.as, i32 %i.at) ; 2 uses
  %.not.i.i87 = icmp eq ptr %.sroa.11.2184, %.sroa.16.2185
  br i1 %.not.i.i87, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.6.0.insert.ext = zext i32 %spec.select143 to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.0103.0.insert.ext = zext i32 %spec.select to i64
  %.sroa.0103.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.0103.0.insert.ext
  store i64 %.sroa.0103.0.insert.insert, ptr %.sroa.11.2184, align 4, !tbaa !46
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.au = ptrtoint ptr %.sroa.16.2185 to i64      ; 2 uses
  %i.av = ptrtoint ptr %.sroa.0118.2183 to i64    ; 3 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 4 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.k, label %_ZNKSt6vectorIN3g2o10MatrixElemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %.noexc88 unwind label %.loopexit.split-lp151.loopexit.split-lp

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
          to label %.noexc89 unwind label %.loopexit.split-lp151.loopexit.split-lp ; 8 uses

.noexc89:                                         ; preds = %_ZNKSt6vectorIN3g2o10MatrixElemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw
  %.sroa.6.0.insert.ext109 = zext i32 %spec.select143 to i64
  %.sroa.6.0.insert.shift110 = shl nuw i64 %.sroa.6.0.insert.ext109, 32
  %.sroa.0103.0.insert.ext105 = zext i32 %spec.select to i64
  %.sroa.0103.0.insert.insert107 = or disjoint i64 %.sroa.6.0.insert.shift110, %.sroa.0103.0.insert.ext105
  store i64 %.sroa.0103.0.insert.insert107, ptr %i.bf, align 4, !tbaa !46
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0118.2183, %.sroa.16.2185
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc89
  %i.bg = ptrtoaddr ptr %i.be to i64
  %i.bh = add i64 %i.au, -8
  %i.bi = sub i64 %i.bh, %i.av                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bi, 24
  %i.bl = sub i64 %i.av, %i.bg
  %diff.check = icmp ugt i64 %i.bl, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader342, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bk, 4611686018427387900     ; 3 uses
  %i.bm = shl i64 %n.vec, 3                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.be, i64 %i.bm  ; 2 uses
  %i.bo = getelementptr i8, ptr %.sroa.0118.2183, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bp ; 2 uses
  %next.gep336 = getelementptr i8, ptr %.sroa.0118.2183, i64 %i.bp ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.bq = getelementptr i8, ptr %next.gep336, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep336, align 4, !tbaa !46, !alias.scope !129
  %wide.load337 = load <2 x i64>, ptr %i.bq, align 4, !tbaa !46, !alias.scope !129
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !tbaa !46, !alias.scope !128
  store <2 x i64> %wide.load337, ptr %i.br, align 4, !tbaa !46, !alias.scope !128
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader342

.lr.ph.i.i.i.i.i.i.preheader342:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0118.2183, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader342, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader342 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader342 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.bt = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !46, !alias.scope !129
  store i64 %i.bt, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !46, !alias.scope !128
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bu, %.sroa.16.2185
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !122

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc89
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.be, %.noexc89 ], [ %i.bn, %middle.block ], [ %i.bv, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0118.2183, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0118.2183, i64 noundef %i.aw) #21
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.i
  %.sroa.0118.4 = phi ptr [ %i.be, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0118.2183, %bb.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.11.2184, %bb.i ]
  %.sroa.16.4 = phi ptr [ %i.bw, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.16.2185, %bb.i ] ; 3 uses
  %.sroa.11.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 8 ; 3 uses
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next224, %wide.trip.count227
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !123

.loopexit.split-lp151.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIN3g2o10MatrixElemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.preheader148:                                    ; preds = %bb.m, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit, %._crit_edge198
  %.sroa.0118.0.lcssa293308 = phi ptr [ null, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit ], [ %.sroa.0118.1.lcssa, %._crit_edge198 ], [ %.sroa.0118.1.lcssa, %bb.m ] ; 3 uses
  %.sroa.16.0.lcssa297307 = phi ptr [ null, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit ], [ %.sroa.16.1.lcssa, %._crit_edge198 ], [ %.sroa.16.1.lcssa, %bb.m ]
  %.pre-phi271309 = ptrtoint ptr %.sroa.0118.0.lcssa293308 to i64
  %i.bx = load ptr, ptr %i.i, align 8, !tbaa !55  ; 2 uses
  %i.by = load ptr, ptr %2, align 8, !tbaa !56    ; 3 uses
  %.not214 = icmp eq ptr %i.bx, %i.by
  br i1 %.not214, label %._crit_edge211, label %.lr.ph210

.lr.ph210:                                        ; preds = %.preheader148
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 2
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.o

.lr.ph203:                                        ; preds = %.noexc, %bb.m
  %.068202 = phi i64 [ %i.ck, %bb.m ], [ 0, %.noexc ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0118.1.lcssa, i64 %.068202 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !60
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !61
  %i.cj = invoke noundef double @_ZN3g2o26MarginalCovarianceCholesky12computeEntryEii(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.cg, i32 noundef %i.ci)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.m:                                             ; preds = %.lr.ph203
  %i.ck = add nuw i64 %.068202, 1                 ; 2 uses
  %exitcond229.not = icmp eq i64 %i.ck, %i.p
  br i1 %exitcond229.not, label %.preheader148, label %.lr.ph203, !llvm.loop !124

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph203, %.noexc, %bb.b
  %lpad.loopexit.split-lp341 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge211:                                   ; preds = %._crit_edge207, %.preheader148
  %.not.i.i.i90 = icmp eq ptr %.sroa.0118.0.lcssa293308, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge211
  %i.cl = ptrtoint ptr %.sroa.16.0.lcssa297307 to i64
  %i.cm = sub i64 %i.cl, %.pre-phi271309
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0118.0.lcssa293308, i64 noundef %i.cm) #21
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit: ; preds = %._crit_edge211, %bb.n
  ret void

bb.o:                                             ; preds = %.lr.ph210, %._crit_edge207
  %.067209 = phi i64 [ 0, %.lr.ph210 ], [ %i.ei, %._crit_edge207 ] ; 3 uses
  %.1208 = phi i32 [ 0, %.lr.ph210 ], [ %i.co, %._crit_edge207 ] ; 5 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.067209
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !46 ; 2 uses
  %i.cp = sub nsw i32 %i.co, %.1208               ; 7 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.067209
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !130 ; 6 uses
  %i.cs = icmp sgt i32 %i.cp, 0
  br i1 %i.cs, label %.preheader147.lr.ph, label %._crit_edge207

.preheader147.lr.ph:                              ; preds = %bb.o
  %i.ct = load ptr, ptr %i.cd, align 8, !tbaa !44 ; 5 uses
  %.not = icmp eq ptr %i.ct, null                 ; 2 uses
  %i.cu = load i32, ptr %0, align 8, !tbaa !33    ; 3 uses
  %i.cv = load i64, ptr %i.ce, align 8, !tbaa !50
  %.not.not.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not.not.i.i, label %.preheader147.lr.ph.split.us, label %.preheader147.lr.ph.split

.preheader147.lr.ph.split.us:                     ; preds = %.preheader147.lr.ph
  %i.cw = zext nneg i32 %i.cp to i64              ; 5 uses
  br i1 %.not, label %.preheader147.us.us.preheader, label %.preheader147.us.preheader

.preheader147.us.preheader:                       ; preds = %.preheader147.lr.ph.split.us
  %i.cx = sext i32 %.1208 to i64                  ; 2 uses
  %wide.trip.count248 = zext nneg i32 %i.cp to i64 ; 2 uses
  %invariant.gep323 = getelementptr [4 x i8], ptr %i.ct, i64 %i.cx
  %invariant.gep319 = getelementptr [4 x i8], ptr %i.ct, i64 %i.cx
  br label %.preheader147.us

.preheader147.us.us.preheader:                    ; preds = %.preheader147.lr.ph.split.us
  %i.cy = zext i32 %.1208 to i64                  ; 2 uses
  %i.cz = zext i32 %i.cu to i64
  br label %.preheader147.us.us

.preheader147.us.us:                              ; preds = %.preheader147.us.us.preheader, %.split.us.us.split.us.us
  %indvars.iv259 = phi i64 [ %i.cy, %.preheader147.us.us.preheader ], [ %indvars.iv.next260, %.split.us.us.split.us.us ] ; 2 uses
  %indvars.iv252 = phi i64 [ 0, %.preheader147.us.us.preheader ], [ %indvars.iv.next253, %.split.us.us.split.us.us ] ; 5 uses
  %i.da = mul nuw nsw i64 %indvars.iv252, %i.cw
  %i.db = mul i64 %indvars.iv259, %i.cz
  %invariant.op = add i64 %i.db, %i.cy
  %invariant.gep325 = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.da
  %invariant.gep327 = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv252
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %bb.r, %.preheader147.us.us
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %bb.r ], [ %indvars.iv252, %.preheader147.us.us ] ; 5 uses
  %.reass = add i64 %indvars.iv254, %invariant.op
  %i.dc = trunc i64 %.reass to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.preheader.us.us.us.us
  %.sroa.06.0.in.i.i.us.us.us.us = phi ptr [ %.sroa.06.0.i.i.us.us.us.us, %bb.p ], [ %i.b, %.preheader.us.us.us.us ]
  %.sroa.06.0.i.i.us.us.us.us = load ptr, ptr %.sroa.06.0.in.i.i.us.us.us.us, align 8, !tbaa !39, !nonnull !62, !noundef !62 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us.us.us, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !46
  %i.df = icmp eq i32 %i.de, %i.dc
  br i1 %i.df, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us.us.us, label %bb.p, !llvm.loop !1

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us.us.us: ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us.us.us, i64 16
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !53 ; 2 uses
  %gep326 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep325, i64 %indvars.iv254
  store double %i.dh, ptr %gep326, align 8, !tbaa !48
  %.not82.us.us.us.us = icmp eq i64 %indvars.iv252, %indvars.iv254
  br i1 %.not82.us.us.us.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us.us.us
  %i.di = mul nuw nsw i64 %indvars.iv254, %i.cw
  %gep328 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep327, i64 %i.di
  store double %i.dh, ptr %gep328, align 8, !tbaa !48
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us.us.us
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %i.cw
  br i1 %exitcond258.not, label %.split.us.us.split.us.us, label %.preheader.us.us.us.us, !llvm.loop !125

.split.us.us.split.us.us:                         ; preds = %bb.r
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %indvars.iv.next260 = add i64 %indvars.iv259, 1
  %exitcond265.not = icmp eq i64 %indvars.iv.next253, %i.cw
  br i1 %exitcond265.not, label %._crit_edge207, label %.preheader147.us.us, !llvm.loop !126

.preheader147.us:                                 ; preds = %.preheader147.us.preheader, %.split.us.us.split
  %indvars.iv240 = phi i64 [ 0, %.preheader147.us.preheader ], [ %indvars.iv.next241, %.split.us.us.split ] ; 6 uses
  %gep324 = getelementptr [4 x i8], ptr %invariant.gep323, i64 %indvars.iv240
  %i.dj = mul nuw nsw i64 %indvars.iv240, %i.cw
  %i.dk = load i32, ptr %gep324, align 4, !tbaa !46 ; 2 uses
  %invariant.gep321 = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.dj
  %i.dl = trunc nuw nsw i64 %indvars.iv240 to i32
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %bb.u, %.preheader147.us
  %indvars.iv242 = phi i64 [ %indvars.iv.next243, %bb.u ], [ %indvars.iv240, %.preheader147.us ] ; 5 uses
  %gep320 = getelementptr [4 x i8], ptr %invariant.gep319, i64 %indvars.iv242
  %i.dm = load i32, ptr %gep320, align 4, !tbaa !46 ; 2 uses
  %spec.select144.us.us = tail call i32 @llvm.smin.i32(i32 %i.dk, i32 %i.dm)
  %spec.select145.us.us = tail call i32 @llvm.smax.i32(i32 %i.dk, i32 %i.dm)
  %i.dn = mul nsw i32 %i.cu, %spec.select144.us.us
  %i.do = add nsw i32 %i.dn, %spec.select145.us.us
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader.us.us
  %.sroa.06.0.in.i.i.us.us = phi ptr [ %.sroa.06.0.i.i.us.us, %bb.s ], [ %i.b, %.preheader.us.us ]
  %.sroa.06.0.i.i.us.us = load ptr, ptr %.sroa.06.0.in.i.i.us.us, align 8, !tbaa !39, !nonnull !62, !noundef !62 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us, i64 8
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !46
  %i.dr = icmp eq i32 %i.do, %i.dq
  br i1 %i.dr, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us, label %bb.s, !llvm.loop !1

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us: ; preds = %bb.s
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us, i64 16
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !53 ; 2 uses
  %gep322 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep321, i64 %indvars.iv242
  store double %i.dt, ptr %gep322, align 8, !tbaa !48
  %.not82.us.us = icmp eq i64 %indvars.iv240, %indvars.iv242
  br i1 %.not82.us.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us
  %i.du = trunc nuw nsw i64 %indvars.iv242 to i32
  %i.dv = mul nuw nsw i32 %i.cp, %i.du
  %i.dw = add nuw nsw i32 %i.dv, %i.dl
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.dx
  store double %i.dt, ptr %i.dy, align 8, !tbaa !48
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.us
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1 ; 2 uses
  %exitcond246.not = icmp eq i64 %indvars.iv.next243, %wide.trip.count248
  br i1 %exitcond246.not, label %.split.us.us.split, label %.preheader.us.us, !llvm.loop !125

.split.us.us.split:                               ; preds = %bb.u
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond249.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count248
  br i1 %exitcond249.not, label %._crit_edge207, label %.preheader147.us, !llvm.loop !126

.preheader147.lr.ph.split:                        ; preds = %.preheader147.lr.ph
  %i.dz = load i64, ptr %i.f, align 8, !tbaa !35  ; 2 uses
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.eb = sext i32 %.1208 to i64                  ; 2 uses
  %i.ec = zext nneg i32 %i.cp to i64
  %wide.trip.count238 = zext nneg i32 %i.cp to i64 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ct, i64 %i.eb
  br label %.preheader147

.preheader147:                                    ; preds = %.preheader147.lr.ph.split, %.split
  %indvars.iv230 = phi i64 [ 0, %.preheader147.lr.ph.split ], [ %indvars.iv.next231, %.split ] ; 6 uses
  %i.ed = add nsw i64 %indvars.iv230, %i.eb       ; 2 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.ed
  %i.ef = mul nuw nsw i64 %indvars.iv230, %i.ec
  %i.eg = trunc nsw i64 %i.ed to i32
  %invariant.gep317 = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ef
  %i.eh = trunc nuw nsw i64 %indvars.iv230 to i32
  br label %bb.v

._crit_edge207:                                   ; preds = %.split, %.split.us.us.split, %.split.us.us.split.us.us, %bb.o
  %i.ei = add nuw i64 %.067209, 1                 ; 2 uses
  %exitcond267.not = icmp eq i64 %i.ei, %i.cc
  br i1 %exitcond267.not, label %._crit_edge211, label %bb.o, !llvm.loop !127

.split:                                           ; preds = %bb.aa
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond239.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count238
  br i1 %exitcond239.not, label %._crit_edge207, label %.preheader147, !llvm.loop !126

bb.v:                                             ; preds = %.preheader147, %bb.aa
  %indvars.iv232 = phi i64 [ %indvars.iv230, %.preheader147 ], [ %indvars.iv.next233, %bb.aa ] ; 6 uses
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ej = load i32, ptr %i.ee, align 4, !tbaa !46
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv232
  %i.ek = load i32, ptr %gep, align 4, !tbaa !46
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.el = trunc i64 %indvars.iv232 to i32
  %i.em = add i32 %.1208, %i.el
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.en = phi i32 [ %i.ej, %bb.w ], [ %i.eg, %bb.x ] ; 2 uses
  %i.eo = phi i32 [ %i.ek, %bb.w ], [ %i.em, %bb.x ] ; 2 uses
  %spec.select144 = tail call i32 @llvm.smin.i32(i32 %i.en, i32 %i.eo)
  %spec.select145 = tail call i32 @llvm.smax.i32(i32 %i.en, i32 %i.eo)
  %i.ep = mul nsw i32 %i.cu, %spec.select144
  %i.eq = add nsw i32 %i.ep, %spec.select145      ; 3 uses
  %i.er = sext i32 %i.eq to i64
  %i.es = urem i64 %i.er, %i.dz                   ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !51, !nonnull !62, !noundef !62
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !39 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !46
  %i.ey = icmp eq i32 %i.eq, %i.ex
  br i1 %i.ey, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi ptr [ %i.ez, %.lr.ph.i.i.i.i ], [ %i.ev, %bb.y ]
  %i.ez = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !39, !nonnull !62, !noundef !62 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !46 ; 2 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = urem i64 %i.fc, %i.dz
  %.not19.i.i.i.i = icmp eq i64 %i.fd, %i.es
  tail call void @llvm.assume(i1 %.not19.i.i.i.i)
  %i.fe = icmp eq i32 %i.eq, %i.fb
  br i1 %i.fe, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.y
  %.sroa.06.1.i.i = phi ptr [ %i.ev, %bb.y ], [ %i.ez, %.lr.ph.i.i.i.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !53 ; 2 uses
  %gep318 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep317, i64 %indvars.iv232
  store double %i.fg, ptr %gep318, align 8, !tbaa !48
  %.not82 = icmp eq i64 %indvars.iv230, %indvars.iv232
  br i1 %.not82, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit
  %i.fh = trunc nuw nsw i64 %indvars.iv232 to i32
  %i.fi = mul nuw nsw i32 %i.cp, %i.fh
  %i.fj = add nuw nsw i32 %i.fi, %i.eh
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.fk
  store double %i.fg, ptr %i.fl, align 8, !tbaa !48
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %indvars.iv.next233, %wide.trip.count238
  br i1 %exitcond236.not, label %.split, label %bb.v, !llvm.loop !125

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp151.loopexit.split-lp
  %.sroa.0118.3 = phi ptr [ %.sroa.0118.2183, %.loopexit.split-lp151.loopexit.split-lp ], [ %.sroa.0118.1.lcssa, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.16.3 = phi ptr [ %.sroa.16.2185, %.loopexit.split-lp151.loopexit.split-lp ], [ %.sroa.16.1.lcssa, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp151.loopexit.split-lp ], [ %lpad.loopexit.split-lp341, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i93 = icmp eq ptr %.sroa.0118.3, null
  br i1 %.not.i.i.i93, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit94, label %.thread134

.thread134:                                       ; preds = %.loopexit.split-lp
  %i.fm = ptrtoint ptr %.sroa.16.3 to i64
  %i.fn = ptrtoint ptr %.sroa.0118.3 to i64
  %i.fo = sub i64 %i.fm, %i.fn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0118.3, i64 noundef %i.fo) #21
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit94

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit94: ; preds = %.loopexit.split-lp, %.thread134
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o26MarginalCovarianceCholesky17computeCovarianceERNS_17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorIiSaIiEERKS7_ISt4pairIiiESaISD_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.g2o::SparseBlockMatrix", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = load ptr, ptr %2, align 8, !tbaa !56     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
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
  %i.q = load i8, ptr %i.p, align 8, !tbaa !73, !range !74, !noundef !62
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i8 %i.q, ptr %i.r, align 8, !tbaa !73
  call void @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !38   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.u, %bb.b ] ; 2 uses
  %i.v = load ptr, ptr %.06.i.i.i, align 8, !tbaa !39 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #21
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.b
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !35
  %i.z = shl i64 %i.y, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.w, i8 0, i64 %i.z, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !145
  %i.ac = load ptr, ptr %3, align 8, !tbaa !146   ; 2 uses
  %.not267 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not267, label %.preheader169, label %.lr.ph239

.lr.ph239:                                        ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.e

._crit_edge240:                                   ; preds = %._crit_edge229
  %.not.i.i = icmp eq ptr %.sroa.0138.1.lcssa, %.sroa.11.1.lcssa
  br i1 %.not.i.i, label %.preheader169, label %bb.c

bb.c:                                             ; preds = %._crit_edge240
  %i.ae = ptrtoint ptr %.sroa.11.1.lcssa to i64
  %i.af = ptrtoint ptr %.sroa.0138.1.lcssa to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 2 uses
  %i.ai = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.aj = shl nuw nsw i64 %i.ai, 1
  %i.ak = xor i64 %i.aj, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %.sroa.0138.1.lcssa, ptr %.sroa.11.1.lcssa, i64 noundef %i.ak)
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc101:                                        ; preds = %bb.c
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %.sroa.0138.1.lcssa, ptr %.sroa.11.1.lcssa)
          to label %.lr.ph245 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.noexc99, %.noexc, %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit115

bb.e:                                             ; preds = %.lr.ph239, %._crit_edge229
  %i.am = phi ptr [ %i.ac, %.lr.ph239 ], [ %i.bu, %._crit_edge229 ]
  %.083238 = phi i64 [ 0, %.lr.ph239 ], [ %i.bs, %._crit_edge229 ] ; 2 uses
  %.sroa.16.0237 = phi ptr [ null, %.lr.ph239 ], [ %.sroa.16.1.lcssa, %._crit_edge229 ] ; 4 uses
  %.sroa.11.0236 = phi ptr [ null, %.lr.ph239 ], [ %.sroa.11.1.lcssa, %._crit_edge229 ] ; 3 uses
  %.sroa.0138.0235 = phi ptr [ null, %.lr.ph239 ], [ %.sroa.0138.1.lcssa, %._crit_edge229 ] ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.083238 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !148 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !149 ; 3 uses
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %1, align 8, !tbaa !56
  %i.as = sext i32 %i.ao to i64
  %i.at = getelementptr [4 x i8], ptr %i.ar, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 -4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !46
  %i.aw = sext i32 %i.av to i64
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit: ; preds = %bb.e, %bb.f
  %i.ax = phi i64 [ %i.aw, %bb.f ], [ 0, %bb.e ]
  %.not.i103 = icmp eq i32 %i.aq, 0
  br i1 %.not.i103, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !56
  %i.az = sext i32 %i.aq to i64
  %i.ba = getelementptr [4 x i8], ptr %i.ay, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !46
  %i.bd = sext i32 %i.bc to i64
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit: ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit, %bb.g
  %i.be = phi i64 [ %i.bd, %bb.g ], [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit ]
  %i.bf = invoke noundef ptr @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockEiib(ptr noundef nonnull align 8 dereferenceable(73) %1, i32 noundef %i.ao, i32 noundef %i.aq, i1 noundef zeroext true)
          to label %.preheader179 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.preheader179:                                    ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !76 ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.preheader174.lr.ph, label %._crit_edge229

.preheader174.lr.ph:                              ; preds = %.preheader179
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !77 ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, 0
  br i1 %i.bl, label %.preheader174, label %._crit_edge229

.preheader174:                                    ; preds = %.preheader174.lr.ph, %._crit_edge
  %i.bm = phi i64 [ %i.ca, %._crit_edge ], [ %i.bh, %.preheader174.lr.ph ]
  %i.bn = phi i64 [ %i.cb, %._crit_edge ], [ %i.bk, %.preheader174.lr.ph ] ; 2 uses
  %i.bo = phi i64 [ %i.cc, %._crit_edge ], [ %i.bk, %.preheader174.lr.ph ] ; 2 uses
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %._crit_edge ], [ 0, %.preheader174.lr.ph ] ; 2 uses
  %.sroa.16.1227 = phi ptr [ %.sroa.16.2.lcssa, %._crit_edge ], [ %.sroa.16.0237, %.preheader174.lr.ph ] ; 2 uses
  %.sroa.11.1226 = phi ptr [ %.sroa.11.2.lcssa, %._crit_edge ], [ %.sroa.11.0236, %.preheader174.lr.ph ] ; 2 uses
  %.sroa.0138.1225 = phi ptr [ %.sroa.0138.2.lcssa, %._crit_edge ], [ %.sroa.0138.0235, %.preheader174.lr.ph ] ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, 0
  br i1 %i.bp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader174
  %i.bq = add nsw i64 %indvars.iv290, %i.ax       ; 2 uses
  %i.br = trunc nsw i64 %i.bq to i32
  br label %bb.h

._crit_edge229:                                   ; preds = %._crit_edge, %.preheader174.lr.ph, %.preheader179
  %.sroa.0138.1.lcssa = phi ptr [ %.sroa.0138.0235, %.preheader179 ], [ %.sroa.0138.0235, %.preheader174.lr.ph ], [ %.sroa.0138.2.lcssa, %._crit_edge ] ; 9 uses
  %.sroa.11.1.lcssa = phi ptr [ %.sroa.11.0236, %.preheader179 ], [ %.sroa.11.0236, %.preheader174.lr.ph ], [ %.sroa.11.2.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.16.1.lcssa = phi ptr [ %.sroa.16.0237, %.preheader179 ], [ %.sroa.16.0237, %.preheader174.lr.ph ], [ %.sroa.16.2.lcssa, %._crit_edge ] ; 4 uses
  %i.bs = add nuw i64 %.083238, 1                 ; 2 uses
  %i.bt = load ptr, ptr %i.aa, align 8, !tbaa !145
  %i.bu = load ptr, ptr %3, align 8, !tbaa !146   ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = icmp ult i64 %i.bs, %i.by
  br i1 %i.bz, label %bb.e, label %._crit_edge240, !llvm.loop !131

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit
  %.pre317 = load i64, ptr %i.bg, align 8, !tbaa !76
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader174
  %i.ca = phi i64 [ %i.bm, %.preheader174 ], [ %.pre317, %._crit_edge.loopexit ] ; 2 uses
  %i.cb = phi i64 [ %i.bn, %.preheader174 ], [ %i.dr, %._crit_edge.loopexit ]
  %i.cc = phi i64 [ %i.bo, %.preheader174 ], [ %i.dr, %._crit_edge.loopexit ]
  %.sroa.0138.2.lcssa = phi ptr [ %.sroa.0138.1225, %.preheader174 ], [ %.sroa.0138.4, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.11.2.lcssa = phi ptr [ %.sroa.11.1226, %.preheader174 ], [ %.sroa.11.3, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.16.2.lcssa = phi ptr [ %.sroa.16.1227, %.preheader174 ], [ %.sroa.16.4, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %i.cd = icmp sgt i64 %i.ca, %indvars.iv.next291
  br i1 %i.cd, label %.preheader174, label %._crit_edge229, !llvm.loop !132

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit
  %i.ce = phi i64 [ %i.bn, %.lr.ph ], [ %i.dr, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %.sroa.16.2221 = phi ptr [ %.sroa.16.1227, %.lr.ph ], [ %.sroa.16.4, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit ] ; 6 uses
  %.sroa.11.2220 = phi ptr [ %.sroa.11.1226, %.lr.ph ], [ %.sroa.11.3, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.0138.2219 = phi ptr [ %.sroa.0138.1225, %.lr.ph ], [ %.sroa.0138.4, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit ] ; 9 uses
  %i.cf = add nsw i64 %indvars.iv, %i.be          ; 2 uses
  %i.cg = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 3 uses
  %.not93 = icmp eq ptr %i.cg, null
  %i.ch = trunc nsw i64 %i.cf to i32
  br i1 %.not93, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.bq
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !46
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cf
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !46
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.i
  %i.cm = phi i32 [ %i.cj, %bb.i ], [ %i.br, %bb.h ] ; 2 uses
  %i.cn = phi i32 [ %i.cl, %bb.i ], [ %i.ch, %bb.h ] ; 2 uses
  %spec.select = call i32 @llvm.smin.i32(i32 %i.cm, i32 %i.cn) ; 2 uses
  %spec.select163 = call i32 @llvm.smax.i32(i32 %i.cm, i32 %i.cn) ; 2 uses
  %.not.i.i104 = icmp eq ptr %.sroa.11.2220, %.sroa.16.2221
  br i1 %.not.i.i104, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread
  %.sroa.6.0.insert.ext = zext i32 %spec.select163 to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.0123.0.insert.ext = zext i32 %spec.select to i64
  %.sroa.0123.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.0123.0.insert.ext
  store i64 %.sroa.0123.0.insert.insert, ptr %.sroa.11.2220, align 4, !tbaa !46
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit

bb.k:                                             ; preds = %.thread
  %i.co = ptrtoint ptr %.sroa.16.2221 to i64      ; 2 uses
  %i.cp = ptrtoint ptr %.sroa.0138.2219 to i64    ; 3 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 4 uses
  %i.cr = icmp eq i64 %i.cq, 9223372036854775800
  br i1 %i.cr, label %bb.l, label %_ZNKSt6vectorIN3g2o10MatrixElemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %.noexc105 unwind label %.loopexit.split-lp176.loopexit.split-lp

.noexc105:                                        ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN3g2o10MatrixElemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.cs = ashr exact i64 %i.cq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cs, i64 1)
  %i.ct = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cs ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  %i.cv = call i64 @llvm.umin.i64(i64 %i.ct, i64 1152921504606846975)
  %i.cw = select i1 %i.cu, i64 1152921504606846975, i64 %i.cv ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cx = shl nuw nsw i64 %i.cw, 3
  %i.cy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #22
          to label %.noexc106 unwind label %.loopexit.split-lp176.loopexit.split-lp ; 8 uses

.noexc106:                                        ; preds = %_ZNKSt6vectorIN3g2o10MatrixElemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cq
  %.sroa.6.0.insert.ext129 = zext i32 %spec.select163 to i64
  %.sroa.6.0.insert.shift130 = shl nuw i64 %.sroa.6.0.insert.ext129, 32
  %.sroa.0123.0.insert.ext125 = zext i32 %spec.select to i64
  %.sroa.0123.0.insert.insert127 = or disjoint i64 %.sroa.6.0.insert.shift130, %.sroa.0123.0.insert.ext125
  store i64 %.sroa.0123.0.insert.insert127, ptr %i.cz, align 4, !tbaa !46
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0138.2219, %.sroa.16.2221
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc106
  %i.da = ptrtoaddr ptr %i.cy to i64
  %i.db = add i64 %i.co, -8
  %i.dc = sub i64 %i.db, %i.cp                    ; 2 uses
  %i.dd = lshr i64 %i.dc, 3
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dc, 24
  %i.df = sub i64 %i.cp, %i.da
  %diff.check = icmp ugt i64 %i.df, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader408, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.de, 4611686018427387900     ; 3 uses
  %i.dg = shl i64 %n.vec, 3                       ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cy, i64 %i.dg  ; 2 uses
  %i.di = getelementptr i8, ptr %.sroa.0138.2219, i64 %i.dg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cy, i64 %i.dj ; 2 uses
  %next.gep401 = getelementptr i8, ptr %.sroa.0138.2219, i64 %i.dj ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.dk = getelementptr i8, ptr %next.gep401, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep401, align 4, !tbaa !46, !alias.scope !151
  %wide.load402 = load <2 x i64>, ptr %i.dk, align 4, !tbaa !46, !alias.scope !151
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !tbaa !46, !alias.scope !150
  store <2 x i64> %wide.load402, ptr %i.dl, align 4, !tbaa !46, !alias.scope !150
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader408

.lr.ph.i.i.i.i.i.i.preheader408:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dh, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0138.2219, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.di, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader408, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader408 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader408 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.dn = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !46, !alias.scope !151
  store i64 %i.dn, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !46, !alias.scope !150
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.do, %.sroa.16.2221
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !137

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc106
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cy, %.noexc106 ], [ %i.dh, %middle.block ], [ %i.dp, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0138.2219, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0138.2219, i64 noundef %i.cq) #21
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cw
  %.pre = load i64, ptr %i.bj, align 8, !tbaa !77
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.j
  %i.dr = phi i64 [ %.pre, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ce, %bb.j ] ; 4 uses
  %.sroa.0138.4 = phi ptr [ %i.cy, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0138.2219, %bb.j ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.11.2220, %bb.j ]
  %.sroa.16.4 = phi ptr [ %i.dq, %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.16.2221, %bb.j ] ; 2 uses
  %.sroa.11.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ds = icmp sgt i64 %i.dr, %indvars.iv.next
  br i1 %i.ds, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !138

.loopexit.split-lp176.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIN3g2o10MatrixElemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.l
  %lpad.loopexit.split-lp410 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.preheader169:                                    ; preds = %bb.n, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit, %._crit_edge240
  %.sroa.0138.0.lcssa350367 = phi ptr [ null, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit ], [ %.sroa.0138.1.lcssa, %._crit_edge240 ], [ %.sroa.0138.1.lcssa, %bb.n ] ; 4 uses
  %.sroa.16.0.lcssa355366 = phi ptr [ null, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5clearEv.exit ], [ %.sroa.16.1.lcssa, %._crit_edge240 ], [ %.sroa.16.1.lcssa, %bb.n ] ; 2 uses
  %.pre-phi320368 = ptrtoint ptr %.sroa.0138.0.lcssa350367 to i64
  %i.dt = load ptr, ptr %i.aa, align 8, !tbaa !145
  %i.du = load ptr, ptr %3, align 8, !tbaa !146   ; 2 uses
  %.not269 = icmp eq ptr %i.dt, %i.du
  br i1 %.not269, label %._crit_edge266, label %.lr.ph265

.lr.ph265:                                        ; preds = %.preheader169
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.p

.lr.ph245:                                        ; preds = %.noexc101, %bb.n
  %.074244 = phi i64 [ %i.ec, %bb.n ], [ 0, %.noexc101 ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0138.1.lcssa, i64 %.074244 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !60
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !61
  %i.eb = invoke noundef double @_ZN3g2o26MarginalCovarianceCholesky12computeEntryEii(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.dy, i32 noundef %i.ea)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.n:                                             ; preds = %.lr.ph245
  %i.ec = add nuw i64 %.074244, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ec, %i.ah
  br i1 %exitcond.not, label %.preheader169, label %.lr.ph245, !llvm.loop !139

._crit_edge266:                                   ; preds = %._crit_edge251.split, %.preheader169
  %.not.i.i.i107 = icmp eq ptr %.sroa.0138.0.lcssa350367, null
  br i1 %.not.i.i.i107, label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge266
  %i.ed = ptrtoint ptr %.sroa.16.0.lcssa355366 to i64
  %i.ee = sub i64 %i.ed, %.pre-phi320368
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0138.0.lcssa350367, i64 noundef %i.ee) #21
  br label %_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit

_ZNSt6vectorIN3g2o10MatrixElemESaIS1_EED2Ev.exit: ; preds = %._crit_edge266, %bb.o
  ret void

bb.p:                                             ; preds = %.lr.ph265, %._crit_edge251.split
  %i.ef = phi ptr [ %i.du, %.lr.ph265 ], [ %i.gt, %._crit_edge251.split ]
  %.073264 = phi i64 [ 0, %.lr.ph265 ], [ %i.gr, %._crit_edge251.split ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.073264 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !148 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !149 ; 3 uses
  %.not.i108 = icmp eq i32 %i.eh, 0
  br i1 %.not.i108, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit109, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ek = load ptr, ptr %1, align 8, !tbaa !56
  %i.el = sext i32 %i.eh to i64
  %i.em = getelementptr [4 x i8], ptr %i.ek, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 -4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !46
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit109

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit109: ; preds = %bb.p, %bb.q
  %i.ep = phi i32 [ %i.eo, %bb.q ], [ 0, %bb.p ]  ; 3 uses
  %.not.i110 = icmp eq i32 %i.ej, 0
  br i1 %.not.i110, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit111, label %bb.r

bb.r:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit109
  %i.eq = load ptr, ptr %i.j, align 8, !tbaa !56
  %i.er = sext i32 %i.ej to i64
  %i.es = getelementptr [4 x i8], ptr %i.eq, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !46
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit111

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit111: ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit109, %bb.r
  %i.ev = phi i32 [ %i.eu, %bb.r ], [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit109 ] ; 3 uses
  %i.ew = invoke noundef ptr @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockEiib(ptr noundef nonnull align 8 dereferenceable(73) %1, i32 noundef %i.eh, i32 noundef %i.ej, i1 noundef zeroext false)
          to label %.preheader168 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.preheader168:                                    ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit111
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !76 ; 7 uses
  %i.ez = icmp sgt i64 %i.ey, 0
  br i1 %i.ez, label %.preheader167.lr.ph, label %._crit_edge251.split

.preheader167.lr.ph:                              ; preds = %.preheader168
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !77 ; 4 uses
  %i.fc = icmp sgt i64 %i.fb, 0
  br i1 %i.fc, label %.preheader167.lr.ph.split, label %._crit_edge251.split

.preheader167.lr.ph.split:                        ; preds = %.preheader167.lr.ph
  %i.fd = load ptr, ptr %i.dv, align 8, !tbaa !44 ; 5 uses
  %.not = icmp eq ptr %i.fd, null                 ; 2 uses
  %i.fe = load i32, ptr %0, align 8, !tbaa !33    ; 3 uses
  %i.ff = load i64, ptr %i.dw, align 8, !tbaa !50
  %.not.not.i.i = icmp eq i64 %i.ff, 0
  %i.fg = load ptr, ptr %i.ew, align 8, !tbaa !79 ; 3 uses
  br i1 %.not.not.i.i, label %.preheader167.lr.ph.split.split.us, label %.preheader167.lr.ph.split.split

.preheader167.lr.ph.split.split.us:               ; preds = %.preheader167.lr.ph.split
  br i1 %.not, label %.preheader167.us.us, label %.preheader167.us.preheader

.preheader167.us.preheader:                       ; preds = %.preheader167.lr.ph.split.split.us
  %i.fh = sext i32 %i.ev to i64
  %i.fi = sext i32 %i.ep to i64
  %invariant.gep383 = getelementptr [4 x i8], ptr %i.fd, i64 %i.fi
  %invariant.gep = getelementptr [4 x i8], ptr %i.fd, i64 %i.fh
  br label %.preheader167.us

.preheader167.us.us:                              ; preds = %.preheader167.lr.ph.split.split.us, %._crit_edge249.split.us.split.us.us.us
  %indvars.iv313 = phi i64 [ %indvars.iv.next314, %._crit_edge249.split.us.split.us.us.us ], [ 0, %.preheader167.lr.ph.split.split.us ] ; 3 uses
  %i.fj = getelementptr [8 x i8], ptr %i.fg, i64 %indvars.iv313
  %i.fk = trunc i64 %indvars.iv313 to i32
  %i.fl = add i32 %i.ep, %i.fk                    ; 2 uses
  br label %.thread153.us.us.us.us

.thread153.us.us.us.us:                           ; preds = %.loopexit.us.us.us.us, %.preheader167.us.us
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %.loopexit.us.us.us.us ], [ 0, %.preheader167.us.us ] ; 3 uses
  %i.fm = trunc i64 %indvars.iv309 to i32
  %i.fn = add i32 %i.ev, %i.fm                    ; 2 uses
  %spec.select164.us.us.us.us = call i32 @llvm.smin.i32(i32 %i.fl, i32 %i.fn)
  %spec.select165.us.us.us.us = call i32 @llvm.smax.i32(i32 %i.fl, i32 %i.fn)
  %i.fo = mul nsw i32 %i.fe, %spec.select164.us.us.us.us
  %i.fp = add nsw i32 %i.fo, %spec.select165.us.us.us.us
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.thread153.us.us.us.us
  %.sroa.06.0.in.i.i.us.us.us.us = phi ptr [ %.sroa.06.0.i.i.us.us.us.us, %bb.s ], [ %i.t, %.thread153.us.us.us.us ]
  %.sroa.06.0.i.i.us.us.us.us = load ptr, ptr %.sroa.06.0.in.i.i.us.us.us.us, align 8, !tbaa !39, !nonnull !62, !noundef !62 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us.us.us, i64 8
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !46
  %i.fs = icmp eq i32 %i.fp, %i.fr
  br i1 %i.fs, label %.loopexit.us.us.us.us, label %bb.s, !llvm.loop !1

.loopexit.us.us.us.us:                            ; preds = %bb.s
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us.us.us, i64 16
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !53
  %i.fv = mul nuw nsw i64 %indvars.iv309, %i.ey
  %i.fw = getelementptr [8 x i8], ptr %i.fj, i64 %i.fv
  store double %i.fu, ptr %i.fw, align 8, !tbaa !48
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1 ; 2 uses
  %exitcond312.not = icmp eq i64 %indvars.iv.next310, %i.fb
  br i1 %exitcond312.not, label %._crit_edge249.split.us.split.us.us.us, label %.thread153.us.us.us.us, !llvm.loop !140

._crit_edge249.split.us.split.us.us.us:           ; preds = %.loopexit.us.us.us.us
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1 ; 2 uses
  %exitcond316.not = icmp eq i64 %indvars.iv.next314, %i.ey
  br i1 %exitcond316.not, label %._crit_edge251.split, label %.preheader167.us.us, !llvm.loop !141

.preheader167.us:                                 ; preds = %.preheader167.us.preheader, %._crit_edge249.split.us.split.us261
  %indvars.iv305 = phi i64 [ 0, %.preheader167.us.preheader ], [ %indvars.iv.next306, %._crit_edge249.split.us.split.us261 ] ; 3 uses
  %gep384 = getelementptr [4 x i8], ptr %invariant.gep383, i64 %indvars.iv305
  %i.fx = getelementptr [8 x i8], ptr %i.fg, i64 %indvars.iv305
  %i.fy = load i32, ptr %gep384, align 4, !tbaa !46 ; 2 uses
  br label %.thread153.us.us253

.thread153.us.us253:                              ; preds = %.loopexit.us.us259, %.preheader167.us
  %indvars.iv301 = phi i64 [ %indvars.iv.next302, %.loopexit.us.us259 ], [ 0, %.preheader167.us ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv301
  %i.fz = load i32, ptr %gep, align 4, !tbaa !46  ; 2 uses
  %spec.select164.us.us255 = call i32 @llvm.smin.i32(i32 %i.fy, i32 %i.fz)
  %spec.select165.us.us256 = call i32 @llvm.smax.i32(i32 %i.fy, i32 %i.fz)
  %i.ga = mul nsw i32 %i.fe, %spec.select164.us.us255
  %i.gb = add nsw i32 %i.ga, %spec.select165.us.us256
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.thread153.us.us253
  %.sroa.06.0.in.i.i.us.us257 = phi ptr [ %.sroa.06.0.i.i.us.us258, %bb.t ], [ %i.t, %.thread153.us.us253 ]
  %.sroa.06.0.i.i.us.us258 = load ptr, ptr %.sroa.06.0.in.i.i.us.us257, align 8, !tbaa !39, !nonnull !62, !noundef !62 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us258, i64 8
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !46
  %i.ge = icmp eq i32 %i.gb, %i.gd
  br i1 %i.ge, label %.loopexit.us.us259, label %bb.t, !llvm.loop !1

.loopexit.us.us259:                               ; preds = %bb.t
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.us258, i64 16
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !53
  %i.gh = mul nuw nsw i64 %indvars.iv301, %i.ey
  %i.gi = getelementptr [8 x i8], ptr %i.fx, i64 %i.gh
  store double %i.gg, ptr %i.gi, align 8, !tbaa !48
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %exitcond304.not = icmp eq i64 %indvars.iv.next302, %i.fb
  br i1 %exitcond304.not, label %._crit_edge249.split.us.split.us261, label %.thread153.us.us253, !llvm.loop !140

._crit_edge249.split.us.split.us261:              ; preds = %.loopexit.us.us259
  %indvars.iv.next306 = add nuw nsw i64 %indvars.iv305, 1 ; 2 uses
  %exitcond308.not = icmp eq i64 %indvars.iv.next306, %i.ey
  br i1 %exitcond308.not, label %._crit_edge251.split, label %.preheader167.us, !llvm.loop !141

.preheader167.lr.ph.split.split:                  ; preds = %.preheader167.lr.ph.split
  %i.gj = load i64, ptr %i.x, align 8, !tbaa !35  ; 2 uses
  %i.gk = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.gl = sext i32 %i.ev to i64
  %i.gm = sext i32 %i.ep to i64
  br label %.preheader167

.preheader167:                                    ; preds = %.preheader167.lr.ph.split.split, %._crit_edge249.split
  %indvars.iv297 = phi i64 [ 0, %.preheader167.lr.ph.split.split ], [ %indvars.iv.next298, %._crit_edge249.split ] ; 3 uses
  %i.gn = add nsw i64 %indvars.iv297, %i.gm       ; 2 uses
  %i.go = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.gn
  %i.gp = getelementptr [8 x i8], ptr %i.fg, i64 %indvars.iv297
  %i.gq = trunc nsw i64 %i.gn to i32
  br label %bb.u

._crit_edge251.split:                             ; preds = %._crit_edge249.split, %._crit_edge249.split.us.split.us261, %._crit_edge249.split.us.split.us.us.us, %.preheader167.lr.ph, %.preheader168
end_hunk_0
begin_hunk_1_@_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockEiib:bb.a
  br label %_ZNSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS3_EEE6insertIS6_IiS3_EEENSt9enable_ifIXsr16is_constructibleIS8_T_EE5valueES6_ISt17_Rb_tree_iteratorIS8_EbEE4typeEOSE_.exit

bb.n:                                             ; preds = %_ZNSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !97
  br label %_ZNSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS3_EEE6insertIS6_IiS3_EEENSt9enable_ifIXsr16is_constructibleIS8_T_EE5valueES6_ISt17_Rb_tree_iteratorIS8_EbEE4typeEOSE_.exit

_ZNSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS3_EEE6insertIS6_IiS3_EEENSt9enable_ifIXsr16is_constructibleIS8_T_EE5valueES6_ISt17_Rb_tree_iteratorIS8_EbEE4typeEOSE_.exit: ; preds = %bb.i, %.thread.i, %bb.m, %bb.n, %_ZNSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread
  %.0 = phi ptr [ null, %_ZNSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread ], [ %i.cf, %bb.n ], [ %i.ak, %bb.m ], [ %i.ak, %.thread.i ], [ %i.ak, %bb.i ]
  ret ptr %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = load ptr, ptr %1, align 8, !tbaa !56     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.i = load ptr, ptr %0, align 8, !tbaa !56     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, !prof !98

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !99

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !46
  store i32 %i.r, ptr %i.o, align 4, !tbaa !46
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !56     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #21
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !80
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55   ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !99

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 4
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !46
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !46
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 4
  br i1 %i.af, label %bb.o, label %bb.p, !prof !99

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !56
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !55 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !56
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !55
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 4
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !46
  store i32 %i.ah, ptr %i.i, align 4, !tbaa !46
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 4, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 4
  br i1 %i.an, label %bb.r, label %bb.s, !prof !99

bb.r:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 4
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !46
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !46
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !56
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !55
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EEaSERKSD_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !81     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.i = load ptr, ptr %0, align 8, !tbaa !81     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 48
  %i.o = tail call noundef ptr @_ZNSt6vectorISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKSB_SD_EEEEPSB_mT_SL_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !81     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !90   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEEvT_SD_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.w, %_ZSt8_DestroyISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !91
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i, ptr noundef %i.t)
          to label %_ZSt8_DestroyISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEEvPT_.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #25
  unreachable

_ZSt8_DestroyISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEEvT_SD_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEEvT_SD_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !81
  br label %_ZSt8_DestroyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEEvT_SD_.exit

_ZSt8_DestroyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEEvT_SD_.exit: ; preds = %_ZSt8_DestroyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEEvT_SD_.exitthread-pre-split, %bb.c
  %i.x = phi ptr [ %.pr, %_ZSt8_DestroyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEEvT_SD_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE13_M_deallocateEPSB_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEEvT_SD_.exit
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #21
  br label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE13_M_deallocateEPSB_m.exit

_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE13_M_deallocateEPSB_m.exit: ; preds = %_ZSt8_DestroyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEEvT_SD_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !81
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !82
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS6_EEESt6vectorISD_SaISD_EEEEEvT_SJ_.exit

bb.f:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !90 ; 3 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ag, %i.f
  br i1 %.not24, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp sgt i64 %i.f, 0
  br i1 %i.ah, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS6_EEESt6vectorISD_SaISD_EEEENS1_IPSD_SI_EEET0_T_SN_SM_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.ai = udiv exact i64 %i.f, 48
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i ], [ %i.ai, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EEaSERKSC_(ptr noundef nonnull align 8 dereferenceable(48) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0910.i.i.i.i.i) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48 ; 2 uses
  %i.am = add nsw i64 %.012.i.i.i.i.i, -1
  %i.an = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS6_EEESt6vectorISD_SaISD_EEEENS1_IPSD_SI_EEET0_T_SN_SM_.exit.loopexit, !llvm.loop !157

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS6_EEESt6vectorISD_SaISD_EEEENS1_IPSD_SI_EEET0_T_SN_SM_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !160
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS6_EEESt6vectorISD_SaISD_EEEENS1_IPSD_SI_EEET0_T_SN_SM_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS6_EEESt6vectorISD_SaISD_EEEENS1_IPSD_SI_EEET0_T_SN_SM_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS6_EEESt6vectorISD_SaISD_EEEENS1_IPSD_SI_EEET0_T_SN_SM_.exit.loopexit, %bb.g
  %i.ao = phi ptr [ %i.ae, %bb.g ], [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS6_EEESt6vectorISD_SaISD_EEEENS1_IPSD_SI_EEET0_T_SN_SM_.exit.loopexit ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.i, %bb.g ], [ %i.al, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS6_EEESt6vectorISD_SaISD_EEEENS1_IPSD_SI_EEET0_T_SN_SM_.exit.loopexit ] ; 2 uses
  %.not4.i.i25 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.ao
  br i1 %.not4.i.i25, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS6_EEESt6vectorISD_SaISD_EEEEEvT_SJ_.exit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS6_EEESt6vectorISD_SaISD_EEEENS1_IPSD_SI_EEET0_T_SN_SM_.exit
  %.pre-phi45 = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64
  %i.ap = sub i64 %.pre-phi45, %i.k
  %i.aq = getelementptr inbounds i8, ptr %i.i, i64 %i.ap
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %_ZSt8_DestroyISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEEvPT_.exit.i.i27
  %.sroa.01.05.i.i = phi ptr [ %i.av, %_ZSt8_DestroyISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEEvPT_.exit.i.i27 ], [ %i.aq, %.lr.ph.i.i26.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !91
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.01.05.i.i, ptr noundef %i.as)
          to label %_ZSt8_DestroyISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEEvPT_.exit.i.i27 unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i26
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #25
  unreachable

_ZSt8_DestroyISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEEvPT_.exit.i.i27: ; preds = %.lr.ph.i.i26
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 48 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.av, %i.ao
  br i1 %.not.i.i28, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS6_EEESt6vectorISD_SaISD_EEEEEvT_SJ_.exit, label %.lr.ph.i.i26, !llvm.loop !158

bb.i:                                             ; preds = %bb.f
  %i.aw = icmp sgt i64 %i.ag, 0
  br i1 %i.aw, label %.lr.ph.preheader.i.i.i.i.i30, label %_ZSt4copyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESC_ET0_T_SE_SD_.exit

.lr.ph.preheader.i.i.i.i.i30:                     ; preds = %bb.i
  %i.ax = udiv exact i64 %i.ag, 48
  br label %.lr.ph.i.i.i.i.i31

.lr.ph.i.i.i.i.i31:                               ; preds = %.lr.ph.i.i.i.i.i31, %.lr.ph.preheader.i.i.i.i.i30
  %.012.i.i.i.i.i32 = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i31 ], [ %i.ax, %.lr.ph.preheader.i.i.i.i.i30 ] ; 2 uses
  %.0811.i.i.i.i.i33 = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i31 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i30 ] ; 2 uses
  %.0910.i.i.i.i.i34 = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i31 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i30 ] ; 2 uses
  %i.ay = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EEaSERKSC_(ptr noundef nonnull align 8 dereferenceable(48) %.0811.i.i.i.i.i33, ptr noundef nonnull align 8 dereferenceable(48) %.0910.i.i.i.i.i34) ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33, i64 48
  %i.bb = add nsw i64 %.012.i.i.i.i.i32, -1
  %i.bc = icmp samesign ugt i64 %.012.i.i.i.i.i32, 1
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i31, label %_ZSt4copyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESC_ET0_T_SE_SD_.exit.loopexit, !llvm.loop !159

_ZSt4copyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESC_ET0_T_SE_SD_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i31
  %.pre35 = load ptr, ptr %1, align 8, !tbaa !81
  %.pre36 = load ptr, ptr %i.ad, align 8, !tbaa !90 ; 2 uses
  %.pre37 = load ptr, ptr %0, align 8, !tbaa !81
  %.pre38 = load ptr, ptr %i.a, align 8, !tbaa !90
  %.pre39 = ptrtoint ptr %.pre36 to i64
  %.pre40 = ptrtoint ptr %.pre37 to i64
  %.pre42 = sub i64 %.pre39, %.pre40
  br label %_ZSt4copyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESC_ET0_T_SE_SD_.exit

_ZSt4copyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESC_ET0_T_SE_SD_.exit: ; preds = %_ZSt4copyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESC_ET0_T_SE_SD_.exit.loopexit, %bb.i
  %.pre-phi43 = phi i64 [ %.pre42, %_ZSt4copyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESC_ET0_T_SE_SD_.exit.loopexit ], [ %i.ag, %bb.i ]
  %i.bd = phi ptr [ %.pre38, %_ZSt4copyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESC_ET0_T_SE_SD_.exit.loopexit ], [ %i.b, %bb.i ]
  %i.be = phi ptr [ %.pre36, %_ZSt4copyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESC_ET0_T_SE_SD_.exit.loopexit ], [ %i.ae, %bb.i ]
  %i.bf = phi ptr [ %.pre35, %_ZSt4copyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESC_ET0_T_SE_SD_.exit.loopexit ], [ %i.c, %bb.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.pre-phi43
  %i.bh = tail call noundef ptr @_ZSt16__do_uninit_copyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESC_ET0_T_SE_SD_(ptr noundef %i.bg, ptr noundef %i.bd, ptr noundef %i.be) ; 0 uses
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS6_EEESt6vectorISD_SaISD_EEEEEvT_SJ_.exit

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS6_EEESt6vectorISD_SaISD_EEEEEvT_SJ_.exit: ; preds = %_ZSt8_DestroyISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEEvPT_.exit.i.i27, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS6_EEESt6vectorISD_SaISD_EEEENS1_IPSD_SI_EEET0_T_SN_SM_.exit, %_ZSt4copyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESC_ET0_T_SE_SD_.exit, %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE13_M_deallocateEPSB_m.exit
  %i.bi = load ptr, ptr %0, align 8, !tbaa !81
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.f
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !90
  br label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS6_EEESt6vectorISD_SaISD_EEEEEvT_SJ_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKSB_SD_EEEEPSB_mT_SL_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 192153584101141162
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEE8allocateEmPKv.exit.i, !prof !98

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 384307168202282325
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt15__new_allocatorISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = mul nuw nsw i64 %1, 48
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #22
  br label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 4 uses
  %i.f = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS6_EEESt6vectorISD_SaISD_EEEEPSD_ET0_T_SM_SL_(ptr %2, ptr %3, ptr noundef %i.e)
          to label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS6_EEESt6vectorISD_SaISD_EEEEPSD_SD_ET0_T_SM_SL_RSaIT1_E.exit unwind label %bb.f ; 0 uses

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS6_EEESt6vectorISD_SaISD_EEEEPSD_SD_ET0_T_SM_SL_RSaIT1_E.exit: ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE11_M_allocateEm.exit
  ret ptr %i.e

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE11_M_allocateEm.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #24 ; 0 uses
  %.not.i11 = icmp eq ptr %i.e, null
  br i1 %.not.i11, label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE13_M_deallocateEPSB_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = mul nuw nsw i64 %1, 48
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #21
  br label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE13_M_deallocateEPSB_m.exit

_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE13_M_deallocateEPSB_m.exit: ; preds = %bb.g, %bb.f
  invoke void @__cxa_rethrow() #23
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE13_M_deallocateEPSB_m.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.k

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #25
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE13_M_deallocateEPSB_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS6_EEESt6vectorISD_SaISD_EEEEPSD_ET0_T_SM_SL_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, Eigen::Matrix<double, -1, -1> *>, std::_Select1st<std::pair<const int, Eigen::Matrix<double, -1, -1> *>>, std::less<int>>::_Alloc_node", align 8 ; 4 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEJRKSB_EEvPT_DpOT0_.exit
  %.014 = phi ptr [ %i.p, %_ZSt10_ConstructISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEJRKSB_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 9 uses
  %.sroa.08.013 = phi ptr [ %i.o, %_ZSt10_ConstructISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEJRKSB_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !91
  %i.c = getelementptr inbounds nuw i8, ptr %.014, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %.014, i64 40 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !91   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZSt10_ConstructISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEEJRKSB_EEvPT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %.014, ptr %3, align 8, !tbaa !102
  %i.h = invoke noundef ptr @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE7_M_copyILb0ENSC_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ESH_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %.014, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i.i unwind label %bb.e ; 3 uses

.noexc.i.i.i:                                     ; preds = %bb.b, %.noexc.i.i.i
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.j, %.noexc.i.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i, label %.noexc.i.i.i, !llvm.loop !4
end_hunk_1
