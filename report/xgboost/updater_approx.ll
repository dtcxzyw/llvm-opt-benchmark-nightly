Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_approx?download=true
inline.NumInlined: 9700
inline.NumDeleted: 3289
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN7xgboost4tree19GlobalApproxBuilderC2EPKNS0_10TrainParamEPKNS0_19HistMakerTrainParamERKNS_8MetaInfoEPKNS_7ContextESt10shared_ptrINS_6common13ColumnSamplerEEPKNS_7ObjInfoEPNSF_7MonitorE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i8 0, i64 32, i1 false)
  store ptr %7, ptr %i.ak, align 8, !tbaa !310
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 0, ptr %i.al, align 8, !tbaa !395
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 368
  invoke void @_ZN7xgboost6common13HistogramCutsC1Ej(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i32 noundef 0)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZN7xgboost4tree21MultiHistogramBuilderC2Ev.exit
  ret void

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost6common13ColumnSamplerEEC2ERKS3_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost6common13ColumnSamplerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #21
  br label %bb.p

bb.o:                                             ; preds = %_ZN7xgboost4tree21MultiHistogramBuilderC2Ev.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7xgboost4tree20CommonRowPartitionerESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aj) #21
  call void @_ZN7xgboost4tree21MultiHistogramBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ae) #21
  br label %.body

.body:                                            ; preds = %bb.l, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.o ], [ %i.ag, %bb.l ]
  call void @_ZN7xgboost4tree13HistEvaluatorD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.g) #21
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.an, %bb.n ]
  call void @_ZNSt12__shared_ptrIN7xgboost6common13ColumnSamplerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree13HistEvaluatorC2EPKNS_7ContextEPKNS0_10TrainParamERKNS_8MetaInfoESt10shared_ptrINS_6common13ColumnSamplerEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(248) %3, ptr noundef align 8 %4) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !396
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !397
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8, !tbaa !95
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load <2 x ptr>, ptr %4, align 8, !tbaa !82
  store ptr null, ptr %i.d, align 8, !tbaa !95
  store <2 x ptr> %i.e, ptr %i.b, align 8, !tbaa !82
  store ptr null, ptr %4, align 8, !tbaa !393
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1039
  %i.i = trunc i64 %i.h to i32
  invoke void @_ZN7xgboost4tree13TreeEvaluatorC2ERKNS0_10TrainParamEjNS_9DeviceOrdEj(ptr noundef nonnull align 8 dereferenceable(33) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %2, i32 noundef %i.i, i32 -65536, i32 noundef 1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(109) %i.j, i8 0, i64 72, i1 false)
  store ptr %i.l, ptr %i.k, align 8, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.m, align 8, !tbaa !59
  store i8 0, ptr %i.l, align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i8 0, ptr %i.n, align 4, !tbaa !403
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.p = load i64, ptr %i.g, align 8, !tbaa !1039
  %i.q = trunc i64 %i.p to i32
  invoke void @_ZN7xgboost32FeatureInteractionConstraintHost9ConfigureERKNS_4tree10TrainParamEj(ptr noundef nonnull align 8 dereferenceable(109) %i.j, ptr noundef nonnull align 8 dereferenceable(144) %2, i32 noundef %i.q)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !393
  %i.s = load i64, ptr %i.g, align 8, !tbaa !1039
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !397  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 60
  %i.w = load float, ptr %i.v, align 4, !tbaa !1040
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.y = load float, ptr %i.x, align 8, !tbaa !1041
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 68
  %i.aa = load float, ptr %i.z, align 4, !tbaa !1042
  invoke void @_ZN7xgboost6common13ColumnSampler4InitEPKNS_7ContextElRKNS_16HostDeviceVectorIfEEfff(ptr noundef nonnull align 8 dereferenceable(104) %i.r, ptr noundef %1, i64 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.t, float noundef %i.w, float noundef %i.y, float noundef %i.aa)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !189 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7xgboost4tree13HistEvaluator9NodeEntryESaIS3_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !190
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #37
  br label %_ZNSt6vectorIN7xgboost4tree13HistEvaluator9NodeEntryESaIS3_EED2Ev.exit

_ZNSt6vectorIN7xgboost4tree13HistEvaluator9NodeEntryESaIS3_EED2Ev.exit: ; preds = %bb.f, %bb.g
  tail call void @_ZN7xgboost32FeatureInteractionConstraintHostD2Ev(ptr noundef nonnull align 8 dead_on_return(109) dereferenceable(109) %i.j) #21
  tail call void @_ZN7xgboost4tree13TreeEvaluatorD2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %i.f) #21
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN7xgboost4tree13HistEvaluator9NodeEntryESaIS3_EED2Ev.exit, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ac, %_ZNSt6vectorIN7xgboost4tree13HistEvaluator9NodeEntryESaIS3_EED2Ev.exit ], [ %i.ab, %bb.e ]
  tail call void @_ZNSt12__shared_ptrIN7xgboost6common13ColumnSamplerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #21
  resume { ptr, i32 } %.pn
}

declare void @_ZN7xgboost6common13HistogramCutsC1Ej(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree13TreeEvaluatorC2ERKNS0_10TrainParamEjNS_9DeviceOrdEj(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %2, i32 %3, i32 noundef %4) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %7 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !122
  store i32 %4, ptr %i.b, align 4, !tbaa !122
  tail call void @_ZN7xgboost16HostDeviceVectorIfEC1EmfNS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 0, float noundef 0.000000e+00, i32 -65536)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  invoke void @_ZN7xgboost16HostDeviceVectorIfEC1EmfNS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0, float noundef 0.000000e+00, i32 -65536)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  invoke void @_ZN7xgboost16HostDeviceVectorIiEC1EmiNS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0, i32 noundef 0, i32 -65536)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.b, align 4, !tbaa !122  ; 2 uses
  store i32 %i.j, ptr %i.i, align 4, !tbaa !404
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !315  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !315  ; 4 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = ashr i64 %i.r, 4                         ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.preheader.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.c
  %i.u = and i64 %i.r, -16
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.m, i64 %i.u ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i.i.i
  %.051.i.i.i.i.i.i = phi i64 [ %i.ad, %bb.g ], [ %i.s, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.025.050.i.i.i.i.i.i = phi ptr [ %i.ac, %bb.g ], [ %i.m, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %i.v = load i32, ptr %.sroa.025.050.i.i.i.i.i.i, align 4, !tbaa !122
  %.not36.i.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not36.i.i.i.i.i.i, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i.i.i.i, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !122
  %.not37.i.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.e, label %.loopexit.loopexit.split.loop.exit119

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i.i.i.i, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !122
  %.not38.i.i.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.f, label %.loopexit.loopexit.split.loop.exit117

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i.i.i.i, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !122
  %.not39.i.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not39.i.i.i.i.i.i, label %bb.g, label %.loopexit.loopexit.split.loop.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i.i.i.i, i64 16
  %i.ad = add nsw i64 %.051.i.i.i.i.i.i, -1
  %9 = icmp samesign ugt i64 %.051.i.i.i.i.i.i, 1
  br i1 %9, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !1043

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.g
  %.pre.i.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i to i64
  %.pre56.i.i.i.i.i.i = sub i64 %i.p, %.pre.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.c
  %.pre-phi57.i.i.i.i.i.i = phi i64 [ %.pre56.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.r, %bb.c ]
  %.sroa.025.0.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 5 uses
  %i.ae = ashr exact i64 %.pre-phi57.i.i.i.i.i.i, 2
  switch i64 %i.ae, label %.loopexit [
    i64 3, label %bb.h
    i64 2, label %bb.j
    i64 1, label %bb.l
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.af = load i32, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i, align 4, !tbaa !122
  %.not.i.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i
  %.sroa.025.1.i.i.i.i.i.i = phi ptr [ %i.ag, %bb.i ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.ah = load i32, ptr %.sroa.025.1.i.i.i.i.i.i, align 4, !tbaa !122
  %.not34.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not34.i.i.i.i.i.i, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i.i.i.i, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i
  %.sroa.025.2.i.i.i.i.i.i = phi ptr [ %i.ai, %bb.k ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.aj = load i32, ptr %.sroa.025.2.i.i.i.i.i.i, align 4, !tbaa !122
  %.not35.i.i.i.i.i.i = icmp eq i32 %i.aj, 0
  %spec.select.i.i.i.i.i.i = select i1 %.not35.i.i.i.i.i.i, ptr %i.o, ptr %.sroa.025.2.i.i.i.i.i.i
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i.i.i.i, i64 12
  br label %.loopexit

.loopexit.loopexit.split.loop.exit117:            ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i.i.i.i, i64 8
  br label %.loopexit

.loopexit.loopexit.split.loop.exit119:            ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i.i.i.i, i64 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit117, %.loopexit.loopexit.split.loop.exit119, %bb.l, %bb.j, %bb.h, %._crit_edge.i.i.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.025.1.i.i.i.i.i.i, %bb.j ], [ %spec.select.i.i.i.i.i.i, %bb.l ], [ %i.o, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i, %bb.h ], [ %i.am, %.loopexit.loopexit.split.loop.exit119 ], [ %i.al, %.loopexit.loopexit.split.loop.exit117 ], [ %i.ak, %.loopexit.loopexit.split.loop.exit ], [ %.sroa.025.050.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.an = icmp ne ptr %i.o, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i
  %i.ao = zext i1 %i.an to i8
  store i8 %i.ao, ptr %i.k, align 8, !tbaa !405
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i32 0, ptr %i.c, align 4, !tbaa !122
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.m, label %_ZN4dmlc11LogCheck_GTIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GTIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.m:                                             ; preds = %.loopexit
  invoke void @_ZN4dmlc14LogCheckFormatIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZN4dmlc11LogCheck_GTIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.r

_ZN4dmlc11LogCheck_GTIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.m
  %.pr = load ptr, ptr %5, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %.not93 = icmp eq ptr %.pr, null
  br i1 %.not93, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4dmlc11LogCheck_GTIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ap = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc33 unwind label %bb.s

.noexc33:                                         ; preds = %bb.n
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ap, ptr noundef nonnull @.str.35, i32 noundef 94)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.s

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc33
  %i.aq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.t ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.37, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = load ptr, ptr %5, align 8, !tbaa !69    ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !60
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !59
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.au, i64 noundef %i.aw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.t

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.v unwind label %bb.s

bb.o:                                             ; preds = %bb.a
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.p:                                             ; preds = %bb.b
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.q:                                             ; preds = %bb.az, %bb.ay, %bb.ax, %bb.au, %bb.at, %bb.ao, %bb.an, %bb.am, %bb.z, %bb.y, %bb.x
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.r:                                             ; preds = %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.aa

bb.s:                                             ; preds = %.noexc33, %bb.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.u unwind label %bb.be

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.s ], [ %i.be, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #21
  br label %bb.aa

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %.pr86 = load ptr, ptr %5, align 8, !tbaa !69   ; 4 uses
  %.not.i42 = icmp eq ptr %.pr86, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = load ptr, ptr %.pr86, align 8, !tbaa !60 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.pr86, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.w
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !66
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr86, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GTIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GTIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.v, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.bk = and i32 %3, 65535
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  invoke void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %3)
          to label %bb.y unwind label %bb.q

bb.y:                                             ; preds = %bb.x
  invoke void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 %3)
          to label %bb.z unwind label %bb.q

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNK7xgboost16HostDeviceVectorIiE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 %3)
          to label %bb.ab unwind label %bb.q

bb.aa:                                            ; preds = %bb.u, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.bc, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.bb

end_hunk_0
begin_hunk_1_@_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_:bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !76
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.b)
          to label %_ZNSolsEm.exit unwind label %bb.f ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.41, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %_ZNSolsEm.exit
  %i.e = load i32, ptr %2, align 4, !tbaa !122
  %i.f = zext i32 %i.e to i64
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.f)
          to label %_ZNSolsEj.exit unwind label %bb.f

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.17, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %_ZNSolsEj.exit
  %i.i = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36
          to label %bb.b unwind label %bb.f       ; 8 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !65, !alias.scope !1067
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !59, !alias.scope !1067
  store i8 0, ptr %i.j, align 8, !tbaa !66, !alias.scope !1067
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !253, !noalias !1067 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1067 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !254, !noalias !1067 ; 2 uses
  %i.s = ptrtoint ptr %.08.i.i.i to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef 0, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !60, !alias.scope !1067 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.j, align 8, !tbaa !66, !alias.scope !1067
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #37
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr %i.i, ptr %0, align 8, !tbaa !69
  %i.ac = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !87
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ae = getelementptr i8, ptr %i.ac, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %3, i64 %i.af
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !87
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ah, align 8, !tbaa !87
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !60 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !66
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #37
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ah, align 8, !tbaa !87
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #21
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.f:                                             ; preds = %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 32) #37
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.w, %.body ], [ %i.aq, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !214
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !406  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !122    ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !140

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !406
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !122
  store i32 %i.s, ptr %i.d, align 4, !tbaa !122
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !406
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !140

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !122
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !122
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl nuw i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !122
  store <4 x i32> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !122
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !1068

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !122
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1069

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !122
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !122
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1070

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !122
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1071

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !406
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !140

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !406
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !122
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !122
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !406
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !122
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4, !tbaa !122
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !1072

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !122
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !1073

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !213   ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #35
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #36
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4, !tbaa !122   ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %2, 8
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl nuw nsw i64 %n.vec141, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cn = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !122
  store <4 x i32> %broadcast.splat143, ptr %i.co, align 4, !tbaa !122
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cp, label %middle.block148, label %vector.body144, !llvm.loop !1074

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.ck, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !122
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !1075

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !140

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !122
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !122
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !140

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !122
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !122
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !214
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.dc) #37
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !213
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !406
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !214
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

declare void @_ZN7xgboost16HostDeviceVectorIfE6ResizeEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN7xgboost16HostDeviceVectorIfE4CopyERKS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK7xgboost16HostDeviceVectorIjE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #1

declare void @_ZN7xgboost16HostDeviceVectorIjE6ResizeEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIjE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN7xgboost6common13ColumnSampler9ColSampleEPKNS_7ContextESt10shared_ptrINS_16HostDeviceVectorIjEEEf(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.41") align 8, ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef align 8, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7xgboost16HostDeviceVectorIjEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7xgboost16HostDeviceVectorIjEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN7xgboost16HostDeviceVectorIjED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7xgboost16HostDeviceVectorIjEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7xgboost16HostDeviceVectorIjEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7xgboost16HostDeviceVectorIjEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !154  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !66
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #21
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !92
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !0
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !0
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !122
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
end_hunk_1
begin_hunk_2_@_ZNK7xgboost6common14BlockedSpace2d17GetFirstDimensionEm:bb.a
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !76
  %i.k = icmp ult i64 %1, %i.j
  br i1 %i.k, label %_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.a
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %2, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.l = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.l, ptr noundef nonnull @.str.54, i32 noundef 110)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.c

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.m = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.d ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.81, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = load ptr, ptr %2, align 8, !tbaa !69     ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !59
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.v, %bb.c ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.pr12 = load ptr, ptr %2, align 8, !tbaa !69   ; 4 uses
  %.not.i = icmp eq ptr %.pr12, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %.pr12, align 8, !tbaa !60 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.pr12, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !66
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr12, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.f, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !76
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !179
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !76
  ret i64 %i.af

bb.h:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.neg = sext i1 %4 to i8                        ; 2 uses
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !210
  %i.d = load ptr, ptr %0, align 8, !tbaa !207
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl nsw i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !207  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !544  ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.n = sub i64 %i.m, %i.f
  %i.o = shl nsw i64 %i.n, 3
  %i.p = zext i32 %i.l to i64                     ; 3 uses
  %i.q = add nsw i64 %i.o, %i.p                   ; 5 uses
  %i.r = sub i64 %i.h, %i.q
  %.not = icmp ult i64 %i.r, %3
  br i1 %.not, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.t = sub i64 %i.m, %i.s
  %i.u = shl nsw i64 %i.t, 3
  %i.v = zext i32 %2 to i64                       ; 4 uses
  %i.w = sub nsw i64 %i.p, %i.v
  %i.x = add i64 %i.w, %i.u                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader: ; preds = %bb.c
  %i.z = add nsw i64 %3, %i.p                     ; 3 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 63
  %i.ac = sdiv i64 %i.z, 64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ac
  %i.ae = and i64 %i.z, -9223372036854775745
  %i.af = icmp ugt i64 %i.ae, -9223372036854775808
  %storemerge.idx.i.i.i = select i1 %i.af, i64 -8, i64 0
  %storemerge.i.i.i = getelementptr inbounds i8, ptr %i.ad, i64 %storemerge.idx.i.i.i
  br label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i:          ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i
  %.024.i.i.i.i.i = phi i64 [ %i.av, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.x, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %storemerge.i.i.i, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.59.022.i.i.i.i.i = phi i32 [ %.sroa.59.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.ab, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.012.021.i.i.i.i.i = phi ptr [ %spec.select19.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.j, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.515.020.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.l, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %i.ag = add i32 %.sroa.515.020.i.i.i.i.i, -1
  %i.ah = icmp eq i32 %.sroa.515.020.i.i.i.i.i, 0 ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.ah, i32 63, i32 %i.ag ; 2 uses
  %spec.select19.idx.i.i.i.i.i = select i1 %i.ah, i64 -8, i64 0
  %spec.select19.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.021.i.i.i.i.i, i64 %spec.select19.idx.i.i.i.i.i ; 2 uses
  %i.ai = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = add i32 %.sroa.59.022.i.i.i.i.i, -1
  %i.al = icmp eq i32 %.sroa.59.022.i.i.i.i.i, 0  ; 2 uses
  %.sroa.59.1.i.i.i.i.i = select i1 %i.al, i32 63, i32 %i.ak ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i = select i1 %i.al, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.023.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i ; 4 uses
  %i.am = zext nneg i32 %.sroa.59.1.i.i.i.i.i to i64
  %i.an = shl nuw i64 1, %i.am                    ; 2 uses
  %i.ao = load i64, ptr %spec.select19.i.i.i.i.i, align 8, !tbaa !76
  %i.ap = and i64 %i.aj, %i.ao
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.aq = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !76
  %i.ar = or i64 %i.aq, %i.an
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.as = xor i64 %i.an, -1
  %i.at = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !76
  %i.au = and i64 %i.at, %i.as
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.e, %bb.d
  %storemerge.i.i.i.i.i = phi i64 [ %i.ar, %bb.d ], [ %i.au, %bb.e ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !76
  %i.av = add nsw i64 %.024.i.i.i.i.i, -1
  %5 = icmp samesign ugt i64 %.024.i.i.i.i.i, 1
  br i1 %5, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !1355

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i, %bb.c
  %i.aw = add nsw i64 %3, %i.v                    ; 3 uses
  %i.ax = sdiv i64 %i.aw, 64
  %.idx = shl nsw i64 %i.ax, 3
  %i.ay = and i64 %i.aw, -9223372036854775745
  %i.az = icmp ugt i64 %i.ay, -9223372036854775808
  %storemerge.idx.i.i.i75 = select i1 %i.az, i64 -8, i64 0
  %i.ba = add nsw i64 %storemerge.idx.i.i.i75, %.idx ; 2 uses
  %storemerge.i.i.i76 = getelementptr inbounds i8, ptr %1, i64 %i.ba ; 4 uses
  %i.bb = trunc i64 %i.aw to i32
  %i.bc = and i32 %i.bb, 63                       ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.f

bb.f:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %.not26.i.i.i = icmp eq i32 %2, 0
  br i1 %.not26.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.be = shl nsw i64 -1, %i.v                    ; 2 uses
  br i1 %4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bf = load i64, ptr %1, align 8, !tbaa !76
  %i.bg = or i64 %i.bf, %i.be
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bh = xor i64 %i.be, -1
  %i.bi = load i64, ptr %1, align 8, !tbaa !76
  %i.bj = and i64 %i.bi, %i.bh
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i

_ZSt14__fill_bvectorPmjjb.exit.i.i.i:             ; preds = %bb.i, %bb.h
  %storemerge.i.i.i.i = phi i64 [ %i.bj, %bb.i ], [ %i.bg, %bb.h ]
  store i64 %storemerge.i.i.i.i, ptr %1, align 8, !tbaa !76
  %.pre = ptrtoint ptr %i.bd to i64
  br label %bb.j

bb.j:                                             ; preds = %_ZSt14__fill_bvectorPmjjb.exit.i.i.i, %bb.f
  %.pre-phi = phi i64 [ %.pre, %_ZSt14__fill_bvectorPmjjb.exit.i.i.i ], [ %i.s, %bb.f ]
  %.0.i.i.i = phi ptr [ %i.bd, %_ZSt14__fill_bvectorPmjjb.exit.i.i.i ], [ %1, %bb.f ]
  %i.bk = ptrtoint ptr %storemerge.i.i.i76 to i64
  %i.bl = sub i64 %i.bk, %.pre-phi
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i.i.i, i8 %.neg, i64 %i.bl, i1 false)
  %.not27.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not27.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = sub nuw nsw i32 64, %i.bc
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = lshr i64 -1, %i.bn                      ; 2 uses
  br i1 %4, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bp = load i64, ptr %storemerge.i.i.i76, align 8, !tbaa !76
  %i.bq = or i64 %i.bp, %i.bo
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.br = xor i64 %i.bo, -1
  %i.bs = load i64, ptr %storemerge.i.i.i76, align 8, !tbaa !76
  %i.bt = and i64 %i.bs, %i.br
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i

_ZSt14__fill_bvectorPmjjb.exit29.i.i.i:           ; preds = %bb.m, %bb.l
  %storemerge.i28.i.i.i = phi i64 [ %i.bt, %bb.m ], [ %i.bq, %bb.l ]
  store i64 %storemerge.i28.i.i.i, ptr %storemerge.i.i.i76, align 8, !tbaa !76
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

bb.n:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %.not25.i.i.i = icmp eq i32 %2, %i.bc
  br i1 %.not25.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = shl nsw i64 -1, %i.v
  %i.bv = sub nuw nsw i32 64, %i.bc
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = lshr i64 -1, %i.bw
  %i.by = and i64 %i.bx, %i.bu                    ; 2 uses
  br i1 %4, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bz = load i64, ptr %1, align 8, !tbaa !76
  %i.ca = or i64 %i.bz, %i.by
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cb = xor i64 %i.by, -1
  %i.cc = load i64, ptr %1, align 8, !tbaa !76
  %i.cd = and i64 %i.cc, %i.cb
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i

_ZSt14__fill_bvectorPmjjb.exit31.i.i.i:           ; preds = %bb.q, %bb.p
  %storemerge.i30.i.i.i = phi i64 [ %i.cd, %bb.q ], [ %i.ca, %bb.p ]
  store i64 %storemerge.i30.i.i.i, ptr %1, align 8, !tbaa !76
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit:    ; preds = %bb.j, %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i, %bb.n, %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i
  %i.ce = load i32, ptr %i.k, align 8, !tbaa !544
  %i.cf = zext i32 %i.ce to i64
  %i.cg = add nsw i64 %3, %i.cf                   ; 3 uses
  %i.ch = sdiv i64 %i.cg, 64
  %i.ci = load ptr, ptr %i.i, align 8, !tbaa !207
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = and i64 %i.cg, -9223372036854775745
  %i.cl = icmp ugt i64 %i.ck, -9223372036854775808
  %storemerge.idx.i.i = select i1 %i.cl, i64 -8, i64 0
  %storemerge.i.i = getelementptr inbounds i8, ptr %i.cj, i64 %storemerge.idx.i.i
  store ptr %storemerge.i.i, ptr %i.i, align 8, !tbaa !207
  %i.cm = trunc i64 %i.cg to i32
  %i.cn = and i32 %i.cm, 63
  br label %.sink.split

bb.r:                                             ; preds = %bb.b
  %i.co = sub i64 9223372036854775744, %i.q
  %i.cp = icmp ult i64 %i.co, %3
  br i1 %i.cp, label %bb.s, label %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #35
  unreachable

_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit:    ; preds = %bb.r
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %3)
  %i.cq = add i64 %.sroa.speculated.i, %i.q       ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.q
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 9223372036854775744)
  %i.ct = add nuw nsw i64 %i.cs, 63
  %i.cu = select i1 %i.cr, i64 9223372036854775807, i64 %i.ct ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = and i64 %i.cv, 1152921504606846968
  %i.cx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #36 ; 5 uses
  %i.cy = load ptr, ptr %0, align 8, !tbaa !207   ; 3 uses
  %i.cz = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 4 uses
  %i.dc = icmp sgt i64 %i.db, 8
  br i1 %i.dc, label %bb.t, label %bb.u, !prof !140

bb.t:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cx, ptr align 8 %i.cy, i64 %i.db, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.u:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  %i.dd = icmp eq i64 %i.db, 8
  br i1 %i.dd, label %bb.v, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.v:                                             ; preds = %bb.u
  %i.de = load i64, ptr %i.cy, align 8, !tbaa !76
  store i64 %i.de, ptr %i.cx, align 8, !tbaa !76
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.v, %bb.u, %bb.t
  %i.df = getelementptr inbounds i8, ptr %i.cx, i64 %i.db ; 2 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.dg = zext i32 %2 to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.dw, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.dg, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.019.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.df, %.lr.ph.i.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.dh = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i to i64
  %i.di = shl nuw i64 1, %i.dh
  %i.dj = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !76
  %i.dk = and i64 %i.dj, %i.di
  %.not.i.i.i.i.i.i81 = icmp eq i64 %i.dk, 0
  %i.dl = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.dm = shl nuw i64 1, %i.dl                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i81, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dn = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !76
  %i.do = or i64 %i.dn, %i.dm
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dp = xor i64 %i.dm, -1
  %i.dq = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !76
  %i.dr = and i64 %i.dq, %i.dp
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.x, %bb.w
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.dr, %bb.x ], [ %i.do, %bb.w ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !76
  %i.ds = add i32 %.sroa.512.017.i.i.i.i.i.i, 1
  %i.dt = icmp eq i32 %.sroa.512.017.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i = select i1 %i.dt, i64 8, i64 0
  %spec.select.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i
  %spec.select15.i.i.i.i.i.i = select i1 %i.dt, i32 0, i32 %i.ds
  %i.du = add i32 %.sroa.55.018.i.i.i.i.i.i, 1
  %i.dv = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i = select i1 %i.dv, i32 0, i32 %i.du ; 2 uses
  %.sroa.03.1.idx.i.i.i.i.i.i = select i1 %i.dv, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i ; 2 uses
  %i.dw = add nsw i64 %.020.i.i.i.i.i.i, -1
  %6 = icmp samesign ugt i64 %.020.i.i.i.i.i.i, 1
  br i1 %6, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, !llvm.loop !1356

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %.sroa.55.0.lcssa.i.i.i.i.i.i = phi i32 [ 0, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ], [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.03.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.df, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ], [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ] ; 9 uses
  %i.dx = zext i32 %.sroa.55.0.lcssa.i.i.i.i.i.i to i64 ; 3 uses
  %i.dy = add nsw i64 %3, %i.dx                   ; 3 uses
  %i.dz = sdiv i64 %i.dy, 64
  %.idx157 = shl nsw i64 %i.dz, 3
  %i.ea = and i64 %i.dy, -9223372036854775745
  %i.eb = icmp ugt i64 %i.ea, -9223372036854775808
  %storemerge.idx.i.i.i85 = select i1 %i.eb, i64 -8, i64 0
  %i.ec = add nsw i64 %storemerge.idx.i.i.i85, %.idx157 ; 2 uses
  %storemerge.i.i.i86 = getelementptr inbounds i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, i64 %i.ec ; 6 uses
  %i.ed = trunc i64 %i.dy to i32
  %i.ee = and i32 %i.ed, 63                       ; 6 uses
  %.not.i.i.i89 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i89, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %.not26.i.i.i90 = icmp eq i32 %.sroa.55.0.lcssa.i.i.i.i.i.i, 0
  br i1 %.not26.i.i.i90, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, i64 8
  %i.eg = shl nsw i64 -1, %i.dx                   ; 2 uses
  br i1 %4, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eh = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !76
  %i.ei = or i64 %i.eh, %i.eg
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92

bb.ab:                                            ; preds = %bb.z
  %i.ej = xor i64 %i.eg, -1
  %i.ek = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !76
  %i.el = and i64 %i.ek, %i.ej
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92

_ZSt14__fill_bvectorPmjjb.exit.i.i.i92:           ; preds = %bb.ab, %bb.aa
  %storemerge.i.i.i.i93 = phi i64 [ %i.el, %bb.ab ], [ %i.ei, %bb.aa ]
  store i64 %storemerge.i.i.i.i93, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !76
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92, %bb.y
  %.0.i.i.i94 = phi ptr [ %i.ef, %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92 ], [ %.sroa.03.0.lcssa.i.i.i.i.i.i, %bb.y ] ; 2 uses
  %i.em = ptrtoint ptr %storemerge.i.i.i86 to i64
  %i.en = ptrtoint ptr %.0.i.i.i94 to i64
  %i.eo = sub i64 %i.em, %i.en
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i.i.i94, i8 %.neg, i64 %i.eo, i1 false)
  %.not27.i.i.i95 = icmp eq i32 %i.ee, 0
  br i1 %.not27.i.i.i95, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = sub nuw nsw i32 64, %i.ee
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = lshr i64 -1, %i.eq                      ; 2 uses
  br i1 %4, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.es = load i64, ptr %storemerge.i.i.i86, align 8, !tbaa !76
  %i.et = or i64 %i.es, %i.er
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96

bb.af:                                            ; preds = %bb.ad
  %i.eu = xor i64 %i.er, -1
  %i.ev = load i64, ptr %storemerge.i.i.i86, align 8, !tbaa !76
  %i.ew = and i64 %i.ev, %i.eu
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96

_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96:         ; preds = %bb.af, %bb.ae
  %storemerge.i28.i.i.i97 = phi i64 [ %i.ew, %bb.af ], [ %i.et, %bb.ae ]
  store i64 %storemerge.i28.i.i.i97, ptr %storemerge.i.i.i86, align 8, !tbaa !76
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101

bb.ag:                                            ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %.not25.i.i.i98 = icmp eq i32 %.sroa.55.0.lcssa.i.i.i.i.i.i, %i.ee
  br i1 %.not25.i.i.i98, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ex = shl nsw i64 -1, %i.dx
  %i.ey = sub nuw nsw i32 64, %i.ee
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = lshr i64 -1, %i.ez
  %i.fb = and i64 %i.fa, %i.ex                    ; 2 uses
  br i1 %4, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fc = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !76
  %i.fd = or i64 %i.fc, %i.fb
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99

bb.aj:                                            ; preds = %bb.ah
  %i.fe = xor i64 %i.fb, -1
  %i.ff = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !76
  %i.fg = and i64 %i.ff, %i.fe
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99

_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99:         ; preds = %bb.aj, %bb.ai
  %storemerge.i30.i.i.i100 = phi i64 [ %i.fg, %bb.aj ], [ %i.fd, %bb.ai ]
  store i64 %storemerge.i30.i.i.i100, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !76
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101: ; preds = %bb.ac, %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96, %bb.ag, %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99
  %.sroa.0.0.copyload.i102 = load ptr, ptr %i.i, align 8
  %.sroa.2.0.copyload.i104 = load i32, ptr %i.k, align 8
  %i.fh = ptrtoint ptr %.sroa.0.0.copyload.i102 to i64
  %i.fi = sub i64 %i.fh, %i.cz
  %i.fj = shl nsw i64 %i.fi, 3
  %i.fk = zext i32 %.sroa.2.0.copyload.i104 to i64
  %i.fl = zext i32 %2 to i64
  %i.fm = sub nsw i64 %i.fk, %i.fl
  %i.fn = add i64 %i.fm, %i.fj                    ; 2 uses
  %i.fo = icmp sgt i64 %i.fn, 0
  br i1 %i.fo, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122
  %.024.i.i.i.i.i118 = phi i64 [ %i.ge, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %i.fn, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i119 = phi ptr [ %.sroa.07.1.i.i.i.i.i128, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %storemerge.i.i.i86, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 4 uses
  %.sroa.59.022.i.i.i.i.i120 = phi i32 [ %.sroa.59.1.i.i.i.i.i126, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %i.ee, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 3 uses
  %.sroa.516.021.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i125, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %2, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 3 uses
  %.sroa.013.020.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i124, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %1, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 2 uses
  %i.fp = zext nneg i32 %.sroa.516.021.i.i.i.i.i to i64
  %i.fq = shl nuw i64 1, %i.fp
  %i.fr = zext nneg i32 %.sroa.59.022.i.i.i.i.i120 to i64
  %i.fs = shl nuw i64 1, %i.fr                    ; 2 uses
  %i.ft = load i64, ptr %.sroa.013.020.i.i.i.i.i, align 8, !tbaa !76
  %i.fu = and i64 %i.ft, %i.fq
  %.not.i.i.i.i.i.i121 = icmp eq i64 %i.fu, 0
  br i1 %.not.i.i.i.i.i.i121, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fv = load i64, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !76
  %i.fw = or i64 %i.fv, %i.fs
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fx = xor i64 %i.fs, -1
  %i.fy = load i64, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !76
  %i.fz = and i64 %i.fy, %i.fx
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122:   ; preds = %bb.al, %bb.ak
  %storemerge.i.i.i.i.i123 = phi i64 [ %i.fw, %bb.ak ], [ %i.fz, %bb.al ]
  store i64 %storemerge.i.i.i.i.i123, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !76
  %i.ga = add i32 %.sroa.516.021.i.i.i.i.i, 1
  %i.gb = icmp eq i32 %.sroa.516.021.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i = select i1 %i.gb, i64 8, i64 0
  %spec.select.i.i.i.i.i124 = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i
  %spec.select19.i.i.i.i.i125 = select i1 %i.gb, i32 0, i32 %i.ga
  %i.gc = add i32 %.sroa.59.022.i.i.i.i.i120, 1
  %i.gd = icmp eq i32 %.sroa.59.022.i.i.i.i.i120, 63 ; 2 uses
  %.sroa.59.1.i.i.i.i.i126 = select i1 %i.gd, i32 0, i32 %i.gc ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i127 = select i1 %i.gd, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i128 = getelementptr inbounds nuw i8, ptr %.sroa.07.023.i.i.i.i.i119, i64 %.sroa.07.1.idx.i.i.i.i.i127 ; 2 uses
  %i.ge = add nsw i64 %.024.i.i.i.i.i118, -1
  %7 = icmp samesign ugt i64 %.024.i.i.i.i.i118, 1
  br i1 %7, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !1357

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101
  %.sroa.59.0.lcssa.i.i.i.i.i114 = phi i32 [ %i.ee, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ], [ %.sroa.59.1.i.i.i.i.i126, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ]
  %.sroa.07.0.lcssa.i.i.i.i.i115 = phi ptr [ %storemerge.i.i.i86, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ], [ %.sroa.07.1.i.i.i.i.i128, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ]
  %i.gf = load ptr, ptr %0, align 8, !tbaa !207   ; 2 uses
  %.not.i129 = icmp eq ptr %i.gf, null
  br i1 %.not.i129, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.gg = load ptr, ptr %i.b, align 8, !tbaa !210 ; 2 uses
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.gf to i64
  %i.gj = sub i64 %i.gh, %i.gi                    ; 2 uses
  %i.gk = ashr exact i64 %i.gj, 3
  %i.gl = sub nsw i64 0, %i.gk
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.gl
  tail call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gj) #37
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.am
  %i.gn = lshr i64 %i.cu, 6
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.gn
  store ptr %i.go, ptr %i.b, align 8, !tbaa !210
  store ptr %i.cx, ptr %0, align 8
  %.sroa.5137.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.5137.0..sroa_idx138, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i115, ptr %i.i, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  %.sroa.59.0.lcssa.i.i.i.i.i114.sink = phi i32 [ %.sroa.59.0.lcssa.i.i.i.i.i114, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.cn, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit ]
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i114.sink, ptr %i.k, align 8
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common14HistCollection10AddHistRowEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %3 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 -1, ptr %i.a, align 4, !tbaa !122
  %i.c = zext i32 %1 to i64                       ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !488  ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !179  ; 6 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 4 uses
  %.not = icmp ugt i64 %i.k, %i.c
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %1, 1
  %i.m = zext i32 %i.l to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 4294967295, ptr %i.b, align 8, !tbaa !76
  %i.n = icmp samesign ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i64 %i.m, %i.k
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.f, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !179
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp samesign ugt i64 %i.k, %i.m
  br i1 %i.p, label %bb.e, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.m ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.q, ptr %i.e, align 8, !tbaa !488
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

_ZNSt6vectorImSaImEE6resizeEmRKm.exit:            ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.c ], [ %i.g, %bb.d ], [ %i.g, %bb.e ], [ %i.g, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit, %bb.a
  %i.r = phi ptr [ %.pre, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit ], [ %i.g, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.c ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !76, !noalias !1360
  %i.u = icmp eq i64 %i.t, 4294967295
  br i1 %i.u, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.f
  call void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.pr = load ptr, ptr %2, align 8, !tbaa !69
  %.not22 = icmp eq ptr %.pr, null
  br i1 %.not22, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.v = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.v, ptr noundef nonnull @.str.78, i32 noundef 447)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.h

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.w = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.i ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.82, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = load ptr, ptr %2, align 8, !tbaa !69     ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !59
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef %i.aa, i64 noundef %i.ac)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %.noexc, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.af, %bb.h ], [ %i.ag, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.pr20 = load ptr, ptr %2, align 8, !tbaa !69   ; 4 uses
  %.not.i = icmp eq ptr %.pr20, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %.pr20, align 8, !tbaa !60 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.pr20, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !66
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr20, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.f, %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %bb.k, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !218
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !217
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 24                ; 2 uses
  %i.au = add i32 %1, 1
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = icmp ult i64 %i.at, %i.av
  br i1 %i.aw, label %bb.m, label %_ZNSt6vectorIS_IN7xgboost6detail20GradientPairInternalIdEESaIS3_EESaIS5_EE6resizeEm.exit

bb.m:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.ai = icmp eq i64 %i.ad, 16
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds i8, ptr %i.d, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !448
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.idx = shl nuw nsw i64 %2, 4                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.al = add nsw i64 %.idx, -16                  ; 2 uses
  %i.am = lshr exact i64 %i.al, 4
  %i.an = add nuw nsw i64 %i.am, 1
  %xtraiter142 = and i64 %i.an, 3                 ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %bb.h, %.lr.ph.i.i.i.prol
  %.06.i.i.i.prol = phi ptr [ %i.ao, %.lr.ph.i.i.i.prol ], [ %1, %bb.h ] ; 3 uses
  %prol.iter144 = phi i64 [ %prol.iter144.next, %.lr.ph.i.i.i.prol ], [ 0, %bb.h ]
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i.prol, align 8
  %.sroa.9.8..06.i.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.06.i.i.i.prol, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.8..06.i.i.i.sroa_idx.prol, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9, i64 15, i1 false), !tbaa.struct !1398
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1394

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %bb.h
  %.06.i.i.i.unr = phi ptr [ %1, %bb.h ], [ %i.ao, %.lr.ph.i.i.i.prol ]
  %i.ap = icmp ult i64 %i.al, 48
  br i1 %i.ap, label %_ZSt4fillIPN7xgboost6detail20GradientPairInternalIdEES3_EvT_S5_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.06.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i, align 8
  %.sroa.9.8..06.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.8..06.i.i.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9, i64 15, i1 false), !tbaa.struct !1398
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  store i8 %.sroa.4.8.copyload, ptr %i.aq, align 8
  %.sroa.9.8..06.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.8..06.i.i.i.sroa_idx.1, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9, i64 15, i1 false), !tbaa.struct !1398
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32
  store i8 %.sroa.4.8.copyload, ptr %i.ar, align 8
  %.sroa.9.8..06.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.8..06.i.i.i.sroa_idx.2, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9, i64 15, i1 false), !tbaa.struct !1398
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 48
  store i8 %.sroa.4.8.copyload, ptr %i.as, align 8
  %.sroa.9.8..06.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.8..06.i.i.i.sroa_idx.3, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9, i64 15, i1 false), !tbaa.struct !1398
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %i.at, %i.ak
  br i1 %.not.i.i.i.3, label %_ZSt4fillIPN7xgboost6detail20GradientPairInternalIdEES3_EvT_S5_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !23

bb.i:                                             ; preds = %bb.c
  %i.au = sub nuw i64 %2, %i.k                    ; 4 uses
  %.not7.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN7xgboost6detail20GradientPairInternalIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i
  %xtraiter = and i64 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.av, %.lr.ph.i.i.i.i.prol ], [ %i.au, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  store i8 %.sroa.4.8.copyload, ptr %.09.i.i.i.i.prol, align 8
  %.sroa.9.8..09.i.i.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.8..09.i.i.i.i.sroa_idx.prol, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9, i64 15, i1 false), !tbaa.struct !1398
  %i.av = add i64 %.068.i.i.i.i.prol, -1          ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1395

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa138.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.i.i.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.i.i.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.au, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %.lr.ph.i.i.i.i.prol ]
  %i.ax = sub i64 %i.k, %2
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %_ZSt24__uninitialized_fill_n_aIPN7xgboost6detail20GradientPairInternalIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store i8 %.sroa.4.8.copyload, ptr %.09.i.i.i.i, align 8
  %.sroa.9.8..09.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.8..09.i.i.i.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9, i64 15, i1 false), !tbaa.struct !1398
  %i.az = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store i8 %.sroa.4.8.copyload, ptr %i.az, align 8
  %.sroa.9.8..09.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.8..09.i.i.i.i.sroa_idx.1, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9, i64 15, i1 false), !tbaa.struct !1398
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32
  store i8 %.sroa.4.8.copyload, ptr %i.ba, align 8
  %.sroa.9.8..09.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.8..09.i.i.i.i.sroa_idx.2, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9, i64 15, i1 false), !tbaa.struct !1398
  %i.bb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  store i8 %.sroa.4.8.copyload, ptr %i.bb, align 8
  %.sroa.9.8..09.i.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.8..09.i.i.i.i.sroa_idx.3, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9, i64 15, i1 false), !tbaa.struct !1398
  %i.bc = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.3, label %_ZSt24__uninitialized_fill_n_aIPN7xgboost6detail20GradientPairInternalIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1396

_ZSt24__uninitialized_fill_n_aIPN7xgboost6detail20GradientPairInternalIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.i
  %i.be = phi ptr [ %i.d, %bb.i ], [ %.lcssa138.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.bd, %.lr.ph.i.i.i.i ] ; 3 uses
  store ptr %i.be, ptr %i.c, align 8, !tbaa !604
  %.not11.i.i.i.i.i69 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i69, label %_ZSt22__uninitialized_move_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit75.thread, label %.lr.ph.i.i.i.i.i70

_ZSt22__uninitialized_move_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit75.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPN7xgboost6detail20GradientPairInternalIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.j
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !604
  br label %_ZSt4fillIPN7xgboost6detail20GradientPairInternalIdEES3_EvT_S5_RKT0_.exit

.lr.ph.i.i.i.i.i70:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPN7xgboost6detail20GradientPairInternalIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, %.lr.ph.i.i.i.i.i70
  %.013.i.i.i.i.i71 = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i70 ], [ %i.be, %_ZSt24__uninitialized_fill_n_aIPN7xgboost6detail20GradientPairInternalIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i72 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i70 ], [ %1, %_ZSt24__uninitialized_fill_n_aIPN7xgboost6detail20GradientPairInternalIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i71, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i72, i64 16, i1 false), !tbaa.struct !448
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i72, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i71, i64 16
  %.not.i.i.i.i.i73 = icmp eq ptr %i.bg, %i.d
  br i1 %.not.i.i.i.i.i73, label %_ZSt22__uninitialized_move_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit75, label %.lr.ph.i.i.i.i.i70, !llvm.loop !1393

_ZSt22__uninitialized_move_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit75: ; preds = %.lr.ph.i.i.i.i.i70
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !604
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.j
  store ptr %i.bj, ptr %i.c, align 8, !tbaa !604
  br label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %_ZSt22__uninitialized_move_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit75, %.lr.ph.i.i.i77
  %.06.i.i.i78 = phi ptr [ %i.bk, %.lr.ph.i.i.i77 ], [ %1, %_ZSt22__uninitialized_move_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit75 ] ; 3 uses
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i78, align 8
  %.sroa.9.8..06.i.i.i78.sroa_idx = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.8..06.i.i.i78.sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9, i64 15, i1 false), !tbaa.struct !1398
  %i.bk = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 16 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.bk, %i.d
  br i1 %.not.i.i.i79, label %_ZSt4fillIPN7xgboost6detail20GradientPairInternalIdEES3_EvT_S5_RKT0_.exit, label %.lr.ph.i.i.i77, !llvm.loop !23

_ZSt4fillIPN7xgboost6detail20GradientPairInternalIdEES3_EvT_S5_RKT0_.exit: ; preds = %.lr.ph.i.i.i77, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit75.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.n

bb.j:                                             ; preds = %bb.b
  %i.bl = load ptr, ptr %0, align 8, !tbaa !221   ; 5 uses
  %i.bm = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bn = sub i64 %i.f, %i.bm
  %i.bo = ashr exact i64 %i.bn, 4                 ; 4 uses
  %i.bp = sub nsw i64 576460752303423487, %i.bo
  %i.bq = icmp ult i64 %i.bp, %2
  br i1 %i.bq, label %bb.k, label %_ZNKSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #35
  unreachable

_ZNKSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 %2)
  %i.br = add nsw i64 %.sroa.speculated.i, %i.bo  ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bo
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 576460752303423487)
  %i.bu = select i1 %i.bs, i64 576460752303423487, i64 %i.bt ; 3 uses
  %i.bv = ptrtoint ptr %1 to i64
  %i.bw = sub i64 %i.bv, %i.bm
  %.not.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE11_M_allocateEm.exit, label %bb.l

bb.l:                                             ; preds = %_ZNKSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.bx = shl nuw nsw i64 %i.bu, 4
  %i.by = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #36
  br label %_ZNSt12_Vector_baseIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.l
  %i.bz = phi ptr [ %i.by, %bb.l ], [ null, %_ZNKSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bw ; 2 uses
  %xtraiter145 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %.lr.ph.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i82.prol

.lr.ph.i.i.i.i82.prol:                            ; preds = %_ZNSt12_Vector_baseIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i82.prol
  %.09.i.i.i.i83.prol = phi ptr [ %i.cc, %.lr.ph.i.i.i.i82.prol ], [ %i.ca, %_ZNSt12_Vector_baseIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE11_M_allocateEm.exit ] ; 2 uses
  %.068.i.i.i.i84.prol = phi i64 [ %i.cb, %.lr.ph.i.i.i.i82.prol ], [ %2, %_ZNSt12_Vector_baseIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE11_M_allocateEm.exit ]
  %prol.iter147 = phi i64 [ %prol.iter147.next, %.lr.ph.i.i.i.i82.prol ], [ 0, %_ZNSt12_Vector_baseIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE11_M_allocateEm.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i83.prol, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !448
  %i.cb = add i64 %.068.i.i.i.i84.prol, -1        ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83.prol, i64 16 ; 2 uses
  %prol.iter147.next = add i64 %prol.iter147, 1   ; 2 uses
  %prol.iter147.cmp.not = icmp eq i64 %prol.iter147.next, %xtraiter145
  br i1 %prol.iter147.cmp.not, label %.lr.ph.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i82.prol, !llvm.loop !1397

.lr.ph.i.i.i.i82.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i82.prol, %_ZNSt12_Vector_baseIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE11_M_allocateEm.exit
  %.09.i.i.i.i83.unr = phi ptr [ %i.ca, %_ZNSt12_Vector_baseIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE11_M_allocateEm.exit ], [ %i.cc, %.lr.ph.i.i.i.i82.prol ]
  %.068.i.i.i.i84.unr = phi i64 [ %2, %_ZNSt12_Vector_baseIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE11_M_allocateEm.exit ], [ %i.cb, %.lr.ph.i.i.i.i82.prol ]
  %4 = icmp slt i64 %2, 4
  br i1 %4, label %_ZSt24__uninitialized_fill_n_aIPN7xgboost6detail20GradientPairInternalIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82

.lr.ph.i.i.i.i82:                                 ; preds = %.lr.ph.i.i.i.i82.prol.loopexit, %.lr.ph.i.i.i.i82
  %.09.i.i.i.i83 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i82 ], [ %.09.i.i.i.i83.unr, %.lr.ph.i.i.i.i82.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i84 = phi i64 [ %i.cg, %.lr.ph.i.i.i.i82 ], [ %.068.i.i.i.i84.unr, %.lr.ph.i.i.i.i82.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i83, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !448
  %i.cd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !448
  %i.ce = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !448
  %i.cf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !448
  %i.cg = add i64 %.068.i.i.i.i84, -4             ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 64
  %.not.i.i.i.i85.3 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i.i85.3, label %_ZSt24__uninitialized_fill_n_aIPN7xgboost6detail20GradientPairInternalIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82, !llvm.loop !1396

_ZSt24__uninitialized_fill_n_aIPN7xgboost6detail20GradientPairInternalIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit87: ; preds = %.lr.ph.i.i.i.i82, %.lr.ph.i.i.i.i82.prol.loopexit
  %.not11.i.i.i.i.i88 = icmp eq ptr %i.bl, %1
  br i1 %.not11.i.i.i.i.i88, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i89

.lr.ph.i.i.i.i.i89:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPN7xgboost6detail20GradientPairInternalIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit87, %.lr.ph.i.i.i.i.i89
  %.013.i.i.i.i.i90 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i89 ], [ %i.bz, %_ZSt24__uninitialized_fill_n_aIPN7xgboost6detail20GradientPairInternalIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit87 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i91 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i89 ], [ %i.bl, %_ZSt24__uninitialized_fill_n_aIPN7xgboost6detail20GradientPairInternalIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit87 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i90, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i91, i64 16, i1 false), !tbaa.struct !448
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i91, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i90, i64 16 ; 2 uses
  %.not.i.i.i.i.i92 = icmp eq ptr %i.ci, %1
  br i1 %.not.i.i.i.i.i92, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i89, !llvm.loop !1393

_ZSt34__uninitialized_move_if_noexcept_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i89, %_ZSt24__uninitialized_fill_n_aIPN7xgboost6detail20GradientPairInternalIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit87
  %.0.lcssa.i.i.i.i.i93 = phi ptr [ %i.bz, %_ZSt24__uninitialized_fill_n_aIPN7xgboost6detail20GradientPairInternalIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit87 ], [ %i.cj, %.lr.ph.i.i.i.i.i89 ]
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %.0.lcssa.i.i.i.i.i93, i64 %2 ; 2 uses
  %.not11.i.i.i.i.i94 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i94, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit100, label %.lr.ph.i.i.i.i.i95

.lr.ph.i.i.i.i.i95:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %.lr.ph.i.i.i.i.i95
  %.013.i.i.i.i.i96 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i95 ], [ %i.ck, %_ZSt34__uninitialized_move_if_noexcept_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i97 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i95 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i96, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i97, i64 16, i1 false), !tbaa.struct !448
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i97, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i96, i64 16 ; 2 uses
  %.not.i.i.i.i.i98 = icmp eq ptr %i.cl, %i.d
  br i1 %.not.i.i.i.i.i98, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit100, label %.lr.ph.i.i.i.i.i95, !llvm.loop !1393

_ZSt34__uninitialized_move_if_noexcept_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit100: ; preds = %.lr.ph.i.i.i.i.i95, %_ZSt34__uninitialized_move_if_noexcept_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.0.lcssa.i.i.i.i.i99 = phi ptr [ %i.ck, %_ZSt34__uninitialized_move_if_noexcept_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.cm, %.lr.ph.i.i.i.i.i95 ]
  %.not.i101 = icmp eq ptr %i.bl, null
  br i1 %.not.i101, label %_ZNSt12_Vector_baseIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit100
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !222
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.co, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.cp) #37
  br label %_ZNSt12_Vector_baseIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7xgboost6detail20GradientPairInternalIdEES4_SaIS3_EET0_T_S7_S6_RT1_.exit100, %bb.m
  store ptr %i.bz, ptr %0, align 8, !tbaa !221
  store ptr %.0.lcssa.i.i.i.i.i99, ptr %i.c, align 8, !tbaa !604
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.bu
  store ptr %i.cq, ptr %i.a, align 8, !tbaa !222
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4fillIPN7xgboost6detail20GradientPairInternalIdEES3_EvT_S5_RKT0_.exit, %_ZNSt12_Vector_baseIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common13ParallelFor2dIZNS_4tree16HistogramBuilder20BuildLocalHistogramsILb1EEEvRKNS0_14BlockedSpace2dERKNS_16GHistIndexMatrixERKSt6vectorIiSaIiEERKNS0_16RowSetCollectionENS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEEbEUlmNS0_7Range1dEE_EEvS7_iOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %6 = alloca %"class.dmlc::OMPException", align 8 ; 8 uses
  %7 = alloca %class.anon.478, align 8            ; 5 uses
  store i32 %1, ptr %i.c, align 4, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !593
  %i.g = load ptr, ptr %0, align 8, !tbaa !474
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4
  store i64 %i.k, ptr %i.d, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !122, !noalias !1401
  store i32 1, ptr %i.b, align 4, !tbaa !122, !noalias !1401
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.a
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %4, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.l = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.l, ptr noundef nonnull @.str.54, i32 noundef 142)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.c

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.m = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.d ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.55, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = load ptr, ptr %4, align 8, !tbaa !69     ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !59
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.v, %bb.c ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.n

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.pr23 = load ptr, ptr %4, align 8, !tbaa !69   ; 4 uses
  %.not.i17 = icmp eq ptr %.pr23, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %.pr23, align 8, !tbaa !60 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.pr23, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !66
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr23, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.f, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  store ptr %i.d, ptr %7, align 8, !tbaa !478
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.c, ptr %i.ac, align 8, !tbaa !315
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %2, ptr %i.ad, align 8, !tbaa !82
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %0, ptr %i.ae, align 8, !tbaa !602
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor2dIZNS2_4tree16HistogramBuilder20BuildLocalHistogramsILb1EEEvRKNS3_14BlockedSpace2dERKNS2_16GHistIndexMatrixERKSt6vectorIiSaIiEERKNS3_16RowSetCollectionENS3_4SpanIKNS2_6detail20GradientPairInternalIfEELm18446744073709551615EEEbEUlmNS3_7Range1dEE_EEvSA_iOT_EUlvE_JEEEvSU_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull byval(%class.anon.478) align 8 %7)
end_hunk_3
begin_hunk_4_@_ZN4dmlc14LogCheckFormatIPmS1_EESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS8_EERKT_RKT0_:bb.a
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !60, !alias.scope !1616 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.i, align 8, !tbaa !66, !alias.scope !1616
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #37
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr %i.h, ptr %0, align 8, !tbaa !69
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !87
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !87
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !60 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !66
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #37
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !87
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #21
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.f:                                             ; preds = %_ZNSolsEPKv.exit6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZNSolsEPKv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #37
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.v, %.body ], [ %i.ap, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !489  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !175    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !176
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.057.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.prol, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.p, align 8, !tbaa !494
  %i.q = add nsw i64 %.057.i.i.i.prol, -1         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1617

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %1, 8
  br i1 %i.s, label %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.t, align 8, !tbaa !494
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.v, align 8, !tbaa !494
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.x, align 8, !tbaa !494
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.z, align 8, !tbaa !494
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ab, align 8, !tbaa !494
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 120
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ad, align 8, !tbaa !494
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.af, align 8, !tbaa !494
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ah, align 8, !tbaa !494
  %i.ai = add nsw i64 %.057.i.i.i, -8             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1618

_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !489
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #35
  unreachable

_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 384307168202282325) ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 24
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #36 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.as, %.lr.ph.i.i.i30.prol ], [ %i.ap, %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i31.prol, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.aq, align 8, !tbaa !494
  %i.ar = add nsw i64 %.057.i.i.i32.prol, -1      ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 24 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !1619

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ap, %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.as, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.ar, %.lr.ph.i.i.i30.prol ]
  %2 = icmp slt i64 %1, 8
  br i1 %2, label %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bj, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.057.i.i.i32 = phi i64 [ %i.bi, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i31, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.at, align 8, !tbaa !494
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.av, align 8, !tbaa !494
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ax, align 8, !tbaa !494
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.az, align 8, !tbaa !494
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bb, align 8, !tbaa !494
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 120
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bd, align 8, !tbaa !494
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 144
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bf, align 8, !tbaa !494
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 168
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bh, align 8, !tbaa !494
  %i.bi = add nsw i64 %.057.i.i.i32, -8           ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 192
  %.not.i.i.i33.7 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1618

_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i37 ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i64 24, i1 false), !tbaa.struct !490, !alias.scope !1623
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i38 = icmp eq ptr %i.bk, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i37, !llvm.loop !19

_ZNSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN7xgboost6common16RowSetCollection4ElemESaIS3_EE13_M_deallocateEPS3_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !176
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bo) #37
  br label %_ZNSt12_Vector_baseIN7xgboost6common16RowSetCollection4ElemESaIS3_EE13_M_deallocateEPS3_m.exit41

_ZNSt12_Vector_baseIN7xgboost6common16RowSetCollection4ElemESaIS3_EE13_M_deallocateEPS3_m.exit41: ; preds = %_ZNSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.ao, ptr %0, align 8, !tbaa !175
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %1
  store ptr %i.bp, ptr %i.a, align 8, !tbaa !489
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bq, ptr %i.h, align 8, !tbaa !176
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN7xgboost6common16RowSetCollection4ElemESaIS3_EE13_M_deallocateEPS3_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb1ENS0_14CPUExpandEntryENS0_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull align 8 dereferenceable(218) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.119", align 8   ; 13 uses
  %7 = alloca %"class.xgboost::common::BlockedSpace2d", align 8 ; 13 uses
  %8 = alloca %class.anon.513, align 8            ; 6 uses
  %9 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %class.anon.515, align 8           ; 10 uses
  %12 = alloca %class.anon.516, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !391    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 88                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !344
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not69 = icmp eq ptr %i.b, %i.c
  br i1 %.not69, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #35
          to label %.noexc47 unwind label %bb.e

.noexc47:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.m = shl nuw nsw i64 %i.g, 2
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #36
          to label %.noexc48 unwind label %bb.e   ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.n, align 4, !tbaa !122
  %i.o = add nsw i64 %i.g, -1                     ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc48
  %i.q = getelementptr i8, ptr %i.n, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.q, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !122
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc48
  store ptr %i.n, ptr %6, align 8, !tbaa !213
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.g ; 2 uses
  store ptr %i.r, ptr %i.j, align 8, !tbaa !406
  store ptr %i.r, ptr %i.k, align 8, !tbaa !214
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  invoke void @_ZN7xgboost4tree20CommonRowPartitioner19FindSplitConditionsINS0_14CPUExpandEntryENS_16GHistIndexMatrixENS0_14ScalarTreeViewEEEvRKSt6vectorIT_SaIS7_EERKT1_RKT0_PS6_IiSaIiEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(68) %5, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull %6)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %4, ptr %8, align 8, !tbaa !363
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.t, align 8, !tbaa !683
  invoke void @_ZN7xgboost6common14BlockedSpace2dC2IZNS_4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb1ENS3_14CPUExpandEntryENS3_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISI_EERKT3_EUlmE_EEmOT_m(ptr noundef nonnull align 8 dereferenceable(48) %7, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 2048)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !593
  %i.x = load ptr, ptr %7, align 8, !tbaa !474
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  invoke void @_ZN7xgboost6common16PartitionBuilderILm2048EE4InitIZNS_4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb1ENS4_14CPUExpandEntryENS4_14ScalarTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISJ_EERKT3_EUlmE0_EEvmmT_(ptr noundef nonnull align 8 dereferenceable(80) %i.u, i64 noundef %i.ab, i64 noundef %i.g, ptr nonnull %4, ptr nonnull %0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.ad = load i64, ptr %0, align 8, !tbaa !76, !noalias !1626
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !76, !noalias !1626
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.m

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !69
  %.not51 = icmp eq ptr %.pr, null
  br i1 %.not51, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.ag = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc34 unwind label %bb.n

.noexc34:                                         ; preds = %bb.j
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ag, ptr noundef nonnull @.str.95, i32 noundef 168)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.n

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc34
end_hunk_4
begin_hunk_5_@_ZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EEENKUlmNS5_7Range1dEE_clEmSI_:bb.a
  %i.bt = urem i64 %i.bq, %i.bs                   ; 2 uses
  %i.bu = load ptr, ptr %i.bj, align 8, !tbaa !234
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !2198 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !233 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !122
  %i.ca = icmp eq i32 %i.as, %i.bz
  br i1 %i.ca, label %_ZNK7xgboost32FeatureInteractionConstraintHost5QueryEij.exit, label %.lr.ph.i.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.cb = icmp eq i32 %i.as, %i.ce
  br i1 %i.cb, label %_ZNK7xgboost32FeatureInteractionConstraintHost5QueryEij.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2187

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.l, %bb.m
  %.020.i.i.i.i.i = phi ptr [ %i.cc, %bb.m ], [ %i.bx, %bb.l ]
  %i.cc = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !233 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not18.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !122 ; 2 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = urem i64 %i.cf, %i.bs
  %.not19.i.i.i.i.i = icmp eq i64 %i.cg, %i.bt
  br i1 %.not19.i.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !2187

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.n
  br label %_ZNSt6vectorImSaImEED2Ev.exit, !llvm.loop !2187

_ZNK7xgboost32FeatureInteractionConstraintHost5QueryEij.exit: ; preds = %bb.m, %bb.j, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit, %bb.l
  br i1 %i.ba, label %bb.o, label %bb.ai

bb.o:                                             ; preds = %_ZNK7xgboost32FeatureInteractionConstraintHost5QueryEij.exit
  %i.ch = load ptr, ptr %i.an, align 8, !tbaa !2199, !nonnull !136, !align !497 ; 3 uses
  %i.ci = add i32 %i.as, 1
  %i.cj = zext i32 %i.ci to i64                   ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !314
  %i.cm = load ptr, ptr %i.ch, align 8, !tbaa !306 ; 3 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 2                 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.cq, %i.cj
  br i1 %.not.i.i, label %_ZNKSt6vectorIjSaIjEE2atEm.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.86, i64 noundef %i.cj, i64 noundef %i.cq) #35
  unreachable

_ZNKSt6vectorIjSaIjEE2atEm.exit:                  ; preds = %bb.o
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cj
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !122 ; 2 uses
  %i.ct = zext i32 %i.as to i64                   ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !122 ; 2 uses
  %i.cw = sub i32 %i.cs, %i.cv                    ; 2 uses
  %i.cx = load ptr, ptr %i.ao, align 8, !tbaa !397
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 28
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !2200
  %i.da = icmp ult i32 %i.cw, %i.cz
  br i1 %i.da, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNKSt6vectorIjSaIjEE2atEm.exit
  %i.db = load ptr, ptr %i.ak, align 8, !tbaa !2201, !nonnull !136, !align !497
  %i.dc = load ptr, ptr %i.al, align 8, !tbaa !2202, !nonnull !136, !align !497
  call void @_ZNK7xgboost4tree13HistEvaluator15EnumerateOneHotERKNS_6common13HistogramCutsENS2_4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS0_13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEEEPNS0_19SplitEntryContainerINS0_9GradStatsEEE(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 %i.q, ptr %i.r, i32 noundef %i.as, i32 noundef %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noundef nonnull %i.k)
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.r:                                             ; preds = %_ZNKSt6vectorIjSaIjEE2atEm.exit
  %i.dd = zext i32 %i.cw to i64                   ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.cs, %i.cv        ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.r
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #36 ; 8 uses
  %i.dg = ptrtoaddr ptr %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dd
  store i64 0, ptr %i.df, align 8, !tbaa !76
  %i.di = getelementptr i8, ptr %i.df, i64 8      ; 3 uses
  %i.dj = add nsw i64 %i.dd, -1                   ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %.lr.ph.preheader.i, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKS0_.exit:               ; preds = %.noexc
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.dj, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.di, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !76
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, %.noexc
  %.0.i.i.i.i.i109 = phi ptr [ %i.dl, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ], [ %i.di, %.noexc ] ; 3 uses
  %.0.i.i.i.i.i109218 = ptrtoaddr ptr %.0.i.i.i.i.i109 to i64
  %i.dm = add i64 %.0.i.i.i.i.i109218, -8
  %i.dn = sub i64 %i.dm, %i.dg                    ; 2 uses
  %i.do = lshr i64 %i.dn, 3
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dn, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.dp, 4611686018427387900     ; 4 uses
  %i.dq = shl i64 %n.vec, 3
  %i.dr = getelementptr i8, ptr %i.df, i64 %i.dq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ds = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.df, i64 %i.ds ; 2 uses
  %i.dt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !76
  store <2 x i64> %step.add, ptr %i.dt, align 8, !tbaa !76
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !2188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.df, %.lr.ph.preheader.i ], [ %i.dr, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %i.dv, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.06.i, align 8, !tbaa !76
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.dv, %.0.i.i.i.i.i109
  br i1 %.not.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !2189

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !2199
  %i.dw = ptrtoint ptr %i.dh to i64
  br label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit: ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.loopexit, %bb.r
  %i.dx = phi ptr [ %i.ch, %bb.r ], [ %.pre, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.loopexit ]
  %.0.i.i.i.i.i99 = phi ptr [ null, %bb.r ], [ %.0.i.i.i.i.i109, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.loopexit ] ; 4 uses
  %.sroa.068.096 = phi ptr [ null, %bb.r ], [ %i.df, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.loopexit ] ; 12 uses
  %.sroa.17.094 = phi i64 [ 0, %bb.r ], [ %i.dw, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !306
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.ct
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !122
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = add nuw nsw i64 %i.eb, %i.dd
  %.not.i58 = icmp ugt i64 %i.ec, %i.q
  br i1 %.not.i58, label %bb.s, label %bb.t, !prof !123

bb.s:                                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit
  call void @_ZSt9terminatev() #38
  unreachable

bb.t:                                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit
  %i.ed = or i1 %i.ap, %.not.i.i.i.i
  br i1 %i.ed, label %bb.v, label %bb.u, !prof !140

bb.u:                                             ; preds = %bb.t
  call void @_ZSt9terminatev() #38
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.eb
  store i64 %i.dd, ptr %5, align 8
  store ptr %i.ee, ptr %i.aq, align 8
  %i.ef = load ptr, ptr %i.al, align 8, !tbaa !2202, !nonnull !136, !align !497 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.ef, ptr %4, align 8
  store ptr %i.b, ptr %.sroa.266.0..sroa_idx, align 8
  store ptr %5, ptr %.sroa.3.0..sroa_idx, align 8
  %.pre155 = ptrtoint ptr %.0.i.i.i.i.i99 to i64
  %.pre156 = ptrtoint ptr %.sroa.068.096 to i64   ; 2 uses
  %.pre158 = sub i64 %.pre155, %.pre156
  %.pre160 = ashr exact i64 %.pre158, 3           ; 4 uses
  br i1 %.not.i.i.i.i, label %._crit_edge154, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eg = add nsw i64 %.pre160, 1
  %i.eh = sdiv i64 %i.eg, 2                       ; 4 uses
  %i.ei = icmp sgt i64 %.pre160, 0
  br i1 %i.ei, label %.lr.ph.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.en, %select.unfold.i.i.i.i ], [ %i.eh, %bb.w ] ; 4 uses
  %i.ej = shl nuw nsw i64 %.010.i.i.i.i, 3
  %i.ek = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.ej, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #41 ; 3 uses
  %.not.i.i.i.i59 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i59, label %select.unfold.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.el = icmp eq i64 %.010.i.i.i.i, 1
  %i.em = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.en = lshr i64 %i.em, 1
  br i1 %i.el, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2190

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i: ; preds = %select.unfold.i.i.i.i, %.lr.ph.i.i.i.i, %bb.w
  %.sroa.5.0.i.i = phi i64 [ 0, %bb.w ], [ %.010.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ] ; 5 uses
  %.sroa.12.0.i.i = phi ptr [ null, %bb.w ], [ %i.ek, %.lr.ph.i.i.i.i ], [ %i.ek, %select.unfold.i.i.i.i ] ; 6 uses
  %i.eo = icmp eq i64 %i.eh, %.sroa.5.0.i.i
  br i1 %i.eo, label %bb.x, label %bb.z, !prof !140

bb.x:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i
  %i.ep = getelementptr inbounds [8 x i8], ptr %.sroa.068.096, i64 %i.eh
  invoke void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_SV_T0_T1_(ptr %.sroa.068.096, ptr %i.ep, ptr %.0.i.i.i.i.i99, ptr noundef %.sroa.12.0.i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %4)
          to label %bb.ac unwind label %bb.y

bb.y:                                             ; preds = %bb.ab, %bb.aa, %bb.x
  %.sroa.12.0.i.i.lcssa = phi ptr [ %.sroa.12.0.i.i, %bb.ab ], [ null, %bb.aa ], [ %.sroa.12.0.i.i, %bb.x ]
  %.sroa.5.0.i.i.lcssa = phi i64 [ %.sroa.5.0.i.i, %bb.ab ], [ %.sroa.5.0.i.i, %bb.aa ], [ %i.eh, %bb.x ]
  %i.eq = landingpad { ptr, i32 }
          cleanup
  %i.er = shl i64 %.sroa.5.0.i.i.lcssa, 3
  call void @_ZdlPvm(ptr noundef %.sroa.12.0.i.i.lcssa, i64 noundef %i.er) #21
  br label %.body

bb.z:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i
  %i.es = icmp eq ptr %.sroa.12.0.i.i, null
  br i1 %i.es, label %bb.aa, label %bb.ab, !prof !123

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_(ptr %.sroa.068.096, ptr %.0.i.i.i.i.i99, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %4)
          to label %bb.ac unwind label %bb.y

bb.ab:                                            ; preds = %bb.z
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_lNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_T2_(ptr %.sroa.068.096, ptr %.0.i.i.i.i.i99, ptr noundef nonnull %.sroa.12.0.i.i, i64 noundef %.sroa.5.0.i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %4)
          to label %bb.ac unwind label %bb.y

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.x
  %i.et = shl i64 %.sroa.5.0.i.i, 3
  call void @_ZdlPvm(ptr noundef %.sroa.12.0.i.i, i64 noundef %i.et) #21
  %.pre153 = load ptr, ptr %i.al, align 8, !tbaa !2202
  br label %._crit_edge154

._crit_edge154:                                   ; preds = %bb.v, %bb.ac
  %i.eu = phi ptr [ %.pre153, %bb.ac ], [ %i.ef, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ev = load ptr, ptr %i.ak, align 8, !tbaa !2201, !nonnull !136, !align !497
  invoke void @_ZN7xgboost4tree13HistEvaluator13EnumeratePartILi1EEEvRKNS_6common13HistogramCutsENS3_4SpanIKmLm18446744073709551615EEENS7_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS0_13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEEEPNS0_19SplitEntryContainerINS0_9GradStatsEEE(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i64 %.pre160, ptr %.sroa.068.096, i64 %i.q, ptr %i.r, i32 noundef %i.as, i32 noundef %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.eu, ptr noundef nonnull %i.k)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %._crit_edge154
  %i.ew = load ptr, ptr %i.ak, align 8, !tbaa !2201, !nonnull !136, !align !497
  %i.ex = load ptr, ptr %i.al, align 8, !tbaa !2202, !nonnull !136, !align !497
  invoke void @_ZN7xgboost4tree13HistEvaluator13EnumeratePartILin1EEEvRKNS_6common13HistogramCutsENS3_4SpanIKmLm18446744073709551615EEENS7_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS0_13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEEEPNS0_19SplitEntryContainerINS0_9GradStatsEEE(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ew, i64 %.pre160, ptr %.sroa.068.096, i64 %i.q, ptr %i.r, i32 noundef %i.as, i32 noundef %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ex, ptr noundef nonnull %i.k)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.not.i.i.i60 = icmp eq ptr %.sroa.068.096, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ey = sub i64 %.sroa.17.094, %.pre156
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.068.096, i64 noundef %i.ey) #37
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.ag:                                            ; preds = %bb.ad, %._crit_edge154
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %bb.ag
  %eh.lpad-body = phi { ptr, i32 } [ %i.ez, %bb.ag ], [ %i.eq, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.not.i.i.i61 = icmp eq ptr %.sroa.068.096, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorImSaImEED2Ev.exit62, label %bb.ah

bb.ah:                                            ; preds = %.body
  %i.fa = ptrtoint ptr %.sroa.068.096 to i64
  %i.fb = sub i64 %.sroa.17.094, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.068.096, i64 noundef %i.fb) #37
  br label %_ZNSt6vectorImSaImEED2Ev.exit62

_ZNSt6vectorImSaImEED2Ev.exit62:                  ; preds = %bb.ah, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.ai:                                            ; preds = %_ZNK7xgboost32FeatureInteractionConstraintHost5QueryEij.exit
  %i.fc = load ptr, ptr %i.ak, align 8, !tbaa !2201, !nonnull !136, !align !497
  %i.fd = load ptr, ptr %i.al, align 8, !tbaa !2202, !nonnull !136, !align !497
  %i.fe = call { double, double } @_ZNK7xgboost4tree13HistEvaluator14EnumerateSplitILi1EEENS0_9GradStatsERKNS_6common13HistogramCutsENS4_4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS0_13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEEEPNS0_19SplitEntryContainerIS3_EE(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.fc, i64 %i.q, ptr %i.r, i32 noundef %i.as, i32 noundef %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.fd, ptr noundef nonnull %i.k) ; 2 uses
  %i.ff = extractvalue { double, double } %i.fe, 0
  %i.fg = extractvalue { double, double } %i.fe, 1
  %i.fh = load ptr, ptr %i.am, align 8, !tbaa !189
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.fh, i64 %i.o ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !441
  %i.fk = fcmp une double %i.ff, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fm = load double, ptr %i.fl, align 8
  %i.fn = fcmp une double %i.fg, %i.fm
  %or.cond.not.i = select i1 %i.fk, i1 true, i1 %i.fn
  br i1 %or.cond.not.i, label %bb.aj, label %_ZNSt6vectorImSaImEED2Ev.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fo = load ptr, ptr %i.ak, align 8, !tbaa !2201, !nonnull !136, !align !497
  %i.fp = load ptr, ptr %i.al, align 8, !tbaa !2202, !nonnull !136, !align !497
  %i.fq = call { double, double } @_ZNK7xgboost4tree13HistEvaluator14EnumerateSplitILin1EEENS0_9GradStatsERKNS_6common13HistogramCutsENS4_4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS0_13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEEEPNS0_19SplitEntryContainerIS3_EE(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i64 %i.q, ptr %i.r, i32 noundef %i.as, i32 noundef %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.fp, ptr noundef nonnull %i.k) ; 0 uses
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %.lr.ph.i.i.i.i.i, %bb.i, %bb.k, %..loopexit_crit_edge21.i.i.i.i.i, %bb.af, %bb.ae, %bb.q, %bb.aj, %bb.ai
  %i.fr = add nuw i64 %.0131, 1                   ; 2 uses
  %exitcond152.not = icmp eq i64 %i.fr, %3
  br i1 %exitcond152.not, label %._crit_edge, label %bb.b, !llvm.loop !2191
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZNK7xgboost4tree21BoundedHistCollectionixEm(ptr noundef nonnull align 8 dereferenceable(81) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !122
  %i.g = icmp slt i32 %i.f, %i.a                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.g, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !61 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt3mapIimSt4lessIiESaISt4pairIKimEEE11lower_boundERS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !26

_ZNKSt3mapIimSt4lessIiESaISt4pairIKimEEE11lower_boundERS3_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = icmp eq ptr %.19.i.i.i.i, %i.d
  br i1 %i.h, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZNKSt3mapIimSt4lessIiESaISt4pairIKimEEE11lower_boundERS3_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !122
  %i.k = icmp sgt i32 %i.j, %i.a
  br i1 %i.k, label %.critedge.i, label %_ZNKSt3mapIimSt4lessIiESaISt4pairIKimEEE2atERS3_.exit

.critedge.i:                                      ; preds = %bb.b, %_ZNKSt3mapIimSt4lessIiESaISt4pairIKimEEE11lower_boundERS3_.exit.i, %bb.a
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.32) #35
  unreachable

_ZNKSt3mapIimSt4lessIiESaISt4pairIKimEEE2atERS3_.exit: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !76   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !201  ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !551  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !550  ; 4 uses
  %i.s = icmp ne ptr %i.p, null                   ; 2 uses
  %i.t = icmp eq i64 %i.r, 0
  %i.u = or i1 %i.s, %i.t
  br i1 %i.u, label %_ZN7xgboost6common4SpanINS_6detail20GradientPairInternalIdEELm18446744073709551615EEC2EPS4_m.exit, label %bb.c, !prof !140

bb.c:                                             ; preds = %_ZNKSt3mapIimSt4lessIiESaISt4pairIKimEEE2atERS3_.exit
  tail call void @_ZSt9terminatev() #38
  unreachable

_ZN7xgboost6common4SpanINS_6detail20GradientPairInternalIdEELm18446744073709551615EEC2EPS4_m.exit: ; preds = %_ZNKSt3mapIimSt4lessIiESaISt4pairIKimEEE2atERS3_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !537  ; 2 uses
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %.split.i, label %bb.d

.split.i:                                         ; preds = %_ZN7xgboost6common4SpanINS_6detail20GradientPairInternalIdEELm18446744073709551615EEC2EPS4_m.exit
  %.not8.i = icmp ugt i64 %i.m, %i.r
  br i1 %.not8.i, label %bb.e, label %bb.f, !prof !123

bb.d:                                             ; preds = %_ZN7xgboost6common4SpanINS_6detail20GradientPairInternalIdEELm18446744073709551615EEC2EPS4_m.exit
  %i.y = sext i32 %i.w to i64                     ; 2 uses
  %i.z = add i64 %i.m, %i.y
  %.not.i = icmp ugt i64 %i.z, %i.r
  br i1 %.not.i, label %bb.e, label %bb.g, !prof !123

bb.e:                                             ; preds = %bb.d, %.split.i
  tail call void @_ZSt9terminatev() #38
  unreachable

bb.f:                                             ; preds = %.split.i
  %i.aa = sub nuw i64 %i.r, %i.m
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.ab = phi i64 [ %i.aa, %bb.f ], [ %i.y, %bb.d ] ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = or i1 %i.s, %i.ac
  br i1 %i.ad, label %_ZNK7xgboost6common4SpanINS_6detail20GradientPairInternalIdEELm18446744073709551615EE7subspanEmm.exit, label %bb.h, !prof !140

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt9terminatev() #38
  unreachable

_ZNK7xgboost6common4SpanINS_6detail20GradientPairInternalIdEELm18446744073709551615EE7subspanEmm.exit: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.m
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %i.ab, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %i.ae, 1
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost4tree13HistEvaluator15EnumerateOneHotERKNS_6common13HistogramCutsENS2_4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS0_13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEEEPNS0_19SplitEntryContainerINS0_9GradStatsEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, ptr %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %7) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.xgboost::tree::SplitEntryContainer", align 8 ; 16 uses
  %9 = alloca %"struct.xgboost::tree::GradStats", align 16 ; 5 uses
  %10 = alloca %"struct.xgboost::tree::GradStats", align 16 ; 5 uses
  %11 = alloca %"struct.xgboost::tree::GradStats", align 16 ; 5 uses
  %12 = alloca %"struct.xgboost::tree::GradStats", align 16 ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = zext i32 %4 to i64
end_hunk_5
begin_hunk_6_@_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfRKS3_ijRKS8_SE_:bb.a
  br label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit

_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit: ; preds = %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i, %bb.j, %bb.k
  %.1.i.i.i = phi float [ %i.ap, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i ], [ %i.ay, %bb.j ], [ %..i.i.i, %bb.k ] ; 3 uses
  %.sroa.0.0.copyload.i.i29 = load double, ptr %5, align 8, !tbaa !427 ; 5 uses
  %i.bf = fcmp ogt double %.sroa.0.0.copyload.i.i29, %i.v
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit
  %i.bg = fsub double %.sroa.0.0.copyload.i.i29, %i.v
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36

bb.m:                                             ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit
  %i.bh = fneg float %i.u
  %i.bi = fpext float %i.bh to double
  %i.bj = fcmp olt double %.sroa.0.0.copyload.i.i29, %i.bi
  br i1 %i.bj, label %bb.n, label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36

bb.n:                                             ; preds = %bb.m
  %i.bk = fadd double %.sroa.0.0.copyload.i.i29, %i.v
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36

_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36: ; preds = %bb.n, %bb.m, %bb.l
  %.0.i.i.i.i.i37 = phi double [ %i.bg, %bb.l ], [ %i.bk, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.bl = fneg double %.0.i.i.i.i.i37
  %i.bm = fadd double %i.d, %i.af                 ; 2 uses
  %i.bn = fdiv double %i.bl, %i.bm                ; 4 uses
  br i1 %i.ak, label %bb.o, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32

bb.o:                                             ; preds = %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36
  %i.bo = tail call double @llvm.fabs.f64(double %i.bn)
  %i.bp = fpext float %i.aj to double             ; 2 uses
  %i.bq = fcmp ogt double %i.bo, %i.bp
  br i1 %i.bq, label %bb.p, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32

bb.p:                                             ; preds = %bb.o
  %i.br = tail call double @llvm.copysign.f64(double %i.bp, double %i.bn)
  br label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32

_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32: ; preds = %bb.p, %bb.o, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36
  %.012.i.i.i.i33 = phi double [ %i.bn, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36 ], [ %i.br, %bb.p ], [ %i.bn, %bb.o ]
  %i.bs = fptrunc double %.012.i.i.i.i33 to float ; 4 uses
  br i1 %i.n, label %bb.q, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38

bb.q:                                             ; preds = %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !463
  %i.bv = zext i32 %i.bu to i64
  %i.bw = sext i32 %2 to i64
  %i.bx = mul nsw i64 %i.bv, %i.bw                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !459
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bx
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !146 ; 2 uses
  %i.cc = fcmp ogt float %i.cb, %i.bs
  br i1 %i.cc, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !461
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bx
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !146 ; 2 uses
  %i.ch = fcmp olt float %i.cg, %i.bs
  %..i.i.i35 = select i1 %i.ch, float %i.cg, float %i.bs
  br label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38

_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38: ; preds = %bb.r, %bb.q, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32
  %.1.i.i.i34 = phi float [ %i.bs, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32 ], [ %i.cb, %bb.q ], [ %..i.i.i35, %bb.r ] ; 3 uses
  %i.ci = insertelement <2 x double> poison, double %.sroa.0.0.copyload.i.i, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %.sroa.0.0.copyload.i.i29, i64 1
  %i.ck = fmul <2 x double> %i.cj, splat (double 2.000000e+00)
  %i.cl = insertelement <2 x float> poison, float %.1.i.i.i, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %.1.i.i.i34, i64 1 ; 4 uses
  %i.cn = fpext <2 x float> %i.cm to <2 x double>
  %i.co = fmul <2 x float> %i.cm, %i.cm
  %i.cp = fmul double %i.v, 2.000000e+00
  %i.cq = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cm)
  %i.cr = fpext <2 x float> %i.co to <2 x double>
  %i.cs = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.bm, i64 1
  %i.cu = fmul <2 x double> %i.ct, %i.cr
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cn, <2 x double> %i.cu)
  %i.cw = fpext <2 x float> %i.cq to <2 x double>
  %i.cx = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.cw, <2 x double> %i.cv)
  %i.da = fptrunc <2 x double> %i.cz to <2 x float> ; 2 uses
  %i.db = extractelement <2 x float> %i.da, i64 0
  %i.dc = fneg float %i.db
  %i.dd = extractelement <2 x float> %i.da, i64 1
  %i.de = fsub float %i.dc, %i.dd                 ; 3 uses
  %i.df = icmp eq i32 %i.s, 0
  br i1 %i.df, label %_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit.thread, label %bb.s

bb.s:                                             ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38
  %i.dg = icmp sgt i32 %i.s, 0
  br i1 %i.dg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dh = fcmp ole float %.1.i.i.i, %.1.i.i.i34
  %i.di = select i1 %i.dh, float %i.de, float -inf
  br label %_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.dj = fcmp oge float %.1.i.i.i, %.1.i.i.i34
  %i.dk = select i1 %i.dj, float %i.de, float -inf
  br label %_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit.thread

_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit.thread: ; preds = %bb.a, %bb.t, %bb.u, %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38, %_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit
  %.1 = phi float [ -inf, %_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit ], [ %i.dk, %bb.u ], [ %i.di, %bb.t ], [ %i.de, %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38 ], [ -inf, %bb.a ]
  ret float %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #30

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !314  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !122    ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !140

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !314
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !122
  store i32 %i.s, ptr %i.d, align 4, !tbaa !122
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !314
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !140

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !122
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !122
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl nuw i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !122
  store <4 x i32> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !122
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !2236

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !122
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !2237

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !122
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !122
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !2238

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !122
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2239

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !314
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !140

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !314
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !122
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !122
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !314
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !122
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4, !tbaa !122
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !2240

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !122
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !2241

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !306   ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #35
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #36
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4, !tbaa !122   ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %2, 8
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl nuw nsw i64 %n.vec141, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cn = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !122
  store <4 x i32> %broadcast.splat143, ptr %i.co, align 4, !tbaa !122
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cp, label %middle.block148, label %vector.body144, !llvm.loop !2242

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.ck, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !122
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !2243

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !140

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !122
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !122
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !140

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !122
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !122
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !307
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.dc) #37
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !306
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !314
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !307
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_SV_T0_T1_(ptr %0, ptr %1, ptr %2, ptr noundef %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %4) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.c
  %.not9.i.i = icmp slt i64 %i.d, 7
  br i1 %.not9.i.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit.thread.i, label %.lr.ph.i.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit.thread.i: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_(ptr %0, ptr %1, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %4)
  br label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.06.010.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 56 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_(ptr %.sroa.06.010.i.i, ptr nonnull %i.f, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %4)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i.i = icmp slt i64 %i.h, 56
  br i1 %.not.i.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit.i, label %.lr.ph.i.i, !llvm.loop !2244

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit.i: ; preds = %.lr.ph.i.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_(ptr nonnull %i.f, ptr %1, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %4)
  %.not.i = icmp eq i64 %i.c, 56
  br i1 %.not.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit.i, %.lr.ph.i
  %.017.i = phi i64 [ %i.j, %.lr.ph.i ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit.i ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_lNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %3, i64 noundef %.017.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %4)
  %i.i = shl nuw nsw i64 %.017.i, 1
  tail call void @_ZSt17__merge_sort_loopIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEElNS1_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_T2_(ptr noundef %3, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %4)
  %i.j = shl nsw i64 %.017.i, 2                   ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit, !llvm.loop !2245

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit: ; preds = %.lr.ph.i, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit.thread.i, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit.i
  %i.l = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.m
  %.not9.i.i9 = icmp slt i64 %i.n, 7
  br i1 %.not9.i.i9, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit.thread.i17, label %.lr.ph.i.i10

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit.thread.i17: ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_(ptr %1, ptr %2, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %4)
  br label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit18

.lr.ph.i.i10:                                     ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit, %.lr.ph.i.i10
  %.sroa.06.010.i.i11 = phi ptr [ %i.p, %.lr.ph.i.i10 ], [ %1, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i11, i64 56 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_(ptr %.sroa.06.010.i.i11, ptr nonnull %i.p, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %4)
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.l, %i.q
  %.not.i.i12 = icmp slt i64 %i.r, 56
  br i1 %.not.i.i12, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit.i13, label %.lr.ph.i.i10, !llvm.loop !2244

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit.i13: ; preds = %.lr.ph.i.i10
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_(ptr nonnull %i.p, ptr %2, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %4)
  %.not.i14 = icmp eq i64 %i.m, 56
  br i1 %.not.i14, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit18, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit.i13, %.lr.ph.i15
  %.017.i16 = phi i64 [ %i.t, %.lr.ph.i15 ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit.i13 ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_lNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_T2_(ptr %1, ptr %2, ptr noundef %3, i64 noundef %.017.i16, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %4)
  %i.s = shl nuw nsw i64 %.017.i16, 1
  tail call void @_ZSt17__merge_sort_loopIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEElNS1_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_T2_(ptr noundef %3, ptr noundef %i.o, ptr %1, i64 noundef %i.s, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %4)
  %i.t = shl nsw i64 %.017.i16, 2                 ; 2 uses
  %i.u = icmp slt i64 %i.t, %i.n
  br i1 %i.u, label %.lr.ph.i15, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit18, !llvm.loop !2245

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit18: ; preds = %.lr.ph.i15, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit.thread.i17, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_.exit.i13
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElS2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_SV_T0_SW_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %i.d, i64 noundef %i.n, ptr noundef %3, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %2) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_(ptr %0, ptr %1, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %2)
  br label %common.ret17

common.ret17:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_(ptr %0, ptr %i.g, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_(ptr %i.g, ptr %1, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %2)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 3
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_SV_T0_SW_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %2)
  br label %common.ret17
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_lNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %4) local_unnamed_addr #9 comdat {
bb.a:
end_hunk_6
begin_hunk_7_@_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElS2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_SV_T0_SW_T1_T2_:bb.a
bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.c, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.c, 8
  br i1 %i.e, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.f = load i64, ptr %0, align 8, !tbaa !76
  store i64 %i.f, ptr %5, align 8, !tbaa !76
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.c ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %.not22.i = icmp eq ptr %1, %0
  br i1 %.not22.i, label %_ZSt21__move_merge_adaptiveIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEES6_NS1_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_SW_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit, %bb.f
  %.025.i = phi ptr [ %.1.i, %bb.f ], [ %5, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit ] ; 6 uses
  %.sroa.0.024.i = phi ptr [ %i.k, %bb.f ], [ %0, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit ] ; 4 uses
  %.sroa.016.023.i = phi ptr [ %.sroa.016.1.i, %bb.f ], [ %1, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit ] ; 4 uses
  %.not19.i = icmp eq ptr %.sroa.016.023.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.h = load i64, ptr %.sroa.016.023.i, align 8, !tbaa !76
  %i.i = load i64, ptr %.025.i, align 8, !tbaa !76
  %i.j = call noundef zeroext i1 @_ZZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EEENKUlmNS5_7Range1dEE_clEmSI_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.h, i64 noundef %i.i) ; 3 uses
  %.sink.in.i = select i1 %i.j, ptr %.sroa.016.023.i, ptr %.025.i
  %.sroa.016.1.idx.i = select i1 %i.j, i64 8, i64 0
  %.sroa.016.1.i = getelementptr inbounds nuw i8, ptr %.sroa.016.023.i, i64 %.sroa.016.1.idx.i
  %.1.idx.i = select i1 %i.j, i64 0, i64 8
  %.1.i = getelementptr inbounds nuw i8, ptr %.025.i, i64 %.1.idx.i ; 2 uses
  %.sink.i = load i64, ptr %.sink.in.i, align 8, !tbaa !76
  store i64 %.sink.i, ptr %.sroa.0.024.i, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i, i64 8
  %.not.i = icmp eq ptr %.1.i, %i.g
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEES6_NS1_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_SW_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !2246

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = ptrtoint ptr %.025.i to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp sgt i64 %i.n, 8
  br i1 %i.o, label %bb.g, label %bb.h, !prof !140

bb.g:                                             ; preds = %.critedge.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.0.024.i, ptr align 8 %.025.i, i64 %i.n, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEES6_NS1_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_SW_T1_T2_.exit

bb.h:                                             ; preds = %.critedge.i
  %i.p = icmp eq i64 %i.n, 8
  br i1 %i.p, label %bb.i, label %_ZSt21__move_merge_adaptiveIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEES6_NS1_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_SW_T1_T2_.exit

bb.i:                                             ; preds = %bb.h
  %i.q = load i64, ptr %.025.i, align 8, !tbaa !76
  store i64 %i.q, ptr %.sroa.0.024.i, align 8, !tbaa !76
  br label %_ZSt21__move_merge_adaptiveIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEES6_NS1_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_SW_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEES6_NS1_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_SW_T1_T2_.exit: ; preds = %bb.f, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.ab

bb.j:                                             ; preds = %bb.a
  %i.r = ptrtoint ptr %2 to i64
  %i.s = ptrtoint ptr %1 to i64
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  %i.u = icmp sgt i64 %i.t, 8
  br i1 %i.u, label %bb.k, label %bb.l, !prof !140

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.t, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit19

bb.l:                                             ; preds = %bb.j
  %i.v = icmp eq i64 %i.t, 8
  br i1 %i.v, label %bb.m, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit19

bb.m:                                             ; preds = %bb.l
  %i.w = load i64, ptr %1, align 8, !tbaa !76
  store i64 %i.w, ptr %5, align 8, !tbaa !76
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit19

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit19: ; preds = %bb.k, %bb.l, %bb.m
  %i.x = getelementptr inbounds i8, ptr %5, i64 %i.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.y = icmp eq ptr %0, %1
  br i1 %i.y, label %bb.n, label %bb.r

bb.n:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit19
  %i.z = ashr exact i64 %i.t, 3                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !140

bb.o:                                             ; preds = %bb.n
  %i.ab = sub nsw i64 0, %i.z
  %i.ac = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %5, i64 %i.t, i1 false)
  br label %_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_S6_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_SW_T1_T2_.exit

bb.p:                                             ; preds = %bb.n
  %i.ad = icmp eq i64 %i.t, 8
  br i1 %i.ad, label %bb.q, label %_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_S6_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_SW_T1_T2_.exit

bb.q:                                             ; preds = %bb.p
  %i.ae = getelementptr inbounds i8, ptr %2, i64 -8
  %i.af = load i64, ptr %5, align 8, !tbaa !76
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !76
  br label %_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_S6_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_SW_T1_T2_.exit

bb.r:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit19
  %i.ag = icmp eq ptr %2, %1
  br i1 %i.ag, label %_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_S6_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_SW_T1_T2_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = getelementptr inbounds i8, ptr %i.x, i64 -8
  br label %.outer

.outer:                                           ; preds = %bb.u, %bb.s
  %.sroa.022.0.i.ph.pn = phi ptr [ %1, %bb.s ], [ %.sroa.022.0.i.ph, %bb.u ]
  %.sroa.0.0.i.ph = phi ptr [ %2, %bb.s ], [ %i.al, %bb.u ]
  %.0.i.ph = phi ptr [ %i.ah, %bb.s ], [ %.0.i, %bb.u ]
  %.sroa.022.0.i.ph = getelementptr inbounds i8, ptr %.sroa.022.0.i.ph.pn, i64 -8 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %.outer, %bb.aa
  %.sroa.0.0.i = phi ptr [ %i.al, %bb.aa ], [ %.sroa.0.0.i.ph, %.outer ] ; 2 uses
  %.0.i = phi ptr [ %i.bb, %bb.aa ], [ %.0.i.ph, %.outer ] ; 6 uses
  %i.ai = load i64, ptr %.0.i, align 8, !tbaa !76
  %i.aj = load i64, ptr %.sroa.022.0.i.ph, align 8, !tbaa !76
  %i.ak = call noundef zeroext i1 @_ZZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EEENKUlmNS5_7Range1dEE_clEmSI_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.ai, i64 noundef %i.aj)
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 5 uses
  br i1 %i.ak, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.am = load i64, ptr %.sroa.022.0.i.ph, align 8, !tbaa !76
  store i64 %i.am, ptr %i.al, align 8, !tbaa !76
  %i.an = icmp eq ptr %0, %.sroa.022.0.i.ph
  br i1 %i.an, label %bb.v, label %.outer, !llvm.loop !2247

bb.v:                                             ; preds = %bb.u
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %5 to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = ashr exact i64 %i.ar, 3                 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %bb.w, label %bb.x, !prof !140

bb.w:                                             ; preds = %bb.v
  %i.au = sub nsw i64 0, %i.as
  %i.av = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.au
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %5, i64 %i.ar, i1 false)
  br label %_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_S6_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_SW_T1_T2_.exit

bb.x:                                             ; preds = %bb.v
  %i.aw = icmp eq i64 %i.ar, 8
  br i1 %i.aw, label %bb.y, label %_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_S6_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_SW_T1_T2_.exit

bb.y:                                             ; preds = %bb.x
  %i.ax = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -16
  %i.ay = load i64, ptr %5, align 8, !tbaa !76
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !76
  br label %_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_S6_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_SW_T1_T2_.exit

bb.z:                                             ; preds = %bb.t
  %i.az = load i64, ptr %.0.i, align 8, !tbaa !76
  store i64 %i.az, ptr %i.al, align 8, !tbaa !76
  %i.ba = icmp eq ptr %5, %.0.i
  br i1 %i.ba, label %_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_S6_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_SW_T1_T2_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bb = getelementptr inbounds i8, ptr %.0.i, i64 -8
  br label %bb.t, !llvm.loop !2247

_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_S6_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_SW_T1_T2_.exit: ; preds = %bb.z, %bb.o, %bb.p, %bb.q, %bb.r, %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_S6_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_SW_T1_T2_.exit, %_ZSt21__move_merge_adaptiveIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEES6_NS1_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_SW_T1_T2_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_lNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %4) local_unnamed_addr #9 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.643", align 8 ; 4 uses
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %.not62 = icmp slt i64 %i.e, %i.a
  br i1 %.not62, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 3                           ; 10 uses
  %.idx48 = shl i64 %3, 4                         ; 2 uses
  %.not49 = icmp eq i64 %.idx, %.idx48
  br i1 %.not49, label %.critedge.i.us.preheader, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %.sroa.031.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.031.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.031.sroa.2.0.copyload.pre = load ptr, ptr %.sroa.031.sroa.2.0..sroa_idx, align 8, !tbaa !799
  %.sroa.031.sroa.3.0.copyload.pre = load ptr, ptr %.sroa.031.sroa.3.0..sroa_idx, align 8, !tbaa !801 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.031.sroa.2.0.copyload.pre, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.031.sroa.3.0.copyload.pre, i64 8
  br label %.lr.ph.i.preheader

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.h = icmp sgt i64 %.idx, 8
  %i.i = icmp eq i64 %.idx, 8
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET0_T_SW_SW_SW_SV_T1_.exit.us
  %.064.us = phi ptr [ %i.p, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET0_T_SW_SW_SW_SV_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.039.063.us = phi ptr [ %i.j, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET0_T_SW_SW_SW_SV_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.039.063.us, i64 %.idx ; 5 uses
  br i1 %i.h, label %bb.d, label %bb.b, !prof !140

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.i, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET0_T_SW_SW_SW_SV_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %.sroa.039.063.us, align 8, !tbaa !76
  store i64 %i.k, ptr %.064.us, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %.064.us, i64 8
  %i.m = load i64, ptr %i.j, align 8, !tbaa !76
  store i64 %i.m, ptr %i.l, align 8, !tbaa !76
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET0_T_SW_SW_SW_SV_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.064.us, ptr align 8 %.sroa.039.063.us, i64 %.idx, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.064.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.j, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET0_T_SW_SW_SW_SV_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET0_T_SW_SW_SW_SV_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.o = getelementptr inbounds i8, ptr %.064.us, i64 %.idx
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %.idx ; 2 uses
  %i.q = ptrtoint ptr %i.j to i64
  %i.r = sub i64 %i.b, %i.q
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %.not.us = icmp slt i64 %i.s, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !2248

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET0_T_SW_SW_SW_SV_T1_.exit
  %.064 = phi ptr [ %i.co, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET0_T_SW_SW_SW_SV_T1_.exit ], [ %2, %.lr.ph.i.preheader.preheader ]
  %.sroa.039.063 = phi ptr [ %i.u, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET0_T_SW_SW_SW_SV_T1_.exit ], [ %0, %.lr.ph.i.preheader.preheader ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.039.063, i64 %.idx ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.039.063, i64 %.idx48 ; 4 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !397  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 44 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EEENKUlmNS5_7Range1dEE_clEmSI_ENKUlmmE_clEmm.exit
  %.020.i = phi ptr [ %i.by, %_ZZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EEENKUlmNS5_7Range1dEE_clEmSI_ENKUlmmE_clEmm.exit ], [ %.064, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.014.019.i = phi ptr [ %.sroa.014.1.i, %_ZZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EEENKUlmNS5_7Range1dEE_clEmSI_ENKUlmmE_clEmm.exit ], [ %.sroa.039.063, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.010.018.i = phi ptr [ %.sroa.010.1.i, %_ZZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EEENKUlmNS5_7Range1dEE_clEmSI_ENKUlmmE_clEmm.exit ], [ %i.t, %.lr.ph.i.preheader ] ; 3 uses
  %i.z = load i64, ptr %.sroa.010.018.i, align 8, !tbaa !76 ; 2 uses
  %i.aa = load i64, ptr %.sroa.014.019.i, align 8, !tbaa !76 ; 2 uses
  %i.ab = load i64, ptr %.sroa.031.sroa.3.0.copyload.pre, align 8, !tbaa !803 ; 2 uses
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.i, label %bb.e, !prof !140

bb.e:                                             ; preds = %.lr.ph.i
  tail call void @_ZSt9terminatev() #38
  unreachable

_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.i: ; preds = %.lr.ph.i
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !804 ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.z ; 2 uses
  %.sroa.0.0.copyload.i.i = load double, ptr %i.ae, align 8, !tbaa !427 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.2.0.copyload.i.i = load double, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !427 ; 2 uses
  %i.af = fcmp ugt double %.sroa.2.0.copyload.i.i, 0.000000e+00
  br i1 %i.af, label %bb.f, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcWeightCatINS_6detail20GradientPairInternalIdEETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfRKS3_RKSA_.exit.i

bb.f:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.i
  %i.ag = load float, ptr %i.w, align 4, !tbaa !442 ; 2 uses
  %i.ah = fpext float %i.ag to double             ; 3 uses
  %i.ai = fcmp ogt double %.sroa.0.0.copyload.i.i, %i.ah
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = fsub double %.sroa.0.0.copyload.i.i, %i.ah
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ak = fneg float %i.ag
  %i.al = fpext float %i.ak to double
  %i.am = fcmp olt double %.sroa.0.0.copyload.i.i, %i.al
  br i1 %i.am, label %bb.i, label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.an = fadd double %.sroa.0.0.copyload.i.i, %i.ah
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %.0.i.i.i.i.i = phi double [ %i.aj, %bb.g ], [ %i.an, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.ao = fneg double %.0.i.i.i.i.i
  %i.ap = load float, ptr %i.x, align 8, !tbaa !443
  %i.aq = fpext float %i.ap to double
  %i.ar = fadd double %.sroa.2.0.copyload.i.i, %i.aq
  %i.as = fdiv double %i.ao, %i.ar                ; 4 uses
  %i.at = load float, ptr %i.y, align 8, !tbaa !444 ; 2 uses
  %i.au = fcmp une float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.j, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcWeightCatINS_6detail20GradientPairInternalIdEETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfRKS3_RKSA_.exit.i

bb.j:                                             ; preds = %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i
  %i.av = tail call double @llvm.fabs.f64(double %i.as)
  %i.aw = fpext float %i.at to double             ; 2 uses
  %i.ax = fcmp ogt double %i.av, %i.aw
  br i1 %i.ax, label %bb.k, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcWeightCatINS_6detail20GradientPairInternalIdEETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfRKS3_RKSA_.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ay = tail call double @llvm.copysign.f64(double %i.aw, double %i.as)
  br label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcWeightCatINS_6detail20GradientPairInternalIdEETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfRKS3_RKSA_.exit.i

_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcWeightCatINS_6detail20GradientPairInternalIdEETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfRKS3_RKSA_.exit.i: ; preds = %bb.k, %bb.j, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.i
  %.012.i.i.i.i = phi double [ 0.000000e+00, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.i ], [ %i.ay, %bb.k ], [ %i.as, %bb.j ], [ %i.as, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i ]
  %i.az = icmp ult i64 %i.aa, %i.ab
  br i1 %i.az, label %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit2.i, label %bb.l, !prof !140

bb.l:                                             ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcWeightCatINS_6detail20GradientPairInternalIdEETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfRKS3_RKSA_.exit.i
  tail call void @_ZSt9terminatev() #38
  unreachable

_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit2.i: ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcWeightCatINS_6detail20GradientPairInternalIdEETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfRKS3_RKSA_.exit.i
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.aa ; 2 uses
  %.sroa.0.0.copyload.i3.i = load double, ptr %i.ba, align 8, !tbaa !427 ; 4 uses
  %.sroa.2.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.2.0.copyload.i5.i = load double, ptr %.sroa.2.0..sroa_idx.i4.i, align 8, !tbaa !427 ; 2 uses
  %i.bb = fcmp ugt double %.sroa.2.0.copyload.i5.i, 0.000000e+00
  br i1 %i.bb, label %bb.m, label %_ZZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EEENKUlmNS5_7Range1dEE_clEmSI_ENKUlmmE_clEmm.exit

bb.m:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit2.i
  %i.bc = load float, ptr %i.w, align 4, !tbaa !442 ; 2 uses
  %i.bd = fpext float %i.bc to double             ; 3 uses
  %i.be = fcmp ogt double %.sroa.0.0.copyload.i3.i, %i.bd
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bf = fsub double %.sroa.0.0.copyload.i3.i, %i.bd
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i7.i

bb.o:                                             ; preds = %bb.m
  %i.bg = fneg float %i.bc
  %i.bh = fpext float %i.bg to double
  %i.bi = fcmp olt double %.sroa.0.0.copyload.i3.i, %i.bh
  br i1 %i.bi, label %bb.p, label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i7.i

bb.p:                                             ; preds = %bb.o
  %i.bj = fadd double %.sroa.0.0.copyload.i3.i, %i.bd
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i7.i

_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i7.i: ; preds = %bb.p, %bb.o, %bb.n
  %.0.i.i.i.i8.i = phi double [ %i.bf, %bb.n ], [ %i.bj, %bb.p ], [ 0.000000e+00, %bb.o ]
  %i.bk = fneg double %.0.i.i.i.i8.i
  %i.bl = load float, ptr %i.x, align 8, !tbaa !443
  %i.bm = fpext float %i.bl to double
  %i.bn = fadd double %.sroa.2.0.copyload.i5.i, %i.bm
  %i.bo = fdiv double %i.bk, %i.bn                ; 4 uses
  %i.bp = load float, ptr %i.y, align 8, !tbaa !444 ; 2 uses
  %i.bq = fcmp une float %i.bp, 0.000000e+00
  br i1 %i.bq, label %bb.q, label %_ZZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EEENKUlmNS5_7Range1dEE_clEmSI_ENKUlmmE_clEmm.exit

bb.q:                                             ; preds = %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i7.i
  %i.br = tail call double @llvm.fabs.f64(double %i.bo)
  %i.bs = fpext float %i.bp to double             ; 2 uses
  %i.bt = fcmp ogt double %i.br, %i.bs
  br i1 %i.bt, label %bb.r, label %_ZZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EEENKUlmNS5_7Range1dEE_clEmSI_ENKUlmmE_clEmm.exit

bb.r:                                             ; preds = %bb.q
  %i.bu = tail call double @llvm.copysign.f64(double %i.bs, double %i.bo)
  br label %_ZZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EEENKUlmNS5_7Range1dEE_clEmSI_ENKUlmmE_clEmm.exit

_ZZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EEENKUlmNS5_7Range1dEE_clEmSI_ENKUlmmE_clEmm.exit: ; preds = %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit2.i, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i7.i, %bb.q, %bb.r
  %.012.i.i.i6.i = phi double [ 0.000000e+00, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit2.i ], [ %i.bu, %bb.r ], [ %i.bo, %bb.q ], [ %i.bo, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i7.i ]
  %i.bv = fptrunc double %.012.i.i.i.i to float
  %i.bw = fptrunc double %.012.i.i.i6.i to float
  %i.bx = fcmp olt float %i.bv, %i.bw             ; 3 uses
  %.sink.in.i = select i1 %i.bx, ptr %.sroa.010.018.i, ptr %.sroa.014.019.i
  %.sroa.010.1.idx.i = select i1 %i.bx, i64 8, i64 0
  %.sroa.010.1.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 %.sroa.010.1.idx.i ; 5 uses
  %.sroa.014.1.idx.i = select i1 %i.bx, i64 0, i64 8
  %.sroa.014.1.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 %.sroa.014.1.idx.i ; 5 uses
  %.sink.i = load i64, ptr %.sink.in.i, align 8, !tbaa !76
  store i64 %.sink.i, ptr %.020.i, align 8, !tbaa !76
  %i.by = getelementptr inbounds nuw i8, ptr %.020.i, i64 8 ; 4 uses
  %i.bz = icmp ne ptr %.sroa.014.1.i, %i.t
  %i.ca = icmp ne ptr %.sroa.010.1.i, %i.u
  %or.cond.i = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i.loopexit, !llvm.loop !2249

.critedge.i.loopexit:                             ; preds = %_ZZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EEENKUlmNS5_7Range1dEE_clEmSI_ENKUlmmE_clEmm.exit
  %i.cb = ptrtoint ptr %i.t to i64
  %i.cc = ptrtoint ptr %.sroa.014.1.i to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 4 uses
  %i.ce = icmp sgt i64 %i.cd, 8
  br i1 %i.ce, label %bb.s, label %bb.t, !prof !140

bb.s:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.by, ptr nonnull align 8 %.sroa.014.1.i, i64 %i.cd, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i

bb.t:                                             ; preds = %.critedge.i.loopexit
  %i.cf = icmp eq i64 %i.cd, 8
  br i1 %i.cf, label %bb.u, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i

bb.u:                                             ; preds = %bb.t
  %i.cg = load i64, ptr %.sroa.014.1.i, align 8, !tbaa !76
  store i64 %i.cg, ptr %i.by, align 8, !tbaa !76
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.u, %bb.t, %bb.s
  %i.ch = getelementptr inbounds i8, ptr %i.by, i64 %i.cd ; 3 uses
  %i.ci = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.cj = ptrtoint ptr %.sroa.010.1.i to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 4 uses
  %i.cl = icmp sgt i64 %i.ck, 8
  br i1 %i.cl, label %bb.v, label %bb.w, !prof !140

bb.v:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ch, ptr nonnull align 8 %.sroa.010.1.i, i64 %i.ck, i1 false)
end_hunk_7
begin_hunk_8_@_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_SV_T0_SW_T1_:bb.a
  %i.t = load i64, ptr %i.s, align 8, !tbaa !76
  %i.u = load i64, ptr %i.l, align 8, !tbaa !76
  %i.v = call noundef zeroext i1 @_ZZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EEENKUlmNS5_7Range1dEE_clEmSI_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.t, i64 noundef %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = xor i64 %i.r, -1
  %i.y = add nsw i64 %.016.i, %i.x
  %.sroa.011.1.i = select i1 %i.v, ptr %i.w, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.v, i64 %i.y, i64 %i.r      ; 2 uses
  %i.z = icmp sgt i64 %.1.i, 0
  br i1 %i.z, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit, !llvm.loop !39

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit ], [ %i.n, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.aa = sub i64 %.pre-phi, %i.n
  %i.ab = ashr exact i64 %i.aa, 3
  br label %bb.f

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit49: ; preds = %bb.e
  %i.ac = sdiv i64 %4, 2                          ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ac ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i51, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i51: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit49, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i51
  %.016.i52 = phi i64 [ %.1.i57, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i51 ], [ %i.ah, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit49 ] ; 2 uses
  %.sroa.011.015.i53 = phi ptr [ %.sroa.011.1.i56, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i51 ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit49 ] ; 2 uses
  %i.aj = lshr i64 %.016.i52, 1                   ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i53, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !76
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !76
  %i.an = call noundef zeroext i1 @_ZZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EEENKUlmNS5_7Range1dEE_clEmSI_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.al, i64 noundef %i.am) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = xor i64 %i.aj, -1
  %i.aq = add nsw i64 %.016.i52, %i.ap
  %.sroa.011.1.i56 = select i1 %i.an, ptr %.sroa.011.015.i53, ptr %i.ao ; 3 uses
  %.1.i57 = select i1 %i.an, i64 %i.aj, i64 %i.aq ; 2 uses
  %i.ar = icmp sgt i64 %.1.i57, 0
  br i1 %i.ar, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i51, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit, !llvm.loop !40

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i51
  %.pre77 = ptrtoint ptr %.sroa.011.1.i56 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit49
  %.pre-phi78 = phi i64 [ %.pre77, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit ], [ %i.af, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit49 ]
  %.sroa.011.0.lcssa.i50 = phi ptr [ %.sroa.011.1.i56, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit49 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.as = sub i64 %.pre-phi78, %i.af
  %i.at = ashr exact i64 %i.as, 3
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit
  %.sroa.064.0 = phi ptr [ %i.l, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i50, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit ] ; 2 uses
  %.sroa.061.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit ], [ %i.ad, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit ] ; 2 uses
  %.043 = phi i64 [ %i.ab, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit ], [ %i.ac, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.k, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit ], [ %i.at, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit ] ; 2 uses
  %i.au = call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %.sroa.064.0, ptr %1, ptr %.sroa.061.0) ; 2 uses
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_SV_T0_SW_T1_(ptr %0, ptr %.sroa.064.0, ptr %i.au, i64 noundef %.0, i64 noundef %.043, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %5)
  %i.av = sub nsw i64 %3, %.0
  %i.aw = sub nsw i64 %4, %.043
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_SV_T0_SW_T1_(ptr %i.au, ptr %.sroa.061.0, ptr %2, i64 noundef %i.av, i64 noundef %i.aw, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %5)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 3 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check165 = icmp ult i64 %i.m, 104
  br i1 %min.iters.check165, label %.lr.ph.i.preheader185, label %vector.memcheck166

vector.memcheck166:                               ; preds = %.lr.ph.i.preheader
  %i.p = and i64 %i.m, -8
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %1, i64 %i.q
  %bound0167 = icmp ult ptr %0, %i.s
  %bound1168 = icmp ult ptr %1, %i.r
  %found.conflict169 = and i1 %bound0167, %bound1168
  br i1 %found.conflict169, label %.lr.ph.i.preheader185, label %vector.ph170

vector.ph170:                                     ; preds = %vector.memcheck166
  %n.vec171 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.t = shl i64 %n.vec171, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next180, %vector.body172 ] ; 2 uses
  %i.w = shl i64 %index173, 3                     ; 2 uses
  %next.gep174 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep175 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep175, i64 16 ; 2 uses
  %wide.load176 = load <2 x i64>, ptr %next.gep175, align 8, !tbaa !76, !alias.scope !2273, !noalias !2274
  %wide.load177 = load <2 x i64>, ptr %i.x, align 8, !tbaa !76, !alias.scope !2273, !noalias !2274
  %i.y = getelementptr i8, ptr %next.gep174, i64 16 ; 2 uses
  %wide.load178 = load <2 x i64>, ptr %next.gep174, align 8, !tbaa !76, !alias.scope !2274
  %wide.load179 = load <2 x i64>, ptr %i.y, align 8, !tbaa !76, !alias.scope !2274
  store <2 x i64> %wide.load178, ptr %next.gep175, align 8, !tbaa !76, !alias.scope !2273, !noalias !2274
  store <2 x i64> %wide.load179, ptr %i.x, align 8, !tbaa !76, !alias.scope !2273, !noalias !2274
  store <2 x i64> %wide.load176, ptr %next.gep174, align 8, !tbaa !76, !alias.scope !2274
  store <2 x i64> %wide.load177, ptr %i.y, align 8, !tbaa !76, !alias.scope !2274
  %index.next180 = add nuw i64 %index173, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next180, %n.vec171
  br i1 %i.z, label %middle.block181, label %vector.body172, !llvm.loop !2258

middle.block181:                                  ; preds = %vector.body172
  %cmp.n182 = icmp eq i64 %i.o, %n.vec171
  br i1 %cmp.n182, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i.preheader185

.lr.ph.i.preheader185:                            ; preds = %vector.memcheck166, %.lr.ph.i.preheader, %middle.block181
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck166 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block181 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck166 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block181 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader185, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader185 ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader185 ] ; 3 uses
  %i.aa = load i64, ptr %.sroa.04.07.i, align 8, !tbaa !76
  %i.ab = load i64, ptr %.sroa.0.08.i, align 8, !tbaa !76
  store i64 %i.ab, ptr %.sroa.04.07.i, align 8, !tbaa !76
  store i64 %i.aa, ptr %.sroa.0.08.i, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !2259

bb.d:                                             ; preds = %bb.c
  %i.ae = sub i64 %i.c, %i.g
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.042.0 = phi ptr [ %0, %bb.d ], [ %.sroa.042.0.be, %.backedge ] ; 22 uses
  %.085 = phi i64 [ %i.i, %bb.d ], [ %.085.be, %.backedge ] ; 18 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 11 uses
  %i.ag = sub nsw i64 %.0, %.085                  ; 10 uses
  %i.ah = icmp slt i64 %.085, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.085, 1
  br i1 %i.ai, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.f
  %i.aj = load i64, ptr %.sroa.042.0, align 8, !tbaa !76
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 8
  %.idx87 = shl nuw nsw i64 %.0, 3                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 %.idx87
  %gepdiff = add nsw i64 %.idx87, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.042.0, ptr nonnull align 8 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  store i64 %i.aj, ptr %i.am, align 8, !tbaa !76
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.ag, 0
  br i1 %i.an, label %.lr.ph100.preheader, label %._crit_edge101

.lr.ph100.preheader:                              ; preds = %bb.g
  %i.ao = getelementptr [8 x i8], ptr %.sroa.042.0, i64 %.085 ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.ag, 6
  br i1 %min.iters.check, label %.lr.ph100.preheader186, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph100.preheader
  %i.ap = shl i64 %.0, 3
  %i.aq = sub i64 %.0, %.085
  %i.ar = shl i64 %i.aq, 3
  %scevgep = getelementptr i8, ptr %.sroa.042.0, i64 %i.ar
  %scevgep128 = getelementptr i8, ptr %.sroa.042.0, i64 %i.ap
  %bound0 = icmp ult ptr %.sroa.042.0, %scevgep128
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph100.preheader186, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775804     ; 4 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 %i.as
  %i.au = getelementptr i8, ptr %.sroa.042.0, i64 %i.as ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.av ; 3 uses
  %next.gep129 = getelementptr i8, ptr %.sroa.042.0, i64 %i.av ; 3 uses
  %i.aw = getelementptr i8, ptr %next.gep129, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep129, align 8, !tbaa !76, !alias.scope !2275, !noalias !2276
  %wide.load130 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !76, !alias.scope !2275, !noalias !2276
  %i.ax = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load131 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !76, !alias.scope !2276
  %wide.load132 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !76, !alias.scope !2276
  store <2 x i64> %wide.load131, ptr %next.gep129, align 8, !tbaa !76, !alias.scope !2275, !noalias !2276
  store <2 x i64> %wide.load132, ptr %i.aw, align 8, !tbaa !76, !alias.scope !2275, !noalias !2276
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !2276
  store <2 x i64> %wide.load130, ptr %i.ax, align 8, !tbaa !76, !alias.scope !2276
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2263

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge101, label %.lr.ph100.preheader186

.lr.ph100.preheader186:                           ; preds = %vector.memcheck, %.lr.ph100.preheader, %middle.block
  %.02998.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph100.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.039.097.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph100.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %.sroa.042.196.ph = phi ptr [ %.sroa.042.0, %vector.memcheck ], [ %.sroa.042.0, %.lr.ph100.preheader ], [ %i.au, %middle.block ] ; 2 uses
  %i.az = sub i64 %.0, %.085
  %xtraiter194 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol

.lr.ph100.prol:                                   ; preds = %.lr.ph100.preheader186, %.lr.ph100.prol
  %.02998.prol = phi i64 [ %i.be, %.lr.ph100.prol ], [ %.02998.ph, %.lr.ph100.preheader186 ]
  %.sroa.039.097.prol = phi ptr [ %i.bd, %.lr.ph100.prol ], [ %.sroa.039.097.ph, %.lr.ph100.preheader186 ] ; 3 uses
  %.sroa.042.196.prol = phi ptr [ %i.bc, %.lr.ph100.prol ], [ %.sroa.042.196.ph, %.lr.ph100.preheader186 ] ; 3 uses
  %prol.iter196 = phi i64 [ %prol.iter196.next, %.lr.ph100.prol ], [ 0, %.lr.ph100.preheader186 ]
  %i.ba = load i64, ptr %.sroa.042.196.prol, align 8, !tbaa !76
  %i.bb = load i64, ptr %.sroa.039.097.prol, align 8, !tbaa !76
  store i64 %i.bb, ptr %.sroa.042.196.prol, align 8, !tbaa !76
  store i64 %i.ba, ptr %.sroa.039.097.prol, align 8, !tbaa !76
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.042.196.prol, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.039.097.prol, i64 8 ; 2 uses
  %i.be = add nuw nsw i64 %.02998.prol, 1         ; 2 uses
  %prol.iter196.next = add i64 %prol.iter196, 1   ; 2 uses
  %prol.iter196.cmp.not = icmp eq i64 %prol.iter196.next, %xtraiter194
  br i1 %prol.iter196.cmp.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol, !llvm.loop !2264

.lr.ph100.prol.loopexit:                          ; preds = %.lr.ph100.prol, %.lr.ph100.preheader186
  %.lcssa.unr = phi ptr [ poison, %.lr.ph100.preheader186 ], [ %i.bc, %.lr.ph100.prol ]
  %.02998.unr = phi i64 [ %.02998.ph, %.lr.ph100.preheader186 ], [ %i.be, %.lr.ph100.prol ]
  %.sroa.039.097.unr = phi ptr [ %.sroa.039.097.ph, %.lr.ph100.preheader186 ], [ %i.bd, %.lr.ph100.prol ]
  %.sroa.042.196.unr = phi ptr [ %.sroa.042.196.ph, %.lr.ph100.preheader186 ], [ %i.bc, %.lr.ph100.prol ]
  %i.bf = sub i64 %.02998.ph, %.0
  %i.bg = add i64 %i.bf, %.085
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge101, label %.lr.ph100

._crit_edge101:                                   ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100, %middle.block, %bb.g
  %.sroa.042.1.lcssa = phi ptr [ %.sroa.042.0, %bb.g ], [ %i.au, %middle.block ], [ %.lcssa.unr, %.lr.ph100.prol.loopexit ], [ %i.bx, %.lr.ph100 ]
  %i.bi = srem i64 %.0, %.085                     ; 2 uses
  %.not32 = icmp eq i64 %i.bi, 0
  br i1 %.not32, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %bb.h

.lr.ph100:                                        ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100
  %.02998 = phi i64 [ %i.bz, %.lr.ph100 ], [ %.02998.unr, %.lr.ph100.prol.loopexit ]
  %.sroa.039.097 = phi ptr [ %i.by, %.lr.ph100 ], [ %.sroa.039.097.unr, %.lr.ph100.prol.loopexit ] ; 6 uses
  %.sroa.042.196 = phi ptr [ %i.bx, %.lr.ph100 ], [ %.sroa.042.196.unr, %.lr.ph100.prol.loopexit ] ; 6 uses
  %i.bj = load i64, ptr %.sroa.042.196, align 8, !tbaa !76
  %i.bk = load i64, ptr %.sroa.039.097, align 8, !tbaa !76
  store i64 %i.bk, ptr %.sroa.042.196, align 8, !tbaa !76
  store i64 %i.bj, ptr %.sroa.039.097, align 8, !tbaa !76
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.042.196, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.039.097, i64 8 ; 2 uses
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !76
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !76
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !76
  store i64 %i.bn, ptr %i.bm, align 8, !tbaa !76
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.042.196, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.039.097, i64 16 ; 2 uses
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !76
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !76
  store i64 %i.bs, ptr %i.bp, align 8, !tbaa !76
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !76
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.042.196, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.039.097, i64 24 ; 2 uses
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !76
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !76
  store i64 %i.bw, ptr %i.bt, align 8, !tbaa !76
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !76
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.042.196, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.039.097, i64 32
  %i.bz = add nuw nsw i64 %.02998, 4              ; 2 uses
  %exitcond109.not.3 = icmp eq i64 %i.bz, %i.ag
  br i1 %exitcond109.not.3, label %._crit_edge101, label %.lr.ph100, !llvm.loop !2265

bb.h:                                             ; preds = %._crit_edge101
  %i.ca = sub nsw i64 %.085, %i.bi
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.ag, 1
  %i.cc = getelementptr [8 x i8], ptr %.sroa.042.0, i64 %.0 ; 8 uses
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !76
  %.idx = shl nuw nsw i64 %.0, 3
  %i.cf = add nsw i64 %.idx, -8                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !140

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %.sroa.042.0, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 8
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load i64, ptr %.sroa.042.0, align 8, !tbaa !76
  store i64 %i.cl, ptr %i.cd, align 8, !tbaa !76
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store i64 %i.ce, ptr %.sroa.042.0, align 8, !tbaa !76
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.n:                                             ; preds = %bb.i
  %i.cm = sub i64 0, %i.ag
  %i.cn = getelementptr [8 x i8], ptr %i.cc, i64 %i.cm ; 6 uses
  %i.co = icmp sgt i64 %.085, 0
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %min.iters.check141 = icmp samesign ult i64 %.085, 6
  br i1 %min.iters.check141, label %.lr.ph.preheader187, label %vector.memcheck135

vector.memcheck135:                               ; preds = %.lr.ph.preheader
  %i.cp = sub i64 %.0, %.085
  %i.cq = shl i64 %i.cp, 3
  %scevgep136 = getelementptr i8, ptr %.sroa.042.0, i64 %i.cq
  %bound0137 = icmp ult ptr %.sroa.042.0, %i.cc
  %bound1138 = icmp ult ptr %scevgep136, %i.cn
  %found.conflict139 = and i1 %bound0137, %bound1138
  br i1 %found.conflict139, label %.lr.ph.preheader187, label %vector.ph142

vector.ph142:                                     ; preds = %vector.memcheck135
  %n.vec143 = and i64 %.085, 9223372036854775804  ; 4 uses
  %i.cr = mul i64 %n.vec143, -8                   ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cc, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cn, i64 %i.cr
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph142
  %index145 = phi i64 [ 0, %vector.ph142 ], [ %index.next152, %vector.body144 ] ; 2 uses
  %i.cu = mul i64 %index145, -8                   ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.cc, i64 %i.cu ; 2 uses
  %next.gep147 = getelementptr i8, ptr %i.cn, i64 %i.cu ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %next.gep147, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep147, i64 -32 ; 2 uses
  %wide.load148 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !76, !alias.scope !2277, !noalias !2278
  %wide.load149 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !76, !alias.scope !2277, !noalias !2278
  %i.cx = getelementptr inbounds i8, ptr %next.gep146, i64 -16 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep146, i64 -32 ; 2 uses
  %wide.load150 = load <2 x i64>, ptr %i.cx, align 8, !tbaa !76, !alias.scope !2278
  %wide.load151 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !76, !alias.scope !2278
  store <2 x i64> %wide.load150, ptr %i.cv, align 8, !tbaa !76, !alias.scope !2277, !noalias !2278
  store <2 x i64> %wide.load151, ptr %i.cw, align 8, !tbaa !76, !alias.scope !2277, !noalias !2278
  store <2 x i64> %wide.load148, ptr %i.cx, align 8, !tbaa !76, !alias.scope !2278
  store <2 x i64> %wide.load149, ptr %i.cy, align 8, !tbaa !76, !alias.scope !2278
  %index.next152 = add nuw i64 %index145, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next152, %n.vec143
  br i1 %i.cz, label %middle.block153, label %vector.body144, !llvm.loop !2269

middle.block153:                                  ; preds = %vector.body144
  %cmp.n154 = icmp eq i64 %.085, %n.vec143
  br i1 %cmp.n154, label %._crit_edge, label %.lr.ph.preheader187

.lr.ph.preheader187:                              ; preds = %vector.memcheck135, %.lr.ph.preheader, %middle.block153
  %.02895.ph = phi i64 [ 0, %vector.memcheck135 ], [ 0, %.lr.ph.preheader ], [ %n.vec143, %middle.block153 ] ; 3 uses
  %.sroa.0.094.ph = phi ptr [ %i.cc, %vector.memcheck135 ], [ %i.cc, %.lr.ph.preheader ], [ %i.cs, %middle.block153 ] ; 2 uses
  %.sroa.042.293.ph = phi ptr [ %i.cn, %vector.memcheck135 ], [ %i.cn, %.lr.ph.preheader ], [ %i.ct, %middle.block153 ] ; 2 uses
  %xtraiter = and i64 %.085, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader187, %.lr.ph.prol
  %.02895.prol = phi i64 [ %i.de, %.lr.ph.prol ], [ %.02895.ph, %.lr.ph.preheader187 ]
  %.sroa.0.094.prol = phi ptr [ %i.db, %.lr.ph.prol ], [ %.sroa.0.094.ph, %.lr.ph.preheader187 ]
  %.sroa.042.293.prol = phi ptr [ %i.da, %.lr.ph.prol ], [ %.sroa.042.293.ph, %.lr.ph.preheader187 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader187 ]
  %i.da = getelementptr inbounds i8, ptr %.sroa.042.293.prol, i64 -8 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.0.094.prol, i64 -8 ; 4 uses
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !76
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !76
  store i64 %i.dd, ptr %i.da, align 8, !tbaa !76
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !76
  %i.de = add nuw nsw i64 %.02895.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !2270

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader187
  %.02895.unr = phi i64 [ %.02895.ph, %.lr.ph.preheader187 ], [ %i.de, %.lr.ph.prol ]
  %.sroa.0.094.unr = phi ptr [ %.sroa.0.094.ph, %.lr.ph.preheader187 ], [ %i.db, %.lr.ph.prol ]
  %.sroa.042.293.unr = phi ptr [ %.sroa.042.293.ph, %.lr.ph.preheader187 ], [ %i.da, %.lr.ph.prol ]
  %i.df = sub nsw i64 %.02895.ph, %.085
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block153, %bb.n
  %.sroa.042.2.lcssa = phi ptr [ %i.cn, %bb.n ], [ %.sroa.042.0, %middle.block153 ], [ %.sroa.042.0, %.lr.ph ], [ %.sroa.042.0, %.lr.ph.prol.loopexit ]
  %i.dh = srem i64 %.0, %i.ag                     ; 2 uses
  %.not = icmp eq i64 %i.dh, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.042.0.be = phi ptr [ %.sroa.042.1.lcssa, %bb.h ], [ %.sroa.042.2.lcssa, %._crit_edge ]
  %.085.be = phi i64 [ %i.ca, %bb.h ], [ %i.dh, %._crit_edge ]
  %.0.be = phi i64 [ %.085, %bb.h ], [ %i.ag, %._crit_edge ]
  br label %bb.e, !llvm.loop !2271

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02895 = phi i64 [ %i.dy, %.lr.ph ], [ %.02895.unr, %.lr.ph.prol.loopexit ]
  %.sroa.0.094 = phi ptr [ %i.dv, %.lr.ph ], [ %.sroa.0.094.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.sroa.042.293 = phi ptr [ %i.du, %.lr.ph ], [ %.sroa.042.293.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -8 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -8 ; 2 uses
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !76
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !76
  store i64 %i.dl, ptr %i.di, align 8, !tbaa !76
  store i64 %i.dk, ptr %i.dj, align 8, !tbaa !76
  %i.dm = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -16 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -16 ; 2 uses
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !76
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !76
  store i64 %i.dp, ptr %i.dm, align 8, !tbaa !76
  store i64 %i.do, ptr %i.dn, align 8, !tbaa !76
  %i.dq = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -24 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -24 ; 2 uses
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !76
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !76
  store i64 %i.dt, ptr %i.dq, align 8, !tbaa !76
  store i64 %i.ds, ptr %i.dr, align 8, !tbaa !76
  %i.du = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -32 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -32 ; 3 uses
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !76
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !76
  store i64 %i.dx, ptr %i.du, align 8, !tbaa !76
  store i64 %i.dw, ptr %i.dv, align 8, !tbaa !76
  %i.dy = add nuw nsw i64 %.02895, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dy, %.085
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !2272

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit: ; preds = %._crit_edge, %._crit_edge101, %.lr.ph.i, %middle.block181, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, %bb.b, %bb.a
  %.sroa.025.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit ], [ %i.af, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit ], [ %1, %middle.block181 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge101 ], [ %i.af, %._crit_edge ]
  ret ptr %.sroa.025.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElS2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_SV_T0_SW_T1_SW_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %7) local_unnamed_addr #9 comdat {
bb.a:
  %8 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8 ; 4 uses
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.646", align 8 ; 4 uses
  %.not = icmp sgt i64 %3, %6
  %.not56 = icmp sgt i64 %4, %6
  %or.cond = and i1 %.not, %.not56
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElS2_NS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_SV_T0_SW_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %7)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.a = icmp sgt i64 %3, %4
  br i1 %i.a, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit60

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.b = sdiv i64 %3, 2                           ; 2 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %0, i64 %i.b ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.g, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.i = lshr i64 %.016.i, 1                      ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i, i64 %i.i ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !76
  %i.l = load i64, ptr %i.c, align 8, !tbaa !76
  %i.m = call noundef zeroext i1 @_ZZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EEENKUlmNS5_7Range1dEE_clEmSI_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.k, i64 noundef %i.l) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = xor i64 %i.i, -1
  %i.p = add nsw i64 %.016.i, %i.o
  %.sroa.011.1.i = select i1 %i.m, ptr %i.n, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.m, i64 %i.p, i64 %i.i      ; 2 uses
  %i.q = icmp sgt i64 %.1.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit, !llvm.loop !39

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit ], [ %i.e, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.r = sub i64 %.pre-phi, %i.e
  %i.s = ashr exact i64 %i.r, 3
  br label %bb.d

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit60: ; preds = %bb.c
  %i.t = sdiv i64 %4, 2                           ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %1, i64 %i.t ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.v = ptrtoint ptr %1 to i64
  %i.w = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i62, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i62: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit60, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i62
  %.016.i63 = phi i64 [ %.1.i68, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i62 ], [ %i.y, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit60 ] ; 2 uses
  %.sroa.011.015.i64 = phi ptr [ %.sroa.011.1.i67, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i62 ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit60 ] ; 2 uses
  %i.aa = lshr i64 %.016.i63, 1                   ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i64, i64 %i.aa ; 2 uses
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !76
end_hunk_8
