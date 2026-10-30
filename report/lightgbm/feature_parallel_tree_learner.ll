Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/feature_parallel_tree_learner?download=true
inline.NumInlined: 577
inline.NumDeleted: 312
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8LightGBM11TreeLearner18ResetBoostingOnGPUEb:bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17SerialTreeLearner14SetForcedSplitEPKN24json11_internal_lightgbm4JsonE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZNK24json11_internal_lightgbm4Json4typeEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi ptr [ null, %bb.c ], [ %1, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr %.sink, ptr %i.c, align 8, !tbaa !251
  ret void
}

declare noundef ptr @_ZN8LightGBM17SerialTreeLearner5TrainEPKfS2_b(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #2

declare noundef ptr @_ZNK8LightGBM17SerialTreeLearner17FitByExistingTreeEPKNS_4TreeEPKfS5_(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK8LightGBM17SerialTreeLearner17FitByExistingTreeEPKNS_4TreeERKSt6vectorIiSaIiEEPKfSA_(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17SerialTreeLearner14SetBaggingDataEPKNS_7DatasetEPKii(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %2, ptr %i.d, align 8, !tbaa !252
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 %3, ptr %i.e, align 8, !tbaa !253
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !141
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !254  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN8LightGBM19TrainingShareStates12SetUseSubrowEb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 0, ptr %i.j, align 1, !tbaa !263
  br label %_ZN8LightGBM19TrainingShareStates12SetUseSubrowEb.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !141
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 5
  %i.n = load i8, ptr %i.m, align 1, !tbaa !158, !range !264, !noundef !265
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = load ptr, ptr %0, align 8, !tbaa !160
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, i1 noundef zeroext %i.o, i1 noundef zeroext false)
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !141  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !254  ; 3 uses
  %.not.i6 = icmp eq ptr %i.u, null
  br i1 %.not.i6, label %_ZN8LightGBM19TrainingShareStates15SetSubrowCopiedEb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 1, ptr %i.v, align 1, !tbaa !263
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i8 0, ptr %i.w, align 2, !tbaa !266
  br label %_ZN8LightGBM19TrainingShareStates15SetSubrowCopiedEb.exit

_ZN8LightGBM19TrainingShareStates15SetSubrowCopiedEb.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %2, ptr %i.x, align 8, !tbaa !267
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 %3, ptr %i.y, align 8, !tbaa !268
  br label %_ZN8LightGBM19TrainingShareStates12SetUseSubrowEb.exit

_ZN8LightGBM19TrainingShareStates12SetUseSubrowEb.exit: ; preds = %bb.c, %bb.b, %_ZN8LightGBM19TrainingShareStates15SetSubrowCopiedEb.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8LightGBM17SerialTreeLearner20AddPredictionToScoreEPKNS_4TreeEPd(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %i.a, align 8, !tbaa !169
  store ptr %2, ptr %i.b, align 8, !tbaa !170
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !176  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !269
  %.not = icmp sgt i32 %i.e, %i.i
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 103)
  %.pre = load i32, ptr %i.d, align 4, !tbaa !176
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i32 [ %.pre, %bb.b ], [ %i.e, %bb.a ]
  %i.k = icmp slt i32 %i.j, 2
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.c, i32 %i.l)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZNK8LightGBM17SerialTreeLearner20AddPredictionToScoreEPKNS_4TreeEPd.omp_outlined, ptr nonnull %i.a, ptr nonnull %0, ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

declare void @_ZNK8LightGBM17SerialTreeLearner15RenewTreeOutputEPNS_4TreeEPKNS_17ObjectiveFunctionESt8functionIFdPKfiEEiPKiiPKd() unnamed_addr

declare void @_ZN8LightGBM17SerialTreeLearner22ResetTrainingDataInnerEPKNS_7DatasetEbb(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8LightGBM26FeatureParallelTreeLearnerINS_14GPUTreeLearnerEE11BeforeTrainEv(ptr noundef nonnull align 8 dereferenceable(592) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.95", align 8    ; 7 uses
  %2 = alloca %"class.std::vector.35", align 8    ; 9 uses
  tail call void @_ZN8LightGBM17SerialTreeLearner11BeforeTrainEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !111  ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = icmp slt i32 %i.b, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.i, label %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.e = mul nuw nsw i64 %i.c, 24
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24
          to label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.i unwind label %bb.i

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.pr.i = phi ptr [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.f, %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i ] ; 11 uses
  store ptr %.pr.i, ptr %1, align 8, !tbaa !177
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !178
  %i.i = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_(ptr noundef %.pr.i, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.e unwind label %bb.c       ; 3 uses

bb.c:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx = mul nuw nsw i64 %i.c, 24
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %.idx) #22
  br label %.body

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !179
  %i.l = load ptr, ptr %2, align 8, !tbaa !180    ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !181
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.r = load i32, ptr %i.a, align 4, !tbaa !111  ; 3 uses
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = icmp slt i32 %i.r, 0
  br i1 %i.t, label %bb.g, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %.noexc18 unwind label %bb.k

.noexc18:                                         ; preds = %bb.g
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.not.i.i.i.i17 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.u = shl nuw nsw i64 %i.s, 2                  ; 3 uses
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #24
          to label %.noexc19 unwind label %bb.k   ; 4 uses

.noexc19:                                         ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.u, i1 false), !tbaa !182
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  %3 = ptrtoint ptr %i.w to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc19, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %3, %.noexc19 ] ; 2 uses
  %.sroa.040.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.v, %.noexc19 ] ; 11 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.x, %.noexc19 ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !183  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 84
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !203
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.ae = icmp eq ptr %.sroa.040.0, %.0.i.i.i.i.i.i.i
  %i.af = ptrtoint ptr %.0.i.i.i.i.i.i.i to i64
  %i.ag = ptrtoint ptr %.sroa.040.0 to i64        ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 4 uses
  %i.aj = icmp ult i64 %i.ai, 2
  %brmerge = select i1 %i.ae, i1 true, i1 %i.aj
  %i.ak = add nsw i64 %i.ai, -1                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 9
  %n.vec = and i64 %i.ak, -4                      ; 3 uses
  %i.al = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br label %bb.l

._crit_edge:                                      ; preds = %bb.v, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.an = load i32, ptr %i.am, align 8, !tbaa !110
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %i.ao ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !204 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !204 ; 2 uses
  %.not4648 = icmp eq ptr %i.aq, %i.as
  br i1 %.not4648, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 408
  br label %bb.y

bb.i:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.au, %bb.i ], [ %i.j, %bb.d ], [ %i.j, %bb.c ]
  %i.av = load ptr, ptr %2, align 8, !tbaa !180   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIiSaIiEED2Ev.exit21, label %bb.j

bb.j:                                             ; preds = %.body
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !181
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit21

_ZNSt6vectorIiSaIiEED2Ev.exit21:                  ; preds = %.body, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.z

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit26

bb.l:                                             ; preds = %.lr.ph, %bb.v
  %i.bc = phi ptr [ %i.z, %.lr.ph ], [ %i.em, %bb.v ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !180
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !182 ; 4 uses
  %i.bh = icmp eq i32 %i.bg, -1
  br i1 %i.bh, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = sext i32 %i.bg to i64                   ; 4 uses
  %i.bj = load ptr, ptr %i.ad, align 8, !tbaa !205 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !206
  %.not = icmp eq i8 %i.bl, 0
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %brmerge, label %_ZN8LightGBM9ArrayArgsIiE6ArgMinERKSt6vectorIiSaIiEE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %.pre.i = load i32, ptr %.sroa.040.0, align 4, !tbaa !182 ; 3 uses
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bt, %vector.body ] ; 2 uses
  %vec.phi73 = phi <2 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bu, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi74 = phi <2 x i64> [ poison, %vector.ph ], [ %i.br, %vector.body ]
  %vec.phi75 = phi <2 x i64> [ poison, %vector.ph ], [ %i.bs, %vector.body ]
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %wide.load = load <2 x i32>, ptr %i.bn, align 4, !tbaa !182 ; 2 uses
  %wide.load76 = load <2 x i32>, ptr %i.bo, align 4, !tbaa !182 ; 2 uses
  %i.bp = icmp slt <2 x i32> %wide.load, %vec.phi
  %i.bq = icmp slt <2 x i32> %wide.load76, %vec.phi73
  %i.br = select <2 x i1> %i.bp, <2 x i64> %vec.ind, <2 x i64> %vec.phi74 ; 2 uses
  %i.bs = select <2 x i1> %i.bq, <2 x i64> %step.add, <2 x i64> %vec.phi75 ; 2 uses
  %i.bt = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %wide.load, <2 x i32> %vec.phi) ; 3 uses
  %i.bu = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %wide.load76, <2 x i32> %vec.phi73) ; 3 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !270

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bt, <2 x i32> %i.bu)
  %i.bw = call i32 @llvm.vector.reduce.smin.v2i32(<2 x i32> %rdx.minmax) ; 3 uses
  %broadcast.splatinsert77 = insertelement <2 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat78 = shufflevector <2 x i32> %broadcast.splatinsert77, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bx = icmp eq <2 x i32> %i.bt, %broadcast.splat78
  %i.by = icmp eq <2 x i32> %i.bu, %broadcast.splat78
  %i.bz = select <2 x i1> %i.by, <2 x i64> %i.bs, <2 x i64> splat (i64 -1) ; 2 uses
  %i.ca = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.br, <2 x i64> %i.bz)
  %rdx.minmax79 = select <2 x i1> %i.bx, <2 x i64> %i.ca, <2 x i64> %i.bz
  %i.cb = call i64 @llvm.vector.reduce.umin.v2i64(<2 x i64> %rdx.minmax79)
  %i.cc = add i64 %i.cb, 1
  %i.cd = icmp eq i32 %i.bw, %.pre.i
  %i.ce = select i1 %i.cd, i64 0, i64 %i.cc       ; 2 uses
  br i1 %cmp.n, label %_ZN8LightGBM9ArrayArgsIiE6ArgMinERKSt6vectorIiSaIiEE.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.ph = phi i32 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.bw, %middle.block ]
  %.013.i.ph = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.al, %middle.block ]
  %.01012.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ce, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.cf = phi i32 [ %i.ck, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.013.i = phi i64 [ %i.cj, %.lr.ph.i ], [ %.013.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.01012.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.01012.i.ph, %.lr.ph.i.preheader ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %.013.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !182 ; 2 uses
  %i.ci = icmp slt i32 %i.ch, %i.cf
  %spec.select.i = select i1 %i.ci, i64 %.013.i, i64 %.01012.i ; 2 uses
  %i.cj = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cj, %i.ai
  %i.ck = call i32 @llvm.smin.i32(i32 %i.ch, i32 %i.cf)
  br i1 %exitcond.not.i, label %_ZN8LightGBM9ArrayArgsIiE6ArgMinERKSt6vectorIiSaIiEE.exit.loopexit, label %.lr.ph.i, !llvm.loop !271

_ZN8LightGBM9ArrayArgsIiE6ArgMinERKSt6vectorIiSaIiEE.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %spec.select.i.lcssa = phi i64 [ %i.ce, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %i.cl = shl i64 %spec.select.i.lcssa, 32
  %i.cm = ashr exact i64 %i.cl, 32
  br label %_ZN8LightGBM9ArrayArgsIiE6ArgMinERKSt6vectorIiSaIiEE.exit

_ZN8LightGBM9ArrayArgsIiE6ArgMinERKSt6vectorIiSaIiEE.exit: ; preds = %_ZN8LightGBM9ArrayArgsIiE6ArgMinERKSt6vectorIiSaIiEE.exit.loopexit, %bb.n
  %.011.i = phi i64 [ 0, %bb.n ], [ %i.cm, %_ZN8LightGBM9ArrayArgsIiE6ArgMinERKSt6vectorIiSaIiEE.exit.loopexit ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %.011.i ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !210 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !181
  %.not.i = icmp eq ptr %i.cp, %i.cr
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN8LightGBM9ArrayArgsIiE6ArgMinERKSt6vectorIiSaIiEE.exit
  store i32 %i.bg, ptr %i.cp, align 4, !tbaa !182
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store ptr %i.cs, ptr %i.co, align 8, !tbaa !210
  br label %bb.t

bb.p:                                             ; preds = %_ZN8LightGBM9ArrayArgsIiE6ArgMinERKSt6vectorIiSaIiEE.exit
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !180 ; 4 uses
  %i.cu = ptrtoint ptr %i.cp to i64
  %i.cv = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv                    ; 5 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775804
  br i1 %i.cx, label %bb.q, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #23
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.cy = ashr exact i64 %i.cw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = call i64 @llvm.umin.i64(i64 %i.cz, i64 2305843009213693951)
  %i.dc = select i1 %i.da, i64 2305843009213693951, i64 %i.db ; 3 uses
  %.not.i.i.i22 = icmp ne i64 %i.dc, 0
  call void @llvm.assume(i1 %.not.i.i.i22)
  %i.dd = shl nuw nsw i64 %i.dc, 2
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #24
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.cw ; 2 uses
  store i32 %i.bg, ptr %i.df, align 4, !tbaa !182
  %i.dg = icmp sgt i64 %i.cw, 0
  br i1 %i.dg, label %bb.r, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.r:                                             ; preds = %.noexc24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.de, ptr align 4 %i.ct, i64 %i.cw, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.r, %.noexc24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.di = load ptr, ptr %i.cq, align 8, !tbaa !181
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.dj, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.dk) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.de, ptr %i.cn, align 8, !tbaa !180
  store ptr %i.dh, ptr %i.co, align 8, !tbaa !210
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dc
  store ptr %i.dl, ptr %i.cq, align 8, !tbaa !181
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !183
  %.pre56 = load ptr, ptr %i.ad, align 8, !tbaa !205
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.dm = phi ptr [ %i.bj, %bb.o ], [ %.pre56, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.dn = phi ptr [ %i.bc, %bb.o ], [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 464
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !180
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.bi
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !182
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 488
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !180
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.bi
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !182
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dx = sext i32 %i.dr to i64
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !211
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dx
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !213
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = sext i32 %i.dv to i64
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !216
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ec
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !218
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !230
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %.011.i ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !182
  %i.ej = add nsw i32 %i.ei, %i.eg
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !182
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.bi
  store i8 0, ptr %i.ek, align 1, !tbaa !206
  %.pre57 = load ptr, ptr %i.y, align 8, !tbaa !183
  br label %bb.v

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.q
  %lpad.loopexit.split-lp81 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %.sroa.040.0, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIiSaIiEED2Ev.exit26, label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.el = sub i64 %.sroa.12.0, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.0, i64 noundef %i.el) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit26

bb.v:                                             ; preds = %bb.m, %bb.t, %bb.l
  %i.em = phi ptr [ %i.bc, %bb.m ], [ %.pre57, %bb.t ], [ %i.bc, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 84
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !203
  %i.ep = sext i32 %i.eo to i64
  %i.eq = icmp slt i64 %indvars.iv.next, %i.ep
  br i1 %i.eq, label %bb.l, label %._crit_edge, !llvm.loop !272

._crit_edge52:                                    ; preds = %bb.y, %._crit_edge
  %.not.i.i.i27 = icmp eq ptr %.sroa.040.0, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIiSaIiEED2Ev.exit28, label %bb.w

bb.w:                                             ; preds = %._crit_edge52
  %i.er = ptrtoint ptr %.sroa.040.0 to i64
  %i.es = sub i64 %.sroa.12.0, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.0, i64 noundef %i.es) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit28

_ZNSt6vectorIiSaIiEED2Ev.exit28:                  ; preds = %._crit_edge52, %bb.w
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit28, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ez, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %.pr.i, %_ZNSt6vectorIiSaIiEED2Ev.exit28 ] ; 3 uses
  %i.et = load ptr, ptr %.05.i.i.i, align 8, !tbaa !180 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !181
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ey) #22
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.x, %.lr.ph.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.ez, %i.i
  br i1 %.not.i.i.i29, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.thread

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.thread: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit28, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %.idx71 = mul nuw nsw i64 %i.c, 24
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %.idx71) #22
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void

bb.y:                                             ; preds = %.lr.ph51, %bb.y
  %.sroa.031.049 = phi ptr [ %i.aq, %.lr.ph51 ], [ %i.fe, %bb.y ] ; 2 uses
  %i.fa = load i32, ptr %.sroa.031.049, align 4, !tbaa !182
  %i.fb = sext i32 %i.fa to i64
  %i.fc = load ptr, ptr %i.at, align 8, !tbaa !205
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fb
  store i8 1, ptr %i.fd, align 1, !tbaa !206
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.031.049, i64 4 ; 2 uses
  %.not46 = icmp eq ptr %i.fe, %i.as
  br i1 %.not46, label %._crit_edge52, label %bb.y

_ZNSt6vectorIiSaIiEED2Ev.exit26:                  ; preds = %bb.u, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %lpad.loopexit.split-lp81, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp81, %bb.u ]
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #18
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit26, %_ZNSt6vectorIiSaIiEED2Ev.exit21
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit26 ], [ %eh.lpad-body, %_ZNSt6vectorIiSaIiEED2Ev.exit21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %.pn.pn
}

declare noundef zeroext i1 @_ZN8LightGBM17SerialTreeLearner19BeforeFindBestSplitEPKNS_4TreeEii(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare void @_ZN8LightGBM17SerialTreeLearner14FindBestSplitsEPKNS_4TreeE(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef) unnamed_addr #2

declare void @_ZN8LightGBM17SerialTreeLearner14FindBestSplitsEPKNS_4TreeEPKSt3setIiSt4lessIiESaIiEE(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN8LightGBM17SerialTreeLearner19ConstructHistogramsERKSt6vectorIaSaIaEEb(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8LightGBM26FeatureParallelTreeLearnerINS_14GPUTreeLearnerEE28FindBestSplitsFromHistogramsERKSt6vectorIaSaIaEEbPKNS_4TreeE(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.LightGBM::SplitInfo", align 8 ; 12 uses
  %5 = alloca %"struct.LightGBM::SplitInfo", align 8 ; 19 uses
  tail call void @_ZN8LightGBM17SerialTreeLearner28FindBestSplitsFromHistogramsERKSt6vectorIaSaIaEEbPKNS_4TreeE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.a, align 8, !tbaa !232
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 121
  store i8 0, ptr %i.c, align 1, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i32 -1, ptr %5, align 8, !tbaa !234
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store double -inf, ptr %i.f, align 8, !tbaa !235
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i8 0, i64 72, i1 false)
  store i8 1, ptr %i.h, align 8, !tbaa !232
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 121
  store i8 0, ptr %i.i, align 1, !tbaa !233
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !236
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !238
  %i.o = sext i32 %i.n to i64
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !239
  %i.q = getelementptr inbounds nuw [128 x i8], ptr %i.p, i64 %i.o ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(122) %4, ptr noundef nonnull align 8 dereferenceable(122) %i.q, i64 96, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.t = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.v = load i16, ptr %i.u, align 8
  store i16 %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !236
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !238  ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !239
  %i.ad = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %i.ab ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(122) %5, ptr noundef nonnull align 8 dereferenceable(122) %i.ad, i64 96, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.ag = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_ZN8LightGBM9SplitInfoaSERKS0_.exit5 unwind label %bb.d ; 0 uses

_ZN8LightGBM9SplitInfoaSERKS0_.exit5:             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.ai = load i16, ptr %i.ah, align 8
  store i16 %i.ai, ptr %i.h, align 8
  br label %bb.g

bb.d:                                             ; preds = %bb.j, %bb.h, %bb.c, %bb.a, %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !240 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i, label %_ZN8LightGBM9SplitInfoD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !241
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #22
  br label %_ZN8LightGBM9SplitInfoD2Ev.exit

_ZN8LightGBM9SplitInfoD2Ev.exit:                  ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !240 ; 3 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i6, label %_ZN8LightGBM9SplitInfoD2Ev.exit7, label %bb.f

bb.f:                                             ; preds = %_ZN8LightGBM9SplitInfoD2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !241
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #22
  br label %_ZN8LightGBM9SplitInfoD2Ev.exit7

_ZN8LightGBM9SplitInfoD2Ev.exit7:                 ; preds = %_ZN8LightGBM9SplitInfoD2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %i.aj

bb.g:                                             ; preds = %_ZN8LightGBM9SplitInfoaSERKS0_.exit5, %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !140 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !112
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 500
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !138
  invoke void @_ZN8LightGBM21SyncUpGlobalBestSplitEPcS0_PNS_9SplitInfoES2_i(ptr noundef %i.ay, ptr noundef %i.ay, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %i.bc)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !236
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !238
  %i.bg = sext i32 %i.bf to i64
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !239
  %i.bi = getelementptr inbounds nuw [128 x i8], ptr %i.bh, i64 %i.bg ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(122) %i.bi, ptr noundef nonnull align 8 dereferenceable(122) %4, i64 96, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %i.bk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.i unwind label %bb.d       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 120
  %i.bm = load i16, ptr %i.a, align 8
  store i16 %i.bm, ptr %i.bl, align 8
end_hunk_0
begin_hunk_1_@_ZN8LightGBM26FeatureParallelTreeLearnerINS_14GPUTreeLearnerEE28FindBestSplitsFromHistogramsERKSt6vectorIaSaIaEEbPKNS_4TreeE:bb.a
  br i1 %.not.i.i.i.i12, label %_ZN8LightGBM9SplitInfoD2Ev.exit13, label %bb.m

bb.m:                                             ; preds = %_ZN8LightGBM9SplitInfoD2Ev.exit11
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !241
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #22
  br label %_ZN8LightGBM9SplitInfoD2Ev.exit13

_ZN8LightGBM9SplitInfoD2Ev.exit13:                ; preds = %_ZN8LightGBM9SplitInfoD2Ev.exit11, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17SerialTreeLearner5SplitEPNS_4TreeEiPiS3_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN8LightGBM17SerialTreeLearner10SplitInnerEPNS_4TreeEiPiS3_b(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext true)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK8LightGBM17SerialTreeLearner24GetGlobalDataCountInLeafEi(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = zext nneg i32 %1 to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !180
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e
  %i.h = load i32, ptr %i.g, align 4, !tbaa !182
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN8LightGBM26FeatureParallelTreeLearnerINS_17SerialTreeLearnerEED0Ev(ptr noundef nonnull align 8 dereferenceable(592) %0) unnamed_addr #0 comdat($_ZN8LightGBM26FeatureParallelTreeLearnerINS_17SerialTreeLearnerEED5Ev) align 2 {
bb.a:
  tail call void @_ZN8LightGBM26FeatureParallelTreeLearnerINS_17SerialTreeLearnerEED1Ev(ptr noundef nonnull align 8 dead_on_return(592) dereferenceable(592) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 592) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8LightGBM26FeatureParallelTreeLearnerINS_17SerialTreeLearnerEE4InitEPKNS_7DatasetEb(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN8LightGBM17SerialTreeLearner4InitEPKNS_7DatasetEb(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, i1 noundef zeroext %2)
  %i.a = tail call noundef i32 @_ZN8LightGBM7Network4rankEv()
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i32 %i.a, ptr %i.b, align 8, !tbaa !243
  %i.c = tail call noundef i32 @_ZN8LightGBM7Network12num_machinesEv()
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 %i.c, ptr %i.d, align 4, !tbaa !244
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !112
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 500
  %i.h = load i32, ptr %i.g, align 4, !tbaa !138
  %i.i = shl i32 %i.h, 3
  %i.j = add i32 %i.i, 188
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.l = sext i32 %i.j to i64                     ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !139  ; 2 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !140  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp ult i64 %i.r, %i.l
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = sub nuw i64 %i.l, %i.r
  tail call void @_ZNSt6vectorIcSaIcEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.t)
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.u = icmp ugt i64 %i.r, %i.l
  br i1 %i.u, label %bb.d, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.v
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.v, ptr %i.m, align 8, !tbaa !139
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNSt6vectorIcSaIcEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !139  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !140  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = icmp ult i64 %i.ac, %i.l
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  %i.ae = sub nuw i64 %i.l, %i.ac
  tail call void @_ZNSt6vectorIcSaIcEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 noundef %i.ae)
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit7

bb.f:                                             ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  %i.af = icmp ugt i64 %i.ac, %i.l
  br i1 %i.af, label %bb.g, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit7

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.l ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.y, %i.ag
  br i1 %.not.i.i5, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit7, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i6

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i6:       ; preds = %bb.g
  store ptr %i.ag, ptr %i.x, align 8, !tbaa !139
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit7

_ZNSt6vectorIcSaIcEE6resizeEm.exit7:              ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i6
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8LightGBM26FeatureParallelTreeLearnerINS_17SerialTreeLearnerEE11BeforeTrainEv(ptr noundef nonnull align 8 dereferenceable(592) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.95", align 8    ; 7 uses
  %2 = alloca %"class.std::vector.35", align 8    ; 9 uses
  tail call void @_ZN8LightGBM17SerialTreeLearner11BeforeTrainEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !244  ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = icmp slt i32 %i.b, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.i, label %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.e = mul nuw nsw i64 %i.c, 24
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24
          to label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.i unwind label %bb.i

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.pr.i = phi ptr [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.f, %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i ] ; 11 uses
  store ptr %.pr.i, ptr %1, align 8, !tbaa !177
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !178
  %i.i = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_(ptr noundef %.pr.i, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.e unwind label %bb.c       ; 3 uses

bb.c:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx = mul nuw nsw i64 %i.c, 24
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %.idx) #22
  br label %.body

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !179
  %i.l = load ptr, ptr %2, align 8, !tbaa !180    ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !181
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.r = load i32, ptr %i.a, align 4, !tbaa !244  ; 3 uses
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = icmp slt i32 %i.r, 0
  br i1 %i.t, label %bb.g, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %.noexc18 unwind label %bb.k

.noexc18:                                         ; preds = %bb.g
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.not.i.i.i.i17 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.u = shl nuw nsw i64 %i.s, 2                  ; 3 uses
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #24
          to label %.noexc19 unwind label %bb.k   ; 4 uses

.noexc19:                                         ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.u, i1 false), !tbaa !182
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  %3 = ptrtoint ptr %i.w to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc19, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %3, %.noexc19 ] ; 2 uses
  %.sroa.040.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.v, %.noexc19 ] ; 11 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.x, %.noexc19 ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !183  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 84
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !203
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.ae = icmp eq ptr %.sroa.040.0, %.0.i.i.i.i.i.i.i
  %i.af = ptrtoint ptr %.0.i.i.i.i.i.i.i to i64
  %i.ag = ptrtoint ptr %.sroa.040.0 to i64        ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 4 uses
  %i.aj = icmp ult i64 %i.ai, 2
  %brmerge = select i1 %i.ae, i1 true, i1 %i.aj
  %i.ak = add nsw i64 %i.ai, -1                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 9
  %n.vec = and i64 %i.ak, -4                      ; 3 uses
  %i.al = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br label %bb.l

._crit_edge:                                      ; preds = %bb.v, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.an = load i32, ptr %i.am, align 8, !tbaa !243
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %i.ao ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !204 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !204 ; 2 uses
  %.not4648 = icmp eq ptr %i.aq, %i.as
  br i1 %.not4648, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 408
  br label %bb.y

bb.i:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.au, %bb.i ], [ %i.j, %bb.d ], [ %i.j, %bb.c ]
  %i.av = load ptr, ptr %2, align 8, !tbaa !180   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIiSaIiEED2Ev.exit21, label %bb.j

bb.j:                                             ; preds = %.body
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !181
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit21

_ZNSt6vectorIiSaIiEED2Ev.exit21:                  ; preds = %.body, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.z

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit26

bb.l:                                             ; preds = %.lr.ph, %bb.v
  %i.bc = phi ptr [ %i.z, %.lr.ph ], [ %i.em, %bb.v ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !180
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !182 ; 4 uses
  %i.bh = icmp eq i32 %i.bg, -1
  br i1 %i.bh, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = sext i32 %i.bg to i64                   ; 4 uses
  %i.bj = load ptr, ptr %i.ad, align 8, !tbaa !205 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !206
  %.not = icmp eq i8 %i.bl, 0
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %brmerge, label %_ZN8LightGBM9ArrayArgsIiE6ArgMinERKSt6vectorIiSaIiEE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %.pre.i = load i32, ptr %.sroa.040.0, align 4, !tbaa !182 ; 3 uses
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bt, %vector.body ] ; 2 uses
  %vec.phi73 = phi <2 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bu, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi74 = phi <2 x i64> [ poison, %vector.ph ], [ %i.br, %vector.body ]
  %vec.phi75 = phi <2 x i64> [ poison, %vector.ph ], [ %i.bs, %vector.body ]
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %wide.load = load <2 x i32>, ptr %i.bn, align 4, !tbaa !182 ; 2 uses
  %wide.load76 = load <2 x i32>, ptr %i.bo, align 4, !tbaa !182 ; 2 uses
  %i.bp = icmp slt <2 x i32> %wide.load, %vec.phi
  %i.bq = icmp slt <2 x i32> %wide.load76, %vec.phi73
  %i.br = select <2 x i1> %i.bp, <2 x i64> %vec.ind, <2 x i64> %vec.phi74 ; 2 uses
  %i.bs = select <2 x i1> %i.bq, <2 x i64> %step.add, <2 x i64> %vec.phi75 ; 2 uses
  %i.bt = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %wide.load, <2 x i32> %vec.phi) ; 3 uses
  %i.bu = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %wide.load76, <2 x i32> %vec.phi73) ; 3 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !273

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bt, <2 x i32> %i.bu)
  %i.bw = call i32 @llvm.vector.reduce.smin.v2i32(<2 x i32> %rdx.minmax) ; 3 uses
  %broadcast.splatinsert77 = insertelement <2 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat78 = shufflevector <2 x i32> %broadcast.splatinsert77, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bx = icmp eq <2 x i32> %i.bt, %broadcast.splat78
  %i.by = icmp eq <2 x i32> %i.bu, %broadcast.splat78
  %i.bz = select <2 x i1> %i.by, <2 x i64> %i.bs, <2 x i64> splat (i64 -1) ; 2 uses
  %i.ca = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.br, <2 x i64> %i.bz)
  %rdx.minmax79 = select <2 x i1> %i.bx, <2 x i64> %i.ca, <2 x i64> %i.bz
  %i.cb = call i64 @llvm.vector.reduce.umin.v2i64(<2 x i64> %rdx.minmax79)
  %i.cc = add i64 %i.cb, 1
  %i.cd = icmp eq i32 %i.bw, %.pre.i
  %i.ce = select i1 %i.cd, i64 0, i64 %i.cc       ; 2 uses
  br i1 %cmp.n, label %_ZN8LightGBM9ArrayArgsIiE6ArgMinERKSt6vectorIiSaIiEE.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.ph = phi i32 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.bw, %middle.block ]
  %.013.i.ph = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.al, %middle.block ]
  %.01012.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ce, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.cf = phi i32 [ %i.ck, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.013.i = phi i64 [ %i.cj, %.lr.ph.i ], [ %.013.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.01012.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.01012.i.ph, %.lr.ph.i.preheader ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %.013.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !182 ; 2 uses
  %i.ci = icmp slt i32 %i.ch, %i.cf
  %spec.select.i = select i1 %i.ci, i64 %.013.i, i64 %.01012.i ; 2 uses
  %i.cj = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cj, %i.ai
  %i.ck = call i32 @llvm.smin.i32(i32 %i.ch, i32 %i.cf)
  br i1 %exitcond.not.i, label %_ZN8LightGBM9ArrayArgsIiE6ArgMinERKSt6vectorIiSaIiEE.exit.loopexit, label %.lr.ph.i, !llvm.loop !274

_ZN8LightGBM9ArrayArgsIiE6ArgMinERKSt6vectorIiSaIiEE.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %spec.select.i.lcssa = phi i64 [ %i.ce, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %i.cl = shl i64 %spec.select.i.lcssa, 32
  %i.cm = ashr exact i64 %i.cl, 32
  br label %_ZN8LightGBM9ArrayArgsIiE6ArgMinERKSt6vectorIiSaIiEE.exit

_ZN8LightGBM9ArrayArgsIiE6ArgMinERKSt6vectorIiSaIiEE.exit: ; preds = %_ZN8LightGBM9ArrayArgsIiE6ArgMinERKSt6vectorIiSaIiEE.exit.loopexit, %bb.n
  %.011.i = phi i64 [ 0, %bb.n ], [ %i.cm, %_ZN8LightGBM9ArrayArgsIiE6ArgMinERKSt6vectorIiSaIiEE.exit.loopexit ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %.011.i ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !210 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !181
  %.not.i = icmp eq ptr %i.cp, %i.cr
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN8LightGBM9ArrayArgsIiE6ArgMinERKSt6vectorIiSaIiEE.exit
  store i32 %i.bg, ptr %i.cp, align 4, !tbaa !182
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store ptr %i.cs, ptr %i.co, align 8, !tbaa !210
  br label %bb.t

bb.p:                                             ; preds = %_ZN8LightGBM9ArrayArgsIiE6ArgMinERKSt6vectorIiSaIiEE.exit
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !180 ; 4 uses
  %i.cu = ptrtoint ptr %i.cp to i64
  %i.cv = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv                    ; 5 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775804
  br i1 %i.cx, label %bb.q, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #23
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.cy = ashr exact i64 %i.cw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = call i64 @llvm.umin.i64(i64 %i.cz, i64 2305843009213693951)
  %i.dc = select i1 %i.da, i64 2305843009213693951, i64 %i.db ; 3 uses
  %.not.i.i.i22 = icmp ne i64 %i.dc, 0
  call void @llvm.assume(i1 %.not.i.i.i22)
  %i.dd = shl nuw nsw i64 %i.dc, 2
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #24
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.cw ; 2 uses
  store i32 %i.bg, ptr %i.df, align 4, !tbaa !182
  %i.dg = icmp sgt i64 %i.cw, 0
  br i1 %i.dg, label %bb.r, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.r:                                             ; preds = %.noexc24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.de, ptr align 4 %i.ct, i64 %i.cw, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.r, %.noexc24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.di = load ptr, ptr %i.cq, align 8, !tbaa !181
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.dj, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.dk) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.de, ptr %i.cn, align 8, !tbaa !180
  store ptr %i.dh, ptr %i.co, align 8, !tbaa !210
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dc
  store ptr %i.dl, ptr %i.cq, align 8, !tbaa !181
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !183
  %.pre56 = load ptr, ptr %i.ad, align 8, !tbaa !205
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.dm = phi ptr [ %i.bj, %bb.o ], [ %.pre56, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.dn = phi ptr [ %i.bc, %bb.o ], [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 464
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !180
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.bi
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !182
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 488
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !180
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.bi
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !182
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dx = sext i32 %i.dr to i64
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !211
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dx
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !213
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = sext i32 %i.dv to i64
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !216
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ec
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !218
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !230
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %.011.i ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !182
  %i.ej = add nsw i32 %i.ei, %i.eg
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !182
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.bi
  store i8 0, ptr %i.ek, align 1, !tbaa !206
  %.pre57 = load ptr, ptr %i.y, align 8, !tbaa !183
  br label %bb.v

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.q
  %lpad.loopexit.split-lp81 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %.sroa.040.0, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIiSaIiEED2Ev.exit26, label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.el = sub i64 %.sroa.12.0, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.0, i64 noundef %i.el) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit26

bb.v:                                             ; preds = %bb.m, %bb.t, %bb.l
  %i.em = phi ptr [ %i.bc, %bb.m ], [ %.pre57, %bb.t ], [ %i.bc, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 84
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !203
  %i.ep = sext i32 %i.eo to i64
  %i.eq = icmp slt i64 %indvars.iv.next, %i.ep
  br i1 %i.eq, label %bb.l, label %._crit_edge, !llvm.loop !275

._crit_edge52:                                    ; preds = %bb.y, %._crit_edge
  %.not.i.i.i27 = icmp eq ptr %.sroa.040.0, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIiSaIiEED2Ev.exit28, label %bb.w

bb.w:                                             ; preds = %._crit_edge52
  %i.er = ptrtoint ptr %.sroa.040.0 to i64
  %i.es = sub i64 %.sroa.12.0, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.0, i64 noundef %i.es) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit28

_ZNSt6vectorIiSaIiEED2Ev.exit28:                  ; preds = %._crit_edge52, %bb.w
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit28, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ez, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %.pr.i, %_ZNSt6vectorIiSaIiEED2Ev.exit28 ] ; 3 uses
  %i.et = load ptr, ptr %.05.i.i.i, align 8, !tbaa !180 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !181
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ey) #22
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.x, %.lr.ph.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.ez, %i.i
  br i1 %.not.i.i.i29, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.thread

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.thread: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit28, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %.idx71 = mul nuw nsw i64 %i.c, 24
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %.idx71) #22
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void

bb.y:                                             ; preds = %.lr.ph51, %bb.y
  %.sroa.031.049 = phi ptr [ %i.aq, %.lr.ph51 ], [ %i.fe, %bb.y ] ; 2 uses
  %i.fa = load i32, ptr %.sroa.031.049, align 4, !tbaa !182
  %i.fb = sext i32 %i.fa to i64
  %i.fc = load ptr, ptr %i.at, align 8, !tbaa !205
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fb
  store i8 1, ptr %i.fd, align 1, !tbaa !206
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.031.049, i64 4 ; 2 uses
  %.not46 = icmp eq ptr %i.fe, %i.as
  br i1 %.not46, label %._crit_edge52, label %bb.y

_ZNSt6vectorIiSaIiEED2Ev.exit26:                  ; preds = %bb.u, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %lpad.loopexit.split-lp81, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp81, %bb.u ]
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #18
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit26, %_ZNSt6vectorIiSaIiEED2Ev.exit21
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit26 ], [ %eh.lpad-body, %_ZNSt6vectorIiSaIiEED2Ev.exit21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8LightGBM26FeatureParallelTreeLearnerINS_17SerialTreeLearnerEE28FindBestSplitsFromHistogramsERKSt6vectorIaSaIaEEbPKNS_4TreeE(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.LightGBM::SplitInfo", align 8 ; 12 uses
  %5 = alloca %"struct.LightGBM::SplitInfo", align 8 ; 19 uses
  tail call void @_ZN8LightGBM17SerialTreeLearner28FindBestSplitsFromHistogramsERKSt6vectorIaSaIaEEbPKNS_4TreeE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.a, align 8, !tbaa !232
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 121
  store i8 0, ptr %i.c, align 1, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i32 -1, ptr %5, align 8, !tbaa !234
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store double -inf, ptr %i.f, align 8, !tbaa !235
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i8 0, i64 72, i1 false)
  store i8 1, ptr %i.h, align 8, !tbaa !232
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 121
  store i8 0, ptr %i.i, align 1, !tbaa !233
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !236
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !238
  %i.o = sext i32 %i.n to i64
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !239
  %i.q = getelementptr inbounds nuw [128 x i8], ptr %i.p, i64 %i.o ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(122) %4, ptr noundef nonnull align 8 dereferenceable(122) %i.q, i64 96, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.t = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.v = load i16, ptr %i.u, align 8
  store i16 %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !236
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !238  ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !239
  %i.ad = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %i.ab ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(122) %5, ptr noundef nonnull align 8 dereferenceable(122) %i.ad, i64 96, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.ag = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_ZN8LightGBM9SplitInfoaSERKS0_.exit5 unwind label %bb.d ; 0 uses

_ZN8LightGBM9SplitInfoaSERKS0_.exit5:             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.ai = load i16, ptr %i.ah, align 8
  store i16 %i.ai, ptr %i.h, align 8
  br label %bb.g

bb.d:                                             ; preds = %bb.j, %bb.h, %bb.c, %bb.a, %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !240 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i, label %_ZN8LightGBM9SplitInfoD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !241
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #22
  br label %_ZN8LightGBM9SplitInfoD2Ev.exit

_ZN8LightGBM9SplitInfoD2Ev.exit:                  ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !240 ; 3 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i6, label %_ZN8LightGBM9SplitInfoD2Ev.exit7, label %bb.f

bb.f:                                             ; preds = %_ZN8LightGBM9SplitInfoD2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !241
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #22
  br label %_ZN8LightGBM9SplitInfoD2Ev.exit7

_ZN8LightGBM9SplitInfoD2Ev.exit7:                 ; preds = %_ZN8LightGBM9SplitInfoD2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %i.aj

bb.g:                                             ; preds = %_ZN8LightGBM9SplitInfoaSERKS0_.exit5, %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !140 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !112
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 500
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !138
  invoke void @_ZN8LightGBM21SyncUpGlobalBestSplitEPcS0_PNS_9SplitInfoES2_i(ptr noundef %i.ay, ptr noundef %i.ay, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %i.bc)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !236
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !238
  %i.bg = sext i32 %i.bf to i64
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !239
  %i.bi = getelementptr inbounds nuw [128 x i8], ptr %i.bh, i64 %i.bg ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(122) %i.bi, ptr noundef nonnull align 8 dereferenceable(122) %4, i64 96, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %i.bk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.i unwind label %bb.d       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 120
  %i.bm = load i16, ptr %i.a, align 8
  store i16 %i.bm, ptr %i.bl, align 8
  %i.bn = load ptr, ptr %i.w, align 8, !tbaa !236
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !238 ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, -1
  br i1 %i.bq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.br = zext nneg i32 %i.bp to i64
end_hunk_1
