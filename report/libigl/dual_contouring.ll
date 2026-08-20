inline.NumInlined: 14668
inline.NumDeleted: 7831
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 71
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_ZN3igl14DualContouringIfEC2ERKSt8functionIFfRKN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEERKS2_IFS5_S7_EEbbb:bb.a
bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #24
  unreachable

common.resume:                                    ; preds = %bb.u, %.body, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn.pn.pn.pn.pn.pn, %bb.u ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFfRKN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEC2ERKS6_.exit: ; preds = %bb.a, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15   ; 2 uses
  %.not.i.i.not.i19 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i19, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFfRKN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEC2ERKS6_.exit
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !17
  store <2 x ptr> %i.p, ptr %i.l, align 8, !tbaa !17
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !15   ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.r, null
  br i1 %.not.i.i20, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 noundef 3)
          to label %.body unwind label %bb.k      ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #24
  unreachable

bb.l:                                             ; preds = %_ZNSt8functionIFfRKN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEC2ERKS6_.exit, %bb.h
  %i.v = zext i1 %5 to i8
  %i.w = zext i1 %4 to i8
  %i.x = zext i1 %3 to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.x, ptr %i.y, align 8, !tbaa !199
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 %i.w, ptr %i.z, align 1, !tbaa !221
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 66
  store i8 %i.v, ptr %i.aa, align 2, !tbaa !222
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !68
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store i64 1, ptr %i.ae, align 8, !tbaa !69
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ag, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = invoke noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 noundef 0)
          to label %bb.m unwind label %.body22    ; 6 uses

bb.m:                                             ; preds = %bb.l
  %i.aj = load i64, ptr %i.ae, align 8, !tbaa !69
  %i.ak = icmp ugt i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.al = icmp eq i64 %i.ai, 1
  br i1 %i.al, label %bb.o, label %bb.p, !prof !71

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %i.ad, align 8, !tbaa !72
  br label %_ZNSt10_HashtableISt5tupleIJiiiEESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_EN3igl4HashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.am = icmp ugt i64 %i.ai, 1152921504606846975
  br i1 %i.am, label %bb.q, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt5tupleIJiiiEElELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i, !prof !71

bb.q:                                             ; preds = %bb.p
  %i.an = icmp ugt i64 %i.ai, 2305843009213693951
  br i1 %i.an, label %.noexc.i.i.i.i, label %.noexc7.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.q
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc.i.i unwind label %.body22

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i
  unreachable

.noexc7.i.i.i.i:                                  ; preds = %bb.q
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %.noexc9.i.i unwind label %.body22

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
  store ptr %.0.i.i.i, ptr %i.ac, align 8, !tbaa !68
  store i64 %i.ai, ptr %i.ae, align 8, !tbaa !69
  br label %bb.r

.body22:                                          ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt5tupleIJiiiEElELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i, %.noexc7.i.i.i.i, %.noexc.i.i.i.i, %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_ZNSt10_HashtableISt5tupleIJiiiEESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_EN3igl4HashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ac) #23
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !223
  tail call void @free(ptr noundef %i.ar) #23
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !15  ; 2 uses
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
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !15  ; 2 uses
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
  store i32 %3, ptr %i.a, align 4, !tbaa !74
  store i32 %4, ptr %i.b, align 4, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 14 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = lshr exact i64 %i.d, 2
  %i.f = sub nsw i64 0, %i.e
  %i.g = and i64 %i.f, 3                          ; 13 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !224, !noalias !226 ; 21 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !229, !noalias !226 ; 7 uses
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
  %i.r = load float, ptr %i.q, align 4, !tbaa !230 ; 2 uses
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i
  %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i = phi float [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %niter76 = phi i64 [ %niter76.next.1, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i = mul i64 %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i, 12
  %i.s = getelementptr i8, ptr %i.q, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i
  %i.t = load float, ptr %i.s, align 4, !tbaa !230 ; 2 uses
  %i.u = fcmp olt float %i.t, %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i
  %i.v = select i1 %i.u, float %i.t, float %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.w = mul i64 %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i, 12
  %i.x = getelementptr i8, ptr %i.q, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 12
  %i.z = load float, ptr %i.y, align 4, !tbaa !230 ; 2 uses
  %i.aa = fcmp olt float %i.z, %i.v
  %i.ab = select i1 %i.aa, float %i.z, float %i.v ; 3 uses
  %i.ac = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter76.next.1 = add nuw i64 %niter76, 2       ; 2 uses
  %niter76.ncmp.1 = icmp eq i64 %niter76.next.1, %unroll_iter75
  br i1 %niter76.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i, !llvm.loop !231

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i
  br i1 %lcmp.mod72.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i
  %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i ], [ %i.ac, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil.init = phi float [ %i.r, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i ], [ %i.ab, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %.idx.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil = mul i64 %.01725.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil.init, 12
  %i.ad = getelementptr i8, ptr %i.q, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !230 ; 2 uses
  %i.af = fcmp olt float %i.ae, %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil.init
  %i.ag = select i1 %i.af, float %i.ae, float %.02324.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil.init
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil.preheader
  %.lcssa67 = phi float [ %i.ab, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.05.us.i.i.i.i.i.i.i.i.i
  store float %.lcssa67, ptr %i.ah, align 4, !tbaa !230
  %i.ai = add nuw nsw i64 %.05.us.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond8.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ai, %i.g
  br i1 %exitcond8.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.i, !llvm.loop !232

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %14, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !230
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.05.i.i.i.i.i.i.i.i.i
  store float %i.ak, ptr %i.al, align 4, !tbaa !230
  %i.am = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !230
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.am
  store float %i.ao, ptr %i.ap, align 8, !tbaa !230
  %i.aq = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aq
  %i.as = load float, ptr %i.ar, align 4, !tbaa !230
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aq
  store float %i.as, ptr %i.at, align 4, !tbaa !230
  %i.au = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !230
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.au
  store float %i.aw, ptr %i.ax, align 8, !tbaa !230
  %14 = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !232

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i
  %.not41.i.i.i.i.i.i.i.i = icmp eq i64 %i.g, 3
  br i1 %.not41.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEaSINS_16PartialReduxExprIKNS0_IfLin1ELi3ELi1ELin1ELi3EEENS_8internal15member_minCoeffIffEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.preheader ], [ %14, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil.preheader
  %.05.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.bb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil ], [ %.05.i.i.i.i.i.i.i.i.i.epil.init, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.05.i.i.i.i.i.i.i.i.i.epil
  %i.az = load float, ptr %i.ay, align 4, !tbaa !230
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.05.i.i.i.i.i.i.i.i.i.epil
  store float %i.az, ptr %i.ba, align 4, !tbaa !230
  %i.bb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.g
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i.i.i.i.i.thread, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !233

._crit_edge.i.i.i.i.i.i.i.i.thread:               ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.epil
  %.not41.i.i.i.i.i.i.i.i50 = icmp eq i64 %i.g, 3
  br i1 %.not41.i.i.i.i.i.i.i.i50, label %_ZN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEaSINS_16PartialReduxExprIKNS0_IfLin1ELi3ELi1ELin1ELi3EEENS_8internal15member_minCoeffIffEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.g ; 4 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !230 ; 2 uses
  %xtraiter77 = and i64 %i.n, 1
  %i.be = icmp eq i64 %i.o, 0
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i
  %unroll_iter82 = and i64 %i.n, -2
  br label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new
  %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i ] ; 3 uses
  %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i = phi float [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i ] ; 2 uses
  %niter83 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new ], [ %niter83.next.1, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i, 12
  %i.bf = getelementptr i8, ptr %i.bc, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !230 ; 2 uses
  %i.bh = fcmp olt float %i.bg, %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i
  %i.bi = select i1 %i.bh, float %i.bg, float %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i ; 2 uses
  %i.bj = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i, 12
  %i.bk = getelementptr i8, ptr %i.bc, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 12
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !230 ; 2 uses
  %i.bn = fcmp olt float %i.bm, %i.bi
  %i.bo = select i1 %i.bn, float %i.bm, float %i.bi ; 3 uses
  %i.bp = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter83.next.1 = add nuw i64 %niter83, 2       ; 2 uses
  %niter83.ncmp.1 = icmp eq i64 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i, !llvm.loop !231

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i
  %lcmp.mod79.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod79.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i
  %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i ], [ %i.bp, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.epil.init = phi float [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i ], [ %i.bo, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod81 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i.epil = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.epil.init, 12
  %i.bq = getelementptr i8, ptr %i.bc, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i.epil
  %i.br = load float, ptr %i.bq, align 4, !tbaa !230 ; 2 uses
  %i.bs = fcmp olt float %i.br, %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.epil.init
  %i.bt = select i1 %i.bs, float %i.br, float %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.epil.init
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader
  %.lcssa66 = phi float [ %i.bo, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g
  store float %.lcssa66, ptr %i.bu, align 4, !tbaa !230
  %i.bv = add nuw nsw i64 %i.g, 1                 ; 3 uses
  %exitcond8.not.i29.i.i.i.i.i.i.i.i = icmp eq i64 %i.bv, 3
  br i1 %exitcond8.not.i29.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEaSINS_16PartialReduxExprIKNS0_IfLin1ELi3ELi1ELin1ELi3EEENS_8internal15member_minCoeffIffEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.1: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bv ; 4 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !230 ; 2 uses
  %xtraiter77.1 = and i64 %i.n, 1
  %i.by = icmp eq i64 %i.o, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader.1, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.1

.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.1: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.1
  %unroll_iter82.1 = and i64 %i.n, -2
  br label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.1:    ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.1
  %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.1 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.1 ], [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.1 ] ; 3 uses
  %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.1 = phi float [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.1 ], [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.1 ] ; 2 uses
  %niter83.1 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.1 ], [ %niter83.next.1.1, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.1 ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i.184 = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.1, 12
  %i.bz = getelementptr i8, ptr %i.bw, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i.184
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !230 ; 2 uses
  %i.cb = fcmp olt float %i.ca, %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.1
  %i.cc = select i1 %i.cb, float %i.ca, float %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.1 ; 2 uses
  %i.cd = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.1, 12
  %i.ce = getelementptr i8, ptr %i.bw, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 12
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !230 ; 2 uses
  %i.ch = fcmp olt float %i.cg, %i.cc
  %i.ci = select i1 %i.ch, float %i.cg, float %i.cc ; 3 uses
  %i.cj = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.1, 2 ; 2 uses
  %niter83.next.1.1 = add nuw i64 %niter83.1, 2   ; 2 uses
  %niter83.ncmp.1.1 = icmp eq i64 %niter83.next.1.1, %unroll_iter82.1
  br i1 %niter83.ncmp.1.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.1, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.1, !llvm.loop !231

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.1: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.1
  %lcmp.mod79.1.not = icmp eq i64 %xtraiter77.1, 0
  br i1 %lcmp.mod79.1.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader.1

.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader.1: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.1
  %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.epil.init.1 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.1 ], [ %i.cj, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.1 ]
  %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.epil.init.1 = phi float [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.1 ], [ %i.ci, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.1 ] ; 2 uses
  %lcmp.mod81.1 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod81.1)
  %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i.epil.1 = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.epil.init.1, 12
  %i.ck = getelementptr i8, ptr %i.bw, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i.epil.1
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !230 ; 2 uses
  %i.cm = fcmp olt float %i.cl, %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.epil.init.1
  %i.cn = select i1 %i.cm, float %i.cl, float %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.epil.init.1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.1

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.1
  %.lcssa66.1 = phi float [ %i.ci, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.1 ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader.1 ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bv
  store float %.lcssa66.1, ptr %i.co, align 4, !tbaa !230
  %i.cp = add nuw nsw i64 %i.g, 2                 ; 3 uses
  %exitcond8.not.i29.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.cp, 3
  br i1 %exitcond8.not.i29.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEaSINS_16PartialReduxExprIKNS0_IfLin1ELi3ELi1ELin1ELi3EEENS_8internal15member_minCoeffIffEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.2: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.1
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cp ; 4 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !230 ; 2 uses
  %xtraiter77.2 = and i64 %i.n, 1
  %i.cs = icmp eq i64 %i.o, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader.2, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.2

.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.2: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.2
  %unroll_iter82.2 = and i64 %i.n, -2
  br label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.2:    ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.2
  %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.2 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.2 ], [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.2 ] ; 3 uses
  %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.2 = phi float [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.2 ], [ %i.dc, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.2 ] ; 2 uses
  %niter83.2 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.new.2 ], [ %niter83.next.1.2, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.2 ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i.2 = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.2, 12
  %i.ct = getelementptr i8, ptr %i.cq, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i.2
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !230 ; 2 uses
  %i.cv = fcmp olt float %i.cu, %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.2
  %i.cw = select i1 %i.cv, float %i.cu, float %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.2 ; 2 uses
  %i.cx = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.2, 12
  %i.cy = getelementptr i8, ptr %i.cq, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 12
  %i.da = load float, ptr %i.cz, align 4, !tbaa !230 ; 2 uses
  %i.db = fcmp olt float %i.da, %i.cw
  %i.dc = select i1 %i.db, float %i.da, float %i.cw ; 3 uses
  %i.dd = add nuw nsw i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.2, 2 ; 2 uses
  %niter83.next.1.2 = add nuw i64 %niter83.2, 2   ; 2 uses
  %niter83.ncmp.1.2 = icmp eq i64 %niter83.next.1.2, %unroll_iter82.2
  br i1 %niter83.ncmp.1.2, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.2, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.2, !llvm.loop !231

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.2: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.2
  %lcmp.mod79.2.not = icmp eq i64 %xtraiter77.2, 0
  br i1 %lcmp.mod79.2.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.2, label %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader.2

.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader.2: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.2, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.2
  %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.epil.init.2 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.2 ], [ %i.dd, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.2 ]
  %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.epil.init.2 = phi float [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i21.i.i.i.i.i.i.i.i.2 ], [ %i.dc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.2 ] ; 2 uses
  %lcmp.mod81.2 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod81.2)
  %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i.epil.2 = mul i64 %.01725.i.i.i.i.i.i.i.us.i24.i.i.i.i.i.i.i.i.epil.init.2, 12
  %i.de = getelementptr i8, ptr %i.cq, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i26.i.i.i.i.i.i.i.i.epil.2
  %i.df = load float, ptr %i.de, align 4, !tbaa !230 ; 2 uses
  %i.dg = fcmp olt float %i.df, %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.epil.init.2
  %i.dh = select i1 %i.dg, float %i.df, float %.02324.i.i.i.i.i.i.i.us.i25.i.i.i.i.i.i.i.i.epil.init.2
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.2

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader.2, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.2
  %.lcssa66.2 = phi float [ %i.dc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i28.i.i.i.i.i.i.i.i.unr-lcssa.2 ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i.us.i23.i.i.i.i.i.i.i.i.epil.preheader.2 ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cp
  store float %.lcssa66.2, ptr %i.di, align 4, !tbaa !230
  br label %_ZN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEaSINS_16PartialReduxExprIKNS0_IfLin1ELi3ELi1ELin1ELi3EEENS_8internal15member_minCoeffIffEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.thread
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.g
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !230
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g
  store float %i.dk, ptr %i.dl, align 4, !tbaa !230
  %i.dm = add nuw nsw i64 %i.g, 1                 ; 3 uses
  %exitcond.not.i20.i.i.i.i.i.i.i.i = icmp eq i64 %i.dm, 3
  br i1 %exitcond.not.i20.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEaSINS_16PartialReduxExprIKNS0_IfLin1ELi3ELi1ELin1ELi3EEENS_8internal15member_minCoeffIffEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.i.1

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.i.1: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.i
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dm
  %i.do = load float, ptr %i.dn, align 4, !tbaa !230
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dm
  store float %i.do, ptr %i.dp, align 4, !tbaa !230
  %i.dq = add nuw nsw i64 %i.g, 2                 ; 3 uses
  %exitcond.not.i20.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.dq, 3
  br i1 %exitcond.not.i20.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEaSINS_16PartialReduxExprIKNS0_IfLin1ELi3ELi1ELin1ELi3EEENS_8internal15member_minCoeffIffEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.i.2

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.i.2: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_16PartialReduxExprIKNS3_IfLin1ELi3ELi1ELin1ELi3EEENS0_15member_minCoeffIffEELi0EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i18.i.i.i.i.i.i.i.i.1
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !230
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dq
  store float %i.ds, ptr %i.dt, align 4, !tbaa !230
  br label %_ZN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEaSINS_16PartialReduxExprIKNS0_IfLin1ELi3ELi1ELin1ELi3EEENS_8internal15member_minCoeffIffEELi0EEEEERS1_RKNS_9DenseBaseIT_EE.exit
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEElRT_:bb.a
.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.bn = load <2 x double>, ptr %i.bm, align 16, !tbaa !88
  %i.bo = fdiv <2 x double> %i.bn, %i.ay
  store <2 x double> %i.bo, ptr %i.bm, align 16, !tbaa !88
  %i.bp = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.bq = icmp slt i64 %i.bp, %i.an
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !592

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %exitcond.not = icmp eq i64 %i.n, 3
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.loopexit.sink.split:                             ; preds = %bb.e, %bb.d
  %spec.select.ph = phi i64 [ %.03253, %bb.d ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit, %.loopexit.sink.split
  %spec.select = phi i64 [ %spec.select.ph, %.loopexit.sink.split ], [ -1, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit ]
  ret i64 %spec.select
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS3_INS_7ProductINS4_IS6_Lin1ELin1ELb0EEENS_9TransposeIKNS4_IS6_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi3ELi0EE3runERSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !593, !nonnull !95, !align !129 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !547  ; 10 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !543
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = and i64 %i.f, 7
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = lshr exact i64 %i.f, 3
  %i.i = and i64 %i.h, 1
  %i.j = tail call i64 @llvm.smin.i64(i64 %i.i, i64 %i.d)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.j, %bb.b ], [ %i.d, %bb.a ] ; 14 uses
  %i.k = sub nsw i64 %i.d, %.0.i                  ; 2 uses
  %i.l = sdiv i64 %i.k, 2                         ; 3 uses
  %i.m = shl nsw i64 %i.l, 1
  %i.n = add nsw i64 %i.m, %.0.i                  ; 7 uses
  %i.o = icmp sgt i64 %.0.i, 0
  br i1 %i.o, label %.lr.ph.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit

.lr.ph.i:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !595, !nonnull !95, !align !129
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !578  ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !596, !nonnull !95, !align !129 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !597, !noalias !598 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !601, !noalias !602 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !547, !noalias !602 ; 4 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.z = icmp sgt i64 %i.x, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.preheader.us.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader

.lr.ph.i.i.i.i.i.preheader.us.i.preheader:        ; preds = %.lr.ph.split.i
  %i.aa = add nsw i64 %i.x, -1                    ; 2 uses
  %i.ab = add nsw i64 %i.x, -2
  %xtraiter99 = and i64 %i.aa, 3                  ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 3
  %unroll_iter = and i64 %i.aa, -4
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  %lcmp.mod102 = icmp ne i64 %xtraiter99, 0
  br label %.lr.ph.i.i.i.i.i.preheader.us.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader: ; preds = %.lr.ph.split.i
  %min.iters.check = icmp ult i64 %.0.i, 8
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader
  %i.ad = shl i64 %.0.i, 3                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.ad ; 2 uses
  %scevgep56 = getelementptr i8, ptr %i.t, i64 %i.ad
  %scevgep57 = getelementptr i8, ptr %i.v, i64 8
  %bound0 = icmp ult ptr %i.q, %scevgep56
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound058 = icmp ult ptr %i.q, %scevgep57
  %bound159 = icmp ult ptr %i.v, %scevgep
  %found.conflict60 = and i1 %bound058, %bound159
  %conflict.rdx = or i1 %found.conflict, %found.conflict60
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i, 9223372036854775804     ; 3 uses
  %i.ae = load double, ptr %i.v, align 8, !tbaa !81, !alias.scope !605
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <2 x double>, ptr %i.af, align 8, !tbaa !81, !alias.scope !608
  %wide.load61 = load <2 x double>, ptr %i.ag, align 8, !tbaa !81, !alias.scope !608
  %i.ah = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ai = fmul <2 x double> %wide.load61, %broadcast.splat
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %wide.load62 = load <2 x double>, ptr %i.aj, align 8, !tbaa !81, !alias.scope !610, !noalias !612
  %wide.load63 = load <2 x double>, ptr %i.ak, align 8, !tbaa !81, !alias.scope !610, !noalias !612
  %i.al = fsub <2 x double> %wide.load62, %i.ah
  %i.am = fsub <2 x double> %wide.load63, %i.ai
  store <2 x double> %i.al, ptr %i.aj, align 8, !tbaa !81, !alias.scope !610, !noalias !612
  store <2 x double> %i.am, ptr %i.ak, align 8, !tbaa !81, !alias.scope !610, !noalias !612
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !613

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97: ; preds = %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader, %middle.block
  %.05.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.ph, 1
  %xtraiter = and i64 %.0.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05.i.ph
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !81
  %i.aq = load double, ptr %i.v, align 8, !tbaa !81
  %i.ar = fmul double %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.i.ph ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !81
  %i.au = fsub double %i.at, %i.ar
  store double %i.au, ptr %i.as, align 8, !tbaa !81
  %i.av = or disjoint i64 %.05.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97
  %.05.i.unr = phi i64 [ %.05.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97 ], [ %i.av, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol ]
  %i.aw = icmp eq i64 %.0.i, %.neg
  br i1 %i.aw, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i

.lr.ph.i.i.i.i.i.preheader.us.i:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i
  %.05.us6.i = phi i64 [ %i.cn, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i.preheader ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05.us6.i ; 6 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !81
  %i.az = load double, ptr %i.v, align 8, !tbaa !81
  %i.ba = fmul double %i.ay, %i.az                ; 2 uses
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.us.i.epil.preheader, label %.lr.ph.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.us.i:                            ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i, %.lr.ph.i.i.i.i.i.us.i
  %.01725.i.i.i.i.i.us.i = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i.us.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i ] ; 5 uses
  %.02324.i.i.i.i.i.us.i = phi double [ %i.cb, %.lr.ph.i.i.i.i.i.us.i ], [ %i.ba, %.lr.ph.i.i.i.i.i.preheader.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.us.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i = mul i64 %.01725.i.i.i.i.i.us.i, 24 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !81
  %i.bd = getelementptr i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i
  %i.be = load double, ptr %i.bd, align 8, !tbaa !81
  %i.bf = fmul double %i.bc, %i.be
  %i.bg = fadd double %.02324.i.i.i.i.i.us.i, %i.bf
  %i.bh = mul i64 %.01725.i.i.i.i.i.us.i, 24
  %.idx.i.i.i.i.i.i.i.i.i.us.i.1 = add i64 %i.bh, 24 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ax, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.1
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !81
  %i.bk = getelementptr i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.1
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !81
  %i.bm = fmul double %i.bj, %i.bl
  %i.bn = fadd double %i.bg, %i.bm
  %i.bo = mul i64 %.01725.i.i.i.i.i.us.i, 24
  %.idx.i.i.i.i.i.i.i.i.i.us.i.2 = add i64 %i.bo, 48 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.ax, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.2
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !81
  %i.br = getelementptr i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.2
  %i.bs = load double, ptr %i.br, align 8, !tbaa !81
  %i.bt = fmul double %i.bq, %i.bs
  %i.bu = fadd double %i.bn, %i.bt
  %i.bv = mul i64 %.01725.i.i.i.i.i.us.i, 24
  %.idx.i.i.i.i.i.i.i.i.i.us.i.3 = add i64 %i.bv, 72 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.ax, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.3
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !81
  %i.by = getelementptr i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.3
  %i.bz = load double, ptr %i.by, align 8, !tbaa !81
  %i.ca = fmul double %i.bx, %i.bz
  %i.cb = fadd double %i.bu, %i.ca                ; 3 uses
  %i.cc = add nuw nsw i64 %.01725.i.i.i.i.i.us.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.us.i, !llvm.loop !614

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.us.i
  br i1 %lcmp.mod100.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.us.i.epil.preheader

.lr.ph.i.i.i.i.i.us.i.epil.preheader:             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.us.i
  %.01725.i.i.i.i.i.us.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i ], [ %i.cc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  %.02324.i.i.i.i.i.us.i.epil.init = phi double [ %i.ba, %.lr.ph.i.i.i.i.i.preheader.us.i ], [ %i.cb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod102)
  br label %.lr.ph.i.i.i.i.i.us.i.epil

.lr.ph.i.i.i.i.i.us.i.epil:                       ; preds = %.lr.ph.i.i.i.i.i.us.i.epil, %.lr.ph.i.i.i.i.i.us.i.epil.preheader
  %.01725.i.i.i.i.i.us.i.epil = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.us.i.epil ], [ %.01725.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.i.us.i.epil = phi double [ %i.ci, %.lr.ph.i.i.i.i.i.us.i.epil ], [ %.02324.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.us.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i.epil = mul i64 %.01725.i.i.i.i.i.us.i.epil, 24 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.ax, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.epil
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !81
  %i.cf = getelementptr i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.epil
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !81
  %i.ch = fmul double %i.ce, %i.cg
  %i.ci = fadd double %.02324.i.i.i.i.i.us.i.epil, %i.ch ; 2 uses
  %i.cj = add nuw nsw i64 %.01725.i.i.i.i.i.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter99
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.us.i.epil, !llvm.loop !615

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i: ; preds = %.lr.ph.i.i.i.i.i.us.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa
  %.lcssa96 = phi double [ %i.cb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ], [ %i.ci, %.lr.ph.i.i.i.i.i.us.i.epil ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.us6.i ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !81
  %i.cm = fsub double %i.cl, %.lcssa96
  store double %i.cm, ptr %i.ck, align 8, !tbaa !81
  %i.cn = add nuw nsw i64 %.05.us6.i, 1           ; 2 uses
  %exitcond11.not.i = icmp eq i64 %i.cn, %.0.i
  br i1 %exitcond11.not.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %.lr.ph.i.i.i.i.i.preheader.us.i, !llvm.loop !616

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i
  %.05.i = phi i64 [ %i.dd, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i ], [ %.05.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit ] ; 4 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05.i
  %i.cp = load double, ptr %i.co, align 8, !tbaa !81
  %i.cq = load double, ptr %i.v, align 8, !tbaa !81
  %i.cr = fmul double %i.cp, %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.i ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !81
  %i.cu = fsub double %i.ct, %i.cr
  store double %i.cu, ptr %i.cs, align 8, !tbaa !81
  %i.cv = add nuw nsw i64 %.05.i, 1               ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !81
  %i.cy = load double, ptr %i.v, align 8, !tbaa !81
  %i.cz = fmul double %i.cx, %i.cy
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cv ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !81
  %i.dc = fsub double %i.db, %i.cz
  store double %i.dc, ptr %i.da, align 8, !tbaa !81
  %i.dd = add nuw nsw i64 %.05.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.dd, %.0.i
  br i1 %exitcond.not.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i, !llvm.loop !617

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.lr.ph.i
  %i.de = icmp sgt i64 %i.k, 1
  br i1 %i.de, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit
  %i.dg = icmp slt i64 %i.n, %i.d
  br i1 %i.dg, label %.lr.ph.i17, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31

.lr.ph.i17:                                       ; preds = %._crit_edge
  %i.dh = load ptr, ptr %0, align 8, !tbaa !595, !nonnull !95, !align !129
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !578 ; 7 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !596, !nonnull !95, !align !129 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !597, !noalias !618 ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !601, !noalias !621 ; 12 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 72
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !547, !noalias !621 ; 4 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %.lr.ph.split.i18

.lr.ph.split.i18:                                 ; preds = %.lr.ph.i17
  %i.dr = icmp sgt i64 %i.dp, 1
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i.preheader.us.i22.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader

.lr.ph.i.i.i.i.i.preheader.us.i22.preheader:      ; preds = %.lr.ph.split.i18
  %i.ds = add nsw i64 %i.dp, -1                   ; 2 uses
  %i.dt = add nsw i64 %i.dp, -2
  %xtraiter112 = and i64 %i.ds, 3                 ; 3 uses
  %i.du = icmp ult i64 %i.dt, 3
  %unroll_iter117 = and i64 %i.ds, -4
  %lcmp.mod114.not = icmp eq i64 %xtraiter112, 0
  %lcmp.mod116 = icmp ne i64 %xtraiter112, 0
  br label %.lr.ph.i.i.i.i.i.preheader.us.i22

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader: ; preds = %.lr.ph.split.i18
  %i.dv = shl nsw i64 %i.l, 1
  %i.dw = add i64 %.0.i, %i.dv
  %i.dx = sub i64 %i.d, %i.dw                     ; 3 uses
  %min.iters.check78 = icmp ult i64 %i.dx, 12
  br i1 %min.iters.check78, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader93, label %vector.memcheck64

vector.memcheck64:                                ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader
  %i.dy = shl i64 %i.l, 4
  %i.dz = shl i64 %.0.i, 3
  %i.ea = add i64 %i.dy, %i.dz                    ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.di, i64 %i.ea ; 2 uses
  %i.eb = shl i64 %i.d, 3                         ; 2 uses
  %scevgep66 = getelementptr i8, ptr %i.di, i64 %i.eb ; 2 uses
  %scevgep67 = getelementptr i8, ptr %i.dl, i64 %i.ea
  %scevgep68 = getelementptr i8, ptr %i.dl, i64 %i.eb
  %scevgep69 = getelementptr i8, ptr %i.dn, i64 8
  %bound070 = icmp ult ptr %scevgep65, %scevgep68
  %bound171 = icmp ult ptr %scevgep67, %scevgep66
  %found.conflict72 = and i1 %bound070, %bound171
  %bound073 = icmp ult ptr %scevgep65, %scevgep69
  %bound174 = icmp ult ptr %i.dn, %scevgep66
  %found.conflict75 = and i1 %bound073, %bound174
  %conflict.rdx76 = or i1 %found.conflict72, %found.conflict75
  br i1 %conflict.rdx76, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader93, label %vector.ph79

vector.ph79:                                      ; preds = %vector.memcheck64
  %n.vec80 = and i64 %i.dx, -4                    ; 3 uses
  %i.ec = add i64 %i.n, %n.vec80
  %i.ed = load double, ptr %i.dn, align 8, !tbaa !81, !alias.scope !624
  %broadcast.splatinsert85 = insertelement <2 x double> poison, double %i.ed, i64 0
  %broadcast.splat86 = shufflevector <2 x double> %broadcast.splatinsert85, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next89, %vector.body81 ] ; 2 uses
  %i.ee = add i64 %i.n, %index82                  ; 2 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load83 = load <2 x double>, ptr %i.ef, align 8, !tbaa !81, !alias.scope !627
  %wide.load84 = load <2 x double>, ptr %i.eg, align 8, !tbaa !81, !alias.scope !627
  %i.eh = fmul <2 x double> %wide.load83, %broadcast.splat86
  %i.ei = fmul <2 x double> %wide.load84, %broadcast.splat86
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.ee ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %wide.load87 = load <2 x double>, ptr %i.ej, align 8, !tbaa !81, !alias.scope !629, !noalias !631
  %wide.load88 = load <2 x double>, ptr %i.ek, align 8, !tbaa !81, !alias.scope !629, !noalias !631
  %i.el = fsub <2 x double> %wide.load87, %i.eh
  %i.em = fsub <2 x double> %wide.load88, %i.ei
  store <2 x double> %i.el, ptr %i.ej, align 8, !tbaa !81, !alias.scope !629, !noalias !631
  store <2 x double> %i.em, ptr %i.ek, align 8, !tbaa !81, !alias.scope !629, !noalias !631
  %index.next89 = add nuw i64 %index82, 4         ; 2 uses
  %i.en = icmp eq i64 %index.next89, %n.vec80
  br i1 %i.en, label %middle.block90, label %vector.body81, !llvm.loop !632

middle.block90:                                   ; preds = %vector.body81
  %cmp.n91 = icmp eq i64 %i.dx, %n.vec80
  br i1 %cmp.n91, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader93

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader93: ; preds = %vector.memcheck64, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader, %middle.block90
  %.05.i20.ph = phi i64 [ %i.n, %vector.memcheck64 ], [ %i.n, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader ], [ %i.ec, %middle.block90 ] ; 6 uses
  %i.eo = sub i64 %i.d, %.05.i20.ph
  %.neg119 = add i64 %.05.i20.ph, 1
  %xtraiter110 = and i64 %i.eo, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader93
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.05.i20.ph
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !81
  %i.er = load double, ptr %i.dn, align 8, !tbaa !81
  %i.es = fmul double %i.eq, %i.er
  %i.et = getelementptr inbounds [8 x i8], ptr %i.di, i64 %.05.i20.ph ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !81
  %i.ev = fsub double %i.eu, %i.es
  store double %i.ev, ptr %i.et, align 8, !tbaa !81
  %i.ew = add nsw i64 %.05.i20.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader93
  %.05.i20.unr = phi i64 [ %.05.i20.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader93 ], [ %i.ew, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol ]
  %i.ex = icmp eq i64 %i.d, %.neg119
  br i1 %i.ex, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19

.lr.ph.i.i.i.i.i.preheader.us.i22:                ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i22.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29
  %.05.us6.i23 = phi i64 [ %i.go, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29 ], [ %i.n, %.lr.ph.i.i.i.i.i.preheader.us.i22.preheader ] ; 3 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.05.us6.i23 ; 6 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !81
  %i.fa = load double, ptr %i.dn, align 8, !tbaa !81
  %i.fb = fmul double %i.ez, %i.fa                ; 2 uses
  br i1 %i.du, label %.lr.ph.i.i.i.i.i.us.i24.epil.preheader, label %.lr.ph.i.i.i.i.i.us.i24

.lr.ph.i.i.i.i.i.us.i24:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i22, %.lr.ph.i.i.i.i.i.us.i24
  %.01725.i.i.i.i.i.us.i25 = phi i64 [ %i.gd, %.lr.ph.i.i.i.i.i.us.i24 ], [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i22 ] ; 5 uses
  %.02324.i.i.i.i.i.us.i26 = phi double [ %i.gc, %.lr.ph.i.i.i.i.i.us.i24 ], [ %i.fb, %.lr.ph.i.i.i.i.i.preheader.us.i22 ]
  %niter118 = phi i64 [ %niter118.next.3, %.lr.ph.i.i.i.i.i.us.i24 ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i22 ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i27 = mul i64 %.01725.i.i.i.i.i.us.i25, 24 ; 2 uses
  %i.fc = getelementptr i8, ptr %i.ey, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !81
  %i.fe = getelementptr i8, ptr %i.dn, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !81
  %i.fg = fmul double %i.fd, %i.ff
  %i.fh = fadd double %.02324.i.i.i.i.i.us.i26, %i.fg
  %i.fi = mul i64 %.01725.i.i.i.i.i.us.i25, 24
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.1 = add i64 %i.fi, 24 ; 2 uses
  %i.fj = getelementptr i8, ptr %i.ey, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.1
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !81
  %i.fl = getelementptr i8, ptr %i.dn, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.1
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !81
  %i.fn = fmul double %i.fk, %i.fm
  %i.fo = fadd double %i.fh, %i.fn
  %i.fp = mul i64 %.01725.i.i.i.i.i.us.i25, 24
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.2 = add i64 %i.fp, 48 ; 2 uses
  %i.fq = getelementptr i8, ptr %i.ey, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.2
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !81
  %i.fs = getelementptr i8, ptr %i.dn, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.2
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !81
  %i.fu = fmul double %i.fr, %i.ft
  %i.fv = fadd double %i.fo, %i.fu
  %i.fw = mul i64 %.01725.i.i.i.i.i.us.i25, 24
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.3 = add i64 %i.fw, 72 ; 2 uses
  %i.fx = getelementptr i8, ptr %i.ey, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.3
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !81
  %i.fz = getelementptr i8, ptr %i.dn, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.3
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !81
  %i.gb = fmul double %i.fy, %i.ga
  %i.gc = fadd double %i.fv, %i.gb                ; 3 uses
  %i.gd = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25, 4 ; 2 uses
  %niter118.next.3 = add i64 %niter118, 4         ; 2 uses
  %niter118.ncmp.3 = icmp eq i64 %niter118.next.3, %unroll_iter117
  br i1 %niter118.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, label %.lr.ph.i.i.i.i.i.us.i24, !llvm.loop !614

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.us.i24
  br i1 %lcmp.mod114.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil.preheader

.lr.ph.i.i.i.i.i.us.i24.epil.preheader:           ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.us.i22
  %.01725.i.i.i.i.i.us.i25.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.gd, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  %.02324.i.i.i.i.i.us.i26.epil.init = phi double [ %i.fb, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.gc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %.lr.ph.i.i.i.i.i.us.i24.epil

.lr.ph.i.i.i.i.i.us.i24.epil:                     ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader
  %.01725.i.i.i.i.i.us.i25.epil = phi i64 [ %i.gk, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.01725.i.i.i.i.i.us.i25.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.i.us.i26.epil = phi double [ %i.gj, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.02324.i.i.i.i.i.us.i26.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %epil.iter113 = phi i64 [ %epil.iter113.next, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ 0, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil = mul i64 %.01725.i.i.i.i.i.us.i25.epil, 24 ; 2 uses
  %i.ge = getelementptr i8, ptr %i.ey, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !81
  %i.gg = getelementptr i8, ptr %i.dn, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !81
  %i.gi = fmul double %i.gf, %i.gh
  %i.gj = fadd double %.02324.i.i.i.i.i.us.i26.epil, %i.gi ; 2 uses
  %i.gk = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25.epil, 1
  %epil.iter113.next = add i64 %epil.iter113, 1   ; 2 uses
  %epil.iter113.cmp.not = icmp eq i64 %epil.iter113.next, %xtraiter112
  br i1 %epil.iter113.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil, !llvm.loop !633

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29: ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa
  %.lcssa = phi double [ %i.gc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ], [ %i.gj, %.lr.ph.i.i.i.i.i.us.i24.epil ]
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.di, i64 %.05.us6.i23 ; 2 uses
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !81
  %i.gn = fsub double %i.gm, %.lcssa
  store double %i.gn, ptr %i.gl, align 8, !tbaa !81
  %i.go = add nsw i64 %.05.us6.i23, 1             ; 2 uses
  %exitcond11.not.i30 = icmp eq i64 %i.go, %i.d
  br i1 %exitcond11.not.i30, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %.lr.ph.i.i.i.i.i.preheader.us.i22, !llvm.loop !616

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19
  %.05.i20 = phi i64 [ %i.he, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19 ], [ %.05.i20.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit ] ; 4 uses
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.05.i20
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !81
  %i.gr = load double, ptr %i.dn, align 8, !tbaa !81
  %i.gs = fmul double %i.gq, %i.gr
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.di, i64 %.05.i20 ; 2 uses
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !81
  %i.gv = fsub double %i.gu, %i.gs
  store double %i.gv, ptr %i.gt, align 8, !tbaa !81
  %i.gw = add nsw i64 %.05.i20, 1                 ; 2 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.gw
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !81
  %i.gz = load double, ptr %i.dn, align 8, !tbaa !81
  %i.ha = fmul double %i.gy, %i.gz
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.gw ; 2 uses
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !81
  %i.hd = fsub double %i.hc, %i.ha
  store double %i.hd, ptr %i.hb, align 8, !tbaa !81
  %i.he = add nsw i64 %.05.i20, 2                 ; 2 uses
  %exitcond.not.i21.1 = icmp eq i64 %i.he, %i.d
  br i1 %exitcond.not.i21.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19, !llvm.loop !634

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, %middle.block90, %._crit_edge, %.lr.ph.i17
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit
  %.036 = phi i64 [ %.0.i, %.lr.ph ], [ %i.is, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit ] ; 3 uses
  %i.hf = load ptr, ptr %0, align 8, !tbaa !595, !nonnull !95, !align !129
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !578
  %i.hh = load ptr, ptr %i.df, align 8, !tbaa !596, !nonnull !95, !align !129 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 144
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !558 ; 5 uses
  %i.hk = icmp sgt i64 %i.hj, 0
  br i1 %i.hk, label %.lr.ph.i.preheader.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.c
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 128
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 112
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !553
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %.036 ; 3 uses
  %i.hp = load ptr, ptr %i.hl, align 8, !tbaa !556 ; 3 uses
  %xtraiter103 = and i64 %i.hj, 1
  %i.hq = icmp eq i64 %i.hj, 1
  br i1 %i.hq, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.preheader.i.i.i.new

.lr.ph.i.preheader.i.i.i.new:                     ; preds = %.lr.ph.i.preheader.i.i.i
  %unroll_iter108 = and i64 %i.hj, 9223372036854775806
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i.new
  %i.hr = phi <2 x double> [ zeroinitializer, %.lr.ph.i.preheader.i.i.i.new ], [ %i.ig, %.lr.ph.i.i.i.i ]
  %.013.i.i.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %i.ih, %.lr.ph.i.i.i.i ] ; 3 uses
  %niter109 = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %niter109.next.1, %.lr.ph.i.i.i.i ]
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.013.i.i.i.i, 24 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.idx.i.i.i.i.i
  %i.ht = load <2 x double>, ptr %i.hs, align 1, !tbaa !88
  %gep.i.i.i = getelementptr i8, ptr %i.hp, i64 %.idx.i.i.i.i.i
  %i.hu = load double, ptr %gep.i.i.i, align 8, !tbaa !81
  %i.hv = insertelement <2 x double> poison, double %i.hu, i64 0
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hx = fmul <2 x double> %i.ht, %i.hw
  %i.hy = fadd <2 x double> %i.hr, %i.hx
  %i.hz = mul nuw i64 %.013.i.i.i.i, 24
  %.idx.i.i.i.i.i.1 = add nuw i64 %i.hz, 24       ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.idx.i.i.i.i.i.1
  %i.ib = load <2 x double>, ptr %i.ia, align 1, !tbaa !88
  %gep.i.i.i.1 = getelementptr i8, ptr %i.hp, i64 %.idx.i.i.i.i.i.1
  %i.ic = load double, ptr %gep.i.i.i.1, align 8, !tbaa !81
  %i.id = insertelement <2 x double> poison, double %i.ic, i64 0
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = fmul <2 x double> %i.ib, %i.ie
  %i.ig = fadd <2 x double> %i.hy, %i.if          ; 3 uses
  %i.ih = add nuw nsw i64 %.013.i.i.i.i, 2        ; 2 uses
  %niter109.next.1 = add nuw nsw i64 %niter109, 2 ; 2 uses
  %niter109.ncmp.1 = icmp eq i64 %niter109.next.1, %unroll_iter108
  br i1 %niter109.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !635

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod105.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod105.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader.i.i.i
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.i.preheader.i.i.i ], [ %i.ig, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ]
  %.013.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i ], [ %i.ih, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ]
  %lcmp.mod107 = trunc i64 %i.hj to i1
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %.idx.i.i.i.i.i.epil = mul nuw nsw i64 %.013.i.i.i.i.epil.init, 24 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.idx.i.i.i.i.i.epil
  %i.ij = load <2 x double>, ptr %i.ii, align 1, !tbaa !88
  %gep.i.i.i.epil = getelementptr i8, ptr %i.hp, i64 %.idx.i.i.i.i.i.epil
  %i.ik = load double, ptr %gep.i.i.i.epil, align 8, !tbaa !81
  %i.il = insertelement <2 x double> poison, double %i.ik, i64 0
  %i.im = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> zeroinitializer
  %i.in = fmul <2 x double> %i.ij, %i.im
  %i.io = fadd <2 x double> %.epil.init, %i.in
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit: ; preds = %.lr.ph.i.i.i.i.epil.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, %bb.c
  %.0.i.i.i = phi <2 x double> [ zeroinitializer, %bb.c ], [ %i.ig, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ], [ %i.io, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.hg, i64 %.036 ; 2 uses
  %i.iq = load <2 x double>, ptr %i.ip, align 16, !tbaa !88
  %i.ir = fsub <2 x double> %i.iq, %.0.i.i.i
  store <2 x double> %i.ir, ptr %i.ip, align 16, !tbaa !88
  %i.is = add nsw i64 %.036, 2                    ; 2 uses
  %i.it = icmp slt i64 %i.is, %i.n
  br i1 %i.it, label %bb.c, label %._crit_edge, !llvm.loop !636
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_14DualContouringIdE21dual_vertex_positionsEvEUllE_EEbT_RKT0_mEUlmE_ZNS6_IlS9_EEbSA_SD_mEUllmE_SE_EEbSA_SD_RKT1_RKT2_mEUlllmE_RlSP_RmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !326  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !323    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !331
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_14DualContouringIdE21dual_vertex_positionsEvEUllE_EEbT_RKT0_mEUlmE_ZNS5_IlS8_EEbS9_SC_mEUllmE_SD_EEbS9_SC_RKT1_RKT2_mEUlllmE_llmEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !99
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !136
  store i64 %i.t, ptr %i.s, align 8, !tbaa !333
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %4, align 8, !tbaa !136
  store i64 %i.v, ptr %i.u, align 8, !tbaa !523
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load i64, ptr %3, align 8, !tbaa !136
  store i64 %i.x, ptr %i.w, align 8, !tbaa !525
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load i64, ptr %2, align 8, !tbaa !17
  store i64 %i.z, ptr %i.y, align 8, !tbaa !17
  store ptr %i.r, ptr %6, align 8, !tbaa !339
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal11llt_inplaceIfLi1EE9unblockedINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEEElRT_:bb.a
  %.021.i.i.i.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.bo = load <4 x float>, ptr %i.bn, align 16, !tbaa !88
  %i.bp = fdiv <4 x float> %i.bo, %i.az
  store <4 x float> %i.bp, ptr %i.bn, align 16, !tbaa !88
  %i.bq = add nsw i64 %.021.i.i.i.i.i.i, 4        ; 2 uses
  %i.br = icmp slt i64 %i.bq, %i.ao
  br i1 %i.br, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1104

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKf.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %exitcond.not = icmp eq i64 %i.n, 3
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.loopexit.sink.split:                             ; preds = %bb.e, %bb.d
  %spec.select.ph = phi i64 [ %.03253, %bb.d ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKf.exit, %.loopexit.sink.split
  %spec.select = phi i64 [ %spec.select.ph, %.loopexit.sink.split ], [ -1, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKf.exit ]
  ret i64 %spec.select
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS3_INS_7ProductINS4_IS6_Lin1ELin1ELb0EEENS_9TransposeIKNS4_IS6_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEELi3ELi0EE3runERSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1105, !nonnull !95, !align !129 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !547  ; 10 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1059
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = and i64 %i.f, 3
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = lshr exact i64 %i.f, 2
  %i.i = sub nsw i64 0, %i.h
  %i.j = and i64 %i.i, 3
  %i.k = tail call i64 @llvm.smin.i64(i64 %i.j, i64 %i.d)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.k, %bb.b ], [ %i.d, %bb.a ] ; 14 uses
  %i.l = sub nsw i64 %i.d, %.0.i                  ; 2 uses
  %i.m = sdiv i64 %i.l, 4                         ; 3 uses
  %i.n = shl nsw i64 %i.m, 2
  %i.o = add nsw i64 %i.n, %.0.i                  ; 7 uses
  %i.p = icmp sgt i64 %.0.i, 0
  br i1 %i.p, label %.lr.ph.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit

.lr.ph.i:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit
  %i.q = load ptr, ptr %0, align 8, !tbaa !1107, !nonnull !95, !align !129
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1090 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1108, !nonnull !95, !align !129 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1109, !noalias !1110 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1113, !noalias !1114 ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.y = load i64, ptr %i.x, align 8, !tbaa !547, !noalias !1114 ; 4 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.aa = icmp sgt i64 %i.y, 1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.preheader.us.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader

.lr.ph.i.i.i.i.i.preheader.us.i.preheader:        ; preds = %.lr.ph.split.i
  %i.ab = add nsw i64 %i.y, -1                    ; 2 uses
  %i.ac = add nsw i64 %i.y, -2
  %xtraiter99 = and i64 %i.ab, 3                  ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 3
  %unroll_iter = and i64 %i.ab, -4
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  %lcmp.mod102 = icmp ne i64 %xtraiter99, 0
  br label %.lr.ph.i.i.i.i.i.preheader.us.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader: ; preds = %.lr.ph.split.i
  %min.iters.check = icmp ult i64 %.0.i, 8
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader97, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader
  %i.ae = shl i64 %.0.i, 2                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ae ; 2 uses
  %scevgep56 = getelementptr i8, ptr %i.u, i64 %i.ae
  %scevgep57 = getelementptr i8, ptr %i.w, i64 4
  %bound0 = icmp ult ptr %i.r, %scevgep56
  %bound1 = icmp ult ptr %i.u, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound058 = icmp ult ptr %i.r, %scevgep57
  %bound159 = icmp ult ptr %i.w, %scevgep
  %found.conflict60 = and i1 %bound058, %bound159
  %conflict.rdx = or i1 %found.conflict, %found.conflict60
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader97, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i, 9223372036854775800     ; 3 uses
  %i.af = load float, ptr %i.w, align 4, !tbaa !230, !alias.scope !1117
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.af, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <4 x float>, ptr %i.ag, align 4, !tbaa !230, !alias.scope !1120
  %wide.load61 = load <4 x float>, ptr %i.ah, align 4, !tbaa !230, !alias.scope !1120
  %i.ai = fmul <4 x float> %wide.load, %broadcast.splat
  %i.aj = fmul <4 x float> %wide.load61, %broadcast.splat
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %wide.load62 = load <4 x float>, ptr %i.ak, align 4, !tbaa !230, !alias.scope !1122, !noalias !1124
  %wide.load63 = load <4 x float>, ptr %i.al, align 4, !tbaa !230, !alias.scope !1122, !noalias !1124
  %i.am = fsub <4 x float> %wide.load62, %i.ai
  %i.an = fsub <4 x float> %wide.load63, %i.aj
  store <4 x float> %i.am, ptr %i.ak, align 4, !tbaa !230, !alias.scope !1122, !noalias !1124
  store <4 x float> %i.an, ptr %i.al, align 4, !tbaa !230, !alias.scope !1122, !noalias !1124
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader97

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader97: ; preds = %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader, %middle.block
  %.05.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.ph, 1
  %xtraiter = and i64 %.0.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader97
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.05.i.ph
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !230
  %i.ar = load float, ptr %i.w, align 4, !tbaa !230
  %i.as = fmul float %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.05.i.ph ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !230
  %i.av = fsub float %i.au, %i.as
  store float %i.av, ptr %i.at, align 4, !tbaa !230
  %i.aw = or disjoint i64 %.05.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader97
  %.05.i.unr = phi i64 [ %.05.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader97 ], [ %i.aw, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.prol ]
  %i.ax = icmp eq i64 %.0.i, %.neg
  br i1 %i.ax, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i

.lr.ph.i.i.i.i.i.preheader.us.i:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i
  %.05.us6.i = phi i64 [ %i.co, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i.preheader ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.05.us6.i ; 6 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !230
  %i.ba = load float, ptr %i.w, align 4, !tbaa !230
  %i.bb = fmul float %i.az, %i.ba                 ; 2 uses
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.us.i.epil.preheader, label %.lr.ph.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.us.i:                            ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i, %.lr.ph.i.i.i.i.i.us.i
  %.01725.i.i.i.i.i.us.i = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.us.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i ] ; 5 uses
  %.02324.i.i.i.i.i.us.i = phi float [ %i.cc, %.lr.ph.i.i.i.i.i.us.i ], [ %i.bb, %.lr.ph.i.i.i.i.i.preheader.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.us.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i = mul i64 %.01725.i.i.i.i.i.us.i, 12 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ay, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !230
  %i.be = getelementptr i8, ptr %i.w, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i
  %i.bf = load float, ptr %i.be, align 4, !tbaa !230
  %i.bg = fmul float %i.bd, %i.bf
  %i.bh = fadd float %.02324.i.i.i.i.i.us.i, %i.bg
  %i.bi = mul i64 %.01725.i.i.i.i.i.us.i, 12
  %.idx.i.i.i.i.i.i.i.i.i.us.i.1 = add i64 %i.bi, 12 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ay, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.1
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !230
  %i.bl = getelementptr i8, ptr %i.w, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.1
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !230
  %i.bn = fmul float %i.bk, %i.bm
  %i.bo = fadd float %i.bh, %i.bn
  %i.bp = mul i64 %.01725.i.i.i.i.i.us.i, 12
  %.idx.i.i.i.i.i.i.i.i.i.us.i.2 = add i64 %i.bp, 24 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.ay, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.2
  %i.br = load float, ptr %i.bq, align 4, !tbaa !230
  %i.bs = getelementptr i8, ptr %i.w, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.2
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !230
  %i.bu = fmul float %i.br, %i.bt
  %i.bv = fadd float %i.bo, %i.bu
  %i.bw = mul i64 %.01725.i.i.i.i.i.us.i, 12
  %.idx.i.i.i.i.i.i.i.i.i.us.i.3 = add i64 %i.bw, 36 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.ay, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.3
  %i.by = load float, ptr %i.bx, align 4, !tbaa !230
  %i.bz = getelementptr i8, ptr %i.w, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.3
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !230
  %i.cb = fmul float %i.by, %i.ca
  %i.cc = fadd float %i.bv, %i.cb                 ; 3 uses
  %i.cd = add nuw nsw i64 %.01725.i.i.i.i.i.us.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.us.i, !llvm.loop !1126

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.us.i
  br i1 %lcmp.mod100.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.us.i.epil.preheader

.lr.ph.i.i.i.i.i.us.i.epil.preheader:             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.us.i
  %.01725.i.i.i.i.i.us.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i ], [ %i.cd, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  %.02324.i.i.i.i.i.us.i.epil.init = phi float [ %i.bb, %.lr.ph.i.i.i.i.i.preheader.us.i ], [ %i.cc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod102)
  br label %.lr.ph.i.i.i.i.i.us.i.epil

.lr.ph.i.i.i.i.i.us.i.epil:                       ; preds = %.lr.ph.i.i.i.i.i.us.i.epil, %.lr.ph.i.i.i.i.i.us.i.epil.preheader
  %.01725.i.i.i.i.i.us.i.epil = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.i.us.i.epil ], [ %.01725.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.i.us.i.epil = phi float [ %i.cj, %.lr.ph.i.i.i.i.i.us.i.epil ], [ %.02324.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.us.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i.epil = mul i64 %.01725.i.i.i.i.i.us.i.epil, 12 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.ay, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.epil
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !230
  %i.cg = getelementptr i8, ptr %i.w, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.epil
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !230
  %i.ci = fmul float %i.cf, %i.ch
  %i.cj = fadd float %.02324.i.i.i.i.i.us.i.epil, %i.ci ; 2 uses
  %i.ck = add nuw nsw i64 %.01725.i.i.i.i.i.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter99
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.us.i.epil, !llvm.loop !1127

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i: ; preds = %.lr.ph.i.i.i.i.i.us.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa
  %.lcssa96 = phi float [ %i.cc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ], [ %i.cj, %.lr.ph.i.i.i.i.i.us.i.epil ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.05.us6.i ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !230
  %i.cn = fsub float %i.cm, %.lcssa96
  store float %i.cn, ptr %i.cl, align 4, !tbaa !230
  %i.co = add nuw nsw i64 %.05.us6.i, 1           ; 2 uses
  %exitcond11.not.i = icmp eq i64 %i.co, %.0.i
  br i1 %exitcond11.not.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit, label %.lr.ph.i.i.i.i.i.preheader.us.i, !llvm.loop !1128

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i
  %.05.i = phi i64 [ %i.de, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i ], [ %.05.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.prol.loopexit ] ; 4 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.05.i
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !230
  %i.cr = load float, ptr %i.w, align 4, !tbaa !230
  %i.cs = fmul float %i.cq, %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.05.i ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !230
  %i.cv = fsub float %i.cu, %i.cs
  store float %i.cv, ptr %i.ct, align 4, !tbaa !230
  %i.cw = add nuw nsw i64 %.05.i, 1               ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !230
  %i.cz = load float, ptr %i.w, align 4, !tbaa !230
  %i.da = fmul float %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cw ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !230
  %i.dd = fsub float %i.dc, %i.da
  store float %i.dd, ptr %i.db, align 4, !tbaa !230
  %i.de = add nuw nsw i64 %.05.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.de, %.0.i
  br i1 %exitcond.not.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i, !llvm.loop !1129

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit, %.lr.ph.i
  %i.df = icmp sgt i64 %i.l, 3
  br i1 %i.df, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit
  %i.dh = icmp slt i64 %i.o, %i.d
  br i1 %i.dh, label %.lr.ph.i17, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit31

.lr.ph.i17:                                       ; preds = %._crit_edge
  %i.di = load ptr, ptr %0, align 8, !tbaa !1107, !nonnull !95, !align !129
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1090 ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1108, !nonnull !95, !align !129 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !1109, !noalias !1130 ; 7 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1113, !noalias !1133 ; 12 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !547, !noalias !1133 ; 4 uses
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit31, label %.lr.ph.split.i18

.lr.ph.split.i18:                                 ; preds = %.lr.ph.i17
  %i.ds = icmp sgt i64 %i.dq, 1
  br i1 %i.ds, label %.lr.ph.i.i.i.i.i.preheader.us.i22.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader

.lr.ph.i.i.i.i.i.preheader.us.i22.preheader:      ; preds = %.lr.ph.split.i18
  %i.dt = add nsw i64 %i.dq, -1                   ; 2 uses
  %i.du = add nsw i64 %i.dq, -2
  %xtraiter112 = and i64 %i.dt, 3                 ; 3 uses
  %i.dv = icmp ult i64 %i.du, 3
  %unroll_iter117 = and i64 %i.dt, -4
  %lcmp.mod114.not = icmp eq i64 %xtraiter112, 0
  %lcmp.mod116 = icmp ne i64 %xtraiter112, 0
  br label %.lr.ph.i.i.i.i.i.preheader.us.i22

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader: ; preds = %.lr.ph.split.i18
  %i.dw = shl nsw i64 %i.m, 2
  %i.dx = add i64 %.0.i, %i.dw
  %i.dy = sub i64 %i.d, %i.dx                     ; 3 uses
  %min.iters.check78 = icmp ult i64 %i.dy, 12
  br i1 %min.iters.check78, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader93, label %vector.memcheck64

vector.memcheck64:                                ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader
  %i.dz = shl i64 %i.m, 4
  %i.ea = shl i64 %.0.i, 2
  %i.eb = add i64 %i.dz, %i.ea                    ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.dj, i64 %i.eb ; 2 uses
  %i.ec = shl i64 %i.d, 2                         ; 2 uses
  %scevgep66 = getelementptr i8, ptr %i.dj, i64 %i.ec ; 2 uses
  %scevgep67 = getelementptr i8, ptr %i.dm, i64 %i.eb
  %scevgep68 = getelementptr i8, ptr %i.dm, i64 %i.ec
  %scevgep69 = getelementptr i8, ptr %i.do, i64 4
  %bound070 = icmp ult ptr %scevgep65, %scevgep68
  %bound171 = icmp ult ptr %scevgep67, %scevgep66
  %found.conflict72 = and i1 %bound070, %bound171
  %bound073 = icmp ult ptr %scevgep65, %scevgep69
  %bound174 = icmp ult ptr %i.do, %scevgep66
  %found.conflict75 = and i1 %bound073, %bound174
  %conflict.rdx76 = or i1 %found.conflict72, %found.conflict75
  br i1 %conflict.rdx76, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader93, label %vector.ph79

vector.ph79:                                      ; preds = %vector.memcheck64
  %n.vec80 = and i64 %i.dy, -8                    ; 3 uses
  %i.ed = add i64 %i.o, %n.vec80
  %i.ee = load float, ptr %i.do, align 4, !tbaa !230, !alias.scope !1136
  %broadcast.splatinsert85 = insertelement <4 x float> poison, float %i.ee, i64 0
  %broadcast.splat86 = shufflevector <4 x float> %broadcast.splatinsert85, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next89, %vector.body81 ] ; 2 uses
  %i.ef = add i64 %i.o, %index82                  ; 2 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %wide.load83 = load <4 x float>, ptr %i.eg, align 4, !tbaa !230, !alias.scope !1139
  %wide.load84 = load <4 x float>, ptr %i.eh, align 4, !tbaa !230, !alias.scope !1139
  %i.ei = fmul <4 x float> %wide.load83, %broadcast.splat86
  %i.ej = fmul <4 x float> %wide.load84, %broadcast.splat86
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.ef ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %wide.load87 = load <4 x float>, ptr %i.ek, align 4, !tbaa !230, !alias.scope !1141, !noalias !1143
  %wide.load88 = load <4 x float>, ptr %i.el, align 4, !tbaa !230, !alias.scope !1141, !noalias !1143
  %i.em = fsub <4 x float> %wide.load87, %i.ei
  %i.en = fsub <4 x float> %wide.load88, %i.ej
  store <4 x float> %i.em, ptr %i.ek, align 4, !tbaa !230, !alias.scope !1141, !noalias !1143
  store <4 x float> %i.en, ptr %i.el, align 4, !tbaa !230, !alias.scope !1141, !noalias !1143
  %index.next89 = add nuw i64 %index82, 8         ; 2 uses
  %i.eo = icmp eq i64 %index.next89, %n.vec80
  br i1 %i.eo, label %middle.block90, label %vector.body81, !llvm.loop !1144

middle.block90:                                   ; preds = %vector.body81
  %cmp.n91 = icmp eq i64 %i.dy, %n.vec80
  br i1 %cmp.n91, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit31, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader93

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader93: ; preds = %vector.memcheck64, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader, %middle.block90
  %.05.i20.ph = phi i64 [ %i.o, %vector.memcheck64 ], [ %i.o, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader ], [ %i.ed, %middle.block90 ] ; 6 uses
  %i.ep = sub i64 %i.d, %.05.i20.ph
  %.neg119 = add i64 %.05.i20.ph, 1
  %xtraiter110 = and i64 %i.ep, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader93
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %.05.i20.ph
  %i.er = load float, ptr %i.eq, align 4, !tbaa !230
  %i.es = load float, ptr %i.do, align 4, !tbaa !230
  %i.et = fmul float %i.er, %i.es
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %.05.i20.ph ; 2 uses
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !230
  %i.ew = fsub float %i.ev, %i.et
  store float %i.ew, ptr %i.eu, align 4, !tbaa !230
  %i.ex = add nsw i64 %.05.i20.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader93
  %.05.i20.unr = phi i64 [ %.05.i20.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader93 ], [ %i.ex, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol ]
  %i.ey = icmp eq i64 %i.d, %.neg119
  br i1 %i.ey, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit31, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19

.lr.ph.i.i.i.i.i.preheader.us.i22:                ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i22.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29
  %.05.us6.i23 = phi i64 [ %i.gp, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29 ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader.us.i22.preheader ] ; 3 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %.05.us6.i23 ; 6 uses
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !230
  %i.fb = load float, ptr %i.do, align 4, !tbaa !230
  %i.fc = fmul float %i.fa, %i.fb                 ; 2 uses
  br i1 %i.dv, label %.lr.ph.i.i.i.i.i.us.i24.epil.preheader, label %.lr.ph.i.i.i.i.i.us.i24

.lr.ph.i.i.i.i.i.us.i24:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i22, %.lr.ph.i.i.i.i.i.us.i24
  %.01725.i.i.i.i.i.us.i25 = phi i64 [ %i.ge, %.lr.ph.i.i.i.i.i.us.i24 ], [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i22 ] ; 5 uses
  %.02324.i.i.i.i.i.us.i26 = phi float [ %i.gd, %.lr.ph.i.i.i.i.i.us.i24 ], [ %i.fc, %.lr.ph.i.i.i.i.i.preheader.us.i22 ]
  %niter118 = phi i64 [ %niter118.next.3, %.lr.ph.i.i.i.i.i.us.i24 ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i22 ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i27 = mul i64 %.01725.i.i.i.i.i.us.i25, 12 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.ez, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !230
  %i.ff = getelementptr i8, ptr %i.do, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !230
  %i.fh = fmul float %i.fe, %i.fg
  %i.fi = fadd float %.02324.i.i.i.i.i.us.i26, %i.fh
  %i.fj = mul i64 %.01725.i.i.i.i.i.us.i25, 12
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.1 = add i64 %i.fj, 12 ; 2 uses
  %i.fk = getelementptr i8, ptr %i.ez, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.1
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !230
  %i.fm = getelementptr i8, ptr %i.do, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.1
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !230
  %i.fo = fmul float %i.fl, %i.fn
  %i.fp = fadd float %i.fi, %i.fo
  %i.fq = mul i64 %.01725.i.i.i.i.i.us.i25, 12
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.2 = add i64 %i.fq, 24 ; 2 uses
  %i.fr = getelementptr i8, ptr %i.ez, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.2
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !230
  %i.ft = getelementptr i8, ptr %i.do, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.2
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !230
  %i.fv = fmul float %i.fs, %i.fu
  %i.fw = fadd float %i.fp, %i.fv
  %i.fx = mul i64 %.01725.i.i.i.i.i.us.i25, 12
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.3 = add i64 %i.fx, 36 ; 2 uses
  %i.fy = getelementptr i8, ptr %i.ez, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.3
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !230
  %i.ga = getelementptr i8, ptr %i.do, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.3
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !230
  %i.gc = fmul float %i.fz, %i.gb
  %i.gd = fadd float %i.fw, %i.gc                 ; 3 uses
  %i.ge = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25, 4 ; 2 uses
  %niter118.next.3 = add i64 %niter118, 4         ; 2 uses
  %niter118.ncmp.3 = icmp eq i64 %niter118.next.3, %unroll_iter117
  br i1 %niter118.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, label %.lr.ph.i.i.i.i.i.us.i24, !llvm.loop !1126

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.us.i24
  br i1 %lcmp.mod114.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil.preheader

.lr.ph.i.i.i.i.i.us.i24.epil.preheader:           ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.us.i22
  %.01725.i.i.i.i.i.us.i25.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.ge, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  %.02324.i.i.i.i.i.us.i26.epil.init = phi float [ %i.fc, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.gd, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %.lr.ph.i.i.i.i.i.us.i24.epil

.lr.ph.i.i.i.i.i.us.i24.epil:                     ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader
  %.01725.i.i.i.i.i.us.i25.epil = phi i64 [ %i.gl, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.01725.i.i.i.i.i.us.i25.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.i.us.i26.epil = phi float [ %i.gk, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.02324.i.i.i.i.i.us.i26.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %epil.iter113 = phi i64 [ %epil.iter113.next, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ 0, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil = mul i64 %.01725.i.i.i.i.i.us.i25.epil, 12 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ez, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !230
  %i.gh = getelementptr i8, ptr %i.do, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !230
  %i.gj = fmul float %i.gg, %i.gi
  %i.gk = fadd float %.02324.i.i.i.i.i.us.i26.epil, %i.gj ; 2 uses
  %i.gl = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25.epil, 1
  %epil.iter113.next = add i64 %epil.iter113, 1   ; 2 uses
  %epil.iter113.cmp.not = icmp eq i64 %epil.iter113.next, %xtraiter112
  br i1 %epil.iter113.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil, !llvm.loop !1145

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29: ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa
  %.lcssa = phi float [ %i.gd, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ], [ %i.gk, %.lr.ph.i.i.i.i.i.us.i24.epil ]
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %.05.us6.i23 ; 2 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !230
  %i.go = fsub float %i.gn, %.lcssa
  store float %i.go, ptr %i.gm, align 4, !tbaa !230
  %i.gp = add nsw i64 %.05.us6.i23, 1             ; 2 uses
  %exitcond11.not.i30 = icmp eq i64 %i.gp, %i.d
  br i1 %exitcond11.not.i30, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit31, label %.lr.ph.i.i.i.i.i.preheader.us.i22, !llvm.loop !1128

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19
  %.05.i20 = phi i64 [ %i.hf, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19 ], [ %.05.i20.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol.loopexit ] ; 4 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %.05.i20
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !230
  %i.gs = load float, ptr %i.do, align 4, !tbaa !230
  %i.gt = fmul float %i.gr, %i.gs
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %.05.i20 ; 2 uses
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !230
  %i.gw = fsub float %i.gv, %i.gt
  store float %i.gw, ptr %i.gu, align 4, !tbaa !230
  %i.gx = add nsw i64 %.05.i20, 1                 ; 2 uses
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.gx
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !230
  %i.ha = load float, ptr %i.do, align 4, !tbaa !230
  %i.hb = fmul float %i.gz, %i.ha
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.gx ; 2 uses
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !230
  %i.he = fsub float %i.hd, %i.hb
  store float %i.he, ptr %i.hc, align 4, !tbaa !230
  %i.hf = add nsw i64 %.05.i20, 2                 ; 2 uses
  %exitcond.not.i21.1 = icmp eq i64 %i.hf, %i.d
  br i1 %exitcond.not.i21.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit31, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19, !llvm.loop !1146

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit31: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.i19, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29, %middle.block90, %._crit_edge, %.lr.ph.i17
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit
  %.036 = phi i64 [ %.0.i, %.lr.ph ], [ %i.it, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit ] ; 3 uses
  %i.hg = load ptr, ptr %0, align 8, !tbaa !1107, !nonnull !95, !align !129
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !1090
  %i.hi = load ptr, ptr %i.dg, align 8, !tbaa !1108, !nonnull !95, !align !129 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 144
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !1070 ; 5 uses
  %i.hl = icmp sgt i64 %i.hk, 0
  br i1 %i.hl, label %.lr.ph.i.preheader.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.c
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 128
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 112
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !1066
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %.036 ; 3 uses
  %i.hq = load ptr, ptr %i.hm, align 8, !tbaa !1068 ; 3 uses
  %xtraiter103 = and i64 %i.hk, 1
  %i.hr = icmp eq i64 %i.hk, 1
  br i1 %i.hr, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.preheader.i.i.i.new

.lr.ph.i.preheader.i.i.i.new:                     ; preds = %.lr.ph.i.preheader.i.i.i
  %unroll_iter108 = and i64 %i.hk, 9223372036854775806
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i.new
  %i.hs = phi <4 x float> [ zeroinitializer, %.lr.ph.i.preheader.i.i.i.new ], [ %i.ih, %.lr.ph.i.i.i.i ]
  %.013.i.i.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %i.ii, %.lr.ph.i.i.i.i ] ; 3 uses
  %niter109 = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %niter109.next.1, %.lr.ph.i.i.i.i ]
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.013.i.i.i.i, 12 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.idx.i.i.i.i.i
  %i.hu = load <4 x float>, ptr %i.ht, align 1, !tbaa !88
  %gep.i.i.i = getelementptr i8, ptr %i.hq, i64 %.idx.i.i.i.i.i
  %i.hv = load float, ptr %gep.i.i.i, align 4, !tbaa !230
  %i.hw = insertelement <4 x float> poison, float %i.hv, i64 0
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hy = fmul <4 x float> %i.hu, %i.hx
  %i.hz = fadd <4 x float> %i.hs, %i.hy
  %i.ia = mul nuw i64 %.013.i.i.i.i, 12
  %.idx.i.i.i.i.i.1 = add nuw i64 %i.ia, 12       ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.idx.i.i.i.i.i.1
  %i.ic = load <4 x float>, ptr %i.ib, align 1, !tbaa !88
  %gep.i.i.i.1 = getelementptr i8, ptr %i.hq, i64 %.idx.i.i.i.i.i.1
  %i.id = load float, ptr %gep.i.i.i.1, align 4, !tbaa !230
  %i.ie = insertelement <4 x float> poison, float %i.id, i64 0
  %i.if = shufflevector <4 x float> %i.ie, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ig = fmul <4 x float> %i.ic, %i.if
  %i.ih = fadd <4 x float> %i.hz, %i.ig           ; 3 uses
  %i.ii = add nuw nsw i64 %.013.i.i.i.i, 2        ; 2 uses
  %niter109.next.1 = add nuw nsw i64 %niter109, 2 ; 2 uses
  %niter109.ncmp.1 = icmp eq i64 %niter109.next.1, %unroll_iter108
  br i1 %niter109.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !1147

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod105.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod105.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader.i.i.i
  %.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph.i.preheader.i.i.i ], [ %i.ih, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit.loopexit.unr-lcssa ]
  %.013.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i ], [ %i.ii, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit.loopexit.unr-lcssa ]
  %lcmp.mod107 = trunc i64 %i.hk to i1
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %.idx.i.i.i.i.i.epil = mul nuw nsw i64 %.013.i.i.i.i.epil.init, 12 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.idx.i.i.i.i.i.epil
  %i.ik = load <4 x float>, ptr %i.ij, align 1, !tbaa !88
  %gep.i.i.i.epil = getelementptr i8, ptr %i.hq, i64 %.idx.i.i.i.i.i.epil
  %i.il = load float, ptr %gep.i.i.i.epil, align 4, !tbaa !230
  %i.im = insertelement <4 x float> poison, float %i.il, i64 0
  %i.in = shufflevector <4 x float> %i.im, <4 x float> poison, <4 x i32> zeroinitializer
  %i.io = fmul <4 x float> %i.ik, %i.in
  %i.ip = fadd <4 x float> %.epil.init, %i.io
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit: ; preds = %.lr.ph.i.i.i.i.epil.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit.loopexit.unr-lcssa, %bb.c
  %.0.i.i.i = phi <4 x float> [ zeroinitializer, %bb.c ], [ %i.ih, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit.loopexit.unr-lcssa ], [ %i.ip, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %.036 ; 2 uses
  %i.ir = load <4 x float>, ptr %i.iq, align 16, !tbaa !88
  %i.is = fsub <4 x float> %i.ir, %.0.i.i.i
  store <4 x float> %i.is, ptr %i.iq, align 16, !tbaa !88
  %i.it = add nsw i64 %.036, 4                    ; 2 uses
  %i.iu = icmp slt i64 %i.it, %i.o
  br i1 %i.iu, label %bb.c, label %._crit_edge, !llvm.loop !1148
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_14DualContouringIfE21dual_vertex_positionsEvEUllE_EEbT_RKT0_mEUlmE_ZNS6_IlS9_EEbSA_SD_mEUllmE_SE_EEbSA_SD_RKT1_RKT2_mEUlllmE_RlSP_RmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !326  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !323    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !331
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_14DualContouringIfE21dual_vertex_positionsEvEUllE_EEbT_RKT0_mEUlmE_ZNS5_IlS8_EEbS9_SC_mEUllmE_SD_EEbS9_SC_RKT1_RKT2_mEUlllmE_llmEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !99
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !136
  store i64 %i.t, ptr %i.s, align 8, !tbaa !333
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %4, align 8, !tbaa !136
  store i64 %i.v, ptr %i.u, align 8, !tbaa !523
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load i64, ptr %3, align 8, !tbaa !136
  store i64 %i.x, ptr %i.w, align 8, !tbaa !525
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load i64, ptr %2, align 8, !tbaa !17
  store i64 %i.z, ptr %i.y, align 8, !tbaa !17
  store ptr %i.r, ptr %6, align 8, !tbaa !339
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d
end_hunk_2
