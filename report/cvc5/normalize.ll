Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/normalize?download=true
inline.NumInlined: 4351
inline.NumDeleted: 1781
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_T0_T1_":bb.a

.split49.i.i:                                     ; preds = %._crit_edge.i.i20.i.i
  %i.qo = icmp ult i64 %i.qa, %i.qh
  br i1 %i.qo, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread47.i.i", label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread.i.i"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i23.i.i: ; preds = %bb.bj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i.i13.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i34.i.i, %bb.bi
  %.sroa.069.1.i.i24.i.i = getelementptr inbounds nuw i8, ptr %.sroa.069.0112.i.i10.i.i, i64 40 ; 2 uses
  %.sroa.064.1.i.i25.i.i = getelementptr inbounds nuw i8, ptr %.sroa.064.0111.i.i11.i.i, i64 40
  %i.qp = load ptr, ptr %i.oo, align 8, !tbaa !126
  %.not93.i.i26.i.i = icmp eq ptr %.sroa.069.1.i.i24.i.i, %i.qp
  br i1 %.not93.i.i26.i.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread.i.i", label %bb.bg

"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.i.i": ; preds = %bb.bn
  %i.qq = icmp slt i32 %i.ql, %i.qn
  br i1 %i.qq, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread47.i.i", label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread.i.i"

"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread47.i.i": ; preds = %bb.bg, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.i.i", %.split49.i.i, %.split50.i.i
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.1113.i.i, i64 -8 ; 2 uses
  %i.qr = load ptr, ptr %0, align 8, !tbaa !128   ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 104
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !126 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 112 ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !126
  %.not93110.i.i8.i.i = icmp eq ptr %i.qt, %i.qv
  br i1 %.not93110.i.i8.i.i, label %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread.i.i", label %.lr.ph114.i.i9.i.i, !llvm.loop !616

"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread.i.i": ; preds = %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread47.i.i", %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.i.i", %.split49.i.i, %.split50.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i23.i.i, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread.i.i"
  %.sroa.0.193.i.i = phi ptr [ %.sroa.0.1113.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i23.i.i ], [ %.sroa.0.1111.i.i, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit.thread.i.i" ], [ %.sroa.0.1113.i.i, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.i.i" ], [ %.sroa.0.1113.i.i, %.split49.i.i ], [ %.sroa.0.1113.i.i, %.split50.i.i ], [ %.sroa.0.1.i.i, %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread47.i.i" ] ; 4 uses
  %i.qw = icmp ult ptr %.sroa.039.175.i.i, %.sroa.0.193.i.i
  br i1 %i.qw, label %bb.bo, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEET_SK_SK_T0_.exit"

bb.bo:                                            ; preds = %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread.i.i"
  %i.qx = load ptr, ptr %.sroa.039.175.i.i, align 8, !tbaa !128
  %i.qy = load ptr, ptr %.sroa.0.193.i.i, align 8, !tbaa !128
  store ptr %i.qy, ptr %.sroa.039.175.i.i, align 8, !tbaa !128
  store ptr %i.qx, ptr %.sroa.0.193.i.i, align 8, !tbaa !128
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.039.175.i.i, i64 8
  br label %bb.ax, !llvm.loop !617

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEET_SK_SK_T0_.exit": ; preds = %"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_.exit36.thread.i.i"
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_T0_T1_"(ptr %.sroa.039.175.i.i, ptr %storemerge134555, i64 noundef %i.kt, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.531") align 8 %3)
  %i.ra = ptrtoint ptr %.sroa.039.175.i.i to i64
  %i.rb = sub i64 %i.ra, %i.a                     ; 2 uses
  %i.rc = ashr exact i64 %i.rb, 3                 ; 3 uses
  %i.rd = icmp sgt i64 %i.rc, 16
  br i1 %i.rd, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_SK_T0_.exit", !llvm.loop !610

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_SK_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEET_SK_SK_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_SK_RT0_.exit.i32.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_1EEEvT_SK_RT0_.exit.i.i"
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineEENK3$_1clEPNS2_8NodeInfoES8_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !622, !nonnull !99, !align !623 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !624, !nonnull !99, !align !623 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !625, !nonnull !99, !align !623 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !126  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !126
  %.not93110.i = icmp eq ptr %i.g, %i.i
  br i1 %.not93110.i, label %_ZN4cvc58internal13preprocessing6passesL21compareBySuperpatternEPNS2_8NodeInfoES4_RKSt6vectorIS5_IS4_SaIS4_EESaIS7_EERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_IS5_IiSaIiEESaISK_EESt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_SM_EEERKSC_ISI_S5_ISt10shared_ptrIS3_ESaISY_EESO_SQ_SaISR_ISS_S10_EEE.exit, label %.lr.ph114.i

.lr.ph114.i:                                      ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !126
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 112
  br label %bb.b

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %.lr.ph114.i
  %.sroa.069.0112.i = phi ptr [ %i.g, %.lr.ph114.i ], [ %.sroa.069.1.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ] ; 4 uses
  %.sroa.064.0111.i = phi ptr [ %i.k, %.lr.ph114.i ], [ %.sroa.064.1.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ] ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !126
  %.not94.i = icmp eq ptr %.sroa.064.0111.i, %i.m ; 3 uses
  br i1 %.not94.i, label %_ZN4cvc58internal13preprocessing6passesL21compareBySuperpatternEPNS2_8NodeInfoES4_RKSt6vectorIS5_IS4_SaIS4_EESaIS7_EERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_IS5_IiSaIiEESaISK_EESt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_SM_EEERKSC_ISI_S5_ISt10shared_ptrIS3_ESaISY_EESO_SQ_SaISR_ISS_S10_EEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.069.0112.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !56   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.064.0111.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !56
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i

bb.d:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, !llvm.loop !19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.d
  %i.t = load ptr, ptr %.sroa.064.0111.i, align 8, !tbaa !58
  %i.u = load ptr, ptr %.sroa.069.0112.i, align 8, !tbaa !58
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.u, ptr %i.t, i64 %i.o)
  %i.v = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i, !llvm.loop !19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.c
  %i.w = tail call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cvc58internal13preprocessing6passesL24getOrComputeSuperpatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISB_IPNS2_8NodeInfoESaISD_EESaISF_EERKSt13unordered_mapIS8_SB_ISt10shared_ptrISC_ESaISM_EESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIS9_SO_EEERSK_IS8_SB_ISB_IiSaIiEESaIS10_EESQ_SS_SaIST_IS9_S12_EEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.069.0112.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.c) ; 2 uses
  %i.x = tail call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cvc58internal13preprocessing6passesL24getOrComputeSuperpatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISB_IPNS2_8NodeInfoESaISD_EESaISF_EERKSt13unordered_mapIS8_SB_ISt10shared_ptrISC_ESaISM_EESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIS9_SO_EEERSK_IS8_SB_ISB_IiSaIiEESaIS10_EESQ_SS_SaIST_IS9_S12_EEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.064.0111.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !215  ; 2 uses
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !216 ; 3 uses
  %.not117.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not117.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %.lr.ph109.i

.lr.ph109.i:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 24
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !216
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.ag = add nuw i64 %.052108.i, 1               ; 2 uses
  %exitcond134.not.i = icmp eq i64 %i.ag, %i.ae
  br i1 %exitcond134.not.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %bb.f, !llvm.loop !20

bb.f:                                             ; preds = %bb.e, %.lr.ph109.i
  %.052108.i = phi i64 [ 0, %.lr.ph109.i ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %.052108.i ; 2 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.052108.i ; 2 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !219 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !93 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !219 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !93 ; 2 uses
  %.not.i = icmp eq i32 %i.ak, %i.am
  br i1 %.not.i, label %.preheader.i, label %bb.g

.preheader.i:                                     ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !220
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.aj to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2                 ; 4 uses
  %i.at = icmp ugt i64 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !220
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.al to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 2                 ; 3 uses
  br i1 %i.at, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ba = icmp slt i32 %i.ak, %i.am
  br label %_ZN4cvc58internal13preprocessing6passesL21compareBySuperpatternEPNS2_8NodeInfoES4_RKSt6vectorIS5_IS4_SaIS4_EESaIS7_EERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_IS5_IiSaIiEESaISK_EESt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_SM_EEERKSC_ISI_S5_ISt10shared_ptrIS3_ESaISY_EESO_SQ_SaISR_ISS_S10_EEE.exit

bb.h:                                             ; preds = %bb.j
  %i.bb = add nuw i64 %.0105.i, 1                 ; 2 uses
  %exitcond132.not.i = icmp eq i64 %i.bb, %i.as
  br i1 %exitcond132.not.i, label %._crit_edge.i, label %bb.i, !llvm.loop !21

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %.0105.i = phi i64 [ 1, %.lr.ph.i ], [ %i.bb, %bb.h ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.0105.i, %umax.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.0105.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !93 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.0105.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !93 ; 2 uses
  %.not59.i = icmp eq i32 %i.bd, %i.bf
  br i1 %.not59.i, label %bb.h, label %.critedge4.i

.critedge4.i:                                     ; preds = %bb.j
  %i.bg = icmp slt i32 %i.bd, %i.bf
  br label %_ZN4cvc58internal13preprocessing6passesL21compareBySuperpatternEPNS2_8NodeInfoES4_RKSt6vectorIS5_IS4_SaIS4_EESaIS7_EERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_IS5_IiSaIiEESaISK_EESt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_SM_EEERKSC_ISI_S5_ISt10shared_ptrIS3_ESaISY_EESO_SQ_SaISR_ISS_S10_EEE.exit

._crit_edge.i:                                    ; preds = %bb.i, %bb.h, %.preheader.i
  %.not60.i = icmp eq i64 %i.as, %i.az
  br i1 %.not60.i, label %bb.e, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.bh = icmp ult i64 %i.as, %i.az
  br label %_ZN4cvc58internal13preprocessing6passesL21compareBySuperpatternEPNS2_8NodeInfoES4_RKSt6vectorIS5_IS4_SaIS4_EESaIS7_EERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_IS5_IiSaIiEESaISK_EESt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_SM_EEERKSC_ISI_S5_ISt10shared_ptrIS3_ESaISY_EESO_SQ_SaISR_ISS_S10_EEE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread74.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.d
  %.sroa.069.1.i = getelementptr inbounds nuw i8, ptr %.sroa.069.0112.i, i64 40 ; 2 uses
  %.sroa.064.1.i = getelementptr inbounds nuw i8, ptr %.sroa.064.0111.i, i64 40
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !126
  %.not93.i = icmp eq ptr %.sroa.069.1.i, %i.bi
  br i1 %.not93.i, label %_ZN4cvc58internal13preprocessing6passesL21compareBySuperpatternEPNS2_8NodeInfoES4_RKSt6vectorIS5_IS4_SaIS4_EESaIS7_EERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_IS5_IiSaIiEESaISK_EESt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_SM_EEERKSC_ISI_S5_ISt10shared_ptrIS3_ESaISY_EESO_SQ_SaISR_ISS_S10_EEE.exit, label %bb.b

_ZN4cvc58internal13preprocessing6passesL21compareBySuperpatternEPNS2_8NodeInfoES4_RKSt6vectorIS5_IS4_SaIS4_EESaIS7_EERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_IS5_IiSaIiEESaISK_EESt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_SM_EEERKSC_ISI_S5_ISt10shared_ptrIS3_ESaISY_EESO_SQ_SaISR_ISS_S10_EEE.exit: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %bb.a, %bb.g, %.critedge4.i, %bb.k
  %.6.i = phi i1 [ %i.bh, %bb.k ], [ %i.bg, %.critedge4.i ], [ %i.ba, %bb.g ], [ false, %bb.a ], [ %.not94.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %.not94.i, %bb.b ]
  ret i1 %.6.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cvc58internal13preprocessing6passesL24getOrComputeSuperpatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISB_IPNS2_8NodeInfoESaISD_EESaISF_EERKSt13unordered_mapIS8_SB_ISt10shared_ptrISC_ESaISM_EESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIS9_SO_EEERSK_IS8_SB_ISB_IiSaIiEESaIS10_EESQ_SS_SaIST_IS9_S12_EEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.478", align 8   ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS8_IiSaIiEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %0) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !195    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = sdiv exact i64 %i.i, 24
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %.noexc, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #26
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.c
  store i64 0, ptr %4, align 8
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #27 ; 4 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !216
  %i.m = getelementptr i8, ptr %i.l, i64 %i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.i, i1 false)
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %.lr.ph.preheader.i.i.i.i.i
  %i.n = phi ptr [ %i.l, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %i.o = phi ptr [ %i.m, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.o, ptr %i.q, align 8, !tbaa !241
  store ptr %i.o, ptr %i.p, align 8, !tbaa !215
  %i.r = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaISD_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SF_EEE4findERSL_.exit unwind label %bb.d ; 2 uses

_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaISD_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SF_EEE4findERSL_.exit: ; preds = %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !169  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !169  ; 2 uses
  %.not6162 = icmp eq ptr %i.t, %i.v
  br i1 %.not6162, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaISD_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SF_EEE4findERSL_.exit
  %.not66 = icmp eq ptr %i.o, %i.n
  br i1 %.not66, label %._crit_edge, label %.lr.ph65

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.lr.ph:                                           ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaISD_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SF_EEE4findERSL_.exit, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.sroa.053.063 = phi ptr [ %i.bf, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.t, %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaISD_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SF_EEE4findERSL_.exit ] ; 3 uses
  %i.x = load ptr, ptr %.sroa.053.063, align 8, !tbaa !181
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit unwind label %bb.j

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit: ; preds = %.lr.ph
  %i.aa = load ptr, ptr %.sroa.053.063, align 8, !tbaa !181
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !212
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.ac ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !220 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !240
  %.not.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit
  %i.aj = load i32, ptr %i.ae, align 4, !tbaa !93
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !93
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !220
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.f:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !219 ; 4 uses
  %i.am = ptrtoint ptr %i.ag to i64
  %i.an = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 5 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775804
  br i1 %i.ap, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
          to label %.noexc43 unwind label %.loopexit.split-lp

.noexc43:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.aq = ashr exact i64 %i.ao, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 2305843009213693951)
  %i.au = select i1 %i.as, i64 2305843009213693951, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 2
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #27
          to label %.noexc44 unwind label %.loopexit ; 4 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  %i.ay = load i32, ptr %i.ae, align 4, !tbaa !93
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !93
  %i.az = icmp sgt i64 %i.ao, 0
  br i1 %i.az, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %.noexc44
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aw, ptr align 4 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %.noexc44
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %.not.i17.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bb = load ptr, ptr %i.ah, align 8, !tbaa !240
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.bd) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.aw, ptr %i.ad, align 8, !tbaa !219
  store ptr %i.ba, ptr %i.af, align 8, !tbaa !220
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.be, ptr %i.ah, align 8, !tbaa !240
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.053.063, i64 16 ; 2 uses
  %.not61 = icmp eq ptr %i.bf, %i.v
  br i1 %.not61, label %.preheader, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit, %.preheader
  %i.bh = phi ptr [ %i.o, %.preheader ], [ %i.cp, %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit ]
  %i.bi = phi ptr [ %i.n, %.preheader ], [ %i.cq, %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit ]
  %i.bj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS9_IiSaIiEESaISB_EEESaISE_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_IiSaIiEESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit unwind label %bb.p ; 5 uses

.lr.ph65:                                         ; preds = %.preheader, %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit
  %i.bk = phi ptr [ %i.cq, %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit ], [ %i.n, %.preheader ]
  %.03064 = phi i64 [ %i.co, %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit ], [ 0, %.preheader ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.03064 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !280 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !280 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bm, %i.bo
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph65
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 2
  %i.bt = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bs, i1 true)
  %i.bu = shl nuw nsw i64 %i.bt, 1
  %i.bv = xor i64 %i.bu, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.bm, ptr %i.bo, i64 noundef %i.bv)
          to label %.noexc46 unwind label %bb.l

.noexc46:                                         ; preds = %bb.k
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.bm, ptr %i.bo)
          to label %.noexc46._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge unwind label %bb.l

.noexc46._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge: ; preds = %.noexc46
  %.pre = load ptr, ptr %i.bl, align 8, !tbaa !280
  %.pre67 = load ptr, ptr %i.bn, align 8, !tbaa !220
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit: ; preds = %.noexc46._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge, %.lr.ph65
  %i.bw = phi ptr [ %.pre67, %.noexc46._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge ], [ %i.bm, %.lr.ph65 ]
  %i.bx = phi ptr [ %.pre, %.noexc46._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge ], [ %i.bm, %.lr.ph65 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.by = load ptr, ptr %1, align 8, !tbaa !195
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %.03064 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !198
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !200
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = lshr exact i64 %i.cf, 3
  %i.ch = ptrtoint ptr %i.bw to i64
  %i.ci = ptrtoint ptr %i.bx to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = lshr exact i64 %i.cj, 2
  %i.cl = sub nsw i64 %i.cg, %i.ck
  %i.cm = trunc i64 %i.cl to i32
  store i32 %i.cm, ptr %i.a, align 4, !tbaa !93
  %i.cn = invoke ptr @_ZNSt6vectorIiSaIiEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr %i.bx, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit unwind label %bb.m ; 0 uses

_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.co = add nuw i64 %.03064, 1                  ; 2 uses
  %i.cp = load ptr, ptr %i.p, align 8, !tbaa !215 ; 2 uses
  %i.cq = load ptr, ptr %4, align 8, !tbaa !216   ; 3 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = sdiv exact i64 %i.ct, 24
  %i.cv = icmp ult i64 %i.co, %i.cu
  br i1 %i.cv, label %.lr.ph65, label %._crit_edge, !llvm.loop !626

end_hunk_0
