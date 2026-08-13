inline.NumInlined: 987
inline.NumDeleted: 523
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
$_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EEaSERKSC_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE20_Reuse_or_alloc_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE7_M_copyILb0ENSC_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ESH_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZSt16__do_uninit_copyIPSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESC_ET0_T_SE_SD_ = comdat any

$_ZNSt6vectorIdSaIdEE17_M_default_appendEm = comdat any

$_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm = comdat any

$_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_ = comdat any

$_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_ = comdat any

$_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5clearEb = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_ = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN3g2o26MarginalCovarianceCholeskyC1Ev = unnamed_addr alias void (ptr), ptr @_ZN3g2o26MarginalCovarianceCholeskyC2Ev
@_ZN3g2o26MarginalCovarianceCholeskyD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3g2o26MarginalCovarianceCholeskyD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3g2o26MarginalCovarianceCholeskyC2Ev(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 4), (8, 40)) %0) unnamed_addr #0 align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store ptr %i.c, ptr %i.b, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 1, ptr %i.d, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3g2o26MarginalCovarianceCholeskyD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(120) dereferenceable(120) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #21
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i ], [ %i.j, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 2 uses
  %i.k = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !32 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #21
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !33

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = shl i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.o, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.s = load i64, ptr %i.m, align 8, !tbaa !27
  %i.t = shl i64 %i.s, 3
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #21
  br label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEED2Ev.exit

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o26MarginalCovarianceCholesky17setCholeskyFactorEiPiS1_PdS1_(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 4), (8, 40)) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %4, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.f = sext i32 %1 to i64                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.f
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = sub nuw nsw i64 %i.f, %i.m
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.o)
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %i.m, %i.f
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.q, ptr %i.g, align 8, !tbaa !39
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.r = icmp sgt i32 %1, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !35   ; 5 uses
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !37   ; 5 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !29   ; 5 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.v = icmp ult i32 %1, 4
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.f

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod18)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.e ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.epil
  %i.x = load i32, ptr %i.w, align 4, !tbaa !40
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !41
  %i.ab = fdiv double 1.000000e+00, %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.epil
  store double %i.ab, ptr %i.ac, align 8, !tbaa !41
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.e, !llvm.loop !43

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  ret void

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.f ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.f ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !40
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !41
  %i.ai = fdiv double 1.000000e+00, %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  store double %i.ai, ptr %i.aj, align 8, !tbaa !41
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.ak = load i32, ptr %6, align 4, !tbaa !40
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !41
  %i.ao = fdiv double 1.000000e+00, %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next
  store double %i.ao, ptr %i.ap, align 8, !tbaa !41
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next.1
  %i.aq = load i32, ptr %7, align 4, !tbaa !40
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !41
  %i.au = fdiv double 1.000000e+00, %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.1
  store double %i.au, ptr %i.av, align 8, !tbaa !41
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next.2
  %i.aw = load i32, ptr %8, align 4, !tbaa !40
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !41
  %i.ba = fdiv double 1.000000e+00, %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.2
  store double %i.ba, ptr %i.bb, align 8, !tbaa !41
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !45
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define noundef double @_ZN3g2o26MarginalCovarianceCholesky12computeEntryEii(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !8
  %i.b = mul nsw i32 %i.a, %1
  %i.c = add nsw i32 %i.b, %2                     ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !46
  %.not.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.g, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !32 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !40
  %i.j = icmp eq i32 %i.c, %i.i
  br i1 %i.j, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit, label %bb.c, !llvm.loop !47

bb.e:                                             ; preds = %bb.a
  %i.k = sext i32 %i.c to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27   ; 2 uses
  %i.n = urem i64 %i.k, %i.m                      ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !40
  %i.u = icmp eq i32 %i.c, %i.t
  br i1 %i.u, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.v = icmp eq i32 %i.c, %i.y
  br i1 %i.v, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !49

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.w, %bb.g ], [ %i.r, %bb.f ]
  %i.w = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !32 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !40   ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = urem i64 %i.z, %i.m
  %.not19.i.i.i.i = icmp eq i64 %i.aa, %i.n
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !49

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit, !llvm.loop !49

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.r, %bb.f ], [ %i.w, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !50
  br label %bb.s

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35
  %i.af = sext i32 %1 to i64                      ; 3 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 4      ; 2 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !40 ; 2 uses
  %.03154 = add nsw i32 %i.ai, 1
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !40
  %i.ak = icmp slt i32 %.03154, %i.aj
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = sext i32 %i.ai to i64
  %i.ao = add nsw i64 %i.an, 1
  br label %bb.i

._crit_edge:                                      ; preds = %bb.l, %.loopexit
  %.030.lcssa = phi double [ 0.000000e+00, %.loopexit ], [ %i.ba, %bb.l ] ; 2 uses
  %i.ap = icmp eq i32 %1, %2
  br i1 %i.ap, label %bb.m, label %bb.n

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.03055 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ba, %bb.l ]
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !36
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !40 ; 3 uses
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
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !37
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %indvars.iv
  %i.az = load double, ptr %i.ay, align 8, !tbaa !41
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.az, double %.03055) ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bb = load i32, ptr %i.ah, align 4, !tbaa !40
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next, %i.bc
  br i1 %i.bd, label %bb.i, label %._crit_edge, !llvm.loop !52

bb.m:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !29
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.af
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !41 ; 2 uses
  %i.bi = fsub double %i.bh, %.030.lcssa
  %i.bj = fmul double %i.bh, %i.bi
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.bk = fneg double %.030.lcssa
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !29
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.af
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !41
  %i.bp = fmul double %i.bo, %i.bk
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.029 = phi double [ %i.bj, %bb.m ], [ %i.bp, %bb.n ] ; 2 uses
  %i.bq = sext i32 %i.c to i64                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !27 ; 2 uses
  %i.bt = urem i64 %i.bq, %i.bs                   ; 3 uses
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i.i35 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i35, label %.loopexit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !32 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !40
  %i.ca = icmp eq i32 %i.c, %i.bz
  br i1 %i.ca, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit, label %.lr.ph.i.i.i.i36

bb.q:                                             ; preds = %bb.r
  %i.cb = icmp eq i32 %i.c, %i.ce
  br i1 %i.cb, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit, label %.lr.ph.i.i.i.i36, !llvm.loop !49

.lr.ph.i.i.i.i36:                                 ; preds = %bb.p, %bb.q
  %.020.i.i.i.i37 = phi ptr [ %i.cc, %bb.q ], [ %i.bx, %bb.p ]
  %i.cc = load ptr, ptr %.020.i.i.i.i37, align 8, !tbaa !32 ; 4 uses
  %.not18.i.i.i.i38 = icmp eq ptr %i.cc, null
  br i1 %.not18.i.i.i.i38, label %.loopexit.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i36
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !40 ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = urem i64 %i.cf, %i.bs
  %.not19.i.i.i.i39 = icmp eq i64 %i.cg, %i.bt
  br i1 %.not19.i.i.i.i39, label %bb.q, label %..loopexit_crit_edge21.i.i.i.i40, !llvm.loop !49

..loopexit_crit_edge21.i.i.i.i40:                 ; preds = %bb.r
  br label %.loopexit.i.i, !llvm.loop !49

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i36, %..loopexit_crit_edge21.i.i.i.i40, %bb.o
  %i.ch = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 5 uses
  store ptr null, ptr %i.ch, align 8, !tbaa !32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm:bb.a
bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #24 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !166
  invoke void @__cxa_rethrow() #23
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !27
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !48   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32
  store ptr %i.w, ptr %3, align 8, !tbaa !32
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !48
  store ptr %3, ptr %i.x, align 8, !tbaa !32
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  store ptr %i.z, ptr %3, align 8, !tbaa !32
  store ptr %3, ptr %i.y, align 8, !tbaa !31
  %i.aa = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !27
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !40
  %i.ae = sext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !48
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !46
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !46
  ret ptr %3
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !140

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !167
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKidELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !140

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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !31
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !32  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !40
  %i.l = sext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !48   ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !31
  store ptr %i.p, ptr %.031, align 8, !tbaa !32
  store ptr %.031, ptr %i.g, align 8, !tbaa !31
  store ptr %i.g, ptr %i.n, align 8, !tbaa !48
  %i.q = load ptr, ptr %.031, align 8, !tbaa !32
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.r, align 8, !tbaa !48
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !32
  store ptr %i.s, ptr %.031, align 8, !tbaa !32
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !48
  store ptr %.031, ptr %i.t, align 8, !tbaa !32
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !168

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !27
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #21
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !27
  store ptr %.0.i, ptr %0, align 8, !tbaa !26
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
  %i.f = icmp eq i64 %i.ay, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph29, !llvm.loop !169

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.fr.i16.lcssa = phi i64 [ %.fr.i13, %.lr.ph.preheader ], [ %.fr.i, %.lr.ph ] ; 2 uses
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.az, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.g = lshr i64 %.fr.i16.lcssa, 3               ; 2 uses
  %i.h = add nsw i64 %i.g, -2                     ; 2 uses
  %i.i = lshr i64 %i.h, 1                         ; 3 uses
  %i.j = add nsw i64 %i.g, -1
  %i.k = lshr i64 %i.j, 1                         ; 2 uses
  %i.l = and i64 %.fr.i16.lcssa, 8
  %i.m = icmp eq i64 %i.l, 0
  %i.n = or disjoint i64 %i.h, 1                  ; 2 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i, %.lr.ph._crit_edge
  %.09.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.ax, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.p, align 4 ; 3 uses
  %i.q = icmp slt i64 %.09.i.i, %i.k
  br i1 %i.q, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i
  %.039.i.i.i = phi i64 [ %i.ae, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i ], [ %.09.i.i, %bb.b ] ; 2 uses
  %i.r = shl i64 %.039.i.i.i, 1                   ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 3 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %5 = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !71   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !71   ; 2 uses
  %i.z = icmp sgt i32 %i.w, %i.y
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = icmp eq i32 %i.w, %i.y
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i: ; preds = %bb.c
  %i.ab = load i32, ptr %i.t, align 4, !tbaa !69
  %i.ac = load i32, ptr %5, align 4, !tbaa !69
  %i.ad = icmp sgt i32 %i.ab, %i.ac
  %cond.fr.i.i.i = freeze i1 %i.ad
  br i1 %cond.fr.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i, %.lr.ph.i.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i, %bb.c
  %i.ae = phi i64 [ %i.u, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i.i ], [ %i.s, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i.i ], [ %i.s, %bb.c ] ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.039.i.i.i
  %i.ah = load i64, ptr %i.af, align 4
  store i64 %i.ah, ptr %i.ag, align 4
  %i.ai = icmp slt i64 %i.ae, %i.k
  br i1 %i.ai, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !170

._crit_edge.i.i.i:                                ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ %.09.i.i, %bb.b ], [ %i.ae, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i.i ] ; 2 uses
  %i.aj = icmp eq i64 %.0.lcssa.i.i.i, %i.i
  %or.cond.i.i = select i1 %i.m, i1 %i.aj, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = load i64, ptr %4, align 4
  store i64 %i.ak, ptr %i.o, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.n, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.sroa.012.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.02.0.copyload.i.i to i32
  %.sroa.3.0.extract.shift.i.i.i.i = lshr i64 %.sroa.02.0.copyload.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i.i to i32 ; 2 uses
  %i.al = icmp sgt i64 %.1.i.i.i, %.09.i.i
  br i1 %i.al, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i
  %.021.i.i.i.i = phi i64 [ %.0922.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i ], [ %.1.i.i.i, %bb.e ] ; 4 uses
  %.0922.in.i.i.i.i = add nsw i64 %.021.i.i.i.i, -1
  %.0922.i.i.i.i = sdiv i64 %.0922.in.i.i.i.i, 2  ; 4 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.0922.i.i.i.i ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !71 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, %.sroa.3.0.extract.trunc.i.i.i.i
  br i1 %i.ap, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aq = icmp eq i32 %i.ao, %.sroa.3.0.extract.trunc.i.i.i.i
  br i1 %i.aq, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i.i: ; preds = %bb.f
  %i.ar = load i32, ptr %i.am, align 4, !tbaa !69
  %i.as = icmp sgt i32 %i.ar, %.sroa.012.0.extract.trunc.i.i.i.i
  br i1 %i.as, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %.021.i.i.i.i
  %i.au = load i64, ptr %i.am, align 4
  store i64 %i.au, ptr %i.at, align 4
  %i.av = icmp sgt i64 %.0922.i.i.i.i, %.09.i.i
  br i1 %i.av, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i, !llvm.loop !171

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.e ], [ %.021.i.i.i.i, %bb.f ], [ %.0922.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i.i ], [ %.021.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i.i ]
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %.sroa.02.0.copyload.i.i, ptr %i.aw, align 4
  %.not.i.i = icmp eq i64 %.09.i.i, 0
  %i.ax = add nsw i64 %.09.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit, label %bb.b, !llvm.loop !172

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.i.i
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr nonnull %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.lr.ph29:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %storemerge1428 = phi ptr [ %i.az, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.01527 = phi i64 [ %i.ay, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.ay = add nsw i64 %.01527, -1                 ; 3 uses
  %i.az = tail call ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_(ptr %0, ptr %storemerge1428) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.az, ptr %storemerge1428, i64 noundef %i.ay)
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.a
  %.fr.i = freeze i64 %i.bb                       ; 2 uses
  %i.bc = icmp sgt i64 %.fr.i, 128
  br i1 %i.bc, label %.lr.ph, label %.loopexit, !llvm.loop !169

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
  %i.g = load i32, ptr %i.f, align 4, !tbaa !71   ; 2 uses
  %i.h = load i32, ptr %i.e, align 4, !tbaa !71   ; 2 uses
  %i.i = icmp sgt i32 %i.g, %i.h
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.g, %i.h
  br i1 %i.j, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.c
  %i.k = load i32, ptr %.sroa.0.019.i.ptr, align 4, !tbaa !69
  %i.l = load i32, ptr %0, align 4, !tbaa !69
  %i.m = icmp sgt i32 %i.k, %i.l
  br i1 %i.m, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.b
  %i.n = load i64, ptr %.sroa.0.019.i.ptr, align 4
  %i.o = icmp samesign ugt i64 %.sroa.0.019.i.idx, 8
  br i1 %i.o, label %bb.d, label %bb.e, !prof !141

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i
  %i.p = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  %i.q = load i64, ptr %0, align 4
  store i64 %i.q, ptr %i.p, align 4
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %bb.e, %bb.d
  store i64 %i.n, ptr %0, align 4
  br label %bb.h

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.c
  %i.r = load i64, ptr %.sroa.0.019.i.ptr, align 4 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i = trunc i64 %i.r to i32
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.r, 32
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i64 %.sroa.5.0.extract.shift.i.i to i32 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i
  %.sroa.05.0.i.i = phi ptr [ %.sroa.0.019.i.ptr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i ], [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i ] ; 4 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.05.0.i.i, i64 -8 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.05.0.i.i, i64 -4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !71   ; 2 uses
  %i.u = icmp slt i32 %i.t, %.sroa.5.0.extract.trunc.i.i
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq i32 %i.t, %.sroa.5.0.extract.trunc.i.i
  br i1 %i.v, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i: ; preds = %bb.g
  %i.w = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !69
  %i.x = icmp slt i32 %i.w, %.sroa.03.0.extract.trunc.i.i
  br i1 %i.x, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i, %bb.f
  %i.y = load i64, ptr %.sroa.0.0.i.i, align 4
  store i64 %i.y, ptr %.sroa.05.0.i.i, align 4
  br label %bb.f, !llvm.loop !173

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i, %bb.g
  store i64 %i.r, ptr %.sroa.05.0.i.i, align 4
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %bb.b, !llvm.loop !174

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit: ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not4.i = icmp eq ptr %i.z, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12
  %.sroa.0.05.i = phi ptr [ %i.ai, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12 ], [ %i.z, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit ] ; 3 uses
  %i.aa = load i64, ptr %.sroa.0.05.i, align 4    ; 3 uses
  %.sroa.03.0.extract.trunc.i.i7 = trunc i64 %i.aa to i32
  %.sroa.5.0.extract.shift.i.i8 = lshr i64 %i.aa, 32
  %.sroa.5.0.extract.trunc.i.i9 = trunc nuw i64 %.sroa.5.0.extract.shift.i.i8 to i32 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15, %.lr.ph.i6
  %.sroa.05.0.i.i10 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i11, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15 ] ; 4 uses
  %.sroa.0.0.i.i11 = getelementptr inbounds i8, ptr %.sroa.05.0.i.i10, i64 -8 ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %.sroa.05.0.i.i10, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !71 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %.sroa.5.0.extract.trunc.i.i9
  br i1 %i.ad, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = icmp eq i32 %i.ac, %.sroa.5.0.extract.trunc.i.i9
  br i1 %i.ae, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i14: ; preds = %bb.j
  %i.af = load i32, ptr %.sroa.0.0.i.i11, align 4, !tbaa !69
  %i.ag = icmp slt i32 %i.af, %.sroa.03.0.extract.trunc.i.i7
  br i1 %i.ag, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i14, %bb.i
  %i.ah = load i64, ptr %.sroa.0.0.i.i11, align 4
  store i64 %i.ah, ptr %.sroa.05.0.i.i10, align 4
  br label %bb.i, !llvm.loop !173

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN3g2o10MatrixElemENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i14, %bb.j
  store i64 %i.aa, ptr %.sroa.05.0.i.i10, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ai, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i6, !llvm.loop !175

bb.k:                                             ; preds = %bb.a
  %i.aj = icmp eq ptr %0, %1
end_hunk_1
begin_hunk_2_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_:bb.a

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
  %i.j = load i32, ptr %i.i, align 4, !tbaa !71   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !71   ; 6 uses
  %i.m = icmp sgt i32 %i.j, %i.l
  br i1 %i.m, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %i.j, %i.l
  br i1 %i.n, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.b
  %i.o = load i32, ptr %i.g, align 4, !tbaa !69
  %i.p = load i32, ptr %i.f, align 4, !tbaa !69
  %i.q = icmp sgt i32 %i.o, %i.p
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.a
  %i.r = getelementptr inbounds i8, ptr %1, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !71   ; 4 uses
  %i.t = icmp sgt i32 %i.l, %i.s
  br i1 %i.t, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i
  %i.u = icmp eq i32 %i.l, %i.s
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i: ; preds = %bb.c
  %i.v = load i32, ptr %i.f, align 4, !tbaa !69
  %i.w = load i32, ptr %i.h, align 4, !tbaa !69
  %i.x = icmp sgt i32 %i.v, %i.w
  br i1 %i.x, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i, %bb.c
  %i.y = icmp sgt i32 %i.j, %i.s
  br i1 %i.y, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i
  %i.z = icmp eq i32 %i.j, %i.s
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i: ; preds = %bb.d
  %i.aa = load i32, ptr %i.g, align 4, !tbaa !69
  %i.ab = load i32, ptr %i.h, align 4, !tbaa !69
  %i.ac = icmp sgt i32 %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.b
  %i.ad = getelementptr inbounds i8, ptr %1, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !71 ; 4 uses
  %i.af = icmp sgt i32 %i.j, %i.ae
  br i1 %i.af, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i
  %i.ag = icmp eq i32 %i.j, %i.ae
  br i1 %i.ag, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i: ; preds = %bb.e
  %i.ah = load i32, ptr %i.g, align 4, !tbaa !69
  %i.ai = load i32, ptr %i.h, align 4, !tbaa !69
  %i.aj = icmp sgt i32 %i.ah, %i.ai
  br i1 %i.aj, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i, %bb.e
  %i.ak = icmp sgt i32 %i.l, %i.ae
  br i1 %i.ak, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i
  %i.al = icmp eq i32 %i.l, %i.ae
  br i1 %i.al, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i: ; preds = %bb.f
  %i.am = load i32, ptr %i.f, align 4, !tbaa !69
  %i.an = load i32, ptr %i.h, align 4, !tbaa !69
  %i.ao = icmp sgt i32 %i.am, %i.an
  br i1 %i.ao, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i, %bb.f
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i
  %.sink41.i = phi ptr [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i ] ; 2 uses
  %i.ap = load i64, ptr %0, align 4
  %i.aq = load i64, ptr %.sink41.i, align 4
  store i64 %i.aq, ptr %0, align 4
  store i64 %i.ap, ptr %.sink41.i, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit
  %.sroa.011.0.i = phi ptr [ %i.g, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit ], [ %i.bl, %bb.k ]
  %.sroa.0.0.i = phi ptr [ %1, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit ], [ %.sroa.0.1.i, %bb.k ]
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !71 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10, %bb.g
  %.sroa.011.1.i = phi ptr [ %.sroa.011.0.i, %bb.g ], [ %i.ba, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10 ] ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !71 ; 2 uses
  %i.av = icmp sgt i32 %i.au, %i.as
  br i1 %i.av, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = icmp eq i32 %i.au, %i.as
  br i1 %i.aw, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9, %bb.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9: ; preds = %bb.i
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !69
  %i.ay = load i32, ptr %0, align 4, !tbaa !69
  %i.az = icmp sgt i32 %i.ax, %i.ay
  br i1 %i.az, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9, %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 8
  br label %bb.h, !llvm.loop !176

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader
  %.sroa.0.0.pn.i = phi ptr [ %.sroa.0.0.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader ], [ %.sroa.0.1.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge ] ; 2 uses
  %.sroa.0.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -8 ; 6 uses
  %i.bb = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !71 ; 2 uses
  %i.bd = icmp sgt i32 %i.as, %i.bc
  br i1 %i.bd, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge, label %bb.j

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i
  %i.be = icmp eq i32 %i.as, %i.bc
  br i1 %i.be, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i: ; preds = %bb.j
  %i.bf = load i32, ptr %0, align 4, !tbaa !69
  %i.bg = load i32, ptr %.sroa.0.1.i, align 4, !tbaa !69
  %i.bh = icmp sgt i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i, !llvm.loop !177

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i, %bb.j
  %i.bi = icmp ult ptr %.sroa.011.1.i, %.sroa.0.1.i
  br i1 %i.bi, label %bb.k, label %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_SB_T0_.exit

bb.k:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i
  %i.bj = load i64, ptr %.sroa.011.1.i, align 4
  %i.bk = load i64, ptr %.sroa.0.1.i, align 4
  store i64 %i.bk, ptr %.sroa.011.1.i, align 4
  store i64 %i.bj, ptr %.sroa.0.1.i, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 8
  br label %bb.g, !llvm.loop !178

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
  %.sroa.02.0.copyload.i = load i64, ptr %i.e, align 4 ; 3 uses
  %i.f = load i64, ptr %0, align 4
  store i64 %i.f, ptr %i.e, align 4
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.g, %i.a                       ; 3 uses
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = add nsw i64 %i.i, -1
  %i.k = sdiv i64 %i.j, 2
  %i.l = icmp sgt i64 %i.i, 2
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i
  %.039.i.i = phi i64 [ %i.z, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = shl i64 %.039.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 3 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %3 = getelementptr inbounds [8 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !71   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !71   ; 2 uses
  %i.u = icmp sgt i32 %i.r, %i.t
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.v = icmp eq i32 %i.r, %i.t
  br i1 %i.v, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i: ; preds = %bb.b
  %i.w = load i32, ptr %i.o, align 4, !tbaa !69
  %i.x = load i32, ptr %3, align 4, !tbaa !69
  %i.y = icmp sgt i32 %i.w, %i.x
  %cond.fr.i.i = freeze i1 %i.y
  br i1 %cond.fr.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i, %.lr.ph.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i, %bb.b
  %i.z = phi i64 [ %i.p, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i ], [ %i.n, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i ], [ %i.n, %bb.b ] ; 4 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.039.i.i
  %i.ac = load i64, ptr %i.aa, align 4
  store i64 %i.ac, ptr %i.ab, align 4
  %i.ad = icmp slt i64 %i.z, %i.k
  br i1 %i.ad, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !170

._crit_edge.i.i:                                  ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %i.z, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i ] ; 5 uses
  %i.ae = and i64 %i.h, 8
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ag = add nsw i64 %i.i, -2
  %i.ah = ashr exact i64 %i.ag, 1
  %i.ai = icmp eq i64 %.0.lcssa.i.i, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = shl nsw i64 %.0.lcssa.i.i, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  %i.an = load i64, ptr %i.al, align 4
  store i64 %i.an, ptr %i.am, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.ak, %bb.d ], [ %.0.lcssa.i.i, %bb.c ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.sroa.012.0.extract.trunc.i.i.i = trunc i64 %.sroa.02.0.copyload.i to i32
  %.sroa.3.0.extract.shift.i.i.i = lshr i64 %.sroa.02.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i to i32 ; 2 uses
  %i.ao = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ao, label %.lr.ph.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i
  %.021.i.i.i = phi i64 [ %.0922.i.i78.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i ], [ %.1.i.i, %bb.e ] ; 4 uses
  %.0922.in.i.i.i = add nsw i64 %.021.i.i.i, -1
  %.0922.i.i78.i = lshr i64 %.0922.in.i.i.i, 1    ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0922.i.i78.i ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !71 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, %.sroa.3.0.extract.trunc.i.i.i
  br i1 %i.as, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.at = icmp eq i32 %i.ar, %.sroa.3.0.extract.trunc.i.i.i
  br i1 %i.at, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i: ; preds = %bb.f
  %i.au = load i32, ptr %i.ap, align 4, !tbaa !69
  %i.av = icmp sgt i32 %i.au, %.sroa.012.0.extract.trunc.i.i.i
  br i1 %i.av, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i, %.lr.ph.i.i.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.021.i.i.i
  %i.ax = load i64, ptr %i.ap, align 4
  store i64 %i.ax, ptr %i.aw, align 4
  %.not.i = icmp eq i64 %.0922.i.i78.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !171

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit: ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.e ], [ %.021.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i ], [ 0, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN3g2o10MatrixElemESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i ], [ %.021.i.i.i, %bb.f ]
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i64 %.sroa.02.0.copyload.i, ptr %i.ay, align 4
  %i.az = icmp sgt i64 %i.h, 8
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !179

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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !118  ; 4 uses
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
  %i.l = phi ptr [ %i.as, %._crit_edge.split.us44.thread ], [ %i.d, %.lr.ph34 ] ; 5 uses
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %._crit_edge.split.us44.thread ], [ 0, %.lr.ph34 ] ; 3 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %indvars.iv50 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !120  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %.not19.us = icmp eq ptr %i.o, %i.p
  %.pre54 = load i8, ptr %i.k, align 8, !tbaa !78, !range !89 ; 2 uses
  br i1 %.not19.us, label %._crit_edge.split.us44, label %.lr.ph.us

.lr.ph.split.split.us43:                          ; preds = %.lr.ph.us, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us39
  %i.q = phi ptr [ %i.af, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us39 ], [ %i.l, %.lr.ph.us ] ; 3 uses
  %i.r = phi ptr [ %i.ag, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us39 ], [ %i.l, %.lr.ph.us ] ; 3 uses
  %.sroa.015.020.us36 = phi ptr [ %i.ah, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us39 ], [ %i.o, %.lr.ph.us ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.015.020.us36, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !139  ; 6 uses
  %i.u = load i8, ptr %i.k, align 8, !tbaa !78, !range !89, !noundef !74
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.split.us43
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !97
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !99
  %i.aa = mul nsw i64 %i.z, %i.x                  ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 1
  br i1 %i.ab, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us39, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.us37

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.us37: ; preds = %bb.b
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !112
  %.idx.i.i.i.i.i.i.i.i.i.i.i.us38 = shl nuw nsw i64 %i.aa, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.us38, i1 false), !tbaa !41
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us39

bb.c:                                             ; preds = %.lr.ph.split.split.us43
  %i.ad = icmp eq ptr %i.t, null
  br i1 %i.ad, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us39, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !112
  tail call void @free(ptr noundef %i.ae) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 24) #21
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us39

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us39: ; preds = %bb.d, %bb.c, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.us37, %bb.b
  %i.af = phi ptr [ %.pre, %bb.d ], [ %i.q, %bb.c ], [ %i.q, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.us37 ], [ %i.q, %bb.b ] ; 2 uses
  %i.ag = phi ptr [ %.pre, %bb.d ], [ %i.r, %bb.c ], [ %i.r, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.us37 ], [ %i.r, %bb.b ] ; 2 uses
  %i.ah = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.020.us36) #26 ; 2 uses
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %indvars.iv50 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %.not.us40 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.us40, label %._crit_edge.split.us44.loopexit, label %.lr.ph.split.split.us43, !llvm.loop !180

._crit_edge.split.us44.loopexit:                  ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us39
  %.pre53 = load i8, ptr %i.k, align 8, !tbaa !78, !range !89
  br label %._crit_edge.split.us44

._crit_edge.split.us44:                           ; preds = %._crit_edge.split.us44.loopexit, %.lr.ph34.split.us
  %i.ak = phi ptr [ %i.l, %.lr.ph34.split.us ], [ %i.af, %._crit_edge.split.us44.loopexit ]
  %i.al = phi i8 [ %.pre54, %.lr.ph34.split.us ], [ %.pre53, %._crit_edge.split.us44.loopexit ]
  %.lcssa18.us = phi ptr [ %i.m, %.lr.ph34.split.us ], [ %i.ai, %._crit_edge.split.us44.loopexit ] ; 5 uses
  %.lcssa.us = phi ptr [ %i.p, %.lr.ph34.split.us ], [ %i.aj, %._crit_edge.split.us44.loopexit ] ; 2 uses
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.e, label %._crit_edge.split.us44.thread

bb.e:                                             ; preds = %._crit_edge.split.us44
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa18.us, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !130
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %.lcssa18.us, ptr noundef %i.ao)
          to label %_ZNSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS3_EEE5clearEv.exit.us unwind label %.split.us

_ZNSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS3_EEE5clearEv.exit.us: ; preds = %bb.e
  store ptr null, ptr %i.an, align 8, !tbaa !130
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa18.us, i64 24
  store ptr %.lcssa.us, ptr %i.ap, align 8, !tbaa !120
  %i.aq = getelementptr inbounds nuw i8, ptr %.lcssa18.us, i64 32
  store ptr %.lcssa.us, ptr %i.aq, align 8, !tbaa !125
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa18.us, i64 40
  store i64 0, ptr %i.ar, align 8, !tbaa !126
  %.pre55 = load ptr, ptr %i.a, align 8, !tbaa !118
  br label %._crit_edge.split.us44.thread

._crit_edge.split.us44.thread:                    ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us26.us, %_ZNSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS3_EEE5clearEv.exit.us, %._crit_edge.split.us44
  %i.as = phi ptr [ %.pre55, %_ZNSt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS3_EEE5clearEv.exit.us ], [ %i.ak, %._crit_edge.split.us44 ], [ %i.l, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us26.us ] ; 2 uses
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !129
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 48
  %sext = shl i64 %i.ax, 32
  %i.ay = ashr exact i64 %sext, 32
  %i.az = icmp slt i64 %indvars.iv.next51, %i.ay
  br i1 %i.az, label %.lr.ph34.split.us, label %._crit_edge35, !llvm.loop !181

.lr.ph.us:                                        ; preds = %.lr.ph34.split.us
  %i.ba = trunc nuw i8 %.pre54 to i1
  br i1 %i.ba, label %.lr.ph.split.split.us43, label %.lr.ph.split.split.us.us

.lr.ph.split.split.us.us:                         ; preds = %.lr.ph.us, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us26.us
  %.sroa.015.020.us23.us = phi ptr [ %i.bk, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us26.us ], [ %i.o, %.lr.ph.us ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.015.020.us23.us, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !139 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !97
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !99
  %i.bh = mul nsw i64 %i.bg, %i.be                ; 2 uses
  %i.bi = icmp slt i64 %i.bh, 1
  br i1 %i.bi, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us26.us, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.us24.us

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.us24.us: ; preds = %.lr.ph.split.split.us.us
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !112
  %.idx.i.i.i.i.i.i.i.i.i.i.i.us25.us = shl nuw nsw i64 %i.bh, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bj, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.us25.us, i1 false), !tbaa !41
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us26.us

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.us26.us: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.us24.us, %.lr.ph.split.split.us.us
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.020.us23.us) #26 ; 2 uses
  %.not.us27.us = icmp eq ptr %i.bk, %i.p
  br i1 %.not.us27.us, label %._crit_edge.split.us44.thread, label %.lr.ph.split.split.us.us, !llvm.loop !182

.split.us:                                        ; preds = %bb.e
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #25
end_hunk_2
