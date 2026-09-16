Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/normalize?download=true
inline.NumInlined: 5543
inline.NumDeleted: 2030
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorINS3_8bitblast7AigNodeESaIS8_EEELb1EEEEE16_M_allocate_nodeIJRS5_SA_EEEPSC_DpOT_:bb.a
bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !221

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !814
  br label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorINS3_8bitblast7AigNodeESaIS8_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !221

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorINS3_8bitblast7AigNodeESaIS8_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #27 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorINS3_8bitblast7AigNodeESaIS8_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeESt6vectorINS3_8bitblast7AigNodeESaIS8_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !222  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !222
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !68 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !74
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !222
  store ptr %i.o, ptr %.02530, align 8, !tbaa !68
  store ptr %.02530, ptr %i.g, align 8, !tbaa !222
  store ptr %i.g, ptr %i.m, align 8, !tbaa !72
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !68
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !72
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !68
  store ptr %i.r, ptr %.02530, align 8, !tbaa !68
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !72
  store ptr %.02530, ptr %i.s, align 8, !tbaa !68
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !813

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !71     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !70
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #26
  br label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorINS0_8bitblast7AigNodeESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !70
  store ptr %.0.i, ptr %0, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE15_M_range_insertIPS3_EEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKN4bzla4NodeEN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIS2_ESt6vectorIS7_SaIS7_EEEEET0_T_SE_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !143
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85   ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not54 = icmp ult i64 %i.k, %i.c
  br i1 %.not54, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPKN4bzla4NodeElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %i.q = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 8
  store i64 %i.q, ptr %.013.i.i.i.i.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !815

_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.g, align 8, !tbaa !85
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = sub i64 %i.v, %i.l                       ; 3 uses
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 1
  br i1 %i.y, label %bb.e, label %bb.f, !prof !228

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.z = sub nsw i64 0, %i.x
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.z
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %1, i64 %i.w, i1 false)
  br label %_ZSt13move_backwardIPSt17reference_wrapperIKN4bzla4NodeEES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.ab = icmp eq i64 %i.w, 8
  br i1 %i.ab, label %bb.g, label %_ZSt13move_backwardIPSt17reference_wrapperIKN4bzla4NodeEES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.ad = load i64, ptr %1, align 8
  store i64 %i.ad, ptr %i.ac, align 8
  br label %_ZSt13move_backwardIPSt17reference_wrapperIKN4bzla4NodeEES5_ET0_T_S7_S6_.exit

_ZSt13move_backwardIPSt17reference_wrapperIKN4bzla4NodeEES5_ET0_T_S7_S6_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ae = icmp sgt i64 %i.d, 0
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i55.preheader, label %_ZSt4copyIPKN4bzla4NodeEN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIS2_ESt6vectorIS7_SaIS7_EEEEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i55.preheader:                     ; preds = %_ZSt13move_backwardIPSt17reference_wrapperIKN4bzla4NodeEES5_ET0_T_S7_S6_.exit
  %min.iters.check129 = icmp ult i64 %i.d, 4
  br i1 %min.iters.check129, label %.lr.ph.i.i.i.i.i55, label %vector.ph130

vector.ph130:                                     ; preds = %.lr.ph.i.i.i.i.i55.preheader
  %n.vec131 = and i64 %i.d, 9223372036854775804   ; 3 uses
  %4 = and i64 %i.d, 3
  %5 = shl i64 %n.vec131, 3                       ; 2 uses
  %6 = getelementptr i8, ptr %1, i64 %5
  %7 = getelementptr i8, ptr %2, i64 %5
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph130
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next138, %vector.body132 ] ; 2 uses
  %pointer.phi134 = phi ptr [ %2, %vector.ph130 ], [ %ptr.ind139, %vector.body132 ] ; 2 uses
  %vector.gep135 = getelementptr i8, ptr %pointer.phi134, <2 x i64> <i64 0, i64 8> ; 2 uses
  %step.add136146 = getelementptr i8, <2 x ptr> %vector.gep135, i64 16
  %i.af = shl i64 %index133, 3
  %next.gep137 = getelementptr i8, ptr %1, i64 %i.af ; 2 uses
  %i.ag = ptrtoint <2 x ptr> %vector.gep135 to <2 x i64>
  %i.ah = ptrtoint <2 x ptr> %step.add136146 to <2 x i64>
  %i.ai = getelementptr i8, ptr %next.gep137, i64 16
  store <2 x i64> %i.ag, ptr %next.gep137, align 8
  store <2 x i64> %i.ah, ptr %i.ai, align 8
  %index.next138 = add nuw i64 %index133, 4       ; 2 uses
  %ptr.ind139 = getelementptr i8, ptr %pointer.phi134, i64 32
  %i.aj = icmp eq i64 %index.next138, %n.vec131
  br i1 %i.aj, label %middle.block140, label %vector.body132, !llvm.loop !816

middle.block140:                                  ; preds = %vector.body132
  %cmp.n141 = icmp eq i64 %i.d, %n.vec131
  br i1 %cmp.n141, label %_ZSt4copyIPKN4bzla4NodeEN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIS2_ESt6vectorIS7_SaIS7_EEEEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %middle.block140, %.lr.ph.i.i.i.i.i55.preheader
  %.012.i.i.i.i.i.ph = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i55.preheader ], [ %4, %middle.block140 ] ; 2 uses
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i55.preheader ], [ %6, %middle.block140 ] ; 3 uses
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i55.preheader ], [ %7, %middle.block140 ] ; 3 uses
  %i.ak = ptrtoint ptr %.0910.i.i.i.i.i.ph to i64
  store i64 %i.ak, ptr %.0811.i.i.i.i.i.ph, align 8
  %i.al = icmp samesign ugt i64 %.012.i.i.i.i.i.ph, 1
  br i1 %i.al, label %.lr.ph.i.i.i.i.i55.1, label %_ZSt4copyIPKN4bzla4NodeEN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIS2_ESt6vectorIS7_SaIS7_EEEEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i55.1:                             ; preds = %.lr.ph.i.i.i.i.i55
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.ph, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.ph, i64 8
  %i.ao = ptrtoint ptr %i.an to i64
  store i64 %i.ao, ptr %i.am, align 8
  %i.ap = icmp eq i64 %.012.i.i.i.i.i.ph, 3
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i55.2, label %_ZSt4copyIPKN4bzla4NodeEN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIS2_ESt6vectorIS7_SaIS7_EEEEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i55.2:                             ; preds = %.lr.ph.i.i.i.i.i55.1
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.ph, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.ph, i64 16
  %i.as = ptrtoint ptr %i.ar to i64
  store i64 %i.as, ptr %i.aq, align 8
  br label %_ZSt4copyIPKN4bzla4NodeEN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIS2_ESt6vectorIS7_SaIS7_EEEEET0_T_SE_SD_.exit

_ZSt9__advanceIPKN4bzla4NodeElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.at = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.at, %3
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIPKN4bzla4NodeElEvRT_T0_St26random_access_iterator_tag.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %i.h, %_ZSt9__advanceIPKN4bzla4NodeElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %i.at, %_ZSt9__advanceIPKN4bzla4NodeElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  store ptr %.0810.i.i.i.i, ptr %.011.i.i.i.i, align 8, !tbaa !59
  %i.au = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.au, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !817

_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt9__advanceIPKN4bzla4NodeElEvRT_T0_St26random_access_iterator_tag.exit
  %i.aw = sub nuw nsw i64 %i.d, %i.n
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aw ; 3 uses
  store ptr %i.ax, ptr %i.g, align 8, !tbaa !85
  %.not11.i.i.i.i.i56 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i56, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit62, label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit, %.lr.ph.i.i.i.i.i57
  %.013.i.i.i.i.i58 = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i57 ], [ %i.ax, %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i59 = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i57 ], [ %1, %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit ] ; 2 uses
  %i.ay = load i64, ptr %.sroa.08.012.i.i.i.i.i59, align 8
  store i64 %i.ay, ptr %.013.i.i.i.i.i58, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i59, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i58, i64 8
  %.not.i.i.i.i.i60 = icmp eq ptr %i.az, %i.h
  br i1 %.not.i.i.i.i.i60, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit62.loopexit, label %.lr.ph.i.i.i.i.i57, !llvm.loop !815

_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit62.loopexit: ; preds = %.lr.ph.i.i.i.i.i57
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !85
  br label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit62

_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit62: ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit62.loopexit, %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit
  %i.bb = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit62.loopexit ], [ %i.ax, %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.m
  store ptr %i.bc, ptr %i.g, align 8, !tbaa !85
  %i.bd = ashr exact i64 %i.m, 3                  ; 6 uses
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i.i.i.i64.preheader, label %_ZSt4copyIPKN4bzla4NodeEN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIS2_ESt6vectorIS7_SaIS7_EEEEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit62
  %min.iters.check = icmp ult i64 %i.bd, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i64, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i64.preheader
  %n.vec = and i64 %i.bd, 9223372036854775804     ; 3 uses
  %8 = and i64 %i.bd, 3
  %9 = shl i64 %n.vec, 3                          ; 2 uses
  %10 = getelementptr i8, ptr %1, i64 %9
  %11 = getelementptr i8, ptr %2, i64 %9
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %2, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 8> ; 2 uses
  %step.add145 = getelementptr i8, <2 x ptr> %vector.gep, i64 16
  %i.bf = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %1, i64 %i.bf ; 2 uses
  %i.bg = ptrtoint <2 x ptr> %vector.gep to <2 x i64>
  %i.bh = ptrtoint <2 x ptr> %step.add145 to <2 x i64>
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.bg, ptr %next.gep, align 8
  store <2 x i64> %i.bh, ptr %i.bi, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 32
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !818

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIPKN4bzla4NodeEN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIS2_ESt6vectorIS7_SaIS7_EEEEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %middle.block, %.lr.ph.i.i.i.i.i64.preheader
  %.012.i.i.i.i.i65.ph = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i64.preheader ], [ %8, %middle.block ] ; 2 uses
  %.0811.i.i.i.i.i66.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i64.preheader ], [ %10, %middle.block ] ; 3 uses
  %.0910.i.i.i.i.i67.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i64.preheader ], [ %11, %middle.block ] ; 3 uses
  %i.bk = ptrtoint ptr %.0910.i.i.i.i.i67.ph to i64
  store i64 %i.bk, ptr %.0811.i.i.i.i.i66.ph, align 8
  %i.bl = icmp samesign ugt i64 %.012.i.i.i.i.i65.ph, 1
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i64.1, label %_ZSt4copyIPKN4bzla4NodeEN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIS2_ESt6vectorIS7_SaIS7_EEEEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i64.1:                             ; preds = %.lr.ph.i.i.i.i.i64
  %i.bm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66.ph, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i67.ph, i64 8
  %i.bo = ptrtoint ptr %i.bn to i64
  store i64 %i.bo, ptr %i.bm, align 8
  %i.bp = icmp eq i64 %.012.i.i.i.i.i65.ph, 3
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i64.2, label %_ZSt4copyIPKN4bzla4NodeEN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIS2_ESt6vectorIS7_SaIS7_EEEEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i64.2:                             ; preds = %.lr.ph.i.i.i.i.i64.1
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66.ph, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i67.ph, i64 16
  %i.bs = ptrtoint ptr %i.br to i64
  store i64 %i.bs, ptr %i.bq, align 8
  br label %_ZSt4copyIPKN4bzla4NodeEN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIS2_ESt6vectorIS7_SaIS7_EEEEET0_T_SE_SD_.exit

bb.h:                                             ; preds = %bb.b
  %i.bt = load ptr, ptr %0, align 8, !tbaa !142   ; 5 uses
  %i.bu = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bv = sub i64 %i.j, %i.bu
  %i.bw = ashr exact i64 %i.bv, 3                 ; 4 uses
  %i.bx = sub nsw i64 1152921504606846975, %i.bw
  %i.by = icmp ult i64 %i.bx, %i.d
  br i1 %i.by, label %bb.i, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #23
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 %i.d)
  %i.bz = add nsw i64 %.sroa.speculated.i, %i.bw  ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.bw
  %i.cb = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #27
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.j
  %i.cf = phi ptr [ %i.ce, %bb.j ], [ null, %_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.not11.i.i.i.i.i69 = icmp eq ptr %i.bt, %1
  br i1 %.not11.i.i.i.i.i69, label %.lr.ph.i.i.i.i76.preheader, label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i.i70
  %.013.i.i.i.i.i71 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i70 ], [ %i.cf, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i72 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i70 ], [ %i.bt, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit ] ; 2 uses
  %i.cg = load i64, ptr %.sroa.08.012.i.i.i.i.i72, align 8
  store i64 %i.cg, ptr %.013.i.i.i.i.i71, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i72, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i71, i64 8 ; 2 uses
  %.not.i.i.i.i.i73 = icmp eq ptr %i.ch, %1
  br i1 %.not.i.i.i.i.i73, label %.lr.ph.i.i.i.i76.preheader, label %.lr.ph.i.i.i.i.i70, !llvm.loop !815

.lr.ph.i.i.i.i76.preheader:                       ; preds = %.lr.ph.i.i.i.i.i70, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit
  %.011.i.i.i.i77.ph = phi ptr [ %i.cf, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit ], [ %i.ci, %.lr.ph.i.i.i.i.i70 ]
  br label %.lr.ph.i.i.i.i76

.lr.ph.i.i.i.i76:                                 ; preds = %.lr.ph.i.i.i.i76.preheader, %.lr.ph.i.i.i.i76
  %.011.i.i.i.i77 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i76 ], [ %.011.i.i.i.i77.ph, %.lr.ph.i.i.i.i76.preheader ] ; 2 uses
  %.0810.i.i.i.i78 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i76 ], [ %2, %.lr.ph.i.i.i.i76.preheader ] ; 2 uses
  store ptr %.0810.i.i.i.i78, ptr %.011.i.i.i.i77, align 8, !tbaa !59
  %i.cj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i78, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i77, i64 8 ; 3 uses
  %.not.i.i.i.i79 = icmp eq ptr %i.cj, %3
  br i1 %.not.i.i.i.i79, label %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit81, label %.lr.ph.i.i.i.i76, !llvm.loop !817

_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit81: ; preds = %.lr.ph.i.i.i.i76
  %.not11.i.i.i.i.i82 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i82, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit88, label %.lr.ph.i.i.i.i.i83

.lr.ph.i.i.i.i.i83:                               ; preds = %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit81, %.lr.ph.i.i.i.i.i83
  %.013.i.i.i.i.i84 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i83 ], [ %i.ck, %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit81 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i85 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i83 ], [ %1, %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit81 ] ; 2 uses
  %i.cl = load i64, ptr %.sroa.08.012.i.i.i.i.i85, align 8
  store i64 %i.cl, ptr %.013.i.i.i.i.i84, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i85, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i84, i64 8 ; 2 uses
  %.not.i.i.i.i.i86 = icmp eq ptr %i.cm, %i.h
  br i1 %.not.i.i.i.i.i86, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit88, label %.lr.ph.i.i.i.i.i83, !llvm.loop !815

_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit88: ; preds = %.lr.ph.i.i.i.i.i83, %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit81
  %.0.lcssa.i.i.i.i.i87 = phi ptr [ %i.ck, %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit81 ], [ %i.cn, %.lr.ph.i.i.i.i.i83 ]
  %.not.i89 = icmp eq ptr %i.bt, null
  br i1 %.not.i89, label %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit88
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !143
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.cq) #26
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit88, %bb.k
  store ptr %i.cf, ptr %0, align 8, !tbaa !142
  store ptr %.0.lcssa.i.i.i.i.i87, ptr %i.g, align 8, !tbaa !85
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cc
  store ptr %i.cr, ptr %i.e, align 8, !tbaa !143
  br label %_ZSt4copyIPKN4bzla4NodeEN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIS2_ESt6vectorIS7_SaIS7_EEEEET0_T_SE_SD_.exit

_ZSt4copyIPKN4bzla4NodeEN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIS2_ESt6vectorIS7_SaIS7_EEEEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i.i64, %.lr.ph.i.i.i.i.i64.1, %.lr.ph.i.i.i.i.i64.2, %.lr.ph.i.i.i.i.i55, %.lr.ph.i.i.i.i.i55.1, %.lr.ph.i.i.i.i.i55.2, %middle.block, %middle.block140, %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit62, %_ZSt13move_backwardIPSt17reference_wrapperIKN4bzla4NodeEES5_ET0_T_S7_S6_.exit, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef zeroext i1 @_ZNK4bzla9BitVector3bitEm(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvT_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = icmp ugt i64 %i.c, 9223372036854775800
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE17_S_check_init_lenEmRKS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #23
  unreachable

_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE17_S_check_init_lenEmRKS3_.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4bzla8bitblast7AigNodeESaIS2_EE11_M_allocateEm.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNSt12_Vector_baseIN4bzla8bitblast7AigNodeESaIS2_EE11_M_allocateEm.exit.thread: ; preds = %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE17_S_check_init_lenEmRKS3_.exit
  store ptr null, ptr %0, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr null, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !79
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4bzla8bitblast7AigNodeESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIN4bzla8bitblast7AigNodeESaIS2_EE17_S_check_init_lenEmRKS3_.exit
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #27 ; 5 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !79
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN4bzla8bitblast7AigNodeEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.k, %_ZSt10_ConstructIN4bzla8bitblast7AigNodeEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.j, %_ZSt10_ConstructIN4bzla8bitblast7AigNodeEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  invoke void @_ZN4bzla8bitblast7AigNodeC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN4bzla8bitblast7AigNodeEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN4bzla8bitblast7AigNodeEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4bzla8bitblast7AigNodeESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !22

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #25 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.g, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %bb.c ] ; 2 uses
  tail call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i) #25
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #23
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4bzla8bitblast7AigNodeEEvT_S4_.exit.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_NS1_4util7IntegerEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_NS1_4util7IntegerEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !221

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !881
  br label %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_NS1_4util7IntegerEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17reference_wrapperIKN4bzla4NodeEENS4_4util7IntegerEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !221

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17reference_wrapperIKN4bzla4NodeEENS4_4util7IntegerEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #27 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_NS1_4util7IntegerEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_NS1_4util7IntegerEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17reference_wrapperIKN4bzla4NodeEENS4_4util7IntegerEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17reference_wrapperIKN4bzla4NodeEENS4_4util7IntegerEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !145  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !145
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_NS1_4util7IntegerEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_NS1_4util7IntegerEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_NS1_4util7IntegerEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !68 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !74
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !145
  store ptr %i.o, ptr %.02530, align 8, !tbaa !68
  store ptr %.02530, ptr %i.g, align 8, !tbaa !145
  store ptr %i.g, ptr %i.m, align 8, !tbaa !72
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !68
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !72
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !68
  store ptr %i.r, ptr %.02530, align 8, !tbaa !68
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !72
  store ptr %.02530, ptr %i.s, align 8, !tbaa !68
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !880

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_NS1_4util7IntegerEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !140    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_NS1_4util7IntegerEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !141
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #26
  br label %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_NS1_4util7IntegerEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_NS1_4util7IntegerEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !141
  store ptr %.0.i, ptr %0, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph20

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEET_SE_SE_T0_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph20, !llvm.loop !882

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge12.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_RT0_(ptr %0, ptr %storemerge12.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_RT0_(ptr %0, ptr %storemerge12.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph20:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1219 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01318 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.y, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %storemerge1219, i64 -8
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_SE_SE_T0_(ptr %0, ptr nonnull %i.f, ptr %i.k, ptr nonnull %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph20
  %.sroa.010.0.i.i = phi ptr [ %i.f, %.lr.ph20 ], [ %i.p, %bb.f ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1219, %.lr.ph20 ], [ %.sroa.0.1.i.i, %bb.f ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %bb.c ], [ %i.p, %bb.d ] ; 9 uses
  %i.m = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !59
  %i.n = load ptr, ptr %0, align 8, !tbaa !59
  %i.o = tail call noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  br i1 %i.o, label %bb.d, label %.preheader.i.i, !llvm.loop !883

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.d ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 6 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !59
  %i.r = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !59
  %i.s = tail call noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  br i1 %i.s, label %.preheader.i.i, label %bb.e, !llvm.loop !884

bb.e:                                             ; preds = %.preheader.i.i
  %i.t = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.t, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEET_SE_SE_T0_.exit

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.010.1.i.i, align 8
  %i.u = load i64, ptr %.sroa.0.1.i.i, align 8
  store i64 %i.u, ptr %.sroa.010.1.i.i, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.0.1.i.i, align 8
  br label %bb.c, !llvm.loop !885

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEET_SE_SE_T0_.exit: ; preds = %bb.e
  %i.v = add nsw i64 %.01318, -1                  ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1219, i64 noundef %i.v)
  %i.w = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.x = sub i64 %i.w, %i.a
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 16
  br i1 %i.z, label %bb.b, label %.loopexit, !llvm.loop !882

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEET_SE_SE_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i.a, label %bb.h

.lr.ph.i.a:                                       ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i.a
  %.sroa.0.020.i.idx = phi i64 [ 8, %.lr.ph.i.a ], [ %.sroa.0.020.i.add, %bb.g ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i.a ], [ %.sroa.0.020.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.020.i.idx ; 6 uses
  %i.e = load ptr, ptr %.sroa.0.020.i.ptr, align 8, !tbaa !59
  %i.f = load ptr, ptr %0, align 8, !tbaa !59
  %i.g = tail call noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.sroa.05.0.copyload.i = load ptr, ptr %.sroa.0.020.i.ptr, align 8
  %i.h = icmp samesign ugt i64 %.sroa.0.020.i.idx, 8
  br i1 %i.h, label %bb.d, label %bb.e, !prof !228

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  %i.j = load i64, ptr %0, align 8
  store i64 %i.j, ptr %i.i, align 8
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i: ; preds = %bb.e, %bb.d
  store ptr %.sroa.05.0.copyload.i, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.k = load i64, ptr %.sroa.0.020.i.ptr, align 8 ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load ptr, ptr %.pn19.i, align 8, !tbaa !59
  %i.n = tail call noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.f ] ; 4 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr, %bb.f ]
  %i.o = load i64, ptr %.sroa.0.09.i.i, align 8
  store i64 %i.o, ptr %.sroa.04.08.i.i, align 8
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -8 ; 2 uses
  %i.p = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !59
  %i.q = tail call noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !886

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.020.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i64 %i.k, ptr %.sroa.04.0.lcssa.i.i, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i
  %.sroa.0.020.i.add = add nuw nsw i64 %.sroa.0.020.i.idx, 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.020.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.exit, label %bb.b, !llvm.loop !887

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.exit: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not4.i = icmp eq ptr %i.r, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7
  %.sroa.0.05.i = phi ptr [ %i.z, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7 ], [ %i.r, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.exit ] ; 5 uses
  %i.s = load i64, ptr %.sroa.0.05.i, align 8     ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -8 ; 2 uses
  %i.u = load ptr, ptr %.sroa.0.07.i.i, align 8, !tbaa !59
  %i.v = tail call noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  br i1 %i.v, label %.lr.ph.i.i10, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7

.lr.ph.i.i10:                                     ; preds = %.lr.ph.i6, %.lr.ph.i.i10
  %.sroa.0.09.i.i11 = phi ptr [ %.sroa.0.0.i.i13, %.lr.ph.i.i10 ], [ %.sroa.0.07.i.i, %.lr.ph.i6 ] ; 4 uses
  %.sroa.04.08.i.i12 = phi ptr [ %.sroa.0.09.i.i11, %.lr.ph.i.i10 ], [ %.sroa.0.05.i, %.lr.ph.i6 ]
  %i.w = load i64, ptr %.sroa.0.09.i.i11, align 8
  store i64 %i.w, ptr %.sroa.04.08.i.i12, align 8
  %.sroa.0.0.i.i13 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i11, i64 -8 ; 2 uses
  %i.x = load ptr, ptr %.sroa.0.0.i.i13, align 8, !tbaa !59
  %i.y = tail call noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  br i1 %i.y, label %.lr.ph.i.i10, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7, !llvm.loop !886

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7: ; preds = %.lr.ph.i.i10, %.lr.ph.i6
  %.sroa.04.0.lcssa.i.i8 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.09.i.i11, %.lr.ph.i.i10 ]
  store i64 %i.s, ptr %.sroa.04.0.lcssa.i.i8, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8 ; 2 uses
  %.not.i9 = icmp eq ptr %i.z, %1
  br i1 %.not.i9, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.exit, label %.lr.ph.i6, !llvm.loop !888

bb.h:                                             ; preds = %bb.a
  %i.aa = icmp eq ptr %0, %1
  %.sroa.0.017.i15 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not18.i16 = icmp eq ptr %.sroa.0.017.i15, %1
  %or.cond = select i1 %i.aa, i1 true, i1 %.not18.i16
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.h, %bb.n
  %.sroa.0.020.i18 = phi ptr [ %.sroa.0.0.i22, %bb.n ], [ %.sroa.0.017.i15, %bb.h ] ; 8 uses
  %.pn19.i19 = phi ptr [ %.sroa.0.020.i18, %bb.n ], [ %0, %bb.h ] ; 4 uses
  %i.ab = load ptr, ptr %.sroa.0.020.i18, align 8, !tbaa !59
  %i.ac = load ptr, ptr %0, align 8, !tbaa !59
  %i.ad = tail call noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  br i1 %i.ad, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i17
  %.sroa.05.0.copyload.i28 = load ptr, ptr %.sroa.0.020.i18, align 8
  %i.ae = ptrtoint ptr %.sroa.0.020.i18 to i64
  %i.af = sub i64 %i.ae, %i.b                     ; 3 uses
  %i.ag = ashr exact i64 %i.af, 3                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 1
  br i1 %i.ah, label %bb.j, label %bb.k, !prof !228

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn19.i19, i64 16
  %i.aj = sub nsw i64 0, %i.ag
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.af, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29

bb.k:                                             ; preds = %bb.i
  %i.al = icmp eq i64 %i.af, 8
  br i1 %i.al, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %.pn19.i19, i64 8
  %i.an = load i64, ptr %0, align 8
  store i64 %i.an, ptr %i.am, align 8
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29: ; preds = %bb.l, %bb.k, %bb.j
  store ptr %.sroa.05.0.copyload.i28, ptr %0, align 8
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i17
  %i.ao = load i64, ptr %.sroa.0.020.i18, align 8 ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = load ptr, ptr %.pn19.i19, align 8, !tbaa !59
  %i.ar = tail call noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
  br i1 %i.ar, label %.lr.ph.i.i24, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i20

.lr.ph.i.i24:                                     ; preds = %bb.m, %.lr.ph.i.i24
  %.sroa.0.09.i.i25 = phi ptr [ %.sroa.0.0.i.i27, %.lr.ph.i.i24 ], [ %.pn19.i19, %bb.m ] ; 4 uses
  %.sroa.04.08.i.i26 = phi ptr [ %.sroa.0.09.i.i25, %.lr.ph.i.i24 ], [ %.sroa.0.020.i18, %bb.m ]
  %i.as = load i64, ptr %.sroa.0.09.i.i25, align 8
  store i64 %i.as, ptr %.sroa.04.08.i.i26, align 8
  %.sroa.0.0.i.i27 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i25, i64 -8 ; 2 uses
  %i.at = load ptr, ptr %.sroa.0.0.i.i27, align 8, !tbaa !59
  %i.au = tail call noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.at)
  br i1 %i.au, label %.lr.ph.i.i24, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i20, !llvm.loop !886

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i20: ; preds = %.lr.ph.i.i24, %bb.m
  %.sroa.04.0.lcssa.i.i21 = phi ptr [ %.sroa.0.020.i18, %bb.m ], [ %.sroa.0.09.i.i25, %.lr.ph.i.i24 ]
  store i64 %i.ao, ptr %.sroa.04.0.lcssa.i.i21, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29
  %.sroa.0.0.i22 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i18, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %.sroa.0.0.i22, %1
  br i1 %.not.i23, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.exit, label %.lr.ph.i17, !llvm.loop !887

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 8
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_SE_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_SE_RT0_.exit ], [ %1, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 4 uses
  %.sroa.02.0.copyload.i = load ptr, ptr %i.e, align 8 ; 2 uses
  %i.f = load i64, ptr %0, align 8
  store i64 %i.f, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.g, %i.a                       ; 3 uses
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = add nsw i64 %i.i, -1
  %i.k = lshr i64 %i.j, 1
  %i.l = icmp sgt i64 %i.i, 2
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.036.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = shl i64 %.036.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.n
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %0, i64 %i.p
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !59
  %i.t = tail call noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %spec.select.i.i = select i1 %i.t, i64 %i.p, i64 %i.n ; 4 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.i
  %i.w = load i64, ptr %i.u, align 8
  store i64 %i.w, ptr %i.v, align 8
  %i.x = icmp slt i64 %spec.select.i.i, %i.k
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !25

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph
end_hunk_1
begin_hunk_2_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_T0_T1_":bb.a
  %i.ak = phi i64 [ %i.co, %bb.b ], [ %i.d, %.lr.ph ]
  %i.al = add nsw i64 %.058147, -1                ; 3 uses
  %i.am = lshr i64 %i.ak, 1
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.am ; 5 uses
  %i.ao = getelementptr inbounds i8, ptr %storemerge57148, i64 -16 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.g, align 8, !tbaa !179 ; 3 uses
  %i.ap = getelementptr i8, ptr %i.an, i64 8      ; 5 uses
  %.val1.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !179 ; 3 uses
  %i.aq = icmp ugt i64 %.val.i.i.i, %.val1.i.i.i
  %i.ar = getelementptr i8, ptr %storemerge57148, i64 -8 ; 5 uses
  %.val1.i27.i.i = load i64, ptr %i.ar, align 8, !tbaa !179 ; 4 uses
  br i1 %i.aq, label %bb.n, label %bb.y

bb.n:                                             ; preds = %.lr.ph149
  %i.as = icmp ugt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.as, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i: ; preds = %bb.p
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.aw = load i64, ptr %i.h, align 8, !tbaa !166
  %i.ax = load i64, ptr %i.ap, align 8, !tbaa !166
  store i64 %i.ax, ptr %i.h, align 8, !tbaa !166
  store i64 %i.aw, ptr %i.ap, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

bb.r:                                             ; preds = %bb.n
  %i.ay = icmp ugt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.ay, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %bb.t unwind label %bb.u       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit30.i.i unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit30.i.i: ; preds = %bb.t
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.bc = load i64, ptr %i.h, align 8, !tbaa !166
  %i.bd = load i64, ptr %i.ar, align 8, !tbaa !166
  store i64 %i.bd, ptr %i.h, align 8, !tbaa !166
  store i64 %i.bc, ptr %i.ar, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %bb.w unwind label %bb.x       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit31.i.i unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit31.i.i: ; preds = %bb.w
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.bh = load i64, ptr %i.h, align 8, !tbaa !166
  %i.bi = load i64, ptr %i.g, align 8, !tbaa !166
  store i64 %i.bi, ptr %i.h, align 8, !tbaa !166
  store i64 %i.bh, ptr %i.g, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

bb.y:                                             ; preds = %.lr.ph149
  %i.bj = icmp ugt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.bj, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %bb.aa unwind label %bb.ab     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit34.i.i unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit34.i.i: ; preds = %bb.aa
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.bn = load i64, ptr %i.h, align 8, !tbaa !166
  %i.bo = load i64, ptr %i.g, align 8, !tbaa !166
  store i64 %i.bo, ptr %i.h, align 8, !tbaa !166
  store i64 %i.bn, ptr %i.g, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

bb.ac:                                            ; preds = %bb.y
  %i.bp = icmp ugt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.bp, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %bb.ae unwind label %bb.af     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit37.i.i unwind label %bb.af ; 0 uses

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit37.i.i: ; preds = %bb.ae
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.bt = load i64, ptr %i.h, align 8, !tbaa !166
  %i.bu = load i64, ptr %i.ar, align 8, !tbaa !166
  store i64 %i.bu, ptr %i.h, align 8, !tbaa !166
  store i64 %i.bt, ptr %i.ar, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %bb.ah unwind label %bb.ai     ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit38.i.i unwind label %bb.ai ; 0 uses

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit38.i.i: ; preds = %bb.ah
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.by = load i64, ptr %i.h, align 8, !tbaa !166
  %i.bz = load i64, ptr %i.ap, align 8, !tbaa !166
  store i64 %i.bz, ptr %i.h, align 8, !tbaa !166
  store i64 %i.by, ptr %i.ap, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader": ; preds = %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit38.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit37.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit34.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit31.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit30.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader", %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i15.i
  %.sroa.012.0.i.i = phi ptr [ %i.cc, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i15.i ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i15.i ], [ %storemerge57148, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i64, ptr %i.h, align 8, !tbaa !179 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i" ], [ %i.cc, %bb.aj ] ; 10 uses
  %i.ca = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  %.val.i.i14.i = load i64, ptr %i.ca, align 8, !tbaa !179
  %i.cb = icmp ugt i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br i1 %i.cb, label %bb.aj, label %.preheader.i.i.preheader, !llvm.loop !945

.preheader.i.i.preheader:                         ; preds = %bb.aj
  %14 = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.cd = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val1.i9.i.i = load i64, ptr %i.cd, align 8, !tbaa !179
  %i.ce = icmp ugt i64 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.ce, label %.preheader.i.i, label %bb.ak, !llvm.loop !946

bb.ak:                                            ; preds = %.preheader.i.i
  %i.cf = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.cg = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cg, label %bb.al, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEET_SN_SN_T0_.exit"

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.1.i.i)
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i)
          to label %bb.am unwind label %bb.an     ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i15.i unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i15.i: ; preds = %bb.am
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ck = load i64, ptr %14, align 8, !tbaa !166
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !166
  store i64 %i.cl, ptr %14, align 8, !tbaa !166
  store i64 %i.ck, ptr %i.cf, align 8, !tbaa !166
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_SN_T0_.exit.i", !llvm.loop !947

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEET_SN_SN_T0_.exit": ; preds = %bb.ak
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge57148, i64 noundef %i.al)
  %i.cm = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cn = sub i64 %i.cm, %i.a                     ; 2 uses
  %i.co = ashr exact i64 %i.cn, 4                 ; 3 uses
  %i.cp = icmp sgt i64 %i.co, 16
  br i1 %i.cp, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_T0_.exit", !llvm.loop !942

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEET_SN_SN_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_SN_RT0_.exit", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_T0_SO_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair.396", align 8    ; 5 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.037 = phi i64 [ %spec.select, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.037, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val.i = load i64, ptr %i.i, align 8, !tbaa !179
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val1.i = load i64, ptr %i.j, align 8, !tbaa !179
  %i.k = icmp ugt i64 %.val.i, %.val1.i
  %spec.select = select i1 %i.k, i64 %i.g, i64 %i.e ; 4 uses
  %i.l = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select ; 2 uses
  %i.m = getelementptr inbounds [16 x i8], ptr %0, i64 %.037 ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.l) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !166
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !179
  %i.r = icmp slt i64 %spec.select, %i.b
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !948

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %.lr.ph ] ; 5 uses
  %i.s = and i64 %2, 1
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.u = add nsw i64 %2, -2
  %i.v = ashr exact i64 %i.u, 1
  %i.w = icmp eq i64 %.0.lcssa, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = shl nsw i64 %.0.lcssa, 1
  %i.y = or disjoint i64 %i.x, 1                  ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa ; 2 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.z) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !166
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !179
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.y, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !179
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !179
  %i.ai = icmp sgt i64 %.1, %1
  br i1 %i.ai, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.d, %.noexc
  %.010.i = phi i64 [ %.0911.i, %.noexc ], [ %.1, %bb.d ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.aj = getelementptr inbounds [16 x i8], ptr %0, i64 %.0911.i ; 2 uses
  %.val.i25 = load i64, ptr %i.af, align 8, !tbaa !179
  %i.ak = getelementptr i8, ptr %i.aj, i64 8      ; 2 uses
  %.val.i.i = load i64, ptr %i.ak, align 8, !tbaa !179
  %i.al = icmp ugt i64 %.val.i.i, %.val.i25
  br i1 %i.al, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.am = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i ; 2 uses
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.aj)
          to label %.noexc unwind label %.loopexit ; 0 uses

.noexc:                                           ; preds = %bb.e
  %i.ao = load i64, ptr %i.ak, align 8, !tbaa !166
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !179
  %i.aq = icmp sgt i64 %.0911.i, %1
  br i1 %i.aq, label %.lr.ph.i, label %.critedge.i, !llvm.loop !949

.critedge.i:                                      ; preds = %.noexc, %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.010.i, %.lr.ph.i ], [ %.0911.i, %.noexc ]
  %i.ar = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.f unwind label %.loopexit.split-lp ; 0 uses

bb.f:                                             ; preds = %.critedge.i
  %i.at = load i64, ptr %i.af, align 8, !tbaa !166
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !179
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %4) #25
  ret void

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.critedge.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %4) #25
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4bzla4NodeEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10preprocess4pass13PassNormalize16normalize_addersERKS7_IS4_SaIS4_EERSH_E3$_0EEEvT_SN_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.396", align 8    ; 8 uses
  %3 = alloca %"struct.std::pair.396", align 8    ; 8 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit19, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.021 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not22 = icmp eq ptr %.sroa.0.021, %1
  br i1 %.not22, label %.loopexit19, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.0.024 = phi ptr [ %.sroa.0.021, %.lr.ph ], [ %.sroa.0.0, %bb.i ] ; 8 uses
  %.pn23 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.024, %bb.i ] ; 3 uses
  %i.f = getelementptr i8, ptr %.pn23, i64 24     ; 3 uses
  %.val.i = load i64, ptr %i.f, align 8, !tbaa !179
  %.val1.i = load i64, ptr %i.b, align 8, !tbaa !179
  %i.g = icmp ugt i64 %.val.i, %.val1.i
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.024)
  %i.h = load i64, ptr %i.f, align 8, !tbaa !179
  store i64 %i.h, ptr %i.d, align 8, !tbaa !179
  %i.i = ptrtoint ptr %.sroa.0.024 to i64
  %i.j = sub i64 %i.i, %i.e
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph.i.i.i.i.i.preheader, label %.loopexit18

end_hunk_2
begin_hunk_3_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_:bb.a
  %i.k = load i64, ptr %0, align 8, !tbaa !166
  store i64 %i.k, ptr %i.i, align 8, !tbaa !166
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = load i64, ptr %i.t, align 8, !tbaa !166
  %i.x = load i64, ptr %i.v, align 8, !tbaa !166
  %i.y = icmp ult i64 %i.w, %i.x
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.u, i64 %i.s ; 4 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !166
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.035.i.i.i.i
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !166
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !30

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.m, 8
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.n, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !166
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %i.al, ptr %i.am, align 8, !tbaa !166
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i56.i.i.i
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !166 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.j
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !166
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !31

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.j, ptr %i.ar, align 8, !tbaa !166
  %i.as = icmp sgt i64 %i.m, 8
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !957

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %i.at = phi i64 [ %i.bt, %bb.b ], [ %i.d, %.lr.ph ]
  %i.au = add nsw i64 %.01841, -1                 ; 3 uses
  %i.av = lshr i64 %i.at, 1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %storemerge1742, i64 -8 ; 3 uses
  %i.ay = load i64, ptr %i.f, align 8, !tbaa !166 ; 5 uses
  %i.az = load i64, ptr %i.aw, align 8, !tbaa !166 ; 5 uses
  %i.ba = icmp ult i64 %i.ay, %i.az
  %i.bb = load i64, ptr %i.ax, align 8, !tbaa !166 ; 6 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.bc = icmp ult i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = load i64, ptr %0, align 8, !tbaa !166
  store i64 %i.az, ptr %0, align 8, !tbaa !166
  store i64 %i.bd, ptr %i.aw, align 8, !tbaa !166
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.be = icmp ult i64 %i.ay, %i.bb
  %i.bf = load i64, ptr %0, align 8, !tbaa !166   ; 2 uses
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.bb, ptr %0, align 8, !tbaa !166
  store i64 %i.bf, ptr %i.ax, align 8, !tbaa !166
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i64 %i.ay, ptr %0, align 8, !tbaa !166
  store i64 %i.bf, ptr %i.f, align 8, !tbaa !166
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph43
  %i.bg = icmp ult i64 %i.ay, %i.bb
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = load i64, ptr %0, align 8, !tbaa !166
  store i64 %i.ay, ptr %0, align 8, !tbaa !166
  store i64 %i.bh, ptr %i.f, align 8, !tbaa !166
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bi = icmp ult i64 %i.az, %i.bb
  %i.bj = load i64, ptr %0, align 8, !tbaa !166   ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 %i.bb, ptr %0, align 8, !tbaa !166
  store i64 %i.bj, ptr %i.ax, align 8, !tbaa !166
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i64 %i.az, ptr %0, align 8, !tbaa !166
  store i64 %i.bj, ptr %i.aw, align 8, !tbaa !166
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.010.0.i.i = phi ptr [ %i.bn, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bk = load i64, ptr %0, align 8, !tbaa !166   ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bn, %bb.p ] ; 8 uses
  %i.bl = load i64, ptr %.sroa.010.1.i.i, align 8, !tbaa !166 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  br i1 %i.bm, label %bb.p, label %.preheader.i.i, !llvm.loop !958

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.bo = load i64, ptr %.sroa.0.1.i.i, align 8, !tbaa !166 ; 2 uses
  %i.bp = icmp ult i64 %i.bk, %i.bo
  br i1 %i.bp, label %.preheader.i.i, label %bb.q, !llvm.loop !959

bb.q:                                             ; preds = %.preheader.i.i
  %i.bq = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.bq, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i64 %i.bo, ptr %.sroa.010.1.i.i, align 8, !tbaa !166
  store i64 %i.bl, ptr %.sroa.0.1.i.i, align 8, !tbaa !166
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !960

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1742, i64 noundef %i.au)
  %i.br = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bs = sub i64 %i.br, %i.a
  %i.bt = ashr exact i64 %i.bs, 3                 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 16
  br i1 %i.bu, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !956

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i.a, label %bb.g

.lr.ph.i.a:                                       ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i.a
  %.sroa.0.018.i.idx = phi i64 [ 8, %.lr.ph.i.a ], [ %.sroa.0.018.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i.a ], [ %.sroa.0.018.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 4 uses
  %i.e = load i64, ptr %.sroa.0.018.i.ptr, align 8, !tbaa !166 ; 4 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !166    ; 2 uses
  %i.g = icmp ult i64 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.018.i.idx, 8
  br i1 %i.h, label %bb.d, label %bb.e, !prof !228

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 8
  store i64 %i.f, ptr %i.i, align 8, !tbaa !166
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.j = load i64, ptr %.pn17.i, align 8, !tbaa !166 ; 2 uses
  %i.k = icmp ult i64 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ]
  store i64 %i.l, ptr %.sroa.04.08.i.i, align 8, !tbaa !166
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -8 ; 2 uses
  %i.m = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !166 ; 2 uses
  %i.n = icmp ult i64 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !961

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i64 %i.e, ptr %.sink.i, align 8, !tbaa !166
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !962

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not4.i = icmp eq ptr %i.o, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.sroa.0.05.i = phi ptr [ %i.v, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %i.o, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit ] ; 5 uses
  %i.p = load i64, ptr %.sroa.0.05.i, align 8, !tbaa !166 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -8 ; 2 uses
  %i.q = load i64, ptr %.sroa.0.07.i.i, align 8, !tbaa !166 ; 2 uses
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i8:                                      ; preds = %.lr.ph.i6, %.lr.ph.i.i8
  %i.s = phi i64 [ %i.t, %.lr.ph.i.i8 ], [ %i.q, %.lr.ph.i6 ]
  %.sroa.0.09.i.i9 = phi ptr [ %.sroa.0.0.i.i11, %.lr.ph.i.i8 ], [ %.sroa.0.07.i.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.04.08.i.i10 = phi ptr [ %.sroa.0.09.i.i9, %.lr.ph.i.i8 ], [ %.sroa.0.05.i, %.lr.ph.i6 ]
  store i64 %i.s, ptr %.sroa.04.08.i.i10, align 8, !tbaa !166
  %.sroa.0.0.i.i11 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i9, i64 -8 ; 2 uses
  %i.t = load i64, ptr %.sroa.0.0.i.i11, align 8, !tbaa !166 ; 2 uses
  %i.u = icmp ult i64 %i.p, %i.t
  br i1 %i.u, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !961

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i8, %.lr.ph.i6
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.09.i.i9, %.lr.ph.i.i8 ]
  store i64 %i.p, ptr %.sroa.04.0.lcssa.i.i, align 8, !tbaa !166
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8 ; 2 uses
  %.not.i7 = icmp eq ptr %i.v, %1
  br i1 %.not.i7, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6, !llvm.loop !963

bb.g:                                             ; preds = %bb.a
  %i.w = icmp eq ptr %0, %1
  %.sroa.0.015.i13 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not16.i14 = icmp eq ptr %.sroa.0.015.i13, %1
  %or.cond = select i1 %i.w, i1 true, i1 %.not16.i14
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i18
  %.sroa.0.018.i16 = phi ptr [ %.sroa.0.0.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i18 ], [ %.sroa.0.015.i13, %bb.g ] ; 6 uses
  %.pn17.i17 = phi ptr [ %.sroa.0.018.i16, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i18 ], [ %0, %bb.g ] ; 4 uses
  %i.x = load i64, ptr %.sroa.0.018.i16, align 8, !tbaa !166 ; 4 uses
  %i.y = load i64, ptr %0, align 8, !tbaa !166    ; 2 uses
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i15
  %i.aa = ptrtoint ptr %.sroa.0.018.i16 to i64
  %i.ab = sub i64 %i.aa, %i.b                     ; 3 uses
  %i.ac = ashr exact i64 %i.ab, 3                 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 1
  br i1 %i.ad, label %bb.i, label %bb.j, !prof !228

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn17.i17, i64 16
  %i.af = sub nsw i64 0, %i.ac
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ab, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i18

bb.j:                                             ; preds = %bb.h
  %i.ah = icmp eq i64 %i.ab, 8
  br i1 %i.ah, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i18

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn17.i17, i64 8
  store i64 %i.y, ptr %i.ai, align 8, !tbaa !166
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i18

bb.l:                                             ; preds = %.lr.ph.i15
  %i.aj = load i64, ptr %.pn17.i17, align 8, !tbaa !166 ; 2 uses
  %i.ak = icmp ult i64 %i.x, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i18

.lr.ph.i.i22:                                     ; preds = %bb.l, %.lr.ph.i.i22
  %i.al = phi i64 [ %i.am, %.lr.ph.i.i22 ], [ %i.aj, %bb.l ]
  %.sroa.0.09.i.i23 = phi ptr [ %.sroa.0.0.i.i25, %.lr.ph.i.i22 ], [ %.pn17.i17, %bb.l ] ; 3 uses
  %.sroa.04.08.i.i24 = phi ptr [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ], [ %.sroa.0.018.i16, %bb.l ]
  store i64 %i.al, ptr %.sroa.04.08.i.i24, align 8, !tbaa !166
  %.sroa.0.0.i.i25 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i23, i64 -8 ; 2 uses
  %i.am = load i64, ptr %.sroa.0.0.i.i25, align 8, !tbaa !166 ; 2 uses
  %i.an = icmp ult i64 %i.x, %i.am
  br i1 %i.an, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i18, !llvm.loop !961

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i18: ; preds = %.lr.ph.i.i22, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i19 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.018.i16, %bb.l ], [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ]
  store i64 %i.x, ptr %.sink.i19, align 8, !tbaa !166
  %.sroa.0.0.i20 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i16, i64 8 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.0.0.i20, %1
  br i1 %.not.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15, !llvm.loop !962

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i18, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
  %.08.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.08.us
  %i.q = load i64, ptr %i.p, align 8, !tbaa !166  ; 2 uses
  %i.r = icmp slt i64 %.08.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.035.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.08.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.035.i.us, 1                    ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v
  %i.x = load i64, ptr %i.u, align 8, !tbaa !166
  %i.y = load i64, ptr %i.w, align 8, !tbaa !166
  %i.z = icmp ult i64 %i.x, %i.y
  %spec.select.i.us = select i1 %i.z, i64 %i.v, i64 %i.t ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !166
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.035.i.us
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !166
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !30

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !166 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.q
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

end_hunk_3
