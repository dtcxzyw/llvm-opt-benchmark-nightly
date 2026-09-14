Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/dual_contouring?download=true
inline.NumInlined: 14668
inline.NumDeleted: 7831
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 71
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_ZN3igl14DualContouringIfEC2ERKSt8functionIFfRKN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEERKS2_IFS5_S7_EEbbb:bb.a
.noexc9.i.i:                                      ; preds = %.noexc7.i.i.i.i
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt5tupleIJiiiEElELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i: ; preds = %bb.p
  %i.ao = shl nuw nsw i64 %i.ai, 3                ; 2 uses
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #26
          to label %.noexc10.i.i unwind label %.body22 ; 2 uses

.noexc10.i.i:                                     ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt5tupleIJiiiEElELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ap, i8 0, i64 %i.ao, i1 false)
  br label %_ZNSt10_HashtableISt5tupleIJiiiEESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_EN3igl4HashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i

_ZNSt10_HashtableISt5tupleIJiiiEESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_EN3igl4HashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %.noexc10.i.i, %bb.o
  %.0.i.i.i = phi ptr [ %i.ad, %bb.o ], [ %i.ap, %.noexc10.i.i ]
  store ptr %.0.i.i.i, ptr %i.ac, align 8, !tbaa !93
  store i64 %i.ai, ptr %i.ae, align 8, !tbaa !94
  br label %bb.r

.body22:                                          ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt5tupleIJiiiEElELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i, %.noexc7.i.i.i.i, %.noexc.i.i.i.i, %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_ZNSt10_HashtableISt5tupleIJiiiEESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_EN3igl4HashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ac) #23
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !195
  tail call void @free(ptr noundef %i.ar) #23
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !41  ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %.body, label %bb.s

bb.r:                                             ; preds = %_ZNSt10_HashtableISt5tupleIJiiiEESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_EN3igl4HashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i, %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.at, i8 0, i64 208, i1 false)
  ret void

bb.s:                                             ; preds = %.body22
  %i.au = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 noundef 3)
          to label %.body unwind label %bb.t      ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #24
  unreachable

.body:                                            ; preds = %bb.s, %.body22, %bb.j, %bb.i
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.aq, %bb.s ], [ %i.q, %bb.j ], [ %i.aq, %.body22 ] ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %.not.i27 = icmp eq ptr %i.ax, null
  br i1 %.not.i27, label %common.resume, label %bb.u

bb.u:                                             ; preds = %.body
  %i.ay = invoke noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %common.resume unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl14DualContouringIfE5denseIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS4_IfLin1ELi3ELi1ELin1ELi3EEEEEvRKNS3_10MatrixBaseIT_EERKNS7_IT0_EEiii(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph.i.i.i.i.i.i.i.i.i:
  %6 = alloca %class.anon.2238, align 1           ; 4 uses
  %7 = alloca %class.anon.2240, align 8           ; 4 uses
  %8 = alloca %class.anon.2237, align 8           ; 4 uses
  %9 = alloca %class.anon.2067, align 1           ; 4 uses
  %10 = alloca %class.anon.2069, align 8          ; 4 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %11 = alloca %"class.Eigen::Matrix.99", align 8 ; 11 uses
  %12 = alloca %class.anon.1962, align 8          ; 5 uses
  %13 = alloca %class.anon.1963, align 8          ; 9 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !99
  store i32 %4, ptr %i.b, align 4, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 14 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = lshr exact i64 %i.d, 2
  %i.f = sub nsw i64 0, %i.e
  %i.g = and i64 %i.f, 3                          ; 13 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !197, !noalias !429 ; 21 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !430, !noalias !429 ; 7 uses
  %i.k = icmp sgt i64 %i.j, 1                     ; 3 uses
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.l = add nsw i64 %i.g, -1
  %i.m = icmp ult i64 %i.l, 3
  br i1 %i.m, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.n = add nsw i64 %i.j, -1                     ; 12 uses
  %i.o = add nsw i64 %i.j, -2                     ; 4 uses
  %xtraiter70 = and i64 %i.n, 1
  %i.p = icmp eq i64 %i.o, 0
  %unroll_iter75 = and i64 %i.n, -2
  %lcmp.mod72.not = icmp eq i64 %xtraiter70, 0
  %lcmp.mod74 = trunc i64 %i.n to i1
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i
  %.05.us.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ai, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.05.us.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !198 ; 2 uses
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i
  %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i = phi float [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %niter76 = phi i64 [ %niter76.next.1, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i = mul i64 %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i, 12
  %i.s = getelementptr i8, ptr %i.q, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i
  %i.t = load float, ptr %i.s, align 4, !tbaa !198 ; 2 uses
  %i.u = fcmp olt float %i.t, %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i
  %i.v = select i1 %i.u, float %i.t, float %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.w = mul i64 %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i, 12
  %i.x = getelementptr i8, ptr %i.q, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 12
  %i.z = load float, ptr %i.y, align 4, !tbaa !198 ; 2 uses
  %i.aa = fcmp olt float %i.z, %i.v
  %i.ab = select i1 %i.aa, float %i.z, float %i.v ; 3 uses
  %i.ac = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter76.next.1 = add nuw i64 %niter76, 2       ; 2 uses
  %niter76.ncmp.1 = icmp eq i64 %niter76.next.1, %unroll_iter75
  br i1 %niter76.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i, !llvm.loop !421

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i
  br i1 %lcmp.mod72.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i
  %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i ], [ %i.ac, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil.init = phi float [ %i.r, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i ], [ %i.ab, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %.idx.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil = mul i64 %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil.init, 12
  %i.ad = getelementptr i8, ptr %i.q, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !198 ; 2 uses
  %i.af = fcmp olt float %i.ae, %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil.init
  %i.ag = select i1 %i.af, float %i.ae, float %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil.init
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil.preheader
  %.lcssa67 = phi float [ %i.ab, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.05.us.i.i.i.i.i.i.i.i.i
  store float %.lcssa67, ptr %i.ah, align 4, !tbaa !198
  %i.ai = add nuw nsw i64 %.05.us.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond8.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ai, %i.g
  br i1 %exitcond8.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i, !llvm.loop !422

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ay, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !198
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.05.i.i.i.i.i.i.i.i.i
  store float %i.ak, ptr %i.al, align 4, !tbaa !198
  %i.am = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !198
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.am
  store float %i.ao, ptr %i.ap, align 8, !tbaa !198
  %i.aq = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aq
  %i.as = load float, ptr %i.ar, align 4, !tbaa !198
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aq
  store float %i.as, ptr %i.at, align 4, !tbaa !198
  %i.au = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !198
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.au
  store float %i.aw, ptr %i.ax, align 8, !tbaa !198
  %i.ay = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !422

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i
  %.not41.i.i.i.i.i.i.i.i = icmp eq i64 %i.g, 3
  br i1 %.not41.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEaSINS_16PartialReduxExprIKNS0_IfLin1ELi3ELi1ELin1ELi3EEENS_8internal15member_minCoeffIffEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ay, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil.preheader
  %.05.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.bc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil ], [ %.05.i.i.i.i.i.i.i.i.i.epil.init, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.05.i.i.i.i.i.i.i.i.i.epil
  %i.ba = load float, ptr %i.az, align 4, !tbaa !198
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.05.i.i.i.i.i.i.i.i.i.epil
  store float %i.ba, ptr %i.bb, align 4, !tbaa !198
  %i.bc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.g
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i.i.i.i.i.thread, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !423

._crit_edge.i.i.i.i.i.i.i.i.thread:               ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil
  %.not41.i.i.i.i.i.i.i.i50 = icmp eq i64 %i.g, 3
  br i1 %.not41.i.i.i.i.i.i.i.i50, label %_ZN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEaSINS_16PartialReduxExprIKNS0_IfLin1ELi3ELi1ELin1ELi3EEENS_8internal15member_minCoeffIffEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.g ; 4 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !198 ; 2 uses
  %xtraiter77 = and i64 %i.n, 1
  %i.bf = icmp eq i64 %i.o, 0
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i
  %unroll_iter82 = and i64 %i.n, -2
  br label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new
  %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i ] ; 3 uses
  %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i = phi float [ %i.be, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i ] ; 2 uses
  %niter83 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new ], [ %niter83.next.1, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i, 12
  %i.bg = getelementptr i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !198 ; 2 uses
  %i.bi = fcmp olt float %i.bh, %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i
  %i.bj = select i1 %i.bi, float %i.bh, float %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i ; 2 uses
  %i.bk = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i, 12
  %i.bl = getelementptr i8, ptr %i.bd, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 12
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !198 ; 2 uses
  %i.bo = fcmp olt float %i.bn, %i.bj
  %i.bp = select i1 %i.bo, float %i.bn, float %i.bj ; 3 uses
  %i.bq = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter83.next.1 = add nuw i64 %niter83, 2       ; 2 uses
  %niter83.ncmp.1 = icmp eq i64 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i, !llvm.loop !421

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i
  %lcmp.mod79.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod79.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i
  %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i ], [ %i.bq, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.epil.init = phi float [ %i.be, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i ], [ %i.bp, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod81 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i.epil = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.epil.init, 12
  %i.br = getelementptr i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i.epil
  %i.bs = load float, ptr %i.br, align 4, !tbaa !198 ; 2 uses
  %i.bt = fcmp olt float %i.bs, %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.epil.init
  %i.bu = select i1 %i.bt, float %i.bs, float %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.epil.init
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader
  %.lcssa66 = phi float [ %i.bp, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g
  store float %.lcssa66, ptr %i.bv, align 4, !tbaa !198
  %i.bw = add nuw nsw i64 %i.g, 1                 ; 2 uses
  %14 = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bw ; 4 uses
  %15 = load float, ptr %14, align 4, !tbaa !198  ; 2 uses
  %xtraiter77.1 = and i64 %i.n, 1
  %exitcond8.not.i29.i.i.i.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %exitcond8.not.i29.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader.1, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.1

.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.1: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i
  %unroll_iter82.1 = and i64 %i.n, -2
  br label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.1:    ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.1
  %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.1 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.1 ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.1 ] ; 3 uses
  %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.1 = phi float [ %15, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.1 ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.1 ] ; 2 uses
  %niter83.1 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.1 ], [ %niter83.next.1.1, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.1 ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i.184 = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.1, 12
  %i.bx = getelementptr i8, ptr %14, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i.184
  %i.by = load float, ptr %i.bx, align 4, !tbaa !198 ; 2 uses
  %i.bz = fcmp olt float %i.by, %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.1
  %i.ca = select i1 %i.bz, float %i.by, float %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.1 ; 2 uses
  %i.cb = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.1, 12
  %i.cc = getelementptr i8, ptr %14, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 12
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !198 ; 2 uses
  %i.cf = fcmp olt float %i.ce, %i.ca
  %i.cg = select i1 %i.cf, float %i.ce, float %i.ca ; 3 uses
  %i.ch = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.1, 2 ; 2 uses
  %niter83.next.1.1 = add nuw i64 %niter83.1, 2   ; 2 uses
  %niter83.ncmp.1.1 = icmp eq i64 %niter83.next.1.1, %unroll_iter82.1
  br i1 %niter83.ncmp.1.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.1, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.1, !llvm.loop !421

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.1: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.1
  %lcmp.mod79.1.not = icmp eq i64 %xtraiter77.1, 0
  br i1 %lcmp.mod79.1.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader.1

.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader.1: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i
  %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.epil.init.1 = phi i64 [ 1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i ], [ %i.ch, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.1 ]
  %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.epil.init.1 = phi float [ %15, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i ], [ %i.cg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.1 ] ; 2 uses
  %lcmp.mod81.1 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod81.1)
  %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i.epil.1 = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.epil.init.1, 12
  %i.ci = getelementptr i8, ptr %14, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i.epil.1
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  %i.ck = fcmp olt float %i.cj, %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.epil.init.1
  %i.cl = select i1 %i.ck, float %i.cj, float %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.epil.init.1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.1

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.1
  %.lcssa66.1 = phi float [ %i.cg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.1 ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader.1 ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bw
  store float %.lcssa66.1, ptr %i.cm, align 4, !tbaa !198
  %i.cn = add nuw nsw i64 %i.g, 2                 ; 3 uses
  %exitcond8.not.i29.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.cn, 3
  br i1 %exitcond8.not.i29.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEaSINS_16PartialReduxExprIKNS0_IfLin1ELi3ELi1ELin1ELi3EEENS_8internal15member_minCoeffIffEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.2: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.1
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cn ; 4 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !198 ; 2 uses
  %xtraiter77.2 = and i64 %i.n, 1
  %i.cq = icmp eq i64 %i.o, 0
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader.2, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.2

.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.2: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.2
  %unroll_iter82.2 = and i64 %i.n, -2
  br label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.2:    ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.2
  %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.2 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.2 ], [ %i.db, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.2 ] ; 3 uses
  %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.2 = phi float [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.2 ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.2 ] ; 2 uses
  %niter83.2 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.2 ], [ %niter83.next.1.2, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.2 ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i.2 = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.2, 12
  %i.cr = getelementptr i8, ptr %i.co, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i.2
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !198 ; 2 uses
  %i.ct = fcmp olt float %i.cs, %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.2
  %i.cu = select i1 %i.ct, float %i.cs, float %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.2 ; 2 uses
  %i.cv = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.2, 12
  %i.cw = getelementptr i8, ptr %i.co, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 12
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !198 ; 2 uses
  %i.cz = fcmp olt float %i.cy, %i.cu
  %i.da = select i1 %i.cz, float %i.cy, float %i.cu ; 3 uses
  %i.db = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.2, 2 ; 2 uses
  %niter83.next.1.2 = add nuw i64 %niter83.2, 2   ; 2 uses
  %niter83.ncmp.1.2 = icmp eq i64 %niter83.next.1.2, %unroll_iter82.2
  br i1 %niter83.ncmp.1.2, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.2, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.2, !llvm.loop !421

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.2: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.2
  %lcmp.mod79.2.not = icmp eq i64 %xtraiter77.2, 0
  br i1 %lcmp.mod79.2.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.2, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader.2

.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader.2: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.2, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.2
  %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.epil.init.2 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.2 ], [ %i.db, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.2 ]
  %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.epil.init.2 = phi float [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.2 ], [ %i.da, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.2 ] ; 2 uses
  %lcmp.mod81.2 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod81.2)
  %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i.epil.2 = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.epil.init.2, 12
  %i.dc = getelementptr i8, ptr %i.co, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i.epil.2
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !198 ; 2 uses
  %i.de = fcmp olt float %i.dd, %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.epil.init.2
  %i.df = select i1 %i.de, float %i.dd, float %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.epil.init.2
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.2

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader.2, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.2
  %.lcssa66.2 = phi float [ %i.da, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.2 ], [ %i.df, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader.2 ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cn
  store float %.lcssa66.2, ptr %i.dg, align 4, !tbaa !198
  br label %_ZN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEaSINS_16PartialReduxExprIKNS0_IfLin1ELi3ELi1ELin1ELi3EEENS_8internal15member_minCoeffIffEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.i.1: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.thread
  %16 = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.g
  %17 = load float, ptr %16, align 4, !tbaa !198
  %18 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g
  store float %17, ptr %18, align 4, !tbaa !198
  %19 = add nuw nsw i64 %i.g, 1                   ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %19
  %i.di = load float, ptr %i.dh, align 4, !tbaa !198
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %19
  store float %i.di, ptr %i.dj, align 4, !tbaa !198
  %i.dk = add nuw nsw i64 %i.g, 2                 ; 3 uses
  %exitcond.not.i20.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.dk, 3
  br i1 %exitcond.not.i20.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEaSINS_16PartialReduxExprIKNS0_IfLin1ELi3ELi1ELin1ELi3EEENS_8internal15member_minCoeffIffEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.i.2

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.i.2: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.i.1
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !198
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dk
  store float %i.dm, ptr %i.dn, align 4, !tbaa !198
  br label %_ZN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEaSINS_16PartialReduxExprIKNS0_IfLin1ELi3ELi1ELin1ELi3EEENS_8internal15member_minCoeffIffEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEaSINS_16PartialReduxExprIKNS0_IfLin1ELi3ELi1ELin1ELi3EEENS_8internal15member_minCoeffIffEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.i.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.i.2, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.2, %._crit_edge.i.i.i.i.i.i.i.i.thread, %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.do = ptrtoint ptr %11 to i64
  %i.dp = lshr exact i64 %i.do, 2
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = and i64 %i.dq, 2                        ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dr, 0
  br i1 %.not.i.i.i.i.i.i.i, label %..lr.ph.i17.i_crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

..lr.ph.i17.i_crit_edge.i.i.i.i.i.i:              ; preds = %_ZN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEaSINS_16PartialReduxExprIKNS0_IfLin1ELi3ELi1ELin1ELi3EEENS_8internal15member_minCoeffIffEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !197, !noalias !431
  br label %.lr.ph.i17.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEaSINS_16PartialReduxExprIKNS0_IfLin1ELi3ELi1ELin1ELi3EEENS_8internal15member_minCoeffIffEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ds = add nsw i64 %i.j, -1                    ; 6 uses
  %i.dt = add nsw i64 %i.j, -2                    ; 2 uses
  %i.du = load float, ptr %i.h, align 4, !tbaa !198 ; 2 uses
  %xtraiter85 = and i64 %i.ds, 1
  %i.dv = icmp eq i64 %i.dt, 0
  br i1 %i.dv, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.new: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.preheader
  %unroll_iter90 = and i64 %i.ds, -2
  br label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i:          ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.new
  %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.new ], [ %i.eg, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i ] ; 3 uses
  %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi float [ %i.du, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.new ], [ %i.ef, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i ] ; 2 uses
  %niter91 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.new ], [ %niter91.next.1, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i = mul i64 %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 12
  %i.dw = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !198 ; 2 uses
  %i.dy = fcmp olt float %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.dx
  %i.dz = select i1 %i.dy, float %i.dx, float %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i ; 2 uses
  %i.ea = mul i64 %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 12
  %i.eb = getelementptr i8, ptr %i.h, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 12
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !198 ; 2 uses
  %i.ee = fcmp olt float %i.dz, %i.ed
  %i.ef = select i1 %i.ee, float %i.ed, float %i.dz ; 3 uses
  %i.eg = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter91.next.1 = add nuw i64 %niter91, 2       ; 2 uses
  %niter91.ncmp.1 = icmp eq i64 %niter91.next.1, %unroll_iter90
  br i1 %niter91.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i, !llvm.loop !426

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %lcmp.mod87.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod87.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.preheader
  %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.preheader ], [ %i.eg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.init = phi float [ %i.du, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.preheader ], [ %i.ef, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod89 = trunc i64 %i.ds to i1
  call void @llvm.assume(i1 %lcmp.mod89)
  %.idx.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil = mul i64 %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.init, 12
  %i.eh = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !198 ; 2 uses
  %i.ej = fcmp olt float %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.init, %i.ei
  %i.ek = select i1 %i.ej, float %i.ei, float %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.init
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.preheader
  %.lcssa64 = phi float [ %i.ef, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.preheader ]
  store float %.lcssa64, ptr %11, align 8, !tbaa !198
  %i.el = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 4 uses
  %i.em = load float, ptr %i.el, align 4, !tbaa !198 ; 2 uses
  %xtraiter85.1 = and i64 %i.ds, 1
  %i.en = icmp eq i64 %i.dt, 0
  br i1 %i.en, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.preheader.1, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.new.1

.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.new.1: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i
  %unroll_iter90.1 = and i64 %i.ds, -2
  br label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.1:        ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.new.1
  %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.1 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.new.1 ], [ %i.ey, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.1 ] ; 3 uses
  %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.1 = phi float [ %i.em, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.new.1 ], [ %i.ex, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.1 ] ; 2 uses
  %niter91.1 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.new.1 ], [ %niter91.next.1.1, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.1 ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.192 = mul i64 %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.1, 12
  %i.eo = getelementptr i8, ptr %i.el, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.192
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !198 ; 2 uses
  %i.eq = fcmp olt float %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.1, %i.ep
  %i.er = select i1 %i.eq, float %i.ep, float %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.1 ; 2 uses
  %i.es = mul i64 %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.1, 12
  %i.et = getelementptr i8, ptr %i.el, i64 %i.es
  %i.eu = getelementptr i8, ptr %i.et, i64 12
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !198 ; 2 uses
  %i.ew = fcmp olt float %i.er, %i.ev
  %i.ex = select i1 %i.ew, float %i.ev, float %i.er ; 3 uses
  %i.ey = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.1, 2 ; 2 uses
  %niter91.next.1.1 = add nuw i64 %niter91.1, 2   ; 2 uses
  %niter91.ncmp.1.1 = icmp eq i64 %niter91.next.1.1, %unroll_iter90.1
  br i1 %niter91.ncmp.1.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.unr-lcssa.1, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.1, !llvm.loop !426

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.unr-lcssa.1: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.1
  %lcmp.mod87.1.not = icmp eq i64 %xtraiter85.1, 0
  br i1 %lcmp.mod87.1.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.preheader.1

.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.preheader.1: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.unr-lcssa.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i
  %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.init.1 = phi i64 [ 1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i ], [ %i.ey, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.unr-lcssa.1 ]
  %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.init.1 = phi float [ %i.em, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i ], [ %i.ex, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.unr-lcssa.1 ] ; 2 uses
  %lcmp.mod89.1 = trunc i64 %i.ds to i1
  call void @llvm.assume(i1 %lcmp.mod89.1)
  %.idx.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.1 = mul i64 %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.init.1, 12
  %i.ez = getelementptr i8, ptr %i.el, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.1
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !198 ; 2 uses
  %i.fb = fcmp olt float %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.init.1, %i.fa
  %i.fc = select i1 %i.fb, float %i.fa, float %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.init.1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.1

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.preheader.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.unr-lcssa.1
  %.lcssa64.1 = phi float [ %i.ex, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.unr-lcssa.1 ], [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.epil.preheader.1 ]
  %i.fd = getelementptr inbounds nuw i8, ptr %11, i64 4
  store float %.lcssa64.1, ptr %i.fd, align 4, !tbaa !198
  br label %.lr.ph.i17.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.fe = load float, ptr %i.h, align 4, !tbaa !198
  store float %i.fe, ptr %11, align 8, !tbaa !198
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !198
  %i.fh = getelementptr inbounds nuw i8, ptr %11, i64 4
  store float %i.fg, ptr %i.fh, align 4, !tbaa !198
  br label %.lr.ph.i17.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i:                         ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, %..lr.ph.i17.i_crit_edge.i.i.i.i.i.i
  %i.fi = phi ptr [ %.pre, %..lr.ph.i17.i_crit_edge.i.i.i.i.i.i ], [ %i.h, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ], [ %i.h, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.1 ] ; 2 uses
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.prol: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.prol
  %.05.i19.i.i.i.i.i.i.i.prol = phi i64 [ %i.fm, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.prol ], [ %i.dr, %.lr.ph.i17.i.i.i.i.i.i.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i ]
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %.05.i19.i.i.i.i.i.i.i.prol
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !198
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %.05.i19.i.i.i.i.i.i.i.prol
  store float %i.fk, ptr %i.fl, align 4, !tbaa !198
  %i.fm = add nuw nsw i64 %.05.i19.i.i.i.i.i.i.i.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %i.fn = xor i64 %i.dr, %prol.iter.next
  %prol.iter.cmp.not = icmp eq i64 %i.fn, 3
  br i1 %prol.iter.cmp.not, label %_ZN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEC2INS_16PartialReduxExprIKNS0_IfLin1ELi3ELi1ELin1ELi3EEENS_8internal15member_maxCoeffIffEELi0EEEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.prol, !llvm.loop !427

.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i
  %i.fo = add nsw i64 %i.j, -1                    ; 3 uses
  %xtraiter95 = and i64 %i.fo, 1
  %i.fp = icmp eq i64 %i.j, 2
  %unroll_iter100 = and i64 %i.fo, -2
  %lcmp.mod97.not = icmp eq i64 %xtraiter95, 0
  %lcmp.mod99 = trunc i64 %i.fo to i1
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i
  %.05.us.i22.i.i.i.i.i.i.i = phi i64 [ %i.gi, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i ], [ %i.dr, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %.05.us.i22.i.i.i.i.i.i.i ; 4 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !198 ; 2 uses
  br i1 %i.fp, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i:        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i
  %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i = phi i64 [ %i.gc, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i ] ; 3 uses
  %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i = phi float [ %i.gb, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i ], [ %i.fr, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i ] ; 2 uses
  %niter101 = phi i64 [ %niter101.next.1, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i, 12
  %i.fs = getelementptr i8, ptr %i.fq, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !198 ; 2 uses
  %i.fu = fcmp olt float %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i, %i.ft
  %i.fv = select i1 %i.fu, float %i.ft, float %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i ; 2 uses
  %i.fw = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i, 12
  %i.fx = getelementptr i8, ptr %i.fq, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fx, i64 12
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !198 ; 2 uses
  %i.ga = fcmp olt float %i.fv, %i.fz
  %i.gb = select i1 %i.ga, float %i.fz, float %i.fv ; 3 uses
  %i.gc = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter101.next.1 = add nuw i64 %niter101, 2     ; 2 uses
  %niter101.ncmp.1 = icmp eq i64 %niter101.next.1, %unroll_iter100
  br i1 %niter101.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i, !llvm.loop !426

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i
  br i1 %lcmp.mod97.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i
  %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i ], [ %i.gc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.unr-lcssa ]
  %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.epil.init = phi float [ %i.fr, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i ], [ %i.gb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod99)
  %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.epil = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.epil.init, 12
  %i.gd = getelementptr i8, ptr %i.fq, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.epil
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !198 ; 2 uses
  %i.gf = fcmp olt float %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.epil.init, %i.ge
  %i.gg = select i1 %i.gf, float %i.ge, float %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.epil.init
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.epil.preheader
  %.lcssa = phi float [ %i.gb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_maxCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.unr-lcssa ], [ %i.gg, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.epil.preheader ]
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %.05.us.i22.i.i.i.i.i.i.i
  store float %.lcssa, ptr %i.gh, align 4, !tbaa !198
  %i.gi = add nuw nsw i64 %.05.us.i22.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond8.not.i29.i.i.i.i.i.i.i = icmp eq i64 %i.gi, 3
  br i1 %exitcond8.not.i29.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEC2INS_16PartialReduxExprIKNS0_IfLin1ELi3ELi1ELin1ELi3EEENS_8internal15member_maxCoeffIffEELi0EEEEERKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i, !llvm.loop !428
end_hunk_0
