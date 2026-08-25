Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_twolevel?download=true
inline.NumInlined: 11316
inline.NumDeleted: 1655
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 293
begin_hunk_0_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS3_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEvEUlRNS9_8BuildRefEPSA_E_SA_Lm32EE17moveExtentedRangeERKNS3_16PrimInfoExtRangeESH_RSF_EUlRKNS_5rangeImEEE0_EEvT_SO_SO_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSO_ST_mb:bb.a
  store ptr %i.eh, ptr %5, align 8
  store ptr null, ptr %2, align 8
  %.not.i.i59 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63: ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ei = load ptr, ptr %11, align 8              ; 2 uses
  %.not81 = icmp eq ptr %i.ei, null
  br i1 %.not81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  store ptr %i.ei, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.az:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %12, align 8
  %.not.i65 = icmp eq ptr %i.ek, null
  br i1 %.not.i65, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.el = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i69 = icmp eq ptr %i.el, null
  br i1 %.not.i69, label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 786696
  %i.en = load ptr, ptr %i.em, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i, label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #26
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.el)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #26
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.al, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS3_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEvEUlRNS9_8BuildRefEPSA_E_SA_Lm32EE17moveExtentedRangeERKNS3_16PrimInfoExtRangeESH_RSF_EUlRKNS_5rangeImEEE0_EEvT_SO_SO_RKT0_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp ult i64 %i.d, %i.b
  br i1 %i.j, label %.lr.ph.i.i, label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %.06.i.i ; 4 uses
  %i.n = load ptr, ptr %i.k, align 8, !nonnull !4, !align !74
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr [64 x i8], ptr %i.m, i64 %i.o ; 3 uses
  %i.q = load <4 x float>, ptr %i.m, align 16
  store <4 x float> %i.q, ptr %i.p, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.t = load <4 x float>, ptr %i.s, align 16
  store <4 x float> %i.t, ptr %i.r, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(12) %i.u, ptr noundef nonnull align 32 dereferenceable(12) %i.v, i64 12, i1 false)
  %i.w = add nuw i64 %.06.i.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.b
  br i1 %exitcond.not.i, label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit, label %bb.c, !llvm.loop !761

bb.d:                                             ; preds = %bb.a
  %i.x = add i64 %i.d, %i.b
  %i.y = lshr i64 %i.x, 1                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.d, i64 noundef %i.y, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %i.ab), !inline_history !762
  %i.ac = load i64, ptr %i.a, align 8
  %i.ad = load i64, ptr %i.f, align 8
  %i.ae = load ptr, ptr %i.aa, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.y, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %i.ae), !inline_history !762
  tail call void @_ZN6embree13TaskScheduler4waitEv(), !inline_history !762
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit: ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden { i64, i64 } @_ZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEvEUlRNS6_8BuildRefEPS7_E_S7_Lm32EE21parallel_object_splitERKNS0_8BinSplitILm32EEERKNS0_16PrimInfoExtRangeERSG_SJ_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(88) %2, ptr noundef nonnull align 16 dereferenceable(88) %3, ptr noundef nonnull align 16 dereferenceable(88) %4) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %5 = alloca %"class.embree::PrimInfoT", align 16 ; 10 uses
  %6 = alloca %"class.embree::PrimInfoT", align 16 ; 10 uses
  %7 = alloca %"struct.embree::vint_impl", align 16 ; 4 uses
  %8 = alloca %"struct.embree::vboolf_impl", align 16 ; 4 uses
  %9 = alloca %class.anon.251, align 8            ; 6 uses
  %10 = alloca %"struct.embree::EmptyTy", align 1 ; 3 uses
  %11 = alloca %class.anon.252, align 1           ; 3 uses
  %12 = alloca %class.anon.254, align 1           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.b = load i64, ptr %i.a, align 16             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store <4 x float> splat (float +inf), ptr %5, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store <4 x float> splat (float +inf), ptr %6, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %13 = load <1 x i32>, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = shl nuw i32 1, %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.s = shufflevector <1 x i32> %13, <1 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.s, ptr %7, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [16 x i8], ptr @_ZN6embree16mm_lookupmask_psE, i64 %i.t
  %i.v = load <4 x float>, ptr %i.u, align 16
  store <4 x float> %i.v, ptr %8, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %1, ptr %9, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %8, ptr %i.x, align 8
  %i.y = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.z = call noundef i64 @_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEmPT_mmRKT1_RT0_S15_RKT2_RKT3_RKT4_m(ptr noundef %i.y, i64 noundef %i.b, i64 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 16 dereferenceable(80) %5, ptr noundef nonnull align 16 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, i64 noundef 128) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.aa = load <4 x float>, ptr %5, align 16
  store <4 x float> %i.aa, ptr %3, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load <4 x float>, ptr %i.e, align 16
  store <4 x float> %i.ac, ptr %i.ab, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = load <4 x float>, ptr %i.f, align 16
  store <4 x float> %i.ae, ptr %i.ad, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ag = load <4 x float>, ptr %i.g, align 16
  store <4 x float> %i.ag, ptr %i.af, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.b, ptr %i.ah, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %i.z, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %i.z, ptr %i.aj, align 16
  %i.ak = load <4 x float>, ptr %6, align 16
  store <4 x float> %i.ak, ptr %4, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = load <4 x float>, ptr %i.j, align 16
  store <4 x float> %i.am, ptr %i.al, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ao = load <4 x float>, ptr %i.k, align 16
  store <4 x float> %i.ao, ptr %i.an, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aq = load <4 x float>, ptr %i.l, align 16
  store <4 x float> %i.aq, ptr %i.ap, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %i.z, ptr %i.ar, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %i.d, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 %i.d, ptr %i.at, align 16
  %i.au = load i64, ptr %i.i, align 8
  %i.av = load i64, ptr %i.h, align 16
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = load i64, ptr %i.n, align 8
  %i.ay = load i64, ptr %i.m, align 16
  %i.az = sub i64 %i.ax, %i.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.aw, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.az, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef i64 @_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEmPT_mmRKT1_RT0_S15_RKT2_RKT3_RKT4_m(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(80) %4, ptr noundef nonnull align 16 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, i64 noundef %9) local_unnamed_addr #20 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %11 = alloca %class.anon.272, align 8           ; 5 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %13 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %14 = alloca %class.anon.269, align 8           ; 5 uses
  %15 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %16 = alloca %class.anon.267, align 8           ; 4 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %17 = alloca %class.anon.268, align 8           ; 7 uses
  %.sroa.6 = alloca <{ %"struct.embree::NodeRefPtr", float }>, align 32 ; 4 uses
  %18 = alloca %"class.std::unique_ptr.256", align 8 ; 5 uses
  %i.d = sub i64 %2, %1                           ; 3 uses
  %i.e = icmp ult i64 %i.d, %9
  br i1 %i.e, label %bb.b, label %bb.e, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %1
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %2
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge37.i, %bb.b
  %.033.i = phi ptr [ %i.f, %bb.b ], [ %i.cl, %.critedge37.i ] ; 3 uses
  %.pn.i = phi ptr [ %i.g, %bb.b ], [ %.1.i115, %.critedge37.i ]
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -64 ; 4 uses
  %.not.i107 = icmp ugt ptr %.033.i, %.0.i
  br i1 %.not.i107, label %.critedge.i.preheader, label %.lr.ph110, !prof !282

.lr.ph110:                                        ; preds = %bb.c, %bb.d
  %.134.i108 = phi ptr [ %i.aw, %bb.d ], [ %.033.i, %bb.c ] ; 4 uses
  %i.r = load ptr, ptr %6, align 8, !nonnull !4, !align !162 ; 2 uses
  %i.s = load ptr, ptr %i.h, align 8, !nonnull !4, !align !162
  %i.t = load ptr, ptr %i.i, align 8, !nonnull !4, !align !162
  %i.u = load <4 x float>, ptr %.134.i108, align 16, !noalias !763 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.134.i108, i64 16
  %i.w = load <4 x float>, ptr %i.v, align 16, !noalias !768 ; 2 uses
  %i.x = fadd <4 x float> %i.u, %i.w              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load <4 x float>, ptr %i.y, align 16, !noalias !771
  %i.aa = fsub <4 x float> %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.ac = load <4 x float>, ptr %i.ab, align 16, !noalias !776
  %i.ad = fmul <4 x float> %i.aa, %i.ac
  %i.ae = fadd <4 x float> %i.ad, splat (float -5.000000e-01)
  %i.af = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ae)
  %i.ag = load <4 x i32>, ptr %i.s, align 16, !noalias !779
  %i.ah = icmp sgt <4 x i32> %i.ag, %i.af
  %i.ai = load <4 x i32>, ptr %i.t, align 16, !noalias !782
  %i.aj = icmp slt <4 x i32> %i.ai, zeroinitializer
  %i.ak = select <4 x i1> %i.ah, <4 x i1> %i.aj, <4 x i1> zeroinitializer
  %i.al = bitcast <4 x i1> %i.ak to i4
  %.not90 = icmp eq i4 %i.al, 0
  br i1 %.not90, label %.critedge.i.preheader, label %bb.d, !prof !70

.critedge.i.preheader:                            ; preds = %.lr.ph110, %bb.d, %bb.c
  %.134.i.lcssa = phi ptr [ %.033.i, %bb.c ], [ %i.aw, %bb.d ], [ %.134.i108, %.lr.ph110 ] ; 9 uses
  %.not35.i114 = icmp ugt ptr %.134.i.lcssa, %.0.i
  br i1 %.not35.i114, label %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS7_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSC_SR_E_EEmPT_mmRT0_SY_RKT1_RKT2_.exit, label %.lr.ph116, !prof !282

bb.d:                                             ; preds = %.lr.ph110
  %i.am = load <4 x float>, ptr %4, align 16, !noalias !785
  %i.an = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.am, <4 x float> %i.u)
  store <4 x float> %i.an, ptr %4, align 16
  %i.ao = load <4 x float>, ptr %i.j, align 16, !noalias !788
  %i.ap = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ao, <4 x float> %i.w)
  store <4 x float> %i.ap, ptr %i.j, align 16
  %i.aq = load <4 x float>, ptr %i.k, align 16, !noalias !791
  %i.ar = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aq, <4 x float> %i.x)
  store <4 x float> %i.ar, ptr %i.k, align 16
  %i.as = load <4 x float>, ptr %i.l, align 16, !noalias !794
  %i.at = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.as, <4 x float> %i.x)
  store <4 x float> %i.at, ptr %i.l, align 16
  %i.au = load i64, ptr %i.m, align 8
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.m, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.134.i108, i64 64 ; 3 uses
  %.not.i = icmp ugt ptr %i.aw, %.0.i
  br i1 %.not.i, label %.critedge.i.preheader, label %.lr.ph110, !prof !307, !llvm.loop !797

.lr.ph116:                                        ; preds = %.critedge.i.preheader, %.critedge.i
  %.1.i115 = phi ptr [ %i.cc, %.critedge.i ], [ %.0.i, %.critedge.i.preheader ] ; 9 uses
  %i.ax = load ptr, ptr %6, align 8, !nonnull !4, !align !162 ; 2 uses
  %i.ay = load ptr, ptr %i.h, align 8, !nonnull !4, !align !162
  %i.az = load ptr, ptr %i.i, align 8, !nonnull !4, !align !162
  %i.ba = load <4 x float>, ptr %.1.i115, align 16, !noalias !798 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i115, i64 16
  %i.bc = load <4 x float>, ptr %i.bb, align 16, !noalias !803 ; 2 uses
  %i.bd = fadd <4 x float> %i.ba, %i.bc           ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bf = load <4 x float>, ptr %i.be, align 16, !noalias !806
  %i.bg = fsub <4 x float> %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bi = load <4 x float>, ptr %i.bh, align 16, !noalias !811
  %i.bj = fmul <4 x float> %i.bg, %i.bi
  %i.bk = fadd <4 x float> %i.bj, splat (float -5.000000e-01)
  %i.bl = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.bk)
  %i.bm = load <4 x i32>, ptr %i.ay, align 16, !noalias !814
  %i.bn = icmp sgt <4 x i32> %i.bm, %i.bl
  %i.bo = load <4 x i32>, ptr %i.az, align 16, !noalias !817
  %i.bp = icmp slt <4 x i32> %i.bo, zeroinitializer
  %i.bq = select <4 x i1> %i.bn, <4 x i1> %i.bp, <4 x i1> zeroinitializer
  %i.br = bitcast <4 x i1> %i.bq to i4
  %.not91 = icmp eq i4 %i.br, 0
  br i1 %.not91, label %.critedge.i, label %.critedge37.i, !prof !34

.critedge.i:                                      ; preds = %.lr.ph116
  %i.bs = load <4 x float>, ptr %5, align 16, !noalias !820
  %i.bt = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bs, <4 x float> %i.ba)
  store <4 x float> %i.bt, ptr %5, align 16
  %i.bu = load <4 x float>, ptr %i.n, align 16, !noalias !823
  %i.bv = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bu, <4 x float> %i.bc)
  store <4 x float> %i.bv, ptr %i.n, align 16
  %i.bw = load <4 x float>, ptr %i.o, align 16, !noalias !826
  %i.bx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bw, <4 x float> %i.bd)
  store <4 x float> %i.bx, ptr %i.o, align 16
  %i.by = load <4 x float>, ptr %i.p, align 16, !noalias !829
end_hunk_0
begin_hunk_1_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS3_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEvEUlRNS9_8BuildRefEPSA_E_SA_Lm32EE17moveExtentedRangeERKNS3_16PrimInfoExtRangeESH_RSF_EUlRKNS_5rangeImEEE0_EEvT_SO_SO_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSO_ST_mb:bb.a
  store ptr %i.eh, ptr %5, align 8
  store ptr null, ptr %2, align 8
  %.not.i.i59 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63: ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ei = load ptr, ptr %11, align 8              ; 2 uses
  %.not81 = icmp eq ptr %i.ei, null
  br i1 %.not81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  store ptr %i.ei, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.az:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %12, align 8
  %.not.i65 = icmp eq ptr %i.ek, null
  br i1 %.not.i65, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.el = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i69 = icmp eq ptr %i.el, null
  br i1 %.not.i69, label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 786696
  %i.en = load ptr, ptr %i.em, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i, label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #26
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.el)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #26
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.al, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS3_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEvEUlRNS9_8BuildRefEPSA_E_SA_Lm32EE17moveExtentedRangeERKNS3_16PrimInfoExtRangeESH_RSF_EUlRKNS_5rangeImEEE0_EEvT_SO_SO_RKT0_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp ult i64 %i.d, %i.b
  br i1 %i.j, label %.lr.ph.i.i, label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %.06.i.i ; 4 uses
  %i.n = load ptr, ptr %i.k, align 8, !nonnull !4, !align !74
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr [64 x i8], ptr %i.m, i64 %i.o ; 3 uses
  %i.q = load <4 x float>, ptr %i.m, align 16
  store <4 x float> %i.q, ptr %i.p, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.t = load <4 x float>, ptr %i.s, align 16
  store <4 x float> %i.t, ptr %i.r, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(12) %i.u, ptr noundef nonnull align 32 dereferenceable(12) %i.v, i64 12, i1 false)
  %i.w = add nuw i64 %.06.i.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.b
  br i1 %exitcond.not.i, label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit, label %bb.c, !llvm.loop !1689

bb.d:                                             ; preds = %bb.a
  %i.x = add i64 %i.d, %i.b
  %i.y = lshr i64 %i.x, 1                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.d, i64 noundef %i.y, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %i.ab), !inline_history !1690
  %i.ac = load i64, ptr %i.a, align 8
  %i.ad = load i64, ptr %i.f, align 8
  %i.ae = load ptr, ptr %i.aa, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.y, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %i.ae), !inline_history !1690
  tail call void @_ZN6embree13TaskScheduler4waitEv(), !inline_history !1690
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit: ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden { i64, i64 } @_ZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEvEUlRNS6_8BuildRefEPS7_E_S7_Lm32EE21parallel_object_splitERKNS0_8BinSplitILm32EEERKNS0_16PrimInfoExtRangeERSG_SJ_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(88) %2, ptr noundef nonnull align 16 dereferenceable(88) %3, ptr noundef nonnull align 16 dereferenceable(88) %4) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %5 = alloca %"class.embree::PrimInfoT", align 16 ; 10 uses
  %6 = alloca %"class.embree::PrimInfoT", align 16 ; 10 uses
  %7 = alloca %"struct.embree::vint_impl", align 16 ; 4 uses
  %8 = alloca %"struct.embree::vboolf_impl", align 16 ; 4 uses
  %9 = alloca %class.anon.359, align 8            ; 6 uses
  %10 = alloca %"struct.embree::EmptyTy", align 1 ; 3 uses
  %11 = alloca %class.anon.360, align 1           ; 3 uses
  %12 = alloca %class.anon.362, align 1           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.b = load i64, ptr %i.a, align 16             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store <4 x float> splat (float +inf), ptr %5, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store <4 x float> splat (float +inf), ptr %6, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %13 = load <1 x i32>, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = shl nuw i32 1, %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.s = shufflevector <1 x i32> %13, <1 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.s, ptr %7, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [16 x i8], ptr @_ZN6embree16mm_lookupmask_psE, i64 %i.t
  %i.v = load <4 x float>, ptr %i.u, align 16
  store <4 x float> %i.v, ptr %8, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %1, ptr %9, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %8, ptr %i.x, align 8
  %i.y = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.z = call noundef i64 @_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEmPT_mmRKT1_RT0_S15_RKT2_RKT3_RKT4_m(ptr noundef %i.y, i64 noundef %i.b, i64 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 16 dereferenceable(80) %5, ptr noundef nonnull align 16 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, i64 noundef 128) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.aa = load <4 x float>, ptr %5, align 16
  store <4 x float> %i.aa, ptr %3, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load <4 x float>, ptr %i.e, align 16
  store <4 x float> %i.ac, ptr %i.ab, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = load <4 x float>, ptr %i.f, align 16
  store <4 x float> %i.ae, ptr %i.ad, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ag = load <4 x float>, ptr %i.g, align 16
  store <4 x float> %i.ag, ptr %i.af, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.b, ptr %i.ah, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %i.z, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %i.z, ptr %i.aj, align 16
  %i.ak = load <4 x float>, ptr %6, align 16
  store <4 x float> %i.ak, ptr %4, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = load <4 x float>, ptr %i.j, align 16
  store <4 x float> %i.am, ptr %i.al, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ao = load <4 x float>, ptr %i.k, align 16
  store <4 x float> %i.ao, ptr %i.an, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aq = load <4 x float>, ptr %i.l, align 16
  store <4 x float> %i.aq, ptr %i.ap, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %i.z, ptr %i.ar, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %i.d, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 %i.d, ptr %i.at, align 16
  %i.au = load i64, ptr %i.i, align 8
  %i.av = load i64, ptr %i.h, align 16
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = load i64, ptr %i.n, align 8
  %i.ay = load i64, ptr %i.m, align 16
  %i.az = sub i64 %i.ax, %i.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.aw, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.az, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef i64 @_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEmPT_mmRKT1_RT0_S15_RKT2_RKT3_RKT4_m(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(80) %4, ptr noundef nonnull align 16 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, i64 noundef %9) local_unnamed_addr #20 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %11 = alloca %class.anon.380, align 8           ; 5 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %13 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %14 = alloca %class.anon.377, align 8           ; 5 uses
  %15 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %16 = alloca %class.anon.375, align 8           ; 4 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %17 = alloca %class.anon.376, align 8           ; 7 uses
  %.sroa.6 = alloca <{ %"struct.embree::NodeRefPtr", float }>, align 32 ; 4 uses
  %18 = alloca %"class.std::unique_ptr.364", align 8 ; 5 uses
  %i.d = sub i64 %2, %1                           ; 3 uses
  %i.e = icmp ult i64 %i.d, %9
  br i1 %i.e, label %bb.b, label %bb.e, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %1
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %2
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge37.i, %bb.b
  %.033.i = phi ptr [ %i.f, %bb.b ], [ %i.cl, %.critedge37.i ] ; 3 uses
  %.pn.i = phi ptr [ %i.g, %bb.b ], [ %.1.i115, %.critedge37.i ]
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -64 ; 4 uses
  %.not.i107 = icmp ugt ptr %.033.i, %.0.i
  br i1 %.not.i107, label %.critedge.i.preheader, label %.lr.ph110, !prof !282

.lr.ph110:                                        ; preds = %bb.c, %bb.d
  %.134.i108 = phi ptr [ %i.aw, %bb.d ], [ %.033.i, %bb.c ] ; 4 uses
  %i.r = load ptr, ptr %6, align 8, !nonnull !4, !align !162 ; 2 uses
  %i.s = load ptr, ptr %i.h, align 8, !nonnull !4, !align !162
  %i.t = load ptr, ptr %i.i, align 8, !nonnull !4, !align !162
  %i.u = load <4 x float>, ptr %.134.i108, align 16, !noalias !1691 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.134.i108, i64 16
  %i.w = load <4 x float>, ptr %i.v, align 16, !noalias !1696 ; 2 uses
  %i.x = fadd <4 x float> %i.u, %i.w              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load <4 x float>, ptr %i.y, align 16, !noalias !1699
  %i.aa = fsub <4 x float> %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.ac = load <4 x float>, ptr %i.ab, align 16, !noalias !1704
  %i.ad = fmul <4 x float> %i.aa, %i.ac
  %i.ae = fadd <4 x float> %i.ad, splat (float -5.000000e-01)
  %i.af = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ae)
  %i.ag = load <4 x i32>, ptr %i.s, align 16, !noalias !1707
  %i.ah = icmp sgt <4 x i32> %i.ag, %i.af
  %i.ai = load <4 x i32>, ptr %i.t, align 16, !noalias !1710
  %i.aj = icmp slt <4 x i32> %i.ai, zeroinitializer
  %i.ak = select <4 x i1> %i.ah, <4 x i1> %i.aj, <4 x i1> zeroinitializer
  %i.al = bitcast <4 x i1> %i.ak to i4
  %.not88 = icmp eq i4 %i.al, 0
  br i1 %.not88, label %.critedge.i.preheader, label %bb.d, !prof !70

.critedge.i.preheader:                            ; preds = %.lr.ph110, %bb.d, %bb.c
  %.134.i.lcssa = phi ptr [ %.033.i, %bb.c ], [ %i.aw, %bb.d ], [ %.134.i108, %.lr.ph110 ] ; 9 uses
  %.not35.i114 = icmp ugt ptr %.134.i.lcssa, %.0.i
  br i1 %.not35.i114, label %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS7_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSC_SR_E_EEmPT_mmRT0_SY_RKT1_RKT2_.exit, label %.lr.ph116, !prof !282

bb.d:                                             ; preds = %.lr.ph110
  %i.am = load <4 x float>, ptr %4, align 16, !noalias !1713
  %i.an = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.am, <4 x float> %i.u)
  store <4 x float> %i.an, ptr %4, align 16
  %i.ao = load <4 x float>, ptr %i.j, align 16, !noalias !1716
  %i.ap = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ao, <4 x float> %i.w)
  store <4 x float> %i.ap, ptr %i.j, align 16
  %i.aq = load <4 x float>, ptr %i.k, align 16, !noalias !1719
  %i.ar = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aq, <4 x float> %i.x)
  store <4 x float> %i.ar, ptr %i.k, align 16
  %i.as = load <4 x float>, ptr %i.l, align 16, !noalias !1722
  %i.at = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.as, <4 x float> %i.x)
  store <4 x float> %i.at, ptr %i.l, align 16
  %i.au = load i64, ptr %i.m, align 8
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.m, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.134.i108, i64 64 ; 3 uses
  %.not.i = icmp ugt ptr %i.aw, %.0.i
  br i1 %.not.i, label %.critedge.i.preheader, label %.lr.ph110, !prof !307, !llvm.loop !1725

.lr.ph116:                                        ; preds = %.critedge.i.preheader, %.critedge.i
  %.1.i115 = phi ptr [ %i.cc, %.critedge.i ], [ %.0.i, %.critedge.i.preheader ] ; 9 uses
  %i.ax = load ptr, ptr %6, align 8, !nonnull !4, !align !162 ; 2 uses
  %i.ay = load ptr, ptr %i.h, align 8, !nonnull !4, !align !162
  %i.az = load ptr, ptr %i.i, align 8, !nonnull !4, !align !162
  %i.ba = load <4 x float>, ptr %.1.i115, align 16, !noalias !1726 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i115, i64 16
  %i.bc = load <4 x float>, ptr %i.bb, align 16, !noalias !1731 ; 2 uses
  %i.bd = fadd <4 x float> %i.ba, %i.bc           ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bf = load <4 x float>, ptr %i.be, align 16, !noalias !1734
  %i.bg = fsub <4 x float> %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bi = load <4 x float>, ptr %i.bh, align 16, !noalias !1739
  %i.bj = fmul <4 x float> %i.bg, %i.bi
  %i.bk = fadd <4 x float> %i.bj, splat (float -5.000000e-01)
  %i.bl = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.bk)
  %i.bm = load <4 x i32>, ptr %i.ay, align 16, !noalias !1742
  %i.bn = icmp sgt <4 x i32> %i.bm, %i.bl
  %i.bo = load <4 x i32>, ptr %i.az, align 16, !noalias !1745
  %i.bp = icmp slt <4 x i32> %i.bo, zeroinitializer
  %i.bq = select <4 x i1> %i.bn, <4 x i1> %i.bp, <4 x i1> zeroinitializer
  %i.br = bitcast <4 x i1> %i.bq to i4
  %.not89 = icmp eq i4 %i.br, 0
  br i1 %.not89, label %.critedge.i, label %.critedge37.i, !prof !34

.critedge.i:                                      ; preds = %.lr.ph116
  %i.bs = load <4 x float>, ptr %5, align 16, !noalias !1748
  %i.bt = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bs, <4 x float> %i.ba)
  store <4 x float> %i.bt, ptr %5, align 16
  %i.bu = load <4 x float>, ptr %i.n, align 16, !noalias !1751
  %i.bv = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bu, <4 x float> %i.bc)
  store <4 x float> %i.bv, ptr %i.n, align 16
  %i.bw = load <4 x float>, ptr %i.o, align 16, !noalias !1754
  %i.bx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bw, <4 x float> %i.bd)
  store <4 x float> %i.bx, ptr %i.o, align 16
  %i.by = load <4 x float>, ptr %i.p, align 16, !noalias !1757
end_hunk_1
begin_hunk_2_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS3_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE5buildEvEUlRNS9_8BuildRefEPSA_E_SA_Lm32EE17moveExtentedRangeERKNS3_16PrimInfoExtRangeESH_RSF_EUlRKNS_5rangeImEEE0_EEvT_SO_SO_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSO_ST_mb:bb.a
  store ptr %i.eh, ptr %5, align 8
  store ptr null, ptr %2, align 8
  %.not.i.i59 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63: ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ei = load ptr, ptr %11, align 8              ; 2 uses
  %.not81 = icmp eq ptr %i.ei, null
  br i1 %.not81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  store ptr %i.ei, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.az:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %12, align 8
  %.not.i65 = icmp eq ptr %i.ek, null
  br i1 %.not.i65, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.el = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i69 = icmp eq ptr %i.el, null
  br i1 %.not.i69, label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 786696
  %i.en = load ptr, ptr %i.em, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i, label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #26
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.el)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #26
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.al, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS3_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE5buildEvEUlRNS9_8BuildRefEPSA_E_SA_Lm32EE17moveExtentedRangeERKNS3_16PrimInfoExtRangeESH_RSF_EUlRKNS_5rangeImEEE0_EEvT_SO_SO_RKT0_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp ult i64 %i.d, %i.b
  br i1 %i.j, label %.lr.ph.i.i, label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %.06.i.i ; 4 uses
  %i.n = load ptr, ptr %i.k, align 8, !nonnull !4, !align !74
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr [64 x i8], ptr %i.m, i64 %i.o ; 3 uses
  %i.q = load <4 x float>, ptr %i.m, align 16
  store <4 x float> %i.q, ptr %i.p, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.t = load <4 x float>, ptr %i.s, align 16
  store <4 x float> %i.t, ptr %i.r, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(12) %i.u, ptr noundef nonnull align 32 dereferenceable(12) %i.v, i64 12, i1 false)
  %i.w = add nuw i64 %.06.i.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.b
  br i1 %exitcond.not.i, label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit, label %bb.c, !llvm.loop !2589

bb.d:                                             ; preds = %bb.a
  %i.x = add i64 %i.d, %i.b
  %i.y = lshr i64 %i.x, 1                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.d, i64 noundef %i.y, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %i.ab), !inline_history !2590
  %i.ac = load i64, ptr %i.a, align 8
  %i.ad = load i64, ptr %i.f, align 8
  %i.ae = load ptr, ptr %i.aa, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.y, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %i.ae), !inline_history !2590
  tail call void @_ZN6embree13TaskScheduler4waitEv(), !inline_history !2590
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit: ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden { i64, i64 } @_ZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE5buildEvEUlRNS6_8BuildRefEPS7_E_S7_Lm32EE21parallel_object_splitERKNS0_8BinSplitILm32EEERKNS0_16PrimInfoExtRangeERSG_SJ_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(88) %2, ptr noundef nonnull align 16 dereferenceable(88) %3, ptr noundef nonnull align 16 dereferenceable(88) %4) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %5 = alloca %"class.embree::PrimInfoT", align 16 ; 10 uses
  %6 = alloca %"class.embree::PrimInfoT", align 16 ; 10 uses
  %7 = alloca %"struct.embree::vint_impl", align 16 ; 4 uses
  %8 = alloca %"struct.embree::vboolf_impl", align 16 ; 4 uses
  %9 = alloca %class.anon.467, align 8            ; 6 uses
  %10 = alloca %"struct.embree::EmptyTy", align 1 ; 3 uses
  %11 = alloca %class.anon.468, align 1           ; 3 uses
  %12 = alloca %class.anon.470, align 1           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.b = load i64, ptr %i.a, align 16             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store <4 x float> splat (float +inf), ptr %5, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store <4 x float> splat (float +inf), ptr %6, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %13 = load <1 x i32>, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = shl nuw i32 1, %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.s = shufflevector <1 x i32> %13, <1 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.s, ptr %7, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [16 x i8], ptr @_ZN6embree16mm_lookupmask_psE, i64 %i.t
  %i.v = load <4 x float>, ptr %i.u, align 16
  store <4 x float> %i.v, ptr %8, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %1, ptr %9, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %8, ptr %i.x, align 8
  %i.y = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.z = call noundef i64 @_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEmPT_mmRKT1_RT0_S15_RKT2_RKT3_RKT4_m(ptr noundef %i.y, i64 noundef %i.b, i64 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 16 dereferenceable(80) %5, ptr noundef nonnull align 16 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, i64 noundef 128) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.aa = load <4 x float>, ptr %5, align 16
  store <4 x float> %i.aa, ptr %3, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load <4 x float>, ptr %i.e, align 16
  store <4 x float> %i.ac, ptr %i.ab, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = load <4 x float>, ptr %i.f, align 16
  store <4 x float> %i.ae, ptr %i.ad, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ag = load <4 x float>, ptr %i.g, align 16
  store <4 x float> %i.ag, ptr %i.af, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.b, ptr %i.ah, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %i.z, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %i.z, ptr %i.aj, align 16
  %i.ak = load <4 x float>, ptr %6, align 16
  store <4 x float> %i.ak, ptr %4, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = load <4 x float>, ptr %i.j, align 16
  store <4 x float> %i.am, ptr %i.al, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ao = load <4 x float>, ptr %i.k, align 16
  store <4 x float> %i.ao, ptr %i.an, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aq = load <4 x float>, ptr %i.l, align 16
  store <4 x float> %i.aq, ptr %i.ap, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %i.z, ptr %i.ar, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %i.d, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 %i.d, ptr %i.at, align 16
  %i.au = load i64, ptr %i.i, align 8
  %i.av = load i64, ptr %i.h, align 16
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = load i64, ptr %i.n, align 8
  %i.ay = load i64, ptr %i.m, align 16
  %i.az = sub i64 %i.ax, %i.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.aw, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.az, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef i64 @_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEmPT_mmRKT1_RT0_S15_RKT2_RKT3_RKT4_m(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(80) %4, ptr noundef nonnull align 16 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, i64 noundef %9) local_unnamed_addr #20 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %11 = alloca %class.anon.488, align 8           ; 5 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %13 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %14 = alloca %class.anon.485, align 8           ; 5 uses
  %15 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %16 = alloca %class.anon.483, align 8           ; 4 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %17 = alloca %class.anon.484, align 8           ; 7 uses
  %.sroa.6 = alloca <{ %"struct.embree::NodeRefPtr", float }>, align 32 ; 4 uses
  %18 = alloca %"class.std::unique_ptr.472", align 8 ; 5 uses
  %i.d = sub i64 %2, %1                           ; 3 uses
  %i.e = icmp ult i64 %i.d, %9
  br i1 %i.e, label %bb.b, label %bb.e, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %1
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %2
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge37.i, %bb.b
  %.033.i = phi ptr [ %i.f, %bb.b ], [ %i.cl, %.critedge37.i ] ; 3 uses
  %.pn.i = phi ptr [ %i.g, %bb.b ], [ %.1.i115, %.critedge37.i ]
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -64 ; 4 uses
  %.not.i107 = icmp ugt ptr %.033.i, %.0.i
  br i1 %.not.i107, label %.critedge.i.preheader, label %.lr.ph110, !prof !282

.lr.ph110:                                        ; preds = %bb.c, %bb.d
  %.134.i108 = phi ptr [ %i.aw, %bb.d ], [ %.033.i, %bb.c ] ; 4 uses
  %i.r = load ptr, ptr %6, align 8, !nonnull !4, !align !162 ; 2 uses
  %i.s = load ptr, ptr %i.h, align 8, !nonnull !4, !align !162
  %i.t = load ptr, ptr %i.i, align 8, !nonnull !4, !align !162
  %i.u = load <4 x float>, ptr %.134.i108, align 16, !noalias !2591 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.134.i108, i64 16
  %i.w = load <4 x float>, ptr %i.v, align 16, !noalias !2596 ; 2 uses
  %i.x = fadd <4 x float> %i.u, %i.w              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load <4 x float>, ptr %i.y, align 16, !noalias !2599
  %i.aa = fsub <4 x float> %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.ac = load <4 x float>, ptr %i.ab, align 16, !noalias !2604
  %i.ad = fmul <4 x float> %i.aa, %i.ac
  %i.ae = fadd <4 x float> %i.ad, splat (float -5.000000e-01)
  %i.af = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ae)
  %i.ag = load <4 x i32>, ptr %i.s, align 16, !noalias !2607
  %i.ah = icmp sgt <4 x i32> %i.ag, %i.af
  %i.ai = load <4 x i32>, ptr %i.t, align 16, !noalias !2610
  %i.aj = icmp slt <4 x i32> %i.ai, zeroinitializer
  %i.ak = select <4 x i1> %i.ah, <4 x i1> %i.aj, <4 x i1> zeroinitializer
  %i.al = bitcast <4 x i1> %i.ak to i4
  %.not88 = icmp eq i4 %i.al, 0
  br i1 %.not88, label %.critedge.i.preheader, label %bb.d, !prof !70

.critedge.i.preheader:                            ; preds = %.lr.ph110, %bb.d, %bb.c
  %.134.i.lcssa = phi ptr [ %.033.i, %bb.c ], [ %i.aw, %bb.d ], [ %.134.i108, %.lr.ph110 ] ; 9 uses
  %.not35.i114 = icmp ugt ptr %.134.i.lcssa, %.0.i
  br i1 %.not35.i114, label %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS7_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSC_SR_E_EEmPT_mmRT0_SY_RKT1_RKT2_.exit, label %.lr.ph116, !prof !282

bb.d:                                             ; preds = %.lr.ph110
  %i.am = load <4 x float>, ptr %4, align 16, !noalias !2613
  %i.an = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.am, <4 x float> %i.u)
  store <4 x float> %i.an, ptr %4, align 16
  %i.ao = load <4 x float>, ptr %i.j, align 16, !noalias !2616
  %i.ap = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ao, <4 x float> %i.w)
  store <4 x float> %i.ap, ptr %i.j, align 16
  %i.aq = load <4 x float>, ptr %i.k, align 16, !noalias !2619
  %i.ar = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aq, <4 x float> %i.x)
  store <4 x float> %i.ar, ptr %i.k, align 16
  %i.as = load <4 x float>, ptr %i.l, align 16, !noalias !2622
  %i.at = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.as, <4 x float> %i.x)
  store <4 x float> %i.at, ptr %i.l, align 16
  %i.au = load i64, ptr %i.m, align 8
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.m, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.134.i108, i64 64 ; 3 uses
  %.not.i = icmp ugt ptr %i.aw, %.0.i
  br i1 %.not.i, label %.critedge.i.preheader, label %.lr.ph110, !prof !307, !llvm.loop !2625

.lr.ph116:                                        ; preds = %.critedge.i.preheader, %.critedge.i
  %.1.i115 = phi ptr [ %i.cc, %.critedge.i ], [ %.0.i, %.critedge.i.preheader ] ; 9 uses
  %i.ax = load ptr, ptr %6, align 8, !nonnull !4, !align !162 ; 2 uses
  %i.ay = load ptr, ptr %i.h, align 8, !nonnull !4, !align !162
  %i.az = load ptr, ptr %i.i, align 8, !nonnull !4, !align !162
  %i.ba = load <4 x float>, ptr %.1.i115, align 16, !noalias !2626 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i115, i64 16
  %i.bc = load <4 x float>, ptr %i.bb, align 16, !noalias !2631 ; 2 uses
  %i.bd = fadd <4 x float> %i.ba, %i.bc           ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bf = load <4 x float>, ptr %i.be, align 16, !noalias !2634
  %i.bg = fsub <4 x float> %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bi = load <4 x float>, ptr %i.bh, align 16, !noalias !2639
  %i.bj = fmul <4 x float> %i.bg, %i.bi
  %i.bk = fadd <4 x float> %i.bj, splat (float -5.000000e-01)
  %i.bl = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.bk)
  %i.bm = load <4 x i32>, ptr %i.ay, align 16, !noalias !2642
  %i.bn = icmp sgt <4 x i32> %i.bm, %i.bl
  %i.bo = load <4 x i32>, ptr %i.az, align 16, !noalias !2645
  %i.bp = icmp slt <4 x i32> %i.bo, zeroinitializer
  %i.bq = select <4 x i1> %i.bn, <4 x i1> %i.bp, <4 x i1> zeroinitializer
  %i.br = bitcast <4 x i1> %i.bq to i4
  %.not89 = icmp eq i4 %i.br, 0
  br i1 %.not89, label %.critedge.i, label %.critedge37.i, !prof !34

.critedge.i:                                      ; preds = %.lr.ph116
  %i.bs = load <4 x float>, ptr %5, align 16, !noalias !2648
  %i.bt = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bs, <4 x float> %i.ba)
  store <4 x float> %i.bt, ptr %5, align 16
  %i.bu = load <4 x float>, ptr %i.n, align 16, !noalias !2651
  %i.bv = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bu, <4 x float> %i.bc)
  store <4 x float> %i.bv, ptr %i.n, align 16
  %i.bw = load <4 x float>, ptr %i.o, align 16, !noalias !2654
  %i.bx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bw, <4 x float> %i.bd)
  store <4 x float> %i.bx, ptr %i.o, align 16
  %i.by = load <4 x float>, ptr %i.p, align 16, !noalias !2657
end_hunk_2
begin_hunk_3_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS3_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEvEUlRNS9_8BuildRefEPSA_E_SA_Lm32EE17moveExtentedRangeERKNS3_16PrimInfoExtRangeESH_RSF_EUlRKNS_5rangeImEEE0_EEvT_SO_SO_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSO_ST_mb:bb.a
  store ptr %i.eh, ptr %5, align 8
  store ptr null, ptr %2, align 8
  %.not.i.i59 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63: ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ei = load ptr, ptr %11, align 8              ; 2 uses
  %.not81 = icmp eq ptr %i.ei, null
  br i1 %.not81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  store ptr %i.ei, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.az:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %12, align 8
  %.not.i65 = icmp eq ptr %i.ek, null
  br i1 %.not.i65, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.el = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i69 = icmp eq ptr %i.el, null
  br i1 %.not.i69, label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 786696
  %i.en = load ptr, ptr %i.em, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i, label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #26
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.el)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #26
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.al, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS3_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEvEUlRNS9_8BuildRefEPSA_E_SA_Lm32EE17moveExtentedRangeERKNS3_16PrimInfoExtRangeESH_RSF_EUlRKNS_5rangeImEEE0_EEvT_SO_SO_RKT0_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp ult i64 %i.d, %i.b
  br i1 %i.j, label %.lr.ph.i.i, label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %.06.i.i ; 4 uses
  %i.n = load ptr, ptr %i.k, align 8, !nonnull !4, !align !74
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr [64 x i8], ptr %i.m, i64 %i.o ; 3 uses
  %i.q = load <4 x float>, ptr %i.m, align 16
  store <4 x float> %i.q, ptr %i.p, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.t = load <4 x float>, ptr %i.s, align 16
  store <4 x float> %i.t, ptr %i.r, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(12) %i.u, ptr noundef nonnull align 32 dereferenceable(12) %i.v, i64 12, i1 false)
  %i.w = add nuw i64 %.06.i.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.b
  br i1 %exitcond.not.i, label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit, label %bb.c, !llvm.loop !3518

bb.d:                                             ; preds = %bb.a
  %i.x = add i64 %i.d, %i.b
  %i.y = lshr i64 %i.x, 1                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.d, i64 noundef %i.y, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %i.ab), !inline_history !3519
  %i.ac = load i64, ptr %i.a, align 8
  %i.ad = load i64, ptr %i.f, align 8
  %i.ae = load ptr, ptr %i.aa, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.y, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %i.ae), !inline_history !3519
  tail call void @_ZN6embree13TaskScheduler4waitEv(), !inline_history !3519
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit: ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden { i64, i64 } @_ZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEvEUlRNS6_8BuildRefEPS7_E_S7_Lm32EE21parallel_object_splitERKNS0_8BinSplitILm32EEERKNS0_16PrimInfoExtRangeERSG_SJ_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(88) %2, ptr noundef nonnull align 16 dereferenceable(88) %3, ptr noundef nonnull align 16 dereferenceable(88) %4) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %5 = alloca %"class.embree::PrimInfoT", align 16 ; 10 uses
  %6 = alloca %"class.embree::PrimInfoT", align 16 ; 10 uses
  %7 = alloca %"struct.embree::vint_impl", align 16 ; 4 uses
  %8 = alloca %"struct.embree::vboolf_impl", align 16 ; 4 uses
  %9 = alloca %class.anon.576, align 8            ; 6 uses
  %10 = alloca %"struct.embree::EmptyTy", align 1 ; 3 uses
  %11 = alloca %class.anon.577, align 1           ; 3 uses
  %12 = alloca %class.anon.579, align 1           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.b = load i64, ptr %i.a, align 16             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store <4 x float> splat (float +inf), ptr %5, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store <4 x float> splat (float +inf), ptr %6, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %13 = load <1 x i32>, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = shl nuw i32 1, %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.s = shufflevector <1 x i32> %13, <1 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.s, ptr %7, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [16 x i8], ptr @_ZN6embree16mm_lookupmask_psE, i64 %i.t
  %i.v = load <4 x float>, ptr %i.u, align 16
  store <4 x float> %i.v, ptr %8, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %1, ptr %9, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %8, ptr %i.x, align 8
  %i.y = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.z = call noundef i64 @_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEmPT_mmRKT1_RT0_S15_RKT2_RKT3_RKT4_m(ptr noundef %i.y, i64 noundef %i.b, i64 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 16 dereferenceable(80) %5, ptr noundef nonnull align 16 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, i64 noundef 128) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.aa = load <4 x float>, ptr %5, align 16
  store <4 x float> %i.aa, ptr %3, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load <4 x float>, ptr %i.e, align 16
  store <4 x float> %i.ac, ptr %i.ab, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = load <4 x float>, ptr %i.f, align 16
  store <4 x float> %i.ae, ptr %i.ad, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ag = load <4 x float>, ptr %i.g, align 16
  store <4 x float> %i.ag, ptr %i.af, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.b, ptr %i.ah, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %i.z, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %i.z, ptr %i.aj, align 16
  %i.ak = load <4 x float>, ptr %6, align 16
  store <4 x float> %i.ak, ptr %4, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = load <4 x float>, ptr %i.j, align 16
  store <4 x float> %i.am, ptr %i.al, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ao = load <4 x float>, ptr %i.k, align 16
  store <4 x float> %i.ao, ptr %i.an, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aq = load <4 x float>, ptr %i.l, align 16
  store <4 x float> %i.aq, ptr %i.ap, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %i.z, ptr %i.ar, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %i.d, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 %i.d, ptr %i.at, align 16
  %i.au = load i64, ptr %i.i, align 8
  %i.av = load i64, ptr %i.h, align 16
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = load i64, ptr %i.n, align 8
  %i.ay = load i64, ptr %i.m, align 16
  %i.az = sub i64 %i.ax, %i.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.aw, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.az, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef i64 @_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSN_SQ_EUlRKS7_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlRSC_SS_E_ZNSI_21parallel_object_splitESM_SP_SQ_SQ_EUlSU_RKSC_E_EEmPT_mmRKT1_RT0_S15_RKT2_RKT3_RKT4_m(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(80) %4, ptr noundef nonnull align 16 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, i64 noundef %9) local_unnamed_addr #20 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %11 = alloca %class.anon.597, align 8           ; 5 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %13 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %14 = alloca %class.anon.594, align 8           ; 5 uses
  %15 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %16 = alloca %class.anon.592, align 8           ; 4 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %17 = alloca %class.anon.593, align 8           ; 7 uses
  %.sroa.6 = alloca <{ %"struct.embree::NodeRefPtr", float }>, align 32 ; 4 uses
  %18 = alloca %"class.std::unique_ptr.581", align 8 ; 5 uses
  %i.d = sub i64 %2, %1                           ; 3 uses
  %i.e = icmp ult i64 %i.d, %9
  br i1 %i.e, label %bb.b, label %bb.e, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %1
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %2
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge37.i, %bb.b
  %.033.i = phi ptr [ %i.f, %bb.b ], [ %i.cl, %.critedge37.i ] ; 3 uses
  %.pn.i = phi ptr [ %i.g, %bb.b ], [ %.1.i115, %.critedge37.i ]
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -64 ; 4 uses
  %.not.i107 = icmp ugt ptr %.033.i, %.0.i
  br i1 %.not.i107, label %.critedge.i.preheader, label %.lr.ph110, !prof !282

.lr.ph110:                                        ; preds = %bb.c, %bb.d
  %.134.i108 = phi ptr [ %i.aw, %bb.d ], [ %.033.i, %bb.c ] ; 4 uses
  %i.r = load ptr, ptr %6, align 8, !nonnull !4, !align !162 ; 2 uses
  %i.s = load ptr, ptr %i.h, align 8, !nonnull !4, !align !162
  %i.t = load ptr, ptr %i.i, align 8, !nonnull !4, !align !162
  %i.u = load <4 x float>, ptr %.134.i108, align 16, !noalias !3520 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.134.i108, i64 16
  %i.w = load <4 x float>, ptr %i.v, align 16, !noalias !3525 ; 2 uses
  %i.x = fadd <4 x float> %i.u, %i.w              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load <4 x float>, ptr %i.y, align 16, !noalias !3528
  %i.aa = fsub <4 x float> %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.ac = load <4 x float>, ptr %i.ab, align 16, !noalias !3533
  %i.ad = fmul <4 x float> %i.aa, %i.ac
  %i.ae = fadd <4 x float> %i.ad, splat (float -5.000000e-01)
  %i.af = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ae)
  %i.ag = load <4 x i32>, ptr %i.s, align 16, !noalias !3536
  %i.ah = icmp sgt <4 x i32> %i.ag, %i.af
  %i.ai = load <4 x i32>, ptr %i.t, align 16, !noalias !3539
  %i.aj = icmp slt <4 x i32> %i.ai, zeroinitializer
  %i.ak = select <4 x i1> %i.ah, <4 x i1> %i.aj, <4 x i1> zeroinitializer
  %i.al = bitcast <4 x i1> %i.ak to i4
  %.not88 = icmp eq i4 %i.al, 0
  br i1 %.not88, label %.critedge.i.preheader, label %bb.d, !prof !70

.critedge.i.preheader:                            ; preds = %.lr.ph110, %bb.d, %bb.c
  %.134.i.lcssa = phi ptr [ %.033.i, %bb.c ], [ %i.aw, %bb.d ], [ %.134.i108, %.lr.ph110 ] ; 9 uses
  %.not35.i114 = icmp ugt ptr %.134.i.lcssa, %.0.i
  br i1 %.not35.i114, label %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS6_5buildEvEUlRS7_PS7_E_S7_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS7_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSC_SR_E_EEmPT_mmRT0_SY_RKT1_RKT2_.exit, label %.lr.ph116, !prof !282

bb.d:                                             ; preds = %.lr.ph110
  %i.am = load <4 x float>, ptr %4, align 16, !noalias !3542
  %i.an = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.am, <4 x float> %i.u)
  store <4 x float> %i.an, ptr %4, align 16
  %i.ao = load <4 x float>, ptr %i.j, align 16, !noalias !3545
  %i.ap = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ao, <4 x float> %i.w)
  store <4 x float> %i.ap, ptr %i.j, align 16
  %i.aq = load <4 x float>, ptr %i.k, align 16, !noalias !3548
  %i.ar = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aq, <4 x float> %i.x)
  store <4 x float> %i.ar, ptr %i.k, align 16
  %i.as = load <4 x float>, ptr %i.l, align 16, !noalias !3551
  %i.at = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.as, <4 x float> %i.x)
  store <4 x float> %i.at, ptr %i.l, align 16
  %i.au = load i64, ptr %i.m, align 8
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.m, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.134.i108, i64 64 ; 3 uses
  %.not.i = icmp ugt ptr %i.aw, %.0.i
  br i1 %.not.i, label %.critedge.i.preheader, label %.lr.ph110, !prof !307, !llvm.loop !3554

.lr.ph116:                                        ; preds = %.critedge.i.preheader, %.critedge.i
  %.1.i115 = phi ptr [ %i.cc, %.critedge.i ], [ %.0.i, %.critedge.i.preheader ] ; 9 uses
  %i.ax = load ptr, ptr %6, align 8, !nonnull !4, !align !162 ; 2 uses
  %i.ay = load ptr, ptr %i.h, align 8, !nonnull !4, !align !162
  %i.az = load ptr, ptr %i.i, align 8, !nonnull !4, !align !162
  %i.ba = load <4 x float>, ptr %.1.i115, align 16, !noalias !3555 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i115, i64 16
  %i.bc = load <4 x float>, ptr %i.bb, align 16, !noalias !3560 ; 2 uses
  %i.bd = fadd <4 x float> %i.ba, %i.bc           ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bf = load <4 x float>, ptr %i.be, align 16, !noalias !3563
  %i.bg = fsub <4 x float> %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bi = load <4 x float>, ptr %i.bh, align 16, !noalias !3568
  %i.bj = fmul <4 x float> %i.bg, %i.bi
  %i.bk = fadd <4 x float> %i.bj, splat (float -5.000000e-01)
  %i.bl = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.bk)
  %i.bm = load <4 x i32>, ptr %i.ay, align 16, !noalias !3571
  %i.bn = icmp sgt <4 x i32> %i.bm, %i.bl
  %i.bo = load <4 x i32>, ptr %i.az, align 16, !noalias !3574
  %i.bp = icmp slt <4 x i32> %i.bo, zeroinitializer
  %i.bq = select <4 x i1> %i.bn, <4 x i1> %i.bp, <4 x i1> zeroinitializer
  %i.br = bitcast <4 x i1> %i.bq to i4
  %.not89 = icmp eq i4 %i.br, 0
  br i1 %.not89, label %.critedge.i, label %.critedge37.i, !prof !34

.critedge.i:                                      ; preds = %.lr.ph116
  %i.bs = load <4 x float>, ptr %5, align 16, !noalias !3577
  %i.bt = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bs, <4 x float> %i.ba)
  store <4 x float> %i.bt, ptr %5, align 16
  %i.bu = load <4 x float>, ptr %i.n, align 16, !noalias !3580
  %i.bv = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bu, <4 x float> %i.bc)
  store <4 x float> %i.bv, ptr %i.n, align 16
  %i.bw = load <4 x float>, ptr %i.o, align 16, !noalias !3583
  %i.bx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bw, <4 x float> %i.bd)
  store <4 x float> %i.bx, ptr %i.o, align 16
  %i.by = load <4 x float>, ptr %i.p, align 16, !noalias !3586
end_hunk_3
begin_hunk_4_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS3_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS3_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSN_SS_mb:bb.a
  store ptr %i.eh, ptr %5, align 8
  store ptr null, ptr %2, align 8
  %.not.i.i59 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63: ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ei = load ptr, ptr %11, align 8              ; 2 uses
  %.not81 = icmp eq ptr %i.ei, null
  br i1 %.not81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  store ptr %i.ei, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.az:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %12, align 8
  %.not.i65 = icmp eq ptr %i.ek, null
  br i1 %.not.i65, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.el = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i69 = icmp eq ptr %i.el, null
  br i1 %.not.i69, label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 786696
  %i.en = load ptr, ptr %i.em, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i, label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #26
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.el)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #26
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.al, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS3_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS3_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp ult i64 %i.d, %i.b
  br i1 %i.j, label %.lr.ph.i.i, label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE5buildEvEUlRNS7_8BuildRefEPS8_E_S8_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESF_RSD_EUlRKNS_5rangeImEEE0_EEvT_SM_SM_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %.06.i.i ; 4 uses
  %i.n = load ptr, ptr %i.k, align 8, !nonnull !4, !align !74
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr [64 x i8], ptr %i.m, i64 %i.o ; 3 uses
  %i.q = load <4 x float>, ptr %i.m, align 16
  store <4 x float> %i.q, ptr %i.p, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.t = load <4 x float>, ptr %i.s, align 16
  store <4 x float> %i.t, ptr %i.r, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(12) %i.u, ptr noundef nonnull align 32 dereferenceable(12) %i.v, i64 12, i1 false)
  %i.w = add nuw i64 %.06.i.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.b
  br i1 %exitcond.not.i, label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE5buildEvEUlRNS7_8BuildRefEPS8_E_S8_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESF_RSD_EUlRKNS_5rangeImEEE0_EEvT_SM_SM_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit, label %bb.c, !llvm.loop !4418

bb.d:                                             ; preds = %bb.a
  %i.x = add i64 %i.d, %i.b
  %i.y = lshr i64 %i.x, 1                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE5buildEvEUlRNS7_8BuildRefEPS8_E_S8_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESF_RSD_EUlRKNS_5rangeImEEE0_EEvT_SM_SM_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.d, i64 noundef %i.y, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %i.ab), !inline_history !4419
  %i.ac = load i64, ptr %i.a, align 8
  %i.ad = load i64, ptr %i.f, align 8
  %i.ae = load ptr, ptr %i.aa, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE5buildEvEUlRNS7_8BuildRefEPS8_E_S8_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESF_RSD_EUlRKNS_5rangeImEEE0_EEvT_SM_SM_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.y, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %i.ae), !inline_history !4419
  tail call void @_ZN6embree13TaskScheduler4waitEv(), !inline_history !4419
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE5buildEvEUlRNS7_8BuildRefEPS8_E_S8_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESF_RSD_EUlRKNS_5rangeImEEE0_EEvT_SM_SM_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE5buildEvEUlRNS7_8BuildRefEPS8_E_S8_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESF_RSD_EUlRKNS_5rangeImEEE0_EEvT_SM_SM_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit: ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden { i64, i64 } @_ZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE5buildEvEUlRNS5_8BuildRefEPS6_E_S6_Lm32EE21parallel_object_splitERKNS0_8BinSplitILm32EEERKNS0_16PrimInfoExtRangeERSF_SI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(88) %2, ptr noundef nonnull align 16 dereferenceable(88) %3, ptr noundef nonnull align 16 dereferenceable(88) %4) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %5 = alloca %"class.embree::PrimInfoT", align 16 ; 10 uses
  %6 = alloca %"class.embree::PrimInfoT", align 16 ; 10 uses
  %7 = alloca %"struct.embree::vint_impl", align 16 ; 4 uses
  %8 = alloca %"struct.embree::vboolf_impl", align 16 ; 4 uses
  %9 = alloca %class.anon.684, align 8            ; 6 uses
  %10 = alloca %"struct.embree::EmptyTy", align 1 ; 3 uses
  %11 = alloca %class.anon.685, align 1           ; 3 uses
  %12 = alloca %class.anon.687, align 1           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.b = load i64, ptr %i.a, align 16             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store <4 x float> splat (float +inf), ptr %5, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store <4 x float> splat (float +inf), ptr %6, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %13 = load <1 x i32>, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = shl nuw i32 1, %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.s = shufflevector <1 x i32> %13, <1 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.s, ptr %7, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [16 x i8], ptr @_ZN6embree16mm_lookupmask_psE, i64 %i.t
  %i.v = load <4 x float>, ptr %i.u, align 16
  store <4 x float> %i.v, ptr %8, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %1, ptr %9, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %8, ptr %i.x, align 8
  %i.y = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.z = call noundef i64 @_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS6_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSB_SR_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlST_RKSB_E_EEmPT_mmRKT1_RT0_S14_RKT2_RKT3_RKT4_m(ptr noundef %i.y, i64 noundef %i.b, i64 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 16 dereferenceable(80) %5, ptr noundef nonnull align 16 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, i64 noundef 128) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.aa = load <4 x float>, ptr %5, align 16
  store <4 x float> %i.aa, ptr %3, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load <4 x float>, ptr %i.e, align 16
  store <4 x float> %i.ac, ptr %i.ab, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = load <4 x float>, ptr %i.f, align 16
  store <4 x float> %i.ae, ptr %i.ad, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ag = load <4 x float>, ptr %i.g, align 16
  store <4 x float> %i.ag, ptr %i.af, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.b, ptr %i.ah, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %i.z, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %i.z, ptr %i.aj, align 16
  %i.ak = load <4 x float>, ptr %6, align 16
  store <4 x float> %i.ak, ptr %4, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = load <4 x float>, ptr %i.j, align 16
  store <4 x float> %i.am, ptr %i.al, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ao = load <4 x float>, ptr %i.k, align 16
  store <4 x float> %i.ao, ptr %i.an, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aq = load <4 x float>, ptr %i.l, align 16
  store <4 x float> %i.aq, ptr %i.ap, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %i.z, ptr %i.ar, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %i.d, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 %i.d, ptr %i.at, align 16
  %i.au = load i64, ptr %i.i, align 8
  %i.av = load i64, ptr %i.h, align 16
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = load i64, ptr %i.n, align 8
  %i.ay = load i64, ptr %i.m, align 16
  %i.az = sub i64 %i.ax, %i.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.aw, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.az, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef i64 @_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS6_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSB_SR_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlST_RKSB_E_EEmPT_mmRKT1_RT0_S14_RKT2_RKT3_RKT4_m(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(80) %4, ptr noundef nonnull align 16 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, i64 noundef %9) local_unnamed_addr #20 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %11 = alloca %class.anon.705, align 8           ; 5 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %13 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %14 = alloca %class.anon.702, align 8           ; 5 uses
  %15 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %16 = alloca %class.anon.700, align 8           ; 4 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %17 = alloca %class.anon.701, align 8           ; 7 uses
  %.sroa.6 = alloca <{ %"struct.embree::NodeRefPtr", float }>, align 32 ; 4 uses
  %18 = alloca %"class.std::unique_ptr.689", align 8 ; 5 uses
  %i.d = sub i64 %2, %1                           ; 3 uses
  %i.e = icmp ult i64 %i.d, %9
  br i1 %i.e, label %bb.b, label %bb.e, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %1
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %2
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge37.i, %bb.b
  %.033.i = phi ptr [ %i.f, %bb.b ], [ %i.cl, %.critedge37.i ] ; 3 uses
  %.pn.i = phi ptr [ %i.g, %bb.b ], [ %.1.i115, %.critedge37.i ]
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -64 ; 4 uses
  %.not.i107 = icmp ugt ptr %.033.i, %.0.i
  br i1 %.not.i107, label %.critedge.i.preheader, label %.lr.ph110, !prof !282

.lr.ph110:                                        ; preds = %bb.c, %bb.d
  %.134.i108 = phi ptr [ %i.aw, %bb.d ], [ %.033.i, %bb.c ] ; 4 uses
  %i.r = load ptr, ptr %6, align 8, !nonnull !4, !align !162 ; 2 uses
  %i.s = load ptr, ptr %i.h, align 8, !nonnull !4, !align !162
  %i.t = load ptr, ptr %i.i, align 8, !nonnull !4, !align !162
  %i.u = load <4 x float>, ptr %.134.i108, align 16, !noalias !4420 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.134.i108, i64 16
  %i.w = load <4 x float>, ptr %i.v, align 16, !noalias !4425 ; 2 uses
  %i.x = fadd <4 x float> %i.u, %i.w              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load <4 x float>, ptr %i.y, align 16, !noalias !4428
  %i.aa = fsub <4 x float> %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.ac = load <4 x float>, ptr %i.ab, align 16, !noalias !4433
  %i.ad = fmul <4 x float> %i.aa, %i.ac
  %i.ae = fadd <4 x float> %i.ad, splat (float -5.000000e-01)
  %i.af = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ae)
  %i.ag = load <4 x i32>, ptr %i.s, align 16, !noalias !4436
  %i.ah = icmp sgt <4 x i32> %i.ag, %i.af
  %i.ai = load <4 x i32>, ptr %i.t, align 16, !noalias !4439
  %i.aj = icmp slt <4 x i32> %i.ai, zeroinitializer
  %i.ak = select <4 x i1> %i.ah, <4 x i1> %i.aj, <4 x i1> zeroinitializer
  %i.al = bitcast <4 x i1> %i.ak to i4
  %.not88 = icmp eq i4 %i.al, 0
  br i1 %.not88, label %.critedge.i.preheader, label %bb.d, !prof !70

.critedge.i.preheader:                            ; preds = %.lr.ph110, %bb.d, %bb.c
  %.134.i.lcssa = phi ptr [ %.033.i, %bb.c ], [ %i.aw, %bb.d ], [ %.134.i108, %.lr.ph110 ] ; 9 uses
  %.not35.i114 = icmp ugt ptr %.134.i.lcssa, %.0.i
  br i1 %.not35.i114, label %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSL_SO_EUlRKS6_E_ZNSG_21parallel_object_splitESK_SN_SO_SO_EUlRSB_SQ_E_EEmPT_mmRT0_SX_RKT1_RKT2_.exit, label %.lr.ph116, !prof !282

bb.d:                                             ; preds = %.lr.ph110
  %i.am = load <4 x float>, ptr %4, align 16, !noalias !4442
  %i.an = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.am, <4 x float> %i.u)
  store <4 x float> %i.an, ptr %4, align 16
  %i.ao = load <4 x float>, ptr %i.j, align 16, !noalias !4445
  %i.ap = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ao, <4 x float> %i.w)
  store <4 x float> %i.ap, ptr %i.j, align 16
  %i.aq = load <4 x float>, ptr %i.k, align 16, !noalias !4448
  %i.ar = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aq, <4 x float> %i.x)
  store <4 x float> %i.ar, ptr %i.k, align 16
  %i.as = load <4 x float>, ptr %i.l, align 16, !noalias !4451
  %i.at = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.as, <4 x float> %i.x)
  store <4 x float> %i.at, ptr %i.l, align 16
  %i.au = load i64, ptr %i.m, align 8
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.m, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.134.i108, i64 64 ; 3 uses
  %.not.i = icmp ugt ptr %i.aw, %.0.i
  br i1 %.not.i, label %.critedge.i.preheader, label %.lr.ph110, !prof !307, !llvm.loop !4454

.lr.ph116:                                        ; preds = %.critedge.i.preheader, %.critedge.i
  %.1.i115 = phi ptr [ %i.cc, %.critedge.i ], [ %.0.i, %.critedge.i.preheader ] ; 9 uses
  %i.ax = load ptr, ptr %6, align 8, !nonnull !4, !align !162 ; 2 uses
  %i.ay = load ptr, ptr %i.h, align 8, !nonnull !4, !align !162
  %i.az = load ptr, ptr %i.i, align 8, !nonnull !4, !align !162
  %i.ba = load <4 x float>, ptr %.1.i115, align 16, !noalias !4455 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i115, i64 16
  %i.bc = load <4 x float>, ptr %i.bb, align 16, !noalias !4460 ; 2 uses
  %i.bd = fadd <4 x float> %i.ba, %i.bc           ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bf = load <4 x float>, ptr %i.be, align 16, !noalias !4463
  %i.bg = fsub <4 x float> %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bi = load <4 x float>, ptr %i.bh, align 16, !noalias !4468
  %i.bj = fmul <4 x float> %i.bg, %i.bi
  %i.bk = fadd <4 x float> %i.bj, splat (float -5.000000e-01)
  %i.bl = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.bk)
  %i.bm = load <4 x i32>, ptr %i.ay, align 16, !noalias !4471
  %i.bn = icmp sgt <4 x i32> %i.bm, %i.bl
  %i.bo = load <4 x i32>, ptr %i.az, align 16, !noalias !4474
  %i.bp = icmp slt <4 x i32> %i.bo, zeroinitializer
  %i.bq = select <4 x i1> %i.bn, <4 x i1> %i.bp, <4 x i1> zeroinitializer
  %i.br = bitcast <4 x i1> %i.bq to i4
  %.not89 = icmp eq i4 %i.br, 0
  br i1 %.not89, label %.critedge.i, label %.critedge37.i, !prof !34

.critedge.i:                                      ; preds = %.lr.ph116
  %i.bs = load <4 x float>, ptr %5, align 16, !noalias !4477
  %i.bt = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bs, <4 x float> %i.ba)
  store <4 x float> %i.bt, ptr %5, align 16
  %i.bu = load <4 x float>, ptr %i.n, align 16, !noalias !4480
  %i.bv = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bu, <4 x float> %i.bc)
  store <4 x float> %i.bv, ptr %i.n, align 16
  %i.bw = load <4 x float>, ptr %i.o, align 16, !noalias !4483
  %i.bx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bw, <4 x float> %i.bd)
  store <4 x float> %i.bx, ptr %i.o, align 16
  %i.by = load <4 x float>, ptr %i.p, align 16, !noalias !4486
end_hunk_4
begin_hunk_5_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS3_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS3_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSN_SS_mb:bb.a
  store ptr %i.eh, ptr %5, align 8
  store ptr null, ptr %2, align 8
  %.not.i.i59 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63: ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ei = load ptr, ptr %11, align 8              ; 2 uses
  %.not81 = icmp eq ptr %i.ei, null
  br i1 %.not81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  store ptr %i.ei, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.az:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %12, align 8
  %.not.i65 = icmp eq ptr %i.ek, null
  br i1 %.not.i65, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.el = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i69 = icmp eq ptr %i.el, null
  br i1 %.not.i69, label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 786696
  %i.en = load ptr, ptr %i.em, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i, label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #26
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.el)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #26
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.al, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS3_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS3_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp ult i64 %i.d, %i.b
  br i1 %i.j, label %.lr.ph.i.i, label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEvEUlRNS7_8BuildRefEPS8_E_S8_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESF_RSD_EUlRKNS_5rangeImEEE0_EEvT_SM_SM_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %.06.i.i ; 4 uses
  %i.n = load ptr, ptr %i.k, align 8, !nonnull !4, !align !74
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr [64 x i8], ptr %i.m, i64 %i.o ; 3 uses
  %i.q = load <4 x float>, ptr %i.m, align 16
  store <4 x float> %i.q, ptr %i.p, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.t = load <4 x float>, ptr %i.s, align 16
  store <4 x float> %i.t, ptr %i.r, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(12) %i.u, ptr noundef nonnull align 32 dereferenceable(12) %i.v, i64 12, i1 false)
  %i.w = add nuw i64 %.06.i.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.b
  br i1 %exitcond.not.i, label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEvEUlRNS7_8BuildRefEPS8_E_S8_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESF_RSD_EUlRKNS_5rangeImEEE0_EEvT_SM_SM_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit, label %bb.c, !llvm.loop !5318

bb.d:                                             ; preds = %bb.a
  %i.x = add i64 %i.d, %i.b
  %i.y = lshr i64 %i.x, 1                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEvEUlRNS7_8BuildRefEPS8_E_S8_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESF_RSD_EUlRKNS_5rangeImEEE0_EEvT_SM_SM_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.d, i64 noundef %i.y, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %i.ab), !inline_history !5319
  %i.ac = load i64, ptr %i.a, align 8
  %i.ad = load i64, ptr %i.f, align 8
  %i.ae = load ptr, ptr %i.aa, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEvEUlRNS7_8BuildRefEPS8_E_S8_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESF_RSD_EUlRKNS_5rangeImEEE0_EEvT_SM_SM_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.y, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %i.ae), !inline_history !5319
  tail call void @_ZN6embree13TaskScheduler4waitEv(), !inline_history !5319
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEvEUlRNS7_8BuildRefEPS8_E_S8_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESF_RSD_EUlRKNS_5rangeImEEE0_EEvT_SM_SM_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEvEUlRNS7_8BuildRefEPS8_E_S8_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESF_RSD_EUlRKNS_5rangeImEEE0_EEvT_SM_SM_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit: ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden { i64, i64 } @_ZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEvEUlRNS5_8BuildRefEPS6_E_S6_Lm32EE21parallel_object_splitERKNS0_8BinSplitILm32EEERKNS0_16PrimInfoExtRangeERSF_SI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(88) %2, ptr noundef nonnull align 16 dereferenceable(88) %3, ptr noundef nonnull align 16 dereferenceable(88) %4) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %5 = alloca %"class.embree::PrimInfoT", align 16 ; 10 uses
  %6 = alloca %"class.embree::PrimInfoT", align 16 ; 10 uses
  %7 = alloca %"struct.embree::vint_impl", align 16 ; 4 uses
  %8 = alloca %"struct.embree::vboolf_impl", align 16 ; 4 uses
  %9 = alloca %class.anon.792, align 8            ; 6 uses
  %10 = alloca %"struct.embree::EmptyTy", align 1 ; 3 uses
  %11 = alloca %class.anon.793, align 1           ; 3 uses
  %12 = alloca %class.anon.795, align 1           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.b = load i64, ptr %i.a, align 16             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store <4 x float> splat (float +inf), ptr %5, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store <4 x float> splat (float +inf), ptr %6, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %13 = load <1 x i32>, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = shl nuw i32 1, %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.s = shufflevector <1 x i32> %13, <1 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.s, ptr %7, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [16 x i8], ptr @_ZN6embree16mm_lookupmask_psE, i64 %i.t
  %i.v = load <4 x float>, ptr %i.u, align 16
  store <4 x float> %i.v, ptr %8, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %1, ptr %9, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %8, ptr %i.x, align 8
  %i.y = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.z = call noundef i64 @_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS6_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSB_SR_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlST_RKSB_E_EEmPT_mmRKT1_RT0_S14_RKT2_RKT3_RKT4_m(ptr noundef %i.y, i64 noundef %i.b, i64 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 16 dereferenceable(80) %5, ptr noundef nonnull align 16 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, i64 noundef 128) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.aa = load <4 x float>, ptr %5, align 16
  store <4 x float> %i.aa, ptr %3, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load <4 x float>, ptr %i.e, align 16
  store <4 x float> %i.ac, ptr %i.ab, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = load <4 x float>, ptr %i.f, align 16
  store <4 x float> %i.ae, ptr %i.ad, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ag = load <4 x float>, ptr %i.g, align 16
  store <4 x float> %i.ag, ptr %i.af, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.b, ptr %i.ah, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %i.z, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %i.z, ptr %i.aj, align 16
  %i.ak = load <4 x float>, ptr %6, align 16
  store <4 x float> %i.ak, ptr %4, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = load <4 x float>, ptr %i.j, align 16
  store <4 x float> %i.am, ptr %i.al, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ao = load <4 x float>, ptr %i.k, align 16
  store <4 x float> %i.ao, ptr %i.an, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aq = load <4 x float>, ptr %i.l, align 16
  store <4 x float> %i.aq, ptr %i.ap, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %i.z, ptr %i.ar, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %i.d, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 %i.d, ptr %i.at, align 16
  %i.au = load i64, ptr %i.i, align 8
  %i.av = load i64, ptr %i.h, align 16
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = load i64, ptr %i.n, align 8
  %i.ay = load i64, ptr %i.m, align 16
  %i.az = sub i64 %i.ax, %i.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.aw, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.az, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef i64 @_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS6_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSB_SR_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlST_RKSB_E_EEmPT_mmRKT1_RT0_S14_RKT2_RKT3_RKT4_m(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(80) %4, ptr noundef nonnull align 16 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, i64 noundef %9) local_unnamed_addr #20 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %11 = alloca %class.anon.813, align 8           ; 5 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %13 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %14 = alloca %class.anon.810, align 8           ; 5 uses
  %15 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %16 = alloca %class.anon.808, align 8           ; 4 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %17 = alloca %class.anon.809, align 8           ; 7 uses
  %.sroa.6 = alloca <{ %"struct.embree::NodeRefPtr", float }>, align 32 ; 4 uses
  %18 = alloca %"class.std::unique_ptr.797", align 8 ; 5 uses
  %i.d = sub i64 %2, %1                           ; 3 uses
  %i.e = icmp ult i64 %i.d, %9
  br i1 %i.e, label %bb.b, label %bb.e, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %1
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %2
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge37.i, %bb.b
  %.033.i = phi ptr [ %i.f, %bb.b ], [ %i.cl, %.critedge37.i ] ; 3 uses
  %.pn.i = phi ptr [ %i.g, %bb.b ], [ %.1.i115, %.critedge37.i ]
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -64 ; 4 uses
  %.not.i107 = icmp ugt ptr %.033.i, %.0.i
  br i1 %.not.i107, label %.critedge.i.preheader, label %.lr.ph110, !prof !282

.lr.ph110:                                        ; preds = %bb.c, %bb.d
  %.134.i108 = phi ptr [ %i.aw, %bb.d ], [ %.033.i, %bb.c ] ; 4 uses
  %i.r = load ptr, ptr %6, align 8, !nonnull !4, !align !162 ; 2 uses
  %i.s = load ptr, ptr %i.h, align 8, !nonnull !4, !align !162
  %i.t = load ptr, ptr %i.i, align 8, !nonnull !4, !align !162
  %i.u = load <4 x float>, ptr %.134.i108, align 16, !noalias !5320 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.134.i108, i64 16
  %i.w = load <4 x float>, ptr %i.v, align 16, !noalias !5325 ; 2 uses
  %i.x = fadd <4 x float> %i.u, %i.w              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load <4 x float>, ptr %i.y, align 16, !noalias !5328
  %i.aa = fsub <4 x float> %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.ac = load <4 x float>, ptr %i.ab, align 16, !noalias !5333
  %i.ad = fmul <4 x float> %i.aa, %i.ac
  %i.ae = fadd <4 x float> %i.ad, splat (float -5.000000e-01)
  %i.af = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ae)
  %i.ag = load <4 x i32>, ptr %i.s, align 16, !noalias !5336
  %i.ah = icmp sgt <4 x i32> %i.ag, %i.af
  %i.ai = load <4 x i32>, ptr %i.t, align 16, !noalias !5339
  %i.aj = icmp slt <4 x i32> %i.ai, zeroinitializer
  %i.ak = select <4 x i1> %i.ah, <4 x i1> %i.aj, <4 x i1> zeroinitializer
  %i.al = bitcast <4 x i1> %i.ak to i4
  %.not88 = icmp eq i4 %i.al, 0
  br i1 %.not88, label %.critedge.i.preheader, label %bb.d, !prof !70

.critedge.i.preheader:                            ; preds = %.lr.ph110, %bb.d, %bb.c
  %.134.i.lcssa = phi ptr [ %.033.i, %bb.c ], [ %i.aw, %bb.d ], [ %.134.i108, %.lr.ph110 ] ; 9 uses
  %.not35.i114 = icmp ugt ptr %.134.i.lcssa, %.0.i
  br i1 %.not35.i114, label %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSL_SO_EUlRKS6_E_ZNSG_21parallel_object_splitESK_SN_SO_SO_EUlRSB_SQ_E_EEmPT_mmRT0_SX_RKT1_RKT2_.exit, label %.lr.ph116, !prof !282

bb.d:                                             ; preds = %.lr.ph110
  %i.am = load <4 x float>, ptr %4, align 16, !noalias !5342
  %i.an = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.am, <4 x float> %i.u)
  store <4 x float> %i.an, ptr %4, align 16
  %i.ao = load <4 x float>, ptr %i.j, align 16, !noalias !5345
  %i.ap = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ao, <4 x float> %i.w)
  store <4 x float> %i.ap, ptr %i.j, align 16
  %i.aq = load <4 x float>, ptr %i.k, align 16, !noalias !5348
  %i.ar = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aq, <4 x float> %i.x)
  store <4 x float> %i.ar, ptr %i.k, align 16
  %i.as = load <4 x float>, ptr %i.l, align 16, !noalias !5351
  %i.at = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.as, <4 x float> %i.x)
  store <4 x float> %i.at, ptr %i.l, align 16
  %i.au = load i64, ptr %i.m, align 8
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.m, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.134.i108, i64 64 ; 3 uses
  %.not.i = icmp ugt ptr %i.aw, %.0.i
  br i1 %.not.i, label %.critedge.i.preheader, label %.lr.ph110, !prof !307, !llvm.loop !5354

.lr.ph116:                                        ; preds = %.critedge.i.preheader, %.critedge.i
  %.1.i115 = phi ptr [ %i.cc, %.critedge.i ], [ %.0.i, %.critedge.i.preheader ] ; 9 uses
  %i.ax = load ptr, ptr %6, align 8, !nonnull !4, !align !162 ; 2 uses
  %i.ay = load ptr, ptr %i.h, align 8, !nonnull !4, !align !162
  %i.az = load ptr, ptr %i.i, align 8, !nonnull !4, !align !162
  %i.ba = load <4 x float>, ptr %.1.i115, align 16, !noalias !5355 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i115, i64 16
  %i.bc = load <4 x float>, ptr %i.bb, align 16, !noalias !5360 ; 2 uses
  %i.bd = fadd <4 x float> %i.ba, %i.bc           ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bf = load <4 x float>, ptr %i.be, align 16, !noalias !5363
  %i.bg = fsub <4 x float> %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bi = load <4 x float>, ptr %i.bh, align 16, !noalias !5368
  %i.bj = fmul <4 x float> %i.bg, %i.bi
  %i.bk = fadd <4 x float> %i.bj, splat (float -5.000000e-01)
  %i.bl = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.bk)
  %i.bm = load <4 x i32>, ptr %i.ay, align 16, !noalias !5371
  %i.bn = icmp sgt <4 x i32> %i.bm, %i.bl
  %i.bo = load <4 x i32>, ptr %i.az, align 16, !noalias !5374
  %i.bp = icmp slt <4 x i32> %i.bo, zeroinitializer
  %i.bq = select <4 x i1> %i.bn, <4 x i1> %i.bp, <4 x i1> zeroinitializer
  %i.br = bitcast <4 x i1> %i.bq to i4
  %.not89 = icmp eq i4 %i.br, 0
  br i1 %.not89, label %.critedge.i, label %.critedge37.i, !prof !34

.critedge.i:                                      ; preds = %.lr.ph116
  %i.bs = load <4 x float>, ptr %5, align 16, !noalias !5377
  %i.bt = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bs, <4 x float> %i.ba)
  store <4 x float> %i.bt, ptr %5, align 16
  %i.bu = load <4 x float>, ptr %i.n, align 16, !noalias !5380
  %i.bv = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bu, <4 x float> %i.bc)
  store <4 x float> %i.bv, ptr %i.n, align 16
  %i.bw = load <4 x float>, ptr %i.o, align 16, !noalias !5383
  %i.bx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bw, <4 x float> %i.bd)
  store <4 x float> %i.bx, ptr %i.o, align 16
  %i.by = load <4 x float>, ptr %i.p, align 16, !noalias !5386
end_hunk_5
begin_hunk_6_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS3_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS3_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSN_SS_mb:bb.a
  store ptr %i.eh, ptr %5, align 8
  store ptr null, ptr %2, align 8
  %.not.i.i59 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63: ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ei = load ptr, ptr %11, align 8              ; 2 uses
  %.not81 = icmp eq ptr %i.ei, null
  br i1 %.not81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  store ptr %i.ei, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.az:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %12, align 8
  %.not.i65 = icmp eq ptr %i.ek, null
  br i1 %.not.i65, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.el = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i69 = icmp eq ptr %i.el, null
  br i1 %.not.i69, label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 786696
  %i.en = load ptr, ptr %i.em, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i, label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #26
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.el)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #26
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.al, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS3_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEvEUlRNS8_8BuildRefEPS9_E_S9_Lm32EE17moveExtentedRangeERKNS3_16PrimInfoExtRangeESG_RSE_EUlRKNS_5rangeImEEE0_EEvT_SN_SN_RKT0_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp ult i64 %i.d, %i.b
  br i1 %i.j, label %.lr.ph.i.i, label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEvEUlRNS7_8BuildRefEPS8_E_S8_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESF_RSD_EUlRKNS_5rangeImEEE0_EEvT_SM_SM_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %.06.i.i ; 4 uses
  %i.n = load ptr, ptr %i.k, align 8, !nonnull !4, !align !74
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr [64 x i8], ptr %i.m, i64 %i.o ; 3 uses
  %i.q = load <4 x float>, ptr %i.m, align 16
  store <4 x float> %i.q, ptr %i.p, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.t = load <4 x float>, ptr %i.s, align 16
  store <4 x float> %i.t, ptr %i.r, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(12) %i.u, ptr noundef nonnull align 32 dereferenceable(12) %i.v, i64 12, i1 false)
  %i.w = add nuw i64 %.06.i.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.b
  br i1 %exitcond.not.i, label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEvEUlRNS7_8BuildRefEPS8_E_S8_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESF_RSD_EUlRKNS_5rangeImEEE0_EEvT_SM_SM_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit, label %bb.c, !llvm.loop !6218

bb.d:                                             ; preds = %bb.a
  %i.x = add i64 %i.d, %i.b
  %i.y = lshr i64 %i.x, 1                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEvEUlRNS7_8BuildRefEPS8_E_S8_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESF_RSD_EUlRKNS_5rangeImEEE0_EEvT_SM_SM_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.d, i64 noundef %i.y, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %i.ab), !inline_history !6219
  %i.ac = load i64, ptr %i.a, align 8
  %i.ad = load i64, ptr %i.f, align 8
  %i.ae = load ptr, ptr %i.aa, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEvEUlRNS7_8BuildRefEPS8_E_S8_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESF_RSD_EUlRKNS_5rangeImEEE0_EEvT_SM_SM_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.y, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %i.ae), !inline_history !6219
  tail call void @_ZN6embree13TaskScheduler4waitEv(), !inline_history !6219
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEvEUlRNS7_8BuildRefEPS8_E_S8_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESF_RSD_EUlRKNS_5rangeImEEE0_EEvT_SM_SM_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

_ZZN6embree13TaskScheduler5spawnImZNS_4sse226HeuristicArrayOpenMergeSAHIZNS2_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEvEUlRNS7_8BuildRefEPS8_E_S8_Lm32EE17moveExtentedRangeERKNS2_16PrimInfoExtRangeESF_RSD_EUlRKNS_5rangeImEEE0_EEvT_SM_SM_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit: ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden { i64, i64 } @_ZN6embree4sse226HeuristicArrayOpenMergeSAHIZNS0_19BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEvEUlRNS5_8BuildRefEPS6_E_S6_Lm32EE21parallel_object_splitERKNS0_8BinSplitILm32EEERKNS0_16PrimInfoExtRangeERSF_SI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(88) %2, ptr noundef nonnull align 16 dereferenceable(88) %3, ptr noundef nonnull align 16 dereferenceable(88) %4) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %5 = alloca %"class.embree::PrimInfoT", align 16 ; 10 uses
  %6 = alloca %"class.embree::PrimInfoT", align 16 ; 10 uses
  %7 = alloca %"struct.embree::vint_impl", align 16 ; 4 uses
  %8 = alloca %"struct.embree::vboolf_impl", align 16 ; 4 uses
  %9 = alloca %class.anon.901, align 8            ; 6 uses
  %10 = alloca %"struct.embree::EmptyTy", align 1 ; 3 uses
  %11 = alloca %class.anon.902, align 1           ; 3 uses
  %12 = alloca %class.anon.904, align 1           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.b = load i64, ptr %i.a, align 16             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store <4 x float> splat (float +inf), ptr %5, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store <4 x float> splat (float +inf), ptr %6, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %13 = load <1 x i32>, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = shl nuw i32 1, %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.s = shufflevector <1 x i32> %13, <1 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.s, ptr %7, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [16 x i8], ptr @_ZN6embree16mm_lookupmask_psE, i64 %i.t
  %i.v = load <4 x float>, ptr %i.u, align 16
  store <4 x float> %i.v, ptr %8, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %1, ptr %9, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %8, ptr %i.x, align 8
  %i.y = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.z = call noundef i64 @_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS6_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSB_SR_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlST_RKSB_E_EEmPT_mmRKT1_RT0_S14_RKT2_RKT3_RKT4_m(ptr noundef %i.y, i64 noundef %i.b, i64 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 16 dereferenceable(80) %5, ptr noundef nonnull align 16 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, i64 noundef 128) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.aa = load <4 x float>, ptr %5, align 16
  store <4 x float> %i.aa, ptr %3, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load <4 x float>, ptr %i.e, align 16
  store <4 x float> %i.ac, ptr %i.ab, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = load <4 x float>, ptr %i.f, align 16
  store <4 x float> %i.ae, ptr %i.ad, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ag = load <4 x float>, ptr %i.g, align 16
  store <4 x float> %i.ag, ptr %i.af, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.b, ptr %i.ah, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %i.z, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %i.z, ptr %i.aj, align 16
  %i.ak = load <4 x float>, ptr %6, align 16
  store <4 x float> %i.ak, ptr %4, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = load <4 x float>, ptr %i.j, align 16
  store <4 x float> %i.am, ptr %i.al, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ao = load <4 x float>, ptr %i.k, align 16
  store <4 x float> %i.ao, ptr %i.an, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aq = load <4 x float>, ptr %i.l, align 16
  store <4 x float> %i.aq, ptr %i.ap, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %i.z, ptr %i.ar, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %i.d, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 %i.d, ptr %i.at, align 16
  %i.au = load i64, ptr %i.i, align 8
  %i.av = load i64, ptr %i.h, align 16
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = load i64, ptr %i.n, align 8
  %i.ay = load i64, ptr %i.m, align 16
  %i.az = sub i64 %i.ax, %i.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.aw, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.az, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef i64 @_ZN6embree21parallel_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSM_SP_EUlRKS6_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlRSB_SR_E_ZNSH_21parallel_object_splitESL_SO_SP_SP_EUlST_RKSB_E_EEmPT_mmRKT1_RT0_S14_RKT2_RKT3_RKT4_m(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(80) %4, ptr noundef nonnull align 16 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, i64 noundef %9) local_unnamed_addr #20 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %11 = alloca %class.anon.922, align 8           ; 5 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %13 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %14 = alloca %class.anon.919, align 8           ; 5 uses
  %15 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %16 = alloca %class.anon.917, align 8           ; 4 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %17 = alloca %class.anon.918, align 8           ; 7 uses
  %.sroa.6 = alloca <{ %"struct.embree::NodeRefPtr", float }>, align 32 ; 4 uses
  %18 = alloca %"class.std::unique_ptr.906", align 8 ; 5 uses
  %i.d = sub i64 %2, %1                           ; 3 uses
  %i.e = icmp ult i64 %i.d, %9
  br i1 %i.e, label %bb.b, label %bb.e, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %1
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %2
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge37.i, %bb.b
  %.033.i = phi ptr [ %i.f, %bb.b ], [ %i.cl, %.critedge37.i ] ; 3 uses
  %.pn.i = phi ptr [ %i.g, %bb.b ], [ %.1.i115, %.critedge37.i ]
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -64 ; 4 uses
  %.not.i107 = icmp ugt ptr %.033.i, %.0.i
  br i1 %.not.i107, label %.critedge.i.preheader, label %.lr.ph110, !prof !282

.lr.ph110:                                        ; preds = %bb.c, %bb.d
  %.134.i108 = phi ptr [ %i.aw, %bb.d ], [ %.033.i, %bb.c ] ; 4 uses
  %i.r = load ptr, ptr %6, align 8, !nonnull !4, !align !162 ; 2 uses
  %i.s = load ptr, ptr %i.h, align 8, !nonnull !4, !align !162
  %i.t = load ptr, ptr %i.i, align 8, !nonnull !4, !align !162
  %i.u = load <4 x float>, ptr %.134.i108, align 16, !noalias !6220 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.134.i108, i64 16
  %i.w = load <4 x float>, ptr %i.v, align 16, !noalias !6225 ; 2 uses
  %i.x = fadd <4 x float> %i.u, %i.w              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load <4 x float>, ptr %i.y, align 16, !noalias !6228
  %i.aa = fsub <4 x float> %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.ac = load <4 x float>, ptr %i.ab, align 16, !noalias !6233
  %i.ad = fmul <4 x float> %i.aa, %i.ac
  %i.ae = fadd <4 x float> %i.ad, splat (float -5.000000e-01)
  %i.af = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ae)
  %i.ag = load <4 x i32>, ptr %i.s, align 16, !noalias !6236
  %i.ah = icmp sgt <4 x i32> %i.ag, %i.af
  %i.ai = load <4 x i32>, ptr %i.t, align 16, !noalias !6239
  %i.aj = icmp slt <4 x i32> %i.ai, zeroinitializer
  %i.ak = select <4 x i1> %i.ah, <4 x i1> %i.aj, <4 x i1> zeroinitializer
  %i.al = bitcast <4 x i1> %i.ak to i4
  %.not88 = icmp eq i4 %i.al, 0
  br i1 %.not88, label %.critedge.i.preheader, label %bb.d, !prof !70

.critedge.i.preheader:                            ; preds = %.lr.ph110, %bb.d, %bb.c
  %.134.i.lcssa = phi ptr [ %.033.i, %bb.c ], [ %i.aw, %bb.d ], [ %.134.i108, %.lr.ph110 ] ; 9 uses
  %.not35.i114 = icmp ugt ptr %.134.i.lcssa, %.0.i
  br i1 %.not35.i114, label %_ZN6embree19serial_partitioningINS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE8BuildRefENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS1_26HeuristicArrayOpenMergeSAHIZNS5_5buildEvEUlRS6_PS6_E_S6_Lm32EE21parallel_object_splitERKNS1_8BinSplitILm32EEERKNS1_16PrimInfoExtRangeERSL_SO_EUlRKS6_E_ZNSG_21parallel_object_splitESK_SN_SO_SO_EUlRSB_SQ_E_EEmPT_mmRT0_SX_RKT1_RKT2_.exit, label %.lr.ph116, !prof !282

bb.d:                                             ; preds = %.lr.ph110
  %i.am = load <4 x float>, ptr %4, align 16, !noalias !6242
  %i.an = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.am, <4 x float> %i.u)
  store <4 x float> %i.an, ptr %4, align 16
  %i.ao = load <4 x float>, ptr %i.j, align 16, !noalias !6245
  %i.ap = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ao, <4 x float> %i.w)
  store <4 x float> %i.ap, ptr %i.j, align 16
  %i.aq = load <4 x float>, ptr %i.k, align 16, !noalias !6248
  %i.ar = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aq, <4 x float> %i.x)
  store <4 x float> %i.ar, ptr %i.k, align 16
  %i.as = load <4 x float>, ptr %i.l, align 16, !noalias !6251
  %i.at = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.as, <4 x float> %i.x)
  store <4 x float> %i.at, ptr %i.l, align 16
  %i.au = load i64, ptr %i.m, align 8
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.m, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.134.i108, i64 64 ; 3 uses
  %.not.i = icmp ugt ptr %i.aw, %.0.i
  br i1 %.not.i, label %.critedge.i.preheader, label %.lr.ph110, !prof !307, !llvm.loop !6254

.lr.ph116:                                        ; preds = %.critedge.i.preheader, %.critedge.i
  %.1.i115 = phi ptr [ %i.cc, %.critedge.i ], [ %.0.i, %.critedge.i.preheader ] ; 9 uses
  %i.ax = load ptr, ptr %6, align 8, !nonnull !4, !align !162 ; 2 uses
  %i.ay = load ptr, ptr %i.h, align 8, !nonnull !4, !align !162
  %i.az = load ptr, ptr %i.i, align 8, !nonnull !4, !align !162
  %i.ba = load <4 x float>, ptr %.1.i115, align 16, !noalias !6255 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i115, i64 16
  %i.bc = load <4 x float>, ptr %i.bb, align 16, !noalias !6260 ; 2 uses
  %i.bd = fadd <4 x float> %i.ba, %i.bc           ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bf = load <4 x float>, ptr %i.be, align 16, !noalias !6263
  %i.bg = fsub <4 x float> %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bi = load <4 x float>, ptr %i.bh, align 16, !noalias !6268
  %i.bj = fmul <4 x float> %i.bg, %i.bi
  %i.bk = fadd <4 x float> %i.bj, splat (float -5.000000e-01)
  %i.bl = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.bk)
  %i.bm = load <4 x i32>, ptr %i.ay, align 16, !noalias !6271
  %i.bn = icmp sgt <4 x i32> %i.bm, %i.bl
  %i.bo = load <4 x i32>, ptr %i.az, align 16, !noalias !6274
  %i.bp = icmp slt <4 x i32> %i.bo, zeroinitializer
  %i.bq = select <4 x i1> %i.bn, <4 x i1> %i.bp, <4 x i1> zeroinitializer
  %i.br = bitcast <4 x i1> %i.bq to i4
  %.not89 = icmp eq i4 %i.br, 0
  br i1 %.not89, label %.critedge.i, label %.critedge37.i, !prof !34

.critedge.i:                                      ; preds = %.lr.ph116
  %i.bs = load <4 x float>, ptr %5, align 16, !noalias !6277
  %i.bt = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bs, <4 x float> %i.ba)
  store <4 x float> %i.bt, ptr %5, align 16
  %i.bu = load <4 x float>, ptr %i.n, align 16, !noalias !6280
  %i.bv = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bu, <4 x float> %i.bc)
  store <4 x float> %i.bv, ptr %i.n, align 16
  %i.bw = load <4 x float>, ptr %i.o, align 16, !noalias !6283
  %i.bx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bw, <4 x float> %i.bd)
  store <4 x float> %i.bx, ptr %i.o, align 16
  %i.by = load <4 x float>, ptr %i.p, align 16, !noalias !6286
end_hunk_6
