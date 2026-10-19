Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/tramp3d-v4?download=true
inline.NumInlined: 28160
inline.NumDeleted: 8420
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 167
begin_hunk_0_@_ZN11LeafFunctorI9MultiArg1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEEE10EngineViewI10RemoteViewEE5applyERKSC_RKSF_:bb.a

_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i: ; preds = %_ZNSt15__new_allocatorI6VectorILi3Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNSt6vectorI3LocILi3EESaIS1_EEC2ERKS3_.exit.i
  %i.ap = phi ptr [ %.pre7, %_ZNSt15__new_allocatorI6VectorILi3Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.ah, %_ZNSt6vectorI3LocILi3EESaIS1_EEC2ERKS3_.exit.i ] ; 2 uses
  %i.aq = phi ptr [ %.pre6, %_ZNSt15__new_allocatorI6VectorILi3Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.ai, %_ZNSt6vectorI3LocILi3EESaIS1_EEC2ERKS3_.exit.i ] ; 2 uses
  %i.ar = phi ptr [ %i.ao, %_ZNSt15__new_allocatorI6VectorILi3Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %_ZNSt6vectorI3LocILi3EESaIS1_EEC2ERKS3_.exit.i ] ; 4 uses
  store ptr %i.ar, ptr %i.ae, align 8, !tbaa !399
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.al
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.at, ptr %i.au, align 8, !tbaa !400
  %.not7.i.i.i.i.i5.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not7.i.i.i.i.i5.i, label %_ZN9CenteringILi3EEC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i6.i

.lr.ph.i.i.i.i.i6.i:                              ; preds = %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i, %.lr.ph.i.i.i.i.i6.i
  %.09.i.i.i.i.i7.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i6.i ], [ %i.ar, %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i ] ; 4 uses
  %.sroa.04.08.i.i.i.i.i8.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i6.i ], [ %i.aq, %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i ] ; 4 uses
  %i.av = load double, ptr %.sroa.04.08.i.i.i.i.i8.i, align 8, !tbaa !350
  store double %i.av, ptr %.09.i.i.i.i.i7.i, align 8, !tbaa !350
  %i.aw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !350
  store double %i.ay, ptr %i.aw, align 8, !tbaa !350
  %i.az = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i, i64 16
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !350
  store double %i.bb, ptr %i.az, align 8, !tbaa !350
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i9.i = icmp eq ptr %i.bc, %i.ap
  br i1 %.not.i.i.i.i.i9.i, label %_ZN9CenteringILi3EEC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i6.i, !llvm.loop !18

_ZN9CenteringILi3EEC2ERKS0_.exit:                 ; preds = %.lr.ph.i.i.i.i.i6.i, %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i
  %.0.lcssa.i.i.i.i.i10.i = phi ptr [ %i.ar, %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i ], [ %i.bd, %.lr.ph.i.i.i.i.i6.i ]
  store ptr %.0.lcssa.i.i.i.i.i10.i, ptr %i.as, align 8, !tbaa !404
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !1020
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !1020
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1021
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !1021
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1022 ; 4 uses
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !1022
  %.not.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN9CenteringILi3EEC2ERKS0_.exit
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !433
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !433
  br label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i.i

_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i.i: ; preds = %bb.f, %_ZN9CenteringILi3EEC2ERKS0_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.br = load <4 x i32>, ptr %i.bq, align 8, !tbaa !165
  store <4 x i32> %i.br, ptr %i.bp, align 8, !tbaa !165
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bu = load <2 x i32>, ptr %i.bt, align 8, !tbaa !165
  store <2 x i32> %i.bu, ptr %i.bs, align 8, !tbaa !165
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !tbaa.struct !465
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !450 ; 4 uses
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !450
  %.not.i.i8.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i8.i.i.i, label %_ZN9MultiArg1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEC2ERKS8_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !433
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !433
  br label %_ZN9MultiArg1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEC2ERKS8_.exit

_ZN9MultiArg1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEC2ERKS8_.exit: ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i.i, %bb.g
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_tramp3d_v4.cpp() #41 section ".text.startup" {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 16), ptr @_ZN5Pooma5pinfoE, align 8, !tbaa !169
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 8), align 8, !tbaa !175
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 16), align 8, !tbaa !174
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 32), align 8, !tbaa !288
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 36), align 4, !tbaa !284
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 48), align 8, !tbaa !289
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 56), align 8, !tbaa !222
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 64), align 8, !tbaa !206
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 72), align 8, !tbaa !290
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 80), i8 0, i64 28, i1 false)
  %i.a = tail call noundef i32 @_ZN6Inform4openEi(ptr noundef nonnull align 8 dereferenceable(109) @_ZN5Pooma5pinfoE, i32 noundef 0) ; 0 uses
  tail call void @_ZN6Inform5setupEPKc(ptr noundef nonnull align 8 dereferenceable(109) @_ZN5Pooma5pinfoE, ptr noundef nonnull @.str)
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6InformD2Ev, ptr nonnull @_ZN5Pooma5pinfoE, ptr nonnull @__dso_handle) #47 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 16), ptr @_ZN5Pooma5pwarnE, align 8, !tbaa !169
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 8), align 8, !tbaa !175
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 16), align 8, !tbaa !174
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 32), align 8, !tbaa !288
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 36), align 4, !tbaa !284
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 48), align 8, !tbaa !289
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 56), align 8, !tbaa !222
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 64), align 8, !tbaa !206
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 72), align 8, !tbaa !290
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 80), i8 0, i64 28, i1 false)
  %i.c = tail call noundef i32 @_ZN6Inform4openERSoi(ptr noundef nonnull align 8 dereferenceable(109) @_ZN5Pooma5pwarnE, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef -1) ; 0 uses
  tail call void @_ZN6Inform5setupEPKc(ptr noundef nonnull align 8 dereferenceable(109) @_ZN5Pooma5pwarnE, ptr noundef nonnull @.str.5)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6InformD2Ev, ptr nonnull @_ZN5Pooma5pwarnE, ptr nonnull @__dso_handle) #47 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 16), ptr @_ZN5Pooma4perrE, align 8, !tbaa !169
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 8), align 8, !tbaa !175
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 16), align 8, !tbaa !174
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 32), align 8, !tbaa !288
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 36), align 4, !tbaa !284
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 48), align 8, !tbaa !289
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 56), align 8, !tbaa !222
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 64), align 8, !tbaa !206
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 72), align 8, !tbaa !290
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 80), i8 0, i64 28, i1 false)
  %i.e = tail call noundef i32 @_ZN6Inform4openERSoi(ptr noundef nonnull align 8 dereferenceable(109) @_ZN5Pooma4perrE, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef -1) ; 0 uses
  tail call void @_ZN6Inform5setupEPKc(ptr noundef nonnull align 8 dereferenceable(109) @_ZN5Pooma4perrE, ptr noundef nonnull @.str.7)
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6InformD2Ev, ptr nonnull @_ZN5Pooma4perrE, ptr nonnull @__dso_handle) #47 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 16), ptr @_ZN5Pooma6pdebugE, align 8, !tbaa !169
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 8), align 8, !tbaa !175
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 16), align 8, !tbaa !174
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 32), align 8, !tbaa !288
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 36), align 4, !tbaa !284
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 48), align 8, !tbaa !289
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 56), align 8, !tbaa !222
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 64), align 8, !tbaa !206
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 72), align 8, !tbaa !290
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 80), i8 0, i64 28, i1 false)
  %i.g = tail call noundef i32 @_ZN6Inform4openERSoi(ptr noundef nonnull align 8 dereferenceable(109) @_ZN5Pooma6pdebugE, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef -1) ; 0 uses
  tail call void @_ZN6Inform5setupEPKc(ptr noundef nonnull align 8 dereferenceable(109) @_ZN5Pooma6pdebugE, ptr noundef nonnull @.str.9)
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6InformD2Ev, ptr nonnull @_ZN5Pooma6pdebugE, ptr nonnull @__dso_handle) #47 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 8), align 8, !tbaa !169
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 16), align 8, !tbaa !175
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 24), align 8, !tbaa !174
  store i32 1, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, align 8, !tbaa !192
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 4), align 4, !tbaa !193
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 5), align 1, !tbaa !194
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 6), align 2, !tbaa !195
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 8), i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.44, i64 noundef 0) #47 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 40), align 8, !tbaa !196
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 44), align 4, !tbaa !197
  store <4 x i8> <i8 0, i8 1, i8 1, i8 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 48), align 8, !tbaa !198
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 52), align 4, !tbaa !199
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 53), align 1, !tbaa !200
  %i.j = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5Pooma7OptionsD2Ev, ptr nonnull @_ZN5Pooma12_GLOBAL__N_19options_sE, ptr nonnull @__dso_handle) #47 ; 0 uses
  store i32 0, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !714
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, i8 0, i64 24, i1 false)
  %i.k = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5Pooma10StatisticsD2Ev, ptr nonnull @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr nonnull @__dso_handle) #47 ; 0 uses
  %i.l = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.14, i64 noundef 0)
  store ptr %i.l, ptr @_ZN5Pooma12_GLOBAL__N_120statNumExpressions_sE, align 8, !tbaa !183
  %i.m = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.16, i64 noundef 0)
  store ptr %i.m, ptr @_ZN5Pooma12_GLOBAL__N_122statNumZBExpressions_sE, align 8, !tbaa !183
  %i.n = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.18, i64 noundef 0)
  store ptr %i.n, ptr @_ZN5Pooma12_GLOBAL__N_130statNumMultiPatchExpressions_sE, align 8, !tbaa !183
  %i.o = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.20, i64 noundef 0)
  store ptr %i.o, ptr @_ZN5Pooma12_GLOBAL__N_126statNumCompressedAssigns_sE, align 8, !tbaa !183
  %i.p = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.22, i64 noundef 0)
  store ptr %i.p, ptr @_ZN5Pooma12_GLOBAL__N_138statNumAssignsRequiringUnCompression_sE, align 8, !tbaa !183
  %i.q = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.24, i64 noundef 0)
  store ptr %i.q, ptr @_ZN5Pooma12_GLOBAL__N_126statNumInlineEvaluations_sE, align 8, !tbaa !183
  %i.r = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.26, i64 noundef 0)
  store ptr %i.r, ptr @_ZN5Pooma12_GLOBAL__N_130statNumLocalPatchesEvaluated_sE, align 8, !tbaa !183
  %i.s = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.28, i64 noundef 0)
  store ptr %i.s, ptr @_ZN5Pooma12_GLOBAL__N_119statNumReductions_sE, align 8, !tbaa !183
  %i.t = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.30, i64 noundef 0)
  store ptr %i.t, ptr @_ZN5Pooma12_GLOBAL__N_121statNumUnCompresses_sE, align 8, !tbaa !183
  %i.u = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.32, i64 noundef 0)
  store ptr %i.u, ptr @_ZN5Pooma12_GLOBAL__N_134statNumUnsuccessfulTryCompresses_sE, align 8, !tbaa !183
  %i.v = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.34, i64 noundef 0)
  store ptr %i.v, ptr @_ZN5Pooma12_GLOBAL__N_132statNumSuccessfulTryCompresses_sE, align 8, !tbaa !183
  %i.w = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.36, i64 noundef 0)
  store ptr %i.w, ptr @_ZN5Pooma12_GLOBAL__N_114statNumPolls_sE, align 8, !tbaa !183
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @tagGenerator_g, i8 0, i64 24, i1 false)
  %i.x = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #45 ; 3 uses
  store ptr %i.x, ptr @tagGenerator_g, align 8, !tbaa !279
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  store ptr %i.y, ptr getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 16), align 8, !tbaa !280
  store i32 0, ptr %i.x, align 4, !tbaa !165
  store ptr %i.y, ptr getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 8), align 8, !tbaa !281
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 24), i8 0, i64 24, i1 false)
  %i.z = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #45 ; 3 uses
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 24), align 8, !tbaa !279
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 40), align 8, !tbaa !280
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 32), align 8, !tbaa !281
  %i.ab = load ptr, ptr @tagGenerator_g, align 8, !tbaa !279
  store i32 0, ptr %i.ab, align 4, !tbaa !165
  store i32 0, ptr %i.z, align 4, !tbaa !165
  %i.ac = tail call i32 @__cxa_atexit(ptr nonnull @_ZN12TagGeneratorD2Ev, ptr nonnull @tagGenerator_g, ptr nonnull @__dso_handle) #47 ; 0 uses
  tail call void @_ZN18CanonicalCenteringILi1EEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @canonicalCenteringOne_g) #47
  %i.ad = tail call i32 @__cxa_atexit(ptr @_ZN18CanonicalCenteringILi1EED1Ev, ptr nonnull @canonicalCenteringOne_g, ptr nonnull @__dso_handle) #47 ; 0 uses
  tail call void @_ZN18CanonicalCenteringILi2EEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @canonicalCenteringTwo_g) #47
  %i.ae = tail call i32 @__cxa_atexit(ptr @_ZN18CanonicalCenteringILi2EED1Ev, ptr nonnull @canonicalCenteringTwo_g, ptr nonnull @__dso_handle) #47 ; 0 uses
  tail call void @_ZN18CanonicalCenteringILi3EEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @canonicalCenteringThree_g) #47
  %i.af = tail call i32 @__cxa_atexit(ptr @_ZN18CanonicalCenteringILi3EED1Ev, ptr nonnull @canonicalCenteringThree_g, ptr nonnull @__dso_handle) #47 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @corr_v, i8 0, i64 72, i1 false), !tbaa !165
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) @vertexDomain, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @origin, i8 0, i64 24, i1 false), !tbaa !350
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @spacings, i8 0, i64 24, i1 false), !tbaa !350
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @smooth, i8 0, i64 16, i1 false), !tbaa !350
  store ptr getelementptr inbounds nuw (i8, ptr @_Z11commandlineB5cxx11, i64 16), ptr @_Z11commandlineB5cxx11, align 8, !tbaa !169
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_Z11commandlineB5cxx11, i64 8), align 8, !tbaa !175
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_Z11commandlineB5cxx11, i64 16), align 8, !tbaa !174
  %i.ag = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_Z11commandlineB5cxx11, ptr nonnull @__dso_handle) #47 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) @periodicity, i8 0, i64 12, i1 false), !tbaa !165
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @dump_points, i8 0, i64 24, i1 false)
  %i.ah = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev, ptr nonnull @dump_points, ptr nonnull @__dso_handle) #47 ; 0 uses
  store i32 0, ptr @a_blocks, align 8, !tbaa !165
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @a_blocks, i64 4), align 4, !tbaa !165
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @a_blocks, i64 8), align 8, !tbaa !165
  store i32 64, ptr @vdom, align 4, !tbaa !165
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @vdom, i64 4), align 4, !tbaa !165
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @vdom, i64 8), align 4, !tbaa !165
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #44

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #34

attributes #0 = { nofree nounwind }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn }
attributes #22 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #37 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #38 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #41 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #45 = { builtin nounwind allocsize(0) }
attributes #46 = { noreturn nounwind }
attributes #47 = { nounwind }
attributes #48 = { builtin nounwind }
attributes #49 = { noreturn }
attributes #50 = { nounwind willreturn memory(read) }
attributes #51 = { cold nounwind }

!llvm.module.flags = !{!158, !159, !160}
!llvm.ident = !{!161}
!llvm.errno.tbaa = !{!165}

!0 = distinct !{!0, !213}
!1 = distinct !{!1, !213}
!2 = distinct !{!2, !213}
!3 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!4 = distinct !{null}
!5 = distinct !{!5, !213}
!6 = distinct !{!6, !213}
!7 = distinct !{!7, !213}
!8 = distinct !{!8, !213}
!9 = distinct !{!9, !213}
!10 = distinct !{!10, !213}
!11 = distinct !{!11, !213}
!12 = distinct !{!12, !213}
!13 = distinct !{!13, !213}
!14 = distinct !{!14, !213}
!15 = distinct !{!15, !213}
!16 = distinct !{!16, !213}
!17 = distinct !{!17, !213}
!18 = distinct !{!18, !213}
!19 = distinct !{!19, !213}
!20 = distinct !{!20, !213}
!21 = distinct !{null}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = distinct !{!24, !213}
!25 = distinct !{!25, !213}
!26 = distinct !{ptr @_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEEE13deleteStorageEv, null, null, null, null, null, null}
!27 = distinct !{!27, !213}
!28 = distinct !{null}
!29 = distinct !{ptr @_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed16ConstantFunctionEE13deleteStorageEv, null, null, null, null, null, null}
!30 = distinct !{!30, !213}
!31 = distinct !{!31, !213}
!32 = distinct !{!32, !213}
!33 = distinct !{null, null, null}
!34 = distinct !{!34, !213}
!35 = distinct !{!35, !213}
!36 = distinct !{!36, !213}
!37 = distinct !{!37, !213}
!38 = distinct !{null}
!39 = distinct !{!39, !213}
!40 = distinct !{!40, !213}
!41 = distinct !{!41, !213}
!42 = distinct !{!42, !213}
!43 = distinct !{!43, !213}
!44 = distinct !{null, null, null, null}
!45 = distinct !{null, null, null, null, null}
!46 = distinct !{!46, !213}
!47 = distinct !{!47, !213}
!48 = distinct !{!48, !213}
!49 = distinct !{ptr @_ZN6Smarts8Runnable7executeEv, null, null}
!50 = distinct !{null, null}
!51 = distinct !{null, null, null}
!52 = distinct !{null, null, null, null, null}
!53 = distinct !{!53, !213}
!54 = distinct !{!54, !213}
!55 = distinct !{ptr @_ZN10GridLayoutILi3EED2Ev, null, null, null}
!56 = distinct !{null, null, null, null}
!57 = distinct !{ptr @_ZN19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEED2Ev, null, null, null, null}
!58 = distinct !{null, null, null, null}
!59 = distinct !{!59, !213}
!60 = distinct !{!60, !213}
!61 = distinct !{null, null}
!62 = distinct !{!62, !213}
!63 = distinct !{!63, !213}
!64 = distinct !{!64, !213}
!65 = distinct !{!65, !213}
!66 = distinct !{!66, !213}
!67 = distinct !{!67, !213}
!68 = distinct !{null, null, null, null, null, null}
!69 = distinct !{!69, !213}
!70 = distinct !{!70, !213}
!71 = distinct !{null, null, null, null, null, null}
!72 = distinct !{null, null, null, null, null}
!73 = distinct !{ptr @_ZN12DataBlockPtrIdLb0EED2Ev, null, null, null}
!74 = distinct !{ptr @_ZN12DataBlockPtrIdLb0EED2Ev, null, null, null, null, null, null, null}
!75 = distinct !{null, null, null, null, null}
!76 = distinct !{null, null, null, null, null}
!77 = distinct !{!77, !213}
!78 = distinct !{!78, !213}
!79 = distinct !{!79, !213}
!80 = distinct !{null, null, null}
!81 = distinct !{null, null, null, null, null}
!82 = distinct !{!82, !213}
end_hunk_0
