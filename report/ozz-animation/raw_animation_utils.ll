Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/raw_animation_utils?download=true
inline.NumInlined: 692
inline.NumDeleted: 361
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEE:bb.a
  %.not.i.i.i75 = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i75, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i73
  %i.am = load float, ptr %.sroa.02.06.i74, align 4, !tbaa !12
  store float %i.am, ptr %i.ak, align 4, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store ptr %i.an, ptr %i.j, align 8, !tbaa !47
  br label %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_11RotationKeyEEEDaRKT_.exit.i"

bb.i:                                             ; preds = %.lr.ph.i73
  invoke void @_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ak, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.02.06.i74)
          to label %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_11RotationKeyEEEDaRKT_.exit.i" unwind label %.loopexit.split-lp.loopexit

"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_11RotationKeyEEEDaRKT_.exit.i": ; preds = %bb.i, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i74, i64 20 ; 2 uses
  %.not.i76 = icmp eq ptr %i.ao, %i.aj
  br i1 %.not.i76, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit", label %.lr.ph.i73, !llvm.loop !106

"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit": ; preds = %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_11RotationKeyEEEDaRKT_.exit.i", %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation14TranslationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit"
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !123 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !123 ; 2 uses
  %.not5.i78 = icmp eq ptr %i.aq, %i.as
  br i1 %.not5.i78, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit", label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit", %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_8ScaleKeyEEEDaRKT_.exit.i"
  %.sroa.02.06.i80 = phi ptr [ %i.ax, %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_8ScaleKeyEEEDaRKT_.exit.i" ], [ %i.aq, %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit" ] ; 3 uses
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !47  ; 4 uses
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !48
  %.not.i.i.i81 = icmp eq ptr %i.at, %i.au
  br i1 %.not.i.i.i81, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i79
  %i.av = load float, ptr %.sroa.02.06.i80, align 4, !tbaa !12
  store float %i.av, ptr %i.at, align 4, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store ptr %i.aw, ptr %i.j, align 8, !tbaa !47
  br label %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_8ScaleKeyEEEDaRKT_.exit.i"

bb.k:                                             ; preds = %.lr.ph.i79
  invoke void @_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.at, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.02.06.i80)
          to label %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_8ScaleKeyEEEDaRKT_.exit.i" unwind label %.loopexit107

"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_8ScaleKeyEEEDaRKT_.exit.i": ; preds = %bb.k, %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i80, i64 16 ; 2 uses
  %.not.i82 = icmp eq ptr %i.ax, %i.as
  br i1 %.not.i82, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit", label %.lr.ph.i79, !llvm.loop !107

"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit": ; preds = %"_ZZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEEENK3$_0clINS2_8ScaleKeyEEEDaRKT_.exit.i", %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation11RotationKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit"
  %i.ay = load ptr, ptr %3, align 8, !tbaa !38    ; 6 uses
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !38  ; 4 uses
  %.not.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i, label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKfS3_EES8_.exit, label %bb.l

bb.l:                                             ; preds = %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit"
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 2
  %i.be = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bd, i1 true)
  %i.bf = shl nuw nsw i64 %i.be, 1
  %i.bg = xor i64 %i.bf, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.ay, ptr %i.az, i64 noundef %i.bg)
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc84:                                         ; preds = %bb.l
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.ay, ptr %i.az)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit: ; preds = %.noexc84
  %.pre = load ptr, ptr %3, align 8, !tbaa !38    ; 8 uses
  %.pre128 = load ptr, ptr %i.j, align 8, !tbaa !38 ; 8 uses
  %i.bh = icmp eq ptr %.pre, %.pre128
  br i1 %i.bh, label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKfS3_EES8_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit, %bb.m
  %.sroa.09.0.i.i.i = phi ptr [ %i.bi, %bb.m ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit ] ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 4 ; 3 uses
  %.not.i.i.i86 = icmp eq ptr %i.bi, %.pre128
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKfS3_EES8_.exit, label %bb.m

bb.m:                                             ; preds = %.preheader.i.i.i
  %i.bj = load float, ptr %.sroa.09.0.i.i.i, align 4, !tbaa !12 ; 2 uses
  %i.bk = load float, ptr %i.bi, align 4, !tbaa !12
  %i.bl = fcmp oeq float %i.bj, %i.bk
  br i1 %i.bl, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !108

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i: ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 8 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.bm, %.pre128
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i, %bb.o
  %i.bn = phi float [ %i.bs, %bb.o ], [ %i.bj, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i ] ; 2 uses
  %i.bo = phi ptr [ %i.bt, %bb.o ], [ %i.bm, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i ] ; 2 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.o ], [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i ] ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12 ; 3 uses
  %i.bq = fcmp oeq float %i.bn, %i.bp
  br i1 %i.bq, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 4 ; 2 uses
  store float %i.bp, ptr %i.br, align 4, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i
  %i.bs = phi float [ %i.bn, %.lr.ph.i.i ], [ %i.bp, %bb.n ]
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.br, %bb.n ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %.not.i.i87 = icmp eq ptr %i.bt, %.pre128
  br i1 %.not.i.i87, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit, label %.lr.ph.i.i, !llvm.loop !109

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit: ; preds = %bb.o, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i ], [ %.sroa.0.1.i.i, %bb.o ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 4 ; 2 uses
  %.not.i.i88 = icmp eq ptr %i.bu, %.pre128
  br i1 %.not.i.i88, label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKfS3_EES8_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEES8_ET0_T_SA_S9_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEES8_ET0_T_SA_S9_.exit.i.i: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %.pre to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = getelementptr inbounds i8, ptr %.pre, i64 %i.bx ; 2 uses
  store ptr %i.by, ptr %i.j, align 8, !tbaa !47
  br label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKfS3_EES8_.exit

_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKfS3_EES8_.exit: ; preds = %.preheader.i.i.i, %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit", %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEES8_ET0_T_SA_S9_.exit.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit
  %i.bz = phi ptr [ %i.ay, %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit" ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit ], [ %.pre, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEES8_ET0_T_SA_S9_.exit.i.i ], [ %.pre, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit ], [ %.pre, %.preheader.i.i.i ] ; 2 uses
  %i.ca = phi ptr [ %i.ay, %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEEZNS4_17ExtractTimePointsERKS5_RKNS2_4spanIKsEEE3$_0ET0_T_SN_SM_.exit" ], [ %.pre128, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEEvT_S9_.exit ], [ %i.by, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEES8_ET0_T_SA_S9_.exit.i.i ], [ %.pre128, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEEET_S9_S9_.exit ], [ %.pre128, %.preheader.i.i.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.045119, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.cb, %i.f
  br i1 %.not, label %.critedge58, label %bb.c

.loopexit107:                                     ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.i
  %lpad.loopexit108 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.g
  %lpad.loopexit111 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %.noexc84
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit107
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit107 ], [ %lpad.loopexit108, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit111, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %lpad.phi

.critedge58:                                      ; preds = %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE5eraseEN9__gnu_cxx17__normal_iteratorIPKfS3_EES8_.exit
  store i8 1, ptr %0, align 8, !tbaa !117
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = ptrtoint ptr %i.bz to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i90 = icmp eq ptr %i.ca, %i.bz
  br i1 %.not.i.i.i.i.i90, label %_ZNSt12_Vector_baseIfN3ozz12StdAllocatorIfEEEC2EmRKS2_.exit.i.i91, label %bb.p

bb.p:                                             ; preds = %.critedge58
  %i.ch = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.q unwind label %bb.r       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !42
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef ptr %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, i64 noundef %i.cg, i64 noundef 4)
          to label %_ZNSt12_Vector_baseIfN3ozz12StdAllocatorIfEEEC2EmRKS2_.exit.i.i91 unwind label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #18
  unreachable

_ZNSt12_Vector_baseIfN3ozz12StdAllocatorIfEEEC2EmRKS2_.exit.i.i91: ; preds = %.critedge58.thread, %bb.q, %.critedge58
  %i.co = phi i64 [ 0, %.critedge58 ], [ %i.cg, %bb.q ], [ 0, %.critedge58.thread ]
  %i.cp = phi ptr [ %i.cd, %.critedge58 ], [ %i.cd, %bb.q ], [ %i.h, %.critedge58.thread ]
  %i.cq = phi ptr [ %i.cc, %.critedge58 ], [ %i.cc, %bb.q ], [ %i.g, %.critedge58.thread ]
  %i.cr = phi ptr [ null, %.critedge58 ], [ %i.cl, %bb.q ], [ null, %.critedge58.thread ] ; 9 uses
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !46
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.co
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !48
  %i.cv = load ptr, ptr %3, align 8, !tbaa !38    ; 7 uses
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !38 ; 3 uses
  %.not13.i.i.i92 = icmp eq ptr %i.cv, %i.cw
  br i1 %.not13.i.i.i92, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %_ZNSt12_Vector_baseIfN3ozz12StdAllocatorIfEEEC2EmRKS2_.exit.i.i91
  %4 = ptrtoaddr ptr %i.cv to i64                 ; 2 uses
  %i.cx = ptrtoaddr ptr %i.cr to i64
  %i.cy = ptrtoaddr ptr %i.cw to i64
  %i.cz = add i64 %i.cy, -4
  %i.da = sub i64 %i.cz, %4                       ; 3 uses
  %i.db = lshr i64 %i.da, 2
  %i.dc = add nuw nsw i64 %i.db, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.da, 28
  %i.dd = sub i64 %4, %i.cx
  %diff.check = icmp ugt i64 %i.dd, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i93.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check169 = icmp ult i64 %i.da, 124
  br i1 %min.iters.check169, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.de = and i64 %i.dc, 24
  %n.vec = and i64 %i.dc, 9223372036854775776     ; 4 uses
  %i.df = shl i64 %n.vec, 2                       ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cr, i64 %i.df  ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cv, i64 %i.df
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.di = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cr, i64 %i.di ; 4 uses
  %next.gep170 = getelementptr i8, ptr %i.cv, i64 %i.di ; 4 uses
  %i.dj = getelementptr i8, ptr %next.gep170, i64 32
  %i.dk = getelementptr i8, ptr %next.gep170, i64 64
  %i.dl = getelementptr i8, ptr %next.gep170, i64 96
  %wide.load = load <8 x float>, ptr %next.gep170, align 4, !tbaa !12
  %wide.load171 = load <8 x float>, ptr %i.dj, align 4, !tbaa !12
  %wide.load172 = load <8 x float>, ptr %i.dk, align 4, !tbaa !12
  %wide.load173 = load <8 x float>, ptr %i.dl, align 4, !tbaa !12
  %i.dm = getelementptr i8, ptr %next.gep, i64 32
  %i.dn = getelementptr i8, ptr %next.gep, i64 64
  %i.do = getelementptr i8, ptr %next.gep, i64 96
  store <8 x float> %wide.load, ptr %next.gep, align 4, !tbaa !12
  store <8 x float> %wide.load171, ptr %i.dm, align 4, !tbaa !12
  store <8 x float> %wide.load172, ptr %i.dn, align 4, !tbaa !12
  store <8 x float> %wide.load173, ptr %i.do, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.de, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i93.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec175 = and i64 %i.dc, 9223372036854775800  ; 3 uses
  %i.dq = shl i64 %n.vec175, 2                    ; 2 uses
  %i.dr = getelementptr i8, ptr %i.cr, i64 %i.dq  ; 2 uses
  %i.ds = getelementptr i8, ptr %i.cv, i64 %i.dq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index176 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next180, %vec.epilog.vector.body ] ; 2 uses
  %i.dt = shl i64 %index176, 2                    ; 2 uses
  %next.gep177 = getelementptr i8, ptr %i.cr, i64 %i.dt
  %next.gep178 = getelementptr i8, ptr %i.cv, i64 %i.dt
  %wide.load179 = load <8 x float>, ptr %next.gep178, align 4, !tbaa !12
  store <8 x float> %wide.load179, ptr %next.gep177, align 4, !tbaa !12
  %index.next180 = add nuw i64 %index176, 8       ; 2 uses
  %i.du = icmp eq i64 %index.next180, %n.vec175
  br i1 %i.du, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !111

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n181 = icmp eq i64 %i.dc, %n.vec175
  br i1 %cmp.n181, label %.loopexit, label %.lr.ph.i.i.i93.preheader

.lr.ph.i.i.i93.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.i.i94.ph = phi ptr [ %i.cr, %iter.check ], [ %i.dg, %vec.epilog.iter.check ], [ %i.dr, %vec.epilog.middle.block ]
  %.sroa.010.014.i.i.i95.ph = phi ptr [ %i.cv, %iter.check ], [ %i.dh, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i93

.lr.ph.i.i.i93:                                   ; preds = %.lr.ph.i.i.i93.preheader, %.lr.ph.i.i.i93
  %.015.i.i.i94 = phi ptr [ %i.dx, %.lr.ph.i.i.i93 ], [ %.015.i.i.i94.ph, %.lr.ph.i.i.i93.preheader ] ; 2 uses
  %.sroa.010.014.i.i.i95 = phi ptr [ %i.dw, %.lr.ph.i.i.i93 ], [ %.sroa.010.014.i.i.i95.ph, %.lr.ph.i.i.i93.preheader ] ; 2 uses
  %i.dv = load float, ptr %.sroa.010.014.i.i.i95, align 4, !tbaa !12
  store float %i.dv, ptr %.015.i.i.i94, align 4, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i95, i64 4 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.015.i.i.i94, i64 4 ; 2 uses
  %.not.i.i.i96 = icmp eq ptr %i.dw, %i.cw
  br i1 %.not.i.i.i96, label %.loopexit, label %.lr.ph.i.i.i93, !llvm.loop !112

.loopexit:                                        ; preds = %.lr.ph.i.i.i93, %middle.block, %vec.epilog.middle.block, %_ZNSt12_Vector_baseIfN3ozz12StdAllocatorIfEEEC2EmRKS2_.exit.i.i91
  %.0.lcssa.i.i.i97 = phi ptr [ %i.cr, %_ZNSt12_Vector_baseIfN3ozz12StdAllocatorIfEEEC2EmRKS2_.exit.i.i91 ], [ %i.dr, %vec.epilog.middle.block ], [ %i.dg, %middle.block ], [ %i.dx, %.lr.ph.i.i.i93 ]
  store ptr %.0.lcssa.i.i.i97, ptr %i.cs, align 8, !tbaa !47
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit70, %.loopexit
  %i.dy = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %.not.i.i.i98 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i98, label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit99, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dz = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.u unwind label %bb.v       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !42
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  invoke void %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef nonnull %i.dy)
          to label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit99 unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  call void @__clang_call_terminate(ptr %i.ee) #18
  unreachable

_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit99: ; preds = %bb.s, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit99, %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIbSt6vectorIfN3ozz12StdAllocatorIfEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.b)
          to label %_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #18
  unreachable

_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev.exit:  ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIsN3ozz12StdAllocatorIsEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIsN3ozz12StdAllocatorIsEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.a)
          to label %_ZNSt12_Vector_baseIsN3ozz12StdAllocatorIsEEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #18
  unreachable

_ZNSt12_Vector_baseIsN3ozz12StdAllocatorIsEEED2Ev.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.26") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.21", align 8    ; 8 uses
  %3 = alloca %"struct.ozz::span.25", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = load ptr, ptr %1, align 8, !tbaa !23
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 72
  %i.h = shl i64 %i.g, 32                         ; 3 uses
  %i.i = ashr exact i64 %i.h, 32                  ; 2 uses
  %i.j = icmp ugt i64 %i.i, 4611686018427387903
  br i1 %i.j, label %bb.b, label %_ZNSt6vectorIsN3ozz12StdAllocatorIsEEE17_S_check_init_lenEmRKS2_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #19
end_hunk_0
begin_hunk_1_@_ZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationE:bb.a
  %induction = add <8 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind16 = phi <8 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next19, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = shl i64 %index15, 1
  %next.gep17 = getelementptr i8, ptr %i.p, i64 %i.ak
  store <8 x i16> %vec.ind16, ptr %next.gep17, align 2, !tbaa !30
  %index.next18 = add nuw i64 %index15, 8         ; 2 uses
  %vec.ind.next19 = add <8 x i16> %vec.ind16, splat (i16 8)
  %i.al = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !125

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.x, %n.vec14
  br i1 %cmp.n20, label %.loopexit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.ph = phi i16 [ 0, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.p, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.07.i = phi i16 [ %i.am, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %i.an, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i16 %.07.i, ptr %.sroa.02.06.i, align 2, !tbaa !30
  %i.am = add i16 %.07.i, 1
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 2 ; 2 uses
  %.not.i = icmp eq ptr %i.an, %scevgep.i.i.i
  br i1 %.not.i, label %.loopexit.loopexit, label %.lr.ph.i, !llvm.loop !126

.loopexit.loopexit:                               ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.ao = ptrtoint ptr %scevgep.i.i.i to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt6vectorIsN3ozz12StdAllocatorIsEEEC2EmRKS2_.exit.thread
  %.0.lcssa.i.i.i11 = phi i64 [ 0, %_ZNSt6vectorIsN3ozz12StdAllocatorIsEEEC2EmRKS2_.exit.thread ], [ %i.ao, %.loopexit.loopexit ]
  %i.ap = phi ptr [ null, %_ZNSt6vectorIsN3ozz12StdAllocatorIsEEEC2EmRKS2_.exit.thread ], [ %i.p, %.loopexit.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %.0.lcssa.i.i.i11, %i.aq
  %i.as = ashr exact i64 %i.ar, 1
  store ptr %i.ap, ptr %3, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.as, ptr %i.at, align 8
  invoke void @_ZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEE(ptr dead_on_unwind writable sret(%"struct.std::pair.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIsN3ozz12StdAllocatorIsEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %i.ap)
          to label %_ZNSt6vectorIsN3ozz12StdAllocatorIsEEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #18
  unreachable

_ZNSt6vectorIsN3ozz12StdAllocatorIsEEED2Ev.exit:  ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.j:                                             ; preds = %.loopexit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZNSt6vectorIsN3ozz12StdAllocatorIsEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.ba
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfN3ozz12StdAllocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIfN3ozz12StdAllocatorIfEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.a)
          to label %_ZNSt12_Vector_baseIfN3ozz12StdAllocatorIfEEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #18
  unreachable

_ZNSt12_Vector_baseIfN3ozz12StdAllocatorIfEEED2Ev.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN3ozz9animation7offline21FixedRateSamplingTimeC2Eff(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, float noundef %1, float noundef %2) unnamed_addr #11 align 2 {
bb.a:
  store float %1, ptr %0, align 8, !tbaa !128
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = fdiv float 1.000000e+00, %2
  store float %i.b, ptr %i.a, align 4, !tbaa !129
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call float @llvm.fmuladd.f32(float %1, float %2, float 1.000000e+00)
  %i.e = tail call noundef float @llvm.ceil.f32(float %i.d)
  %i.f = fptoui float %i.e to i64
  store i64 %i.f, ptr %i.c, align 8, !tbaa !130
  ret void
}

declare noundef ptr @_ZN3ozz6memory17default_allocatorEv() local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIsN3ozz12StdAllocatorIsEEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !44     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775806
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIsN3ozz12StdAllocatorIsEEE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

_ZNKSt6vectorIsN3ozz12StdAllocatorIsEEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 1                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add i64 %.sroa.speculated.i, %i.h        ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 4611686018427387903)
  %i.l = select i1 %i.j, i64 4611686018427387903, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZNKSt6vectorIsN3ozz12StdAllocatorIsEEE12_M_check_lenEmPKc.exit
  %i.p = shl nuw nsw i64 %i.l, 1
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %i.p, i64 noundef 2)
          to label %bb.e unwind label %bb.d       ; 10 uses

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIsN3ozz12StdAllocatorIsEEE12_M_check_lenEmPKc.exit
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n
  %i.x = load i16, ptr %2, align 2, !tbaa !30
  store i16 %i.x, ptr %i.w, align 2, !tbaa !30
  %.not13.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %3 = ptrtoaddr ptr %i.t to i64
  %i.y = add i64 %i.m, -2
  %i.z = sub i64 %i.y, %i.e                       ; 3 uses
  %i.aa = lshr i64 %i.z, 1
  %i.ab = add nuw i64 %i.aa, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.z, 14
  %i.ac = sub i64 %i.e, %3
  %diff.check = icmp ugt i64 %i.ac, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check47 = icmp ult i64 %i.z, 126
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.ab, 56
  %n.vec = and i64 %i.ab, -64                     ; 4 uses
  %i.ae = shl i64 %n.vec, 1                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.c, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ah ; 4 uses
  %next.gep48 = getelementptr i8, ptr %i.c, i64 %i.ah ; 4 uses
  %i.ai = getelementptr i8, ptr %next.gep48, i64 32
  %i.aj = getelementptr i8, ptr %next.gep48, i64 64
  %i.ak = getelementptr i8, ptr %next.gep48, i64 96
  %wide.load = load <16 x i16>, ptr %next.gep48, align 2, !tbaa !30
  %wide.load49 = load <16 x i16>, ptr %i.ai, align 2, !tbaa !30
  %wide.load50 = load <16 x i16>, ptr %i.aj, align 2, !tbaa !30
  %wide.load51 = load <16 x i16>, ptr %i.ak, align 2, !tbaa !30
  %i.al = getelementptr i8, ptr %next.gep, i64 32
  %i.am = getelementptr i8, ptr %next.gep, i64 64
  %i.an = getelementptr i8, ptr %next.gep, i64 96
  store <16 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !30
  store <16 x i16> %wide.load49, ptr %i.al, align 2, !tbaa !30
  store <16 x i16> %wide.load50, ptr %i.am, align 2, !tbaa !30
  store <16 x i16> %wide.load51, ptr %i.an, align 2, !tbaa !30
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %i.ab, -8                    ; 3 uses
  %i.ap = shl i64 %n.vec53, 1                     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.t, i64 %i.ap   ; 2 uses
  %i.ar = getelementptr i8, ptr %i.c, i64 %i.ap
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index54 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl i64 %index54, 1                     ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.t, i64 %i.as
  %next.gep56 = getelementptr i8, ptr %i.c, i64 %i.as
  %wide.load57 = load <8 x i16>, ptr %next.gep56, align 2, !tbaa !30
  store <8 x i16> %wide.load57, ptr %next.gep55, align 2, !tbaa !30
  %index.next58 = add nuw i64 %index54, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next58, %n.vec53
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !132

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %i.ab, %n.vec53
  br i1 %cmp.n59, label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  %.sroa.010.014.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %.sroa.010.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.au = load i16, ptr %.sroa.010.014.i.i, align 2, !tbaa !30
  store i16 %i.au, ptr %.015.i.i, align 2, !tbaa !30
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 2 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !133

_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.e
  %.0.lcssa.i.i = phi ptr [ %i.t, %bb.e ], [ %i.aq, %vec.epilog.middle.block ], [ %i.af, %middle.block ], [ %i.aw, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i63 = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 2 ; 7 uses
  %.not13.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit34, label %iter.check83

iter.check83:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit
  %i.ay = add i64 %i.d, -2
  %i.az = sub i64 %i.ay, %i.m                     ; 3 uses
  %i.ba = lshr i64 %i.az, 1
  %i.bb = add nuw i64 %i.ba, 1                    ; 5 uses
  %min.iters.check65 = icmp ult i64 %i.az, 14
  br i1 %min.iters.check65, label %.lr.ph.i.i29.preheader, label %vector.memcheck62

vector.memcheck62:                                ; preds = %iter.check83
  %i.bc = sub i64 %.0.lcssa.i.i63, %i.m
  %i.bd = add i64 %i.bc, 1
  %diff.check64 = icmp ult i64 %i.bd, 127
  br i1 %diff.check64, label %.lr.ph.i.i29.preheader, label %vector.main.loop.iter.check66

vector.main.loop.iter.check66:                    ; preds = %vector.memcheck62
  %min.iters.check67 = icmp ult i64 %i.az, 126
  br i1 %min.iters.check67, label %vec.epilog.ph87, label %vector.ph68

vector.ph68:                                      ; preds = %vector.main.loop.iter.check66
  %i.be = and i64 %i.bb, 56
  %n.vec69 = and i64 %i.bb, -64                   ; 4 uses
  %i.bf = shl i64 %n.vec69, 1                     ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ax, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %1, i64 %i.bf
  br label %vector.body70

vector.body70:                                    ; preds = %vector.ph68, %vector.body70
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next78, %vector.body70 ] ; 2 uses
  %i.bi = shl i64 %index71, 1                     ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.ax, i64 %i.bi ; 4 uses
  %next.gep73 = getelementptr i8, ptr %1, i64 %i.bi ; 4 uses
  %i.bj = getelementptr i8, ptr %next.gep73, i64 32
  %i.bk = getelementptr i8, ptr %next.gep73, i64 64
  %i.bl = getelementptr i8, ptr %next.gep73, i64 96
  %wide.load74 = load <16 x i16>, ptr %next.gep73, align 2, !tbaa !30
  %wide.load75 = load <16 x i16>, ptr %i.bj, align 2, !tbaa !30
  %wide.load76 = load <16 x i16>, ptr %i.bk, align 2, !tbaa !30
  %wide.load77 = load <16 x i16>, ptr %i.bl, align 2, !tbaa !30
  %i.bm = getelementptr i8, ptr %next.gep72, i64 32
  %i.bn = getelementptr i8, ptr %next.gep72, i64 64
  %i.bo = getelementptr i8, ptr %next.gep72, i64 96
  store <16 x i16> %wide.load74, ptr %next.gep72, align 2, !tbaa !30
  store <16 x i16> %wide.load75, ptr %i.bm, align 2, !tbaa !30
  store <16 x i16> %wide.load76, ptr %i.bn, align 2, !tbaa !30
  store <16 x i16> %wide.load77, ptr %i.bo, align 2, !tbaa !30
  %index.next78 = add nuw i64 %index71, 64        ; 2 uses
  %i.bp = icmp eq i64 %index.next78, %n.vec69
  br i1 %i.bp, label %middle.block79, label %vector.body70, !llvm.loop !134

middle.block79:                                   ; preds = %vector.body70
  %cmp.n80 = icmp eq i64 %i.bb, %n.vec69
  br i1 %cmp.n80, label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit34, label %vec.epilog.iter.check85

vec.epilog.iter.check85:                          ; preds = %middle.block79
  %min.epilog.iters.check86 = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check86, label %.lr.ph.i.i29.preheader, label %vec.epilog.ph87, !prof !49

vec.epilog.ph87:                                  ; preds = %vector.main.loop.iter.check66, %vec.epilog.iter.check85
  %vec.epilog.resume.val81 = phi i64 [ %n.vec69, %vec.epilog.iter.check85 ], [ 0, %vector.main.loop.iter.check66 ]
  %n.vec88 = and i64 %i.bb, -8                    ; 3 uses
  %i.bq = shl i64 %n.vec88, 1                     ; 2 uses
  %i.br = getelementptr i8, ptr %i.ax, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %1, i64 %i.bq
  br label %vec.epilog.vector.body89

vec.epilog.vector.body89:                         ; preds = %vec.epilog.vector.body89, %vec.epilog.ph87
  %index90 = phi i64 [ %vec.epilog.resume.val81, %vec.epilog.ph87 ], [ %index.next94, %vec.epilog.vector.body89 ] ; 2 uses
  %i.bt = shl i64 %index90, 1                     ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.ax, i64 %i.bt
  %next.gep92 = getelementptr i8, ptr %1, i64 %i.bt
  %wide.load93 = load <8 x i16>, ptr %next.gep92, align 2, !tbaa !30
  store <8 x i16> %wide.load93, ptr %next.gep91, align 2, !tbaa !30
  %index.next94 = add nuw i64 %index90, 8         ; 2 uses
  %i.bu = icmp eq i64 %index.next94, %n.vec88
  br i1 %i.bu, label %vec.epilog.middle.block95, label %vec.epilog.vector.body89, !llvm.loop !135

vec.epilog.middle.block95:                        ; preds = %vec.epilog.vector.body89
  %cmp.n96 = icmp eq i64 %i.bb, %n.vec88
  br i1 %cmp.n96, label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit34, label %.lr.ph.i.i29.preheader

.lr.ph.i.i29.preheader:                           ; preds = %iter.check83, %vector.memcheck62, %vec.epilog.iter.check85, %vec.epilog.middle.block95
  %.015.i.i30.ph = phi ptr [ %i.ax, %iter.check83 ], [ %i.ax, %vector.memcheck62 ], [ %i.bg, %vec.epilog.iter.check85 ], [ %i.br, %vec.epilog.middle.block95 ]
  %.sroa.010.014.i.i31.ph = phi ptr [ %1, %iter.check83 ], [ %1, %vector.memcheck62 ], [ %i.bh, %vec.epilog.iter.check85 ], [ %i.bs, %vec.epilog.middle.block95 ]
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.preheader, %.lr.ph.i.i29
  %.015.i.i30 = phi ptr [ %i.bx, %.lr.ph.i.i29 ], [ %.015.i.i30.ph, %.lr.ph.i.i29.preheader ] ; 2 uses
  %.sroa.010.014.i.i31 = phi ptr [ %i.bw, %.lr.ph.i.i29 ], [ %.sroa.010.014.i.i31.ph, %.lr.ph.i.i29.preheader ] ; 2 uses
  %i.bv = load i16, ptr %.sroa.010.014.i.i31, align 2, !tbaa !30
  store i16 %i.bv, ptr %.015.i.i30, align 2, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i31, i64 2 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.015.i.i30, i64 2 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.bw, %i.b
  br i1 %.not.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit34, label %.lr.ph.i.i29, !llvm.loop !136

_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit34: ; preds = %.lr.ph.i.i29, %middle.block79, %vec.epilog.middle.block95, %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i33 = phi ptr [ %i.ax, %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit ], [ %i.br, %vec.epilog.middle.block95 ], [ %i.bg, %middle.block79 ], [ %i.bx, %.lr.ph.i.i29 ]
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIsN3ozz12StdAllocatorIsEEE13_M_deallocateEPsm.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit34
  %i.by = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !42
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull %i.c)
          to label %_ZNSt12_Vector_baseIsN3ozz12StdAllocatorIsEEE13_M_deallocateEPsm.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #18
  unreachable

_ZNSt12_Vector_baseIsN3ozz12StdAllocatorIsEEE13_M_deallocateEPsm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPsS0_N3ozz12StdAllocatorIsEEET0_T_S5_S4_RT1_.exit34, %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %0, align 8, !tbaa !44
  store ptr %.0.lcssa.i.i33, ptr %i.a, align 8, !tbaa !35
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.l
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !36
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 16 dereferenceable(80) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !40     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775760
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

_ZNKSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 80                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 115292150460684697)
  %i.l = select i1 %i.j, i64 115292150460684697, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.p = mul nuw nsw i64 %i.l, 80
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %i.p, i64 noundef 16)
          to label %bb.e unwind label %bb.d       ; 5 uses

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.w, ptr noundef nonnull align 16 dereferenceable(80) %2, i64 80, i1 false)
  %.not13.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %i.c, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.015.i.i, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.010.014.i.i, i64 80, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 80 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 80 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %1
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !137

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i, %bb.e
  %.0.lcssa.i.i = phi ptr [ %i.t, %bb.e ], [ %i.y, %.lr.ph.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 80 ; 2 uses
  %.not13.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, %.lr.ph.i.i29
  %.015.i.i30 = phi ptr [ %i.ab, %.lr.ph.i.i29 ], [ %i.z, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.sroa.010.014.i.i31 = phi ptr [ %i.aa, %.lr.ph.i.i29 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.015.i.i30, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.010.014.i.i31, i64 80, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i31, i64 80 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i.i30, i64 80 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, label %.lr.ph.i.i29, !llvm.loop !137

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34: ; preds = %.lr.ph.i.i29, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit
  %.0.lcssa.i.i33 = phi ptr [ %i.z, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ], [ %i.ab, %.lr.ph.i.i29 ]
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34
  %i.ac = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull %i.c)
          to label %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #18
  unreachable

_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIfN3ozz4math8Float4x4EES5_NS1_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %0, align 8, !tbaa !40
  store ptr %.0.lcssa.i.i33, ptr %i.a, align 8, !tbaa !39
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.t, i64 %i.l
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfN3ozz12StdAllocatorIfEEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !46     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775804
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIfN3ozz12StdAllocatorIfEEE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

_ZNKSt6vectorIfN3ozz12StdAllocatorIfEEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 2                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 2305843009213693951)
  %i.l = select i1 %i.j, i64 2305843009213693951, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZNKSt6vectorIfN3ozz12StdAllocatorIfEEE12_M_check_lenEmPKc.exit
  %i.p = shl nuw nsw i64 %i.l, 2
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %i.p, i64 noundef 4)
          to label %bb.e unwind label %bb.d       ; 10 uses

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIfN3ozz12StdAllocatorIfEEE12_M_check_lenEmPKc.exit
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n
  %i.x = load float, ptr %2, align 4, !tbaa !12
  store float %i.x, ptr %i.w, align 4, !tbaa !12
  %.not13.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %3 = ptrtoaddr ptr %i.t to i64
  %i.y = add i64 %i.m, -4
  %i.z = sub i64 %i.y, %i.e                       ; 3 uses
  %i.aa = lshr i64 %i.z, 2
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.z, 28
  %i.ac = sub i64 %i.e, %3
  %diff.check = icmp ugt i64 %i.ac, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check47 = icmp ult i64 %i.z, 124
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.ab, 24
  %n.vec = and i64 %i.ab, 9223372036854775776     ; 4 uses
  %i.ae = shl i64 %n.vec, 2                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.c, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ah ; 4 uses
  %next.gep48 = getelementptr i8, ptr %i.c, i64 %i.ah ; 4 uses
  %i.ai = getelementptr i8, ptr %next.gep48, i64 32
  %i.aj = getelementptr i8, ptr %next.gep48, i64 64
  %i.ak = getelementptr i8, ptr %next.gep48, i64 96
  %wide.load = load <8 x float>, ptr %next.gep48, align 4, !tbaa !12
  %wide.load49 = load <8 x float>, ptr %i.ai, align 4, !tbaa !12
  %wide.load50 = load <8 x float>, ptr %i.aj, align 4, !tbaa !12
  %wide.load51 = load <8 x float>, ptr %i.ak, align 4, !tbaa !12
  %i.al = getelementptr i8, ptr %next.gep, i64 32
  %i.am = getelementptr i8, ptr %next.gep, i64 64
  %i.an = getelementptr i8, ptr %next.gep, i64 96
  store <8 x float> %wide.load, ptr %next.gep, align 4, !tbaa !12
  store <8 x float> %wide.load49, ptr %i.al, align 4, !tbaa !12
  store <8 x float> %wide.load50, ptr %i.am, align 4, !tbaa !12
  store <8 x float> %wide.load51, ptr %i.an, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %i.ab, 9223372036854775800   ; 3 uses
  %i.ap = shl i64 %n.vec53, 2                     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.t, i64 %i.ap   ; 2 uses
  %i.ar = getelementptr i8, ptr %i.c, i64 %i.ap
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index54 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl i64 %index54, 2                     ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.t, i64 %i.as
  %next.gep56 = getelementptr i8, ptr %i.c, i64 %i.as
  %wide.load57 = load <8 x float>, ptr %next.gep56, align 4, !tbaa !12
  store <8 x float> %wide.load57, ptr %next.gep55, align 4, !tbaa !12
  %index.next58 = add nuw i64 %index54, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next58, %n.vec53
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !139

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %i.ab, %n.vec53
  br i1 %cmp.n59, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  %.sroa.010.014.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %.sroa.010.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.au = load float, ptr %.sroa.010.014.i.i, align 4, !tbaa !12
  store float %i.au, ptr %.015.i.i, align 4, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !140

_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.e
  %.0.lcssa.i.i = phi ptr [ %i.t, %bb.e ], [ %i.aq, %vec.epilog.middle.block ], [ %i.af, %middle.block ], [ %i.aw, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i63 = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 4 ; 7 uses
  %.not13.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit34, label %iter.check83

iter.check83:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit
  %i.ay = add i64 %i.d, -4
  %i.az = sub i64 %i.ay, %i.m                     ; 3 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 5 uses
  %min.iters.check65 = icmp ult i64 %i.az, 28
  br i1 %min.iters.check65, label %.lr.ph.i.i29.preheader, label %vector.memcheck62

vector.memcheck62:                                ; preds = %iter.check83
  %i.bc = sub i64 %.0.lcssa.i.i63, %i.m
  %i.bd = add i64 %i.bc, 3
  %diff.check64 = icmp ult i64 %i.bd, 127
  br i1 %diff.check64, label %.lr.ph.i.i29.preheader, label %vector.main.loop.iter.check66

vector.main.loop.iter.check66:                    ; preds = %vector.memcheck62
  %min.iters.check67 = icmp ult i64 %i.az, 124
  br i1 %min.iters.check67, label %vec.epilog.ph87, label %vector.ph68

vector.ph68:                                      ; preds = %vector.main.loop.iter.check66
  %i.be = and i64 %i.bb, 24
  %n.vec69 = and i64 %i.bb, 9223372036854775776   ; 4 uses
  %i.bf = shl i64 %n.vec69, 2                     ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ax, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %1, i64 %i.bf
  br label %vector.body70

vector.body70:                                    ; preds = %vector.ph68, %vector.body70
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next78, %vector.body70 ] ; 2 uses
  %i.bi = shl i64 %index71, 2                     ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.ax, i64 %i.bi ; 4 uses
  %next.gep73 = getelementptr i8, ptr %1, i64 %i.bi ; 4 uses
  %i.bj = getelementptr i8, ptr %next.gep73, i64 32
  %i.bk = getelementptr i8, ptr %next.gep73, i64 64
  %i.bl = getelementptr i8, ptr %next.gep73, i64 96
  %wide.load74 = load <8 x float>, ptr %next.gep73, align 4, !tbaa !12
  %wide.load75 = load <8 x float>, ptr %i.bj, align 4, !tbaa !12
  %wide.load76 = load <8 x float>, ptr %i.bk, align 4, !tbaa !12
  %wide.load77 = load <8 x float>, ptr %i.bl, align 4, !tbaa !12
  %i.bm = getelementptr i8, ptr %next.gep72, i64 32
  %i.bn = getelementptr i8, ptr %next.gep72, i64 64
  %i.bo = getelementptr i8, ptr %next.gep72, i64 96
  store <8 x float> %wide.load74, ptr %next.gep72, align 4, !tbaa !12
  store <8 x float> %wide.load75, ptr %i.bm, align 4, !tbaa !12
  store <8 x float> %wide.load76, ptr %i.bn, align 4, !tbaa !12
  store <8 x float> %wide.load77, ptr %i.bo, align 4, !tbaa !12
  %index.next78 = add nuw i64 %index71, 32        ; 2 uses
  %i.bp = icmp eq i64 %index.next78, %n.vec69
  br i1 %i.bp, label %middle.block79, label %vector.body70, !llvm.loop !141

middle.block79:                                   ; preds = %vector.body70
  %cmp.n80 = icmp eq i64 %i.bb, %n.vec69
  br i1 %cmp.n80, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit34, label %vec.epilog.iter.check85

vec.epilog.iter.check85:                          ; preds = %middle.block79
  %min.epilog.iters.check86 = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check86, label %.lr.ph.i.i29.preheader, label %vec.epilog.ph87, !prof !33

vec.epilog.ph87:                                  ; preds = %vector.main.loop.iter.check66, %vec.epilog.iter.check85
  %vec.epilog.resume.val81 = phi i64 [ %n.vec69, %vec.epilog.iter.check85 ], [ 0, %vector.main.loop.iter.check66 ]
  %n.vec88 = and i64 %i.bb, 9223372036854775800   ; 3 uses
  %i.bq = shl i64 %n.vec88, 2                     ; 2 uses
  %i.br = getelementptr i8, ptr %i.ax, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %1, i64 %i.bq
  br label %vec.epilog.vector.body89

vec.epilog.vector.body89:                         ; preds = %vec.epilog.vector.body89, %vec.epilog.ph87
  %index90 = phi i64 [ %vec.epilog.resume.val81, %vec.epilog.ph87 ], [ %index.next94, %vec.epilog.vector.body89 ] ; 2 uses
  %i.bt = shl i64 %index90, 2                     ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.ax, i64 %i.bt
  %next.gep92 = getelementptr i8, ptr %1, i64 %i.bt
  %wide.load93 = load <8 x float>, ptr %next.gep92, align 4, !tbaa !12
  store <8 x float> %wide.load93, ptr %next.gep91, align 4, !tbaa !12
  %index.next94 = add nuw i64 %index90, 8         ; 2 uses
  %i.bu = icmp eq i64 %index.next94, %n.vec88
  br i1 %i.bu, label %vec.epilog.middle.block95, label %vec.epilog.vector.body89, !llvm.loop !142

vec.epilog.middle.block95:                        ; preds = %vec.epilog.vector.body89
  %cmp.n96 = icmp eq i64 %i.bb, %n.vec88
  br i1 %cmp.n96, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit34, label %.lr.ph.i.i29.preheader

.lr.ph.i.i29.preheader:                           ; preds = %iter.check83, %vector.memcheck62, %vec.epilog.iter.check85, %vec.epilog.middle.block95
  %.015.i.i30.ph = phi ptr [ %i.ax, %iter.check83 ], [ %i.ax, %vector.memcheck62 ], [ %i.bg, %vec.epilog.iter.check85 ], [ %i.br, %vec.epilog.middle.block95 ]
  %.sroa.010.014.i.i31.ph = phi ptr [ %1, %iter.check83 ], [ %1, %vector.memcheck62 ], [ %i.bh, %vec.epilog.iter.check85 ], [ %i.bs, %vec.epilog.middle.block95 ]
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.preheader, %.lr.ph.i.i29
  %.015.i.i30 = phi ptr [ %i.bx, %.lr.ph.i.i29 ], [ %.015.i.i30.ph, %.lr.ph.i.i29.preheader ] ; 2 uses
  %.sroa.010.014.i.i31 = phi ptr [ %i.bw, %.lr.ph.i.i29 ], [ %.sroa.010.014.i.i31.ph, %.lr.ph.i.i29.preheader ] ; 2 uses
  %i.bv = load float, ptr %.sroa.010.014.i.i31, align 4, !tbaa !12
  store float %i.bv, ptr %.015.i.i30, align 4, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i31, i64 4 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.015.i.i30, i64 4 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.bw, %i.b
  br i1 %.not.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit34, label %.lr.ph.i.i29, !llvm.loop !143

_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit34: ; preds = %.lr.ph.i.i29, %middle.block79, %vec.epilog.middle.block95, %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i33 = phi ptr [ %i.ax, %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit ], [ %i.br, %vec.epilog.middle.block95 ], [ %i.bg, %middle.block79 ], [ %i.bx, %.lr.ph.i.i29 ]
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIfN3ozz12StdAllocatorIfEEE13_M_deallocateEPfm.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit34
  %i.by = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !42
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull %i.c)
          to label %_ZNSt12_Vector_baseIfN3ozz12StdAllocatorIfEEE13_M_deallocateEPfm.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #18
  unreachable

_ZNSt12_Vector_baseIfN3ozz12StdAllocatorIfEEE13_M_deallocateEPfm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3ozz12StdAllocatorIfEEET0_T_S5_S4_RT1_.exit34, %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %0, align 8, !tbaa !46
  store ptr %.0.lcssa.i.i33, ptr %i.a, align 8, !tbaa !47
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.l
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_.exit
  %i.h = icmp eq i64 %i.au, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !144

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !12 ; 2 uses
  %i.k = load float, ptr %0, align 4, !tbaa !12
  store float %i.k, ptr %i.i, align 4, !tbaa !12
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.034.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load float, ptr %i.t, align 4, !tbaa !12
  %i.x = load float, ptr %i.v, align 4, !tbaa !12
  %i.y = fcmp olt float %i.w, %i.x
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.u, i64 %i.s ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load float, ptr %i.z, align 4, !tbaa !12
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i.i.i
  store float %i.aa, ptr %i.ab, align 4, !tbaa !12
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !0

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.m, 4
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
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store float %i.al, ptr %i.am, align 4, !tbaa !12
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfN3ozz12StdAllocatorIfEEEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader
end_hunk_1
