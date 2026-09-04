Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/application?download=true
inline.NumInlined: 3898
inline.NumDeleted: 1811
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt17_Function_handlerIFvRKSt6vectorISt4pairIidESaIS2_EEPdEZN8LightGBM9PredictorC1EPNS9_8BoostingEiibbbbidEUlS6_S7_E2_E9_M_invokeERKSt9_Any_dataS6_OS7_:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKSt6vectorISt4pairIidESaIS2_EEPdEZN8LightGBM9PredictorC1EPNS9_8BoostingEiibbbbidEUlS6_S7_E2_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM9PredictorC1EPNS1_8BoostingEiibbbbidEUlRKSt6vectorISt4pairIidESaIS7_EEPdE2_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN8LightGBM9PredictorC1EPNS_8BoostingEiibbbbidEUlRKSt6vectorISt4pairIidESaIS5_EEPdE2_, ptr %0, align 8, !tbaa !212
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM9PredictorC1EPNS1_8BoostingEiibbbbidEUlRKSt6vectorISt4pairIidESaIS7_EEPdE2_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !197
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM9PredictorC1EPNS1_8BoostingEiibbbbidEUlRKSt6vectorISt4pairIidESaIS7_EEPdE2_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !273
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM9PredictorC1EPNS1_8BoostingEiibbbbidEUlRKSt6vectorISt4pairIidESaIS7_EEPdE2_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN8LightGBM9PredictorC1EPNS1_8BoostingEiibbbbidEUlRKSt6vectorISt4pairIidESaIS7_EEPdE2_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8LightGBM9PredictorC1EPNS_8BoostingEiibbbbidENKUlRKSt6vectorISt4pairIidESaIS5_EEPdE2_clES9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unordered_map.258", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !576    ; 7 uses
  %i.b = tail call i32 @omp_get_thread_num()
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !263  ; 2 uses
  %i.e = icmp sgt i32 %i.d, 100000
  %.pre = load ptr, ptr %1, align 8, !tbaa !275   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !275  ; 3 uses
  br i1 %i.e, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %.pre to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !577
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN8LightGBM9Predictor16CopyToPredictMapERKSt6vectorISt4pairIidESaIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_map.258") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !261  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %2, ptr noundef nonnull %i.p)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !277  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.v = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !161 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #29
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.d
  %i.w = load ptr, ptr %3, align 8, !tbaa !278
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !279
  %i.z = shl i64 %i.y, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.w, i8 0, i64 %i.z, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.aa = load ptr, ptr %3, align 8, !tbaa !278   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !279
  %i.ae = shl i64 %i.ad, 3
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #29
  br label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEED2Ev.exit

_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN8LightGBM9Predictor18ClearPredictBufferEPdmRKSt6vectorISt4pairIidESaIS4_EE.exit

bb.f:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.af

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %i.ah = sext i32 %i.b to i64                    ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !269
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !265 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not11.i = icmp eq ptr %.pre, %i.g
  br i1 %.not11.i, label %_ZN8LightGBM9Predictor19CopyToPredictBufferEPdRKSt6vectorISt4pairIidESaIS4_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.h
  %.sroa.08.012.i = phi ptr [ %i.as, %bb.h ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.am = load i32, ptr %.sroa.08.012.i, align 8, !tbaa !281 ; 2 uses
  %i.an = icmp slt i32 %i.am, %i.d
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i, i64 8
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !282
  %i.aq = sext i32 %i.am to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.aq
  store double %i.ap, ptr %i.ar, align 8, !tbaa !121
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.as, %i.g
  br i1 %.not.i, label %_ZN8LightGBM9Predictor19CopyToPredictBufferEPdRKSt6vectorISt4pairIidESaIS4_EE.exit, label %.lr.ph.i

_ZN8LightGBM9Predictor19CopyToPredictBufferEPdRKSt6vectorISt4pairIidESaIS4_EE.exit: ; preds = %bb.h, %._crit_edge
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !261 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !117
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 160
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef %i.ak, ptr noundef %2, ptr noundef nonnull %i.au)
  %i.ay = load ptr, ptr %i.ag, align 8, !tbaa !269
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.ah ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !265 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !267
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = load ptr, ptr %i.al, align 8, !tbaa !284 ; 3 uses
  %i.bi = load ptr, ptr %1, align 8, !tbaa !285   ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 4
  %i.bn = lshr i64 %i.bg, 1
  %i.bo = icmp ugt i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8LightGBM9Predictor19CopyToPredictBufferEPdRKSt6vectorISt4pairIidESaIS4_EE.exit
  %.not13.i = icmp eq ptr %i.bi, %i.bh
  br i1 %.not13.i, label %_ZN8LightGBM9Predictor18ClearPredictBufferEPdmRKSt6vectorISt4pairIidESaIS4_EE.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.preheader.i
  %i.bp = load i32, ptr %i.c, align 8, !tbaa !263
  br label %bb.j

bb.i:                                             ; preds = %_ZN8LightGBM9Predictor19CopyToPredictBufferEPdRKSt6vectorISt4pairIidESaIS4_EE.exit
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ba, i8 0, i64 %i.bf, i1 false)
  br label %_ZN8LightGBM9Predictor18ClearPredictBufferEPdmRKSt6vectorISt4pairIidESaIS4_EE.exit

bb.j:                                             ; preds = %bb.l, %.lr.ph.i12
  %.sroa.010.014.i = phi ptr [ %i.bi, %.lr.ph.i12 ], [ %i.bu, %bb.l ] ; 2 uses
  %i.bq = load i32, ptr %.sroa.010.014.i, align 8, !tbaa !281 ; 2 uses
  %i.br = icmp slt i32 %i.bq, %i.bp
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = sext i32 %i.bq to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bs
  store double 0.000000e+00, ptr %i.bt, align 8, !tbaa !121
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16 ; 2 uses
  %.not.i13 = icmp eq ptr %i.bu, %i.bh
  br i1 %.not.i13, label %_ZN8LightGBM9Predictor18ClearPredictBufferEPdmRKSt6vectorISt4pairIidESaIS4_EE.exit, label %bb.j

_ZN8LightGBM9Predictor18ClearPredictBufferEPdmRKSt6vectorISt4pairIidESaIS4_EE.exit: ; preds = %bb.l, %bb.i, %.preheader.i, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEED2Ev.exit
  ret void
}

declare void @_ZN8LightGBM7Network9AllreduceEPciiS1_RKPFvPKcS1_iiE(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8LightGBM7Network17GlobalSyncUpByMinIiEET_S2_ENUlPKcPciiE_8__invokeES4_S5_ii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #8 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.i, label %_ZZN8LightGBM7Network17GlobalSyncUpByMinIiEET_S2_ENKUlPKcPciiE_clES4_S5_ii.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = sext i32 %2 to i64                       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.018.i = phi i32 [ 0, %.lr.ph.i ], [ %i.h, %bb.d ]
  %.01417.i.a = phi ptr [ %0, %.lr.ph.i ], [ %i.f, %bb.d ] ; 3 uses
  %.01516.i = phi ptr [ %1, %.lr.ph.i ], [ %i.g, %bb.d ] ; 3 uses
  %i.c = load i32, ptr %.01417.i.a, align 4, !tbaa !115
  %i.d = load i32, ptr %.01516.i, align 4, !tbaa !115
  %i.e = icmp slt i32 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.01516.i, ptr nonnull align 4 %.01417.i.a, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds i8, ptr %.01417.i.a, i64 %i.b
  %i.g = getelementptr inbounds i8, ptr %.01516.i, i64 %i.b
  %i.h = add nsw i32 %.018.i, %2                  ; 2 uses
  %4 = icmp slt i32 %i.h, %3
  br i1 %4, label %bb.b, label %_ZZN8LightGBM7Network17GlobalSyncUpByMinIiEET_S2_ENKUlPKcPciiE_clES4_S5_ii.exit, !llvm.loop !578

_ZZN8LightGBM7Network17GlobalSyncUpByMinIiEET_S2_ENKUlPKcPciiE_clES4_S5_ii.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS3_EESaIS6_EELb1EE8_S_do_itERS8_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !286    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !286  ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #31
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !171
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !171
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33
          to label %.lr.ph.i.i.i.i.i.i.preheader unwind label %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i ; 8 uses

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.l = add i64 %i.d, -8
  %i.m = sub i64 %i.l, %i.e                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader35, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.s
  %scevgep31 = getelementptr i8, ptr %i.a, i64 %i.s
  %bound0 = icmp ult ptr %i.k, %scevgep31
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader35, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, 4611686018427387900      ; 3 uses
  %i.t = shl i64 %n.vec, 3                        ; 2 uses
  %i.u = getelementptr i8, ptr %i.k, i64 %i.t     ; 2 uses
  %i.v = getelementptr i8, ptr %i.a, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.w ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.a, i64 %i.w ; 4 uses
  %i.x = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep32, align 8, !tbaa !170, !alias.scope !584
  %wide.load33 = load <2 x i64>, ptr %i.x, align 8, !tbaa !170, !alias.scope !584
  %i.y = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !170, !alias.scope !585, !noalias !584
  store <2 x i64> %wide.load33, ptr %i.y, align 8, !tbaa !170, !alias.scope !585, !noalias !584
  %i.z = getelementptr i8, ptr %next.gep32, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep32, align 8, !tbaa !170, !alias.scope !584
  store <2 x ptr> splat (ptr null), ptr %i.z, align 8, !tbaa !170, !alias.scope !584
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !582

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, label %.lr.ph.i.i.i.i.i.i.preheader35

.lr.ph.i.i.i.i.i.i.preheader35:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.u, %middle.block ]
  %.sroa.08.011.i.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.v, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader35, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader35 ] ; 2 uses
  %.sroa.08.011.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.011.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader35 ] ; 3 uses
  %i.ab = load i64, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !170
  store i64 %i.ab, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !170
  store ptr null, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !170
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !583

_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.ae, 0
  %i.af = tail call ptr @__cxa_begin_catch(ptr %.09) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.u, %middle.block ], [ %i.ad, %.lr.ph.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !167   ; 4 uses
  %.pre18 = load ptr, ptr %i.b, align 8, !tbaa !168 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !171 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !167
  store ptr %.lcssa, ptr %i.b, align 8, !tbaa !168
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !171
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre18
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit ] ; 2 uses
  %i.aj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !170 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN8LightGBM6MetricEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN8LightGBM6MetricEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !117
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #21, !inline_history !10
  br label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN8LightGBM6MetricEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.an, %.pre18
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit
  %i.ao = phi ptr [ %i.j, %_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread ], [ %i.ai, %_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit ], [ %i.ai, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EEEvPT_.exit.i.i.i ]
  %i.ap = phi ptr [ %i.a, %_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread ], [ %.pre, %_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit ], [ %.pre, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EEEvPT_.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.as) #29
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %bb.c, %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_ISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EESaIS7_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !165    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_ISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #31
  unreachable

_ZNKSt6vectorIS_ISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #33 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_ISt10unique_ptrIN8LightGBM6MetricESt14default_deleteIS2_EESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i
end_hunk_0
begin_hunk_1_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIdSaIdEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.017, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !129
  %i.m = load ptr, ptr %.sroa.09.016, align 8, !tbaa !271 ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.c, label %bb.d, !prof !272

bb.c:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.m, i64 %i.q, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc8
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load double, ptr %i.m, align 8, !tbaa !121
  store double %i.t, ptr %i.i, align 8, !tbaa !121
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !292
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.017, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.v, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !617

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.x = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #21 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorIdSaIdEEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.017)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_rethrow() #31
          to label %bb.l unwind label %bb.i

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.w, %bb.f ]
  ret ptr %.0.lcssa

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.z

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #30
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not15 = icmp eq ptr %0, %1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.017 = phi ptr [ %i.w, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.09.016 = phi ptr [ %i.v, %bb.f ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293  ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.016, align 8, !tbaa !126 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.017, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !159

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %.017, align 8, !tbaa !126
  %i.j = getelementptr inbounds nuw i8, ptr %.017, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !293
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.017, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !127
  %i.m = load ptr, ptr %.sroa.09.016, align 8, !tbaa !294 ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !294
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 4
  br i1 %i.r, label %bb.c, label %bb.d, !prof !272

bb.c:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.m, i64 %i.q, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc8
  %i.s = icmp eq i64 %i.q, 4
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.m, align 4, !tbaa !115
  store i32 %i.t, ptr %i.i, align 4, !tbaa !115
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !293
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.017, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.v, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !618

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.x = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #21 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.017)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_rethrow() #31
          to label %bb.l unwind label %bb.i

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.w, %bb.f ]
  ret ptr %.0.lcssa

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.z

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #30
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8LightGBM7Network17GlobalSyncUpByMinIdEET_S2_ENUlPKcPciiE_8__invokeES4_S5_ii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #8 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.i, label %_ZZN8LightGBM7Network17GlobalSyncUpByMinIdEET_S2_ENKUlPKcPciiE_clES4_S5_ii.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = sext i32 %2 to i64                       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.018.i = phi i32 [ 0, %.lr.ph.i ], [ %i.h, %bb.d ]
  %.01417.i.a = phi ptr [ %0, %.lr.ph.i ], [ %i.f, %bb.d ] ; 3 uses
  %.01516.i = phi ptr [ %1, %.lr.ph.i ], [ %i.g, %bb.d ] ; 3 uses
  %i.c = load double, ptr %.01417.i.a, align 8, !tbaa !121
  %i.d = load double, ptr %.01516.i, align 8, !tbaa !121
  %i.e = fcmp olt double %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.01516.i, ptr nonnull align 8 %.01417.i.a, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds i8, ptr %.01417.i.a, i64 %i.b
  %i.g = getelementptr inbounds i8, ptr %.01516.i, i64 %i.b
  %i.h = add nsw i32 %.018.i, %2                  ; 2 uses
  %4 = icmp slt i32 %i.h, %3
  br i1 %4, label %bb.b, label %_ZZN8LightGBM7Network17GlobalSyncUpByMinIdEET_S2_ENKUlPKcPciiE_clES4_S5_ii.exit, !llvm.loop !619

_ZZN8LightGBM7Network17GlobalSyncUpByMinIdEET_S2_ENKUlPKcPciiE_clES4_S5_ii.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM11Application5TrainEv(ptr noundef nonnull align 8 dereferenceable(1752) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  tail call void (ptr, ...) @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef nonnull @.str.54)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1736 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 836
  %i.d = load i32, ptr %i.c, align 4, !tbaa !620
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.k = load i32, ptr %i.j, align 8, !tbaa !296
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !117
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 232
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef 0, i32 noundef -1, i32 noundef %i.k, ptr noundef %i.l) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.q, ptr %1, align 8, !tbaa !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.q, ptr noundef nonnull align 1 dereferenceable(3) @.str.55, i64 3, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 3, ptr %i.r, align 8, !tbaa !109
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 0, ptr %i.s, align 1, !tbaa !113
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.u = load i64, ptr %i.t, align 8, !tbaa !109
  %i.v = icmp eq i64 %i.u, 3
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !114  ; 2 uses
  %i.y = load i16, ptr %i.x, align 1
  %i.z = load i16, ptr %i.q, align 1
  %i.aa = xor i16 %i.y, %i.z
  %i.ab = getelementptr i8, ptr %i.x, i64 2
  %i.ac = getelementptr i8, ptr %i.q, i64 2
  %i.ad = load i8, ptr %i.ab, align 1
  %i.ae = load i8, ptr %i.ac, align 1
  %i.af = zext i8 %i.ad to i16
  %i.ag = zext i8 %i.ae to i16
  %i.ah = xor i16 %i.af, %i.ag
  %i.ai = or i16 %i.aa, %i.ah
  %i.aj = icmp ne i16 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %i.al, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !114
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !117
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 224
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i32 noundef -1, ptr noundef %i.ao) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void (ptr, ...) @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef nonnull @.str.56)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM11Application7PredictEv(ptr noundef nonnull align 8 dereferenceable(1752) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function.372", align 8 ; 12 uses
  %2 = alloca %"class.LightGBM::Predictor", align 8 ; 7 uses
  %3 = alloca %"class.LightGBM::TextReader.310", align 8 ; 20 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %4 = alloca %"class.std::vector.13", align 8    ; 7 uses
  %5 = alloca %"class.std::vector.13", align 8    ; 15 uses
  %6 = alloca %"class.LightGBM::DatasetLoader", align 8 ; 7 uses
  %7 = alloca %"class.std::function.205", align 8 ; 11 uses
  %8 = alloca %"class.std::vector.296", align 8   ; 9 uses
  %9 = alloca %"class.LightGBM::Predictor", align 8 ; 7 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !110
  %i.f = icmp eq i32 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1736 ; 5 uses
  br i1 %i.f, label %bb.b, label %bb.au

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !118
  call void @_ZN8LightGBM9PredictorC2EPNS_8BoostingEiibbbbid(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef %i.h, i32 noundef 0, i32 noundef -1, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 1, double noundef 1.000000e+00)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !114
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 899
  %i.n = load i8, ptr %i.m, align 1, !tbaa !622, !range !186, !noundef !187
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1147
  %i.q = load i8, ptr %i.p, align 1, !tbaa !623, !range !186, !noundef !187
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1097
  %i.t = load i8, ptr %i.s, align 1, !tbaa !624, !range !186, !noundef !187
  %i.u = trunc nuw i8 %i.t to i1
  invoke void @_ZN8LightGBM9Predictor7PredictEPKcS2_bbb(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef %i.j, ptr noundef %i.l, i1 noundef zeroext %i.o, i1 noundef zeroext %i.r, i1 noundef zeroext %i.u)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !114
  store ptr %i.v, ptr %3, align 8, !tbaa !298
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !112
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !109
  store i8 0, ptr %i.y, align 8, !tbaa !113
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !112
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !109
  store i8 0, ptr %i.ab, align 8, !tbaa !113
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i8 0, ptr %i.ad, align 8, !tbaa !299
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 -1, ptr %i.ae, align 8, !tbaa !300
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i32 0, ptr %i.af, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ai, align 8
  %i.aj = ptrtoint ptr %3 to i64
  store i64 %i.aj, ptr %1, align 8, !tbaa !303
  store ptr @_ZNSt17_Function_handlerIFviPKcmEZN8LightGBM10TextReaderIiE12ReadAllLinesEvEUliS1_mE_E9_M_invokeERKSt9_Any_dataOiOS1_Om, ptr %i.ah, align 8, !tbaa !305
  store ptr @_ZNSt17_Function_handlerIFviPKcmEZN8LightGBM10TextReaderIiE12ReadAllLinesEvEUliS1_mE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.ag, align 8, !tbaa !157
  %i.ak = invoke noundef i32 @_ZN8LightGBM10TextReaderIiE17ReadAllAndProcessERKSt8functionIFviPKcmEE(ptr noundef nonnull align 8 dereferenceable(116) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.g       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !157 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.j unwind label %bb.f       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #30
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !157 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.aq, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i:                ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %.body

bb.j:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !183 ; 2 uses
  %i.aw = load ptr, ptr %i.w, align 8, !tbaa !147 ; 3 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
end_hunk_1
