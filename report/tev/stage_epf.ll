Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/stage_epf?download=true
inline.NumInlined: 402
inline.NumDeleted: 200
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN3jxl6N_SSE212GetEPFStage1ERKNS_10LoopFilterERKNS_5PlaneIfEE
define hidden void @_ZN3jxl6N_SSE212GetEPFStage1ERKNS_10LoopFilterERKNS_5PlaneIfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) #3 {
_ZNSt3__110unique_ptrIN3jxl6N_SSE29EPF1StageENS_14default_deleteIS3_EEED2B8nn180100Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #17, !noalias !89 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(129) %i.c, ptr noundef nonnull align 8 dereferenceable(129) %i.b, i64 129, i1 false), !noalias !89
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %i.d, align 8, !tbaa !10, !noalias !89
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 2, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !tbaa !10, !noalias !89
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !89
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3jxl6N_SSE29EPF1StageE, i64 16), ptr %i.a, align 8, !tbaa !12, !noalias !89
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl10LoopFilterE, i64 16), ptr %i.e, align 8, !tbaa !12, !noalias !89
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store ptr %2, ptr %i.f, align 8, !tbaa !39, !noalias !89
  store ptr %i.a, ptr %0, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl6N_SSE212GetEPFStage2ERKNS_10LoopFilterERKNS_5PlaneIfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) #3 {
_ZNSt3__110unique_ptrIN3jxl6N_SSE29EPF2StageENS_14default_deleteIS3_EEED2B8nn180100Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #17, !noalias !92 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(129) %i.c, ptr noundef nonnull align 8 dereferenceable(129) %i.b, i64 129, i1 false), !noalias !92
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.d, align 8, !tbaa !10, !noalias !92
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !tbaa !10, !noalias !92
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !92
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3jxl6N_SSE29EPF2StageE, i64 16), ptr %i.a, align 8, !tbaa !12, !noalias !92
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl10LoopFilterE, i64 16), ptr %i.e, align 8, !tbaa !12, !noalias !92
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store ptr %2, ptr %i.f, align 8, !tbaa !41, !noalias !92
  store ptr %i.a, ptr %0, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl11GetEPFStageERKNS_10LoopFilterERKNS_5PlaneIfEENS_8EpfStageE(ptr dead_on_unwind noalias writable sret(%"class.std::__1::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(137) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i8 noundef zeroext %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !93
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !25
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  switch i8 %3, label %bb.g [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #18
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8
  %i.f = and i64 %i.e, 103425
  %i.g = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.f, i1 true)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL32GetEPFStage0HighwayDispatchTableE, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  tail call void %i.i(ptr dead_on_unwind writable sret(%"class.std::__1::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(137) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) #18
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #18
  %i.k = load atomic i64, ptr %i.j seq_cst, align 8
  %i.l = and i64 %i.k, 103425
  %i.m = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.l, i1 true)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL32GetEPFStage1HighwayDispatchTableE, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42
  tail call void %i.o(ptr dead_on_unwind writable sret(%"class.std::__1::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(137) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) #18
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #18
  %i.q = load atomic i64, ptr %i.p seq_cst, align 8
  %i.r = and i64 %i.q, 103425
  %i.s = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.r, i1 true)
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL32GetEPFStage2HighwayDispatchTableE, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42
  tail call void %i.u(ptr dead_on_unwind writable sret(%"class.std::__1::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(137) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) #18
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3hwy13FunctionCacheINSt3__110unique_ptrIN3jxl19RenderPipelineStageENS1_14default_deleteIS4_EEEEJRKNS3_10LoopFilterERKNS3_5PlaneIfEEEE13ChooseAndCallIXadsoKPFS7_SA_SE_EL_ZNS3_L32GetEPFStage0HighwayDispatchTableEEEEEES7_SA_SE_(ptr dead_on_unwind noalias writable sret(%"class.std::__1::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(137) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) #3 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #18 ; 2 uses
  %i.b = tail call noundef i64 @_ZN3hwy16SupportedTargetsEv() #18
  %i.c = shl i64 %i.b, 1
  %i.d = and i64 %i.c, 65534
  %i.e = or disjoint i64 %i.d, 65536
  store atomic i64 %i.e, ptr %i.a seq_cst, align 8
  %i.f = load atomic i64, ptr %i.a seq_cst, align 8
  %i.g = and i64 %i.f, 103425
  %i.h = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.g, i1 true)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL32GetEPFStage0HighwayDispatchTableE, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  tail call void %i.j(ptr dead_on_unwind writable sret(%"class.std::__1::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(137) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) #18
  ret void
}

declare noundef i64 @_ZN3hwy16SupportedTargetsEv() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3hwy13FunctionCacheINSt3__110unique_ptrIN3jxl19RenderPipelineStageENS1_14default_deleteIS4_EEEEJRKNS3_10LoopFilterERKNS3_5PlaneIfEEEE13ChooseAndCallIXadsoKPFS7_SA_SE_EL_ZNS3_L32GetEPFStage1HighwayDispatchTableEEEEEES7_SA_SE_(ptr dead_on_unwind noalias writable sret(%"class.std::__1::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(137) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) #3 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #18 ; 2 uses
  %i.b = tail call noundef i64 @_ZN3hwy16SupportedTargetsEv() #18
  %i.c = shl i64 %i.b, 1
  %i.d = and i64 %i.c, 65534
  %i.e = or disjoint i64 %i.d, 65536
  store atomic i64 %i.e, ptr %i.a seq_cst, align 8
  %i.f = load atomic i64, ptr %i.a seq_cst, align 8
  %i.g = and i64 %i.f, 103425
  %i.h = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.g, i1 true)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL32GetEPFStage1HighwayDispatchTableE, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  tail call void %i.j(ptr dead_on_unwind writable sret(%"class.std::__1::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(137) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3hwy13FunctionCacheINSt3__110unique_ptrIN3jxl19RenderPipelineStageENS1_14default_deleteIS4_EEEEJRKNS3_10LoopFilterERKNS3_5PlaneIfEEEE13ChooseAndCallIXadsoKPFS7_SA_SE_EL_ZNS3_L32GetEPFStage2HighwayDispatchTableEEEEEES7_SA_SE_(ptr dead_on_unwind noalias writable sret(%"class.std::__1::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(137) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) #3 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #18 ; 2 uses
  %i.b = tail call noundef i64 @_ZN3hwy16SupportedTargetsEv() #18
  %i.c = shl i64 %i.b, 1
  %i.d = and i64 %i.c, 65534
  %i.e = or disjoint i64 %i.d, 65536
  store atomic i64 %i.e, ptr %i.a seq_cst, align 8
  %i.f = load atomic i64, ptr %i.a seq_cst, align 8
  %i.g = and i64 %i.f, 103425
  %i.h = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.g, i1 true)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL32GetEPFStage2HighwayDispatchTableE, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  tail call void %i.j(ptr dead_on_unwind writable sret(%"class.std::__1::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(137) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) #18
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl6N_SSE49EPF0StageD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN3jxl19RenderPipelineStageD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl6N_SSE49EPF0StageD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN3jxl19RenderPipelineStageD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(192) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK3jxl6N_SSE49EPF0Stage10ProcessRowERKNSt3__16vectorINS3_IPfNS2_9allocatorIS4_EEEENS5_IS7_EEEESB_mmmmm(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) unnamed_addr #8 comdat align 2 {
.preheader162:
  %8 = alloca %"class.hwy::N_SSE4::Vec128", align 16 ; 5 uses
  %9 = alloca %"class.hwy::N_SSE4::Vec128", align 16 ; 5 uses
  %10 = alloca %"class.hwy::N_SSE4::Vec128", align 16 ; 5 uses
  %11 = alloca %"class.hwy::N_SSE4::Vec128", align 16 ; 5 uses
  %12 = alloca %"class.hwy::N_SSE4::Vec128", align 16 ; 5 uses
  %13 = alloca %"class.hwy::N_SSE4::Vec128", align 16 ; 5 uses
  %14 = alloca %"class.hwy::N_SSE4::Vec128", align 16 ; 5 uses
  %15 = alloca %"class.hwy::N_SSE4::Vec128", align 16 ; 5 uses
  %16 = alloca %"class.hwy::N_SSE4::Vec128", align 16 ; 5 uses
  %17 = alloca %"class.hwy::N_SSE4::Vec128", align 16 ; 5 uses
  %18 = alloca %"class.hwy::N_SSE4::Vec128", align 16 ; 5 uses
  %19 = alloca %"class.hwy::N_SSE4::Vec128", align 16 ; 5 uses
  %i.a = alloca [12 x ptr], align 16              ; 17 uses
  %i.b = alloca [8 x float], align 16             ; 8 uses
  %i.c = alloca [8 x float], align 16             ; 5 uses
  %i.d = alloca [3 x [7 x ptr]], align 16         ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %8, ptr %i.a, align 16, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %9, ptr %i.e, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %10, ptr %i.f, align 16, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %11, ptr %i.g, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %12, ptr %i.h, align 16, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %13, ptr %i.i, align 8, !tbaa !102
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %14, ptr %i.j, align 16, !tbaa !102
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %15, ptr %i.k, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %16, ptr %i.l, align 16, !tbaa !102
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %17, ptr %i.m, align 8, !tbaa !102
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %18, ptr %i.n, align 16, !tbaa !102
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %19, ptr %i.o, align 8, !tbaa !102
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22   ; 2 uses
  %i.r = lshr i64 %6, 3
  %i.s = add nuw nsw i64 %i.r, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !47
  %i.x = mul i64 %i.w, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.y, i64 64) ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.aa = load float, ptr %i.z, align 4, !tbaa !103
  %i.ab = fpext float %i.aa to double
  %i.ac = fmul double %i.ab, 1.650000e+00
  %i.ad = fptrunc double %i.ac to float           ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.af = load float, ptr %i.ae, align 4, !tbaa !104
  %i.ag = fmul float %i.af, %i.ad                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store float %i.ag, ptr %i.b, align 16, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ai = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.aj, ptr %i.ah, align 4, !tbaa !48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %i.ad, ptr %i.ak, align 4, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store float %i.ad, ptr %i.al, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store float %i.ag, ptr %i.am, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.an = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x float> %i.ao, ptr %i.c, align 16, !tbaa !48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <4 x float> %i.ao, ptr %i.ap, align 16, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.aq = load ptr, ptr %1, align 8, !tbaa !53    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !54 ; 3 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !60
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.as ; 7 uses
  %20 = getelementptr i8, ptr %i.au, i64 -24
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 128
  store ptr %22, ptr %i.d, align 16, !tbaa !62
  %23 = getelementptr i8, ptr %i.au, i64 -16
  %24 = load ptr, ptr %23, align 8, !tbaa !62
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 128 ; 2 uses
  %26 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %25, ptr %26, align 8, !tbaa !62
  %27 = getelementptr i8, ptr %i.au, i64 -8
  %28 = load ptr, ptr %27, align 8, !tbaa !62
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 128 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %29, ptr %i.av, align 16, !tbaa !62
  %30 = load ptr, ptr %i.au, align 8, !tbaa !62
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 128 ; 7 uses
  %32 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %31, ptr %32, align 8, !tbaa !62
  %i.aw = getelementptr i8, ptr %i.au, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !62
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 128 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.ay, ptr %i.az, align 16, !tbaa !62
  %i.ba = getelementptr i8, ptr %i.au, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !62
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 128 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !62
  %i.be = getelementptr i8, ptr %i.au, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !62
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.bg, ptr %i.bh, align 16, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !60
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.as ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 4 uses
  %i.bm = getelementptr i8, ptr %i.bk, i64 -24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !62
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 128
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !62
  %i.bp = getelementptr i8, ptr %i.bk, i64 -16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 128 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.br, ptr %i.bs, align 16, !tbaa !62
  %i.bt = getelementptr i8, ptr %i.bk, i64 -8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 128 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !62
  %i.bx = load ptr, ptr %i.bk, align 8, !tbaa !62
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 128 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %i.by, ptr %i.bz, align 16, !tbaa !62
  %i.ca = getelementptr i8, ptr %i.bk, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !62
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 128 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !62
  %i.ce = getelementptr i8, ptr %i.bk, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !62
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 128 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr %i.cg, ptr %i.ch, align 16, !tbaa !62
  %i.ci = getelementptr i8, ptr %i.bk, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !62
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 128
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !62
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !60
  %i.co = getelementptr [8 x i8], ptr %i.cn, i64 %i.as ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 4 uses
  %i.cq = getelementptr i8, ptr %i.co, i64 -24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !62
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 128
  store ptr %i.cs, ptr %i.cp, align 16, !tbaa !62
  %i.ct = getelementptr i8, ptr %i.co, i64 -16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !62
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 128 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !62
  %i.cx = getelementptr i8, ptr %i.co, i64 -8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !62
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 128 ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr %i.cz, ptr %i.da, align 16, !tbaa !62
  %i.db = load ptr, ptr %i.co, align 8, !tbaa !62
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 128 ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !62
  %i.de = getelementptr i8, ptr %i.co, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !62
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 128 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store ptr %i.dg, ptr %i.dh, align 16, !tbaa !62
  %i.di = getelementptr i8, ptr %i.co, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !62
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 128 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !62
  %i.dm = getelementptr i8, ptr %i.co, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !62
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 128
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store ptr %i.do, ptr %i.dp, align 16, !tbaa !62
  %i.dq = add i64 %3, 3
  %i.dr = and i64 %i.dq, -4                       ; 2 uses
  %i.ds = and i64 %6, 7                           ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  %i.du = icmp eq i64 %i.ds, 7
  %i.dv = or i1 %i.dt, %i.du
  %.sroa.sel = select i1 %i.dv, ptr %i.c, ptr %i.b
  %i.dw = sub i64 0, %i.dr                        ; 2 uses
  %i.dx = add i64 %i.dr, %4                       ; 2 uses
  %i.dy = icmp sgt i64 %i.dx, %i.dw
  br i1 %i.dy, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader162
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.a

._crit_edge:                                      ; preds = %.loopexit, %.preheader162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  ret i32 0

bb.a:                                             ; preds = %.lr.ph, %.loopexit
  %.0139176 = phi i64 [ %i.dw, %.lr.ph ], [ %i.uj, %.loopexit ] ; 44 uses
  %i.ec = add i64 %.0139176, %5                   ; 2 uses
  %i.ed = add i64 %i.ec, 16
  %i.ee = lshr i64 %i.ed, 3
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !48 ; 2 uses
  %i.eh = fcmp olt float %i.eg, f0xC079EF80
  br i1 %i.eh, label %.preheader160.preheader, label %.preheader161.preheader

.preheader160.preheader:                          ; preds = %bb.a
  %i.ei = getelementptr inbounds [4 x i8], ptr %31, i64 %.0139176
  %i.ej = load <4 x float>, ptr %i.ei, align 16, !tbaa !63
  %i.ek = load ptr, ptr %2, align 8, !tbaa !53
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !60
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !62
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 128
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.en, i64 %.0139176
  store <4 x float> %i.ej, ptr %i.eo, align 1, !tbaa !63
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.by, i64 %.0139176
  %i.eq = load <4 x float>, ptr %i.ep, align 16, !tbaa !63
  %i.er = load ptr, ptr %2, align 8, !tbaa !53
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !60
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !62
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 128
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %.0139176
  store <4 x float> %i.eq, ptr %i.ew, align 1, !tbaa !63
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %.0139176
  %i.ey = load <4 x float>, ptr %i.ex, align 16, !tbaa !63
  br label %.loopexit

.preheader161.preheader:                          ; preds = %bb.a
  %i.ez = and i64 %i.ec, 7
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel, i64 %i.ez
  %i.fb = load <4 x float>, ptr %i.fa, align 16, !tbaa !63
  store <4 x float> zeroinitializer, ptr %8, align 16, !tbaa !63
  store <4 x float> zeroinitializer, ptr %9, align 16, !tbaa !63
  store <4 x float> zeroinitializer, ptr %10, align 16, !tbaa !63
  store <4 x float> zeroinitializer, ptr %11, align 16, !tbaa !63
  store <4 x float> zeroinitializer, ptr %12, align 16, !tbaa !63
  store <4 x float> zeroinitializer, ptr %13, align 16, !tbaa !63
  store <4 x float> zeroinitializer, ptr %14, align 16, !tbaa !63
  store <4 x float> zeroinitializer, ptr %15, align 16, !tbaa !63
  store <4 x float> zeroinitializer, ptr %16, align 16, !tbaa !63
  store <4 x float> zeroinitializer, ptr %17, align 16, !tbaa !63
  store <4 x float> zeroinitializer, ptr %18, align 16, !tbaa !63
  store <4 x float> zeroinitializer, ptr %19, align 16, !tbaa !63
  %i.fc = load <1 x float>, ptr %i.dz, align 8
  %i.fd = shufflevector <1 x float> %i.fc, <1 x float> poison, <4 x i32> zeroinitializer
  %i.fe = getelementptr inbounds [4 x i8], ptr %31, i64 %.0139176 ; 4 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %29, i64 %.0139176
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 -4
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %.0139176
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader161.preheader, %.preheader
  %.0144168 = phi i64 [ 0, %.preheader161.preheader ], [ %i.hh, %.preheader ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK3jxl6N_SSE29EPF0Stage10ProcessRowERKNSt3__16vectorINS3_IPfNS2_9allocatorIS4_EEEENS5_IS7_EEEESB_mmmmmE8sads_off, i64 %.0144168 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !64 ; 3 uses
  %invariant.op = add i32 %i.fk, 3
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !64
  %i.fn = sext i32 %i.fm to i64                   ; 3 uses
  %i.fo = load <4 x float>, ptr %i.fe, align 1, !tbaa !63
  %i.fp = sext i32 %invariant.op to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !62
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %.0139176
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.fn ; 3 uses
  %i.fu = load <4 x float>, ptr %i.ft, align 1, !tbaa !63
  %i.fv = fsub <4 x float> %i.fo, %i.fu
  %i.fw = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fv)
  %i.fx = load <4 x float>, ptr %i.ff, align 1, !tbaa !63
  %.reass.1 = add i32 %i.fk, 2
  %i.fy = sext i32 %.reass.1 to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !62
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %.0139176
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.fn
  %i.gd = load <4 x float>, ptr %i.gc, align 1, !tbaa !63
  %i.ge = fsub <4 x float> %i.fx, %i.gd
  %i.gf = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ge)
  %i.gg = fadd <4 x float> %i.fw, %i.gf
  %i.gh = load <4 x float>, ptr %i.fg, align 1, !tbaa !63
  %i.gi = getelementptr inbounds i8, ptr %i.ft, i64 -4
  %i.gj = load <4 x float>, ptr %i.gi, align 1, !tbaa !63
  %i.gk = fsub <4 x float> %i.gh, %i.gj
  %i.gl = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.gk)
  %i.gm = fadd <4 x float> %i.gg, %i.gl
  %i.gn = load <4 x float>, ptr %i.fh, align 1, !tbaa !63
  %.reass.3 = add i32 %i.fk, 4
  %i.go = sext i32 %.reass.3 to i64
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.go
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !62
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.gq, i64 %.0139176
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.fn
  %i.gt = load <4 x float>, ptr %i.gs, align 1, !tbaa !63
  %i.gu = fsub <4 x float> %i.gn, %i.gt
  %i.gv = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.gu)
  %i.gw = fadd <4 x float> %i.gm, %i.gv
  %i.gx = load <4 x float>, ptr %i.fi, align 1, !tbaa !63
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.gz = load <4 x float>, ptr %i.gy, align 1, !tbaa !63
  %i.ha = fsub <4 x float> %i.gx, %i.gz
  %i.hb = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ha)
  %i.hc = fadd <4 x float> %i.gw, %i.hb
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0144168
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !102 ; 2 uses
  %.sroa.023.0.copyload = load <4 x float>, ptr %i.he, align 16, !tbaa !63
  %i.hf = fmul <4 x float> %i.fd, %i.hc
  %i.hg = fadd <4 x float> %i.hf, %.sroa.023.0.copyload
  store <4 x float> %i.hg, ptr %i.he, align 16, !tbaa !63
  %i.hh = add nuw nsw i64 %.0144168, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.hh, 12
  br i1 %exitcond.not, label %.preheader161.1, label %.preheader, !llvm.loop !94

.preheader161.1:                                  ; preds = %.preheader
  %i.hi = getelementptr inbounds [4 x i8], ptr %29, i64 %.0139176
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %.0139176
  %i.hk = load <1 x float>, ptr %i.ea, align 4
  %i.hl = shufflevector <1 x float> %i.hk, <1 x float> poison, <4 x i32> zeroinitializer
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.by, i64 %.0139176 ; 4 uses
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %.0139176
  %i.ho = getelementptr inbounds i8, ptr %i.hm, i64 -4
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %.0139176
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1, %.preheader161.1
  %.0144168.1 = phi i64 [ 0, %.preheader161.1 ], [ %i.jp, %.preheader.1 ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK3jxl6N_SSE29EPF0Stage10ProcessRowERKNSt3__16vectorINS3_IPfNS2_9allocatorIS4_EEEENS5_IS7_EEEESB_mmmmmE8sads_off, i64 %.0144168.1 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !64 ; 3 uses
  %invariant.op.1 = add i32 %i.hs, 3
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !64
  %i.hv = sext i32 %i.hu to i64                   ; 3 uses
  %i.hw = load <4 x float>, ptr %i.hm, align 1, !tbaa !63
  %i.hx = sext i32 %invariant.op.1 to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.hx
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !62
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %.0139176
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.hv ; 3 uses
  %i.ic = load <4 x float>, ptr %i.ib, align 1, !tbaa !63
  %i.id = fsub <4 x float> %i.hw, %i.ic
  %i.ie = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.id)
  %i.if = load <4 x float>, ptr %i.hn, align 1, !tbaa !63
  %.reass.1.1 = add i32 %i.hs, 2
  %i.ig = sext i32 %.reass.1.1 to i64
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.ig
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !62
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %.0139176
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.hv
  %i.il = load <4 x float>, ptr %i.ik, align 1, !tbaa !63
  %i.im = fsub <4 x float> %i.if, %i.il
  %i.in = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.im)
  %i.io = fadd <4 x float> %i.ie, %i.in
  %i.ip = load <4 x float>, ptr %i.ho, align 1, !tbaa !63
  %i.iq = getelementptr inbounds i8, ptr %i.ib, i64 -4
  %i.ir = load <4 x float>, ptr %i.iq, align 1, !tbaa !63
  %i.is = fsub <4 x float> %i.ip, %i.ir
  %i.it = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.is)
  %i.iu = fadd <4 x float> %i.io, %i.it
  %i.iv = load <4 x float>, ptr %i.hp, align 1, !tbaa !63
  %.reass.3.1 = add i32 %i.hs, 4
  %i.iw = sext i32 %.reass.3.1 to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !62
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %.0139176
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.iz, i64 %i.hv
  %i.jb = load <4 x float>, ptr %i.ja, align 1, !tbaa !63
  %i.jc = fsub <4 x float> %i.iv, %i.jb
  %i.jd = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.jc)
  %i.je = fadd <4 x float> %i.iu, %i.jd
  %i.jf = load <4 x float>, ptr %i.hq, align 1, !tbaa !63
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.jh = load <4 x float>, ptr %i.jg, align 1, !tbaa !63
  %i.ji = fsub <4 x float> %i.jf, %i.jh
  %i.jj = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ji)
  %i.jk = fadd <4 x float> %i.je, %i.jj
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0144168.1
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !102 ; 2 uses
  %.sroa.023.0.copyload.1 = load <4 x float>, ptr %i.jm, align 16, !tbaa !63
  %i.jn = fmul <4 x float> %i.hl, %i.jk
  %i.jo = fadd <4 x float> %i.jn, %.sroa.023.0.copyload.1
  store <4 x float> %i.jo, ptr %i.jm, align 16, !tbaa !63
  %i.jp = add nuw nsw i64 %.0144168.1, 1          ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.jp, 12
  br i1 %exitcond.1.not, label %.preheader161.2, label %.preheader.1, !llvm.loop !94

.preheader161.2:                                  ; preds = %.preheader.1
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %.0139176
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %.0139176
  %i.js = load <1 x float>, ptr %i.eb, align 8
  %i.jt = shufflevector <1 x float> %i.js, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %.0139176 ; 4 uses
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %.0139176
  %i.jw = getelementptr inbounds i8, ptr %i.ju, i64 -4
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %.0139176
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2, %.preheader161.2
  %.0144168.2 = phi i64 [ 0, %.preheader161.2 ], [ %i.lx, %.preheader.2 ] ; 3 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK3jxl6N_SSE29EPF0Stage10ProcessRowERKNSt3__16vectorINS3_IPfNS2_9allocatorIS4_EEEENS5_IS7_EEEESB_mmmmmE8sads_off, i64 %.0144168.2 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !64 ; 3 uses
  %invariant.op.2 = add i32 %i.ka, 3
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !64
  %i.kd = sext i32 %i.kc to i64                   ; 3 uses
  %i.ke = load <4 x float>, ptr %i.ju, align 1, !tbaa !63
  %i.kf = sext i32 %invariant.op.2 to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.kf
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !62
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %.0139176
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.kd ; 3 uses
  %i.kk = load <4 x float>, ptr %i.kj, align 1, !tbaa !63
  %i.kl = fsub <4 x float> %i.ke, %i.kk
  %i.km = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.kl)
  %i.kn = load <4 x float>, ptr %i.jv, align 1, !tbaa !63
  %.reass.1.2 = add i32 %i.ka, 2
  %i.ko = sext i32 %.reass.1.2 to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.ko
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !62
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %.0139176
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.kd
  %i.kt = load <4 x float>, ptr %i.ks, align 1, !tbaa !63
  %i.ku = fsub <4 x float> %i.kn, %i.kt
  %i.kv = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ku)
  %i.kw = fadd <4 x float> %i.km, %i.kv
  %i.kx = load <4 x float>, ptr %i.jw, align 1, !tbaa !63
  %i.ky = getelementptr inbounds i8, ptr %i.kj, i64 -4
  %i.kz = load <4 x float>, ptr %i.ky, align 1, !tbaa !63
  %i.la = fsub <4 x float> %i.kx, %i.kz
  %i.lb = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.la)
  %i.lc = fadd <4 x float> %i.kw, %i.lb
  %i.ld = load <4 x float>, ptr %i.jx, align 1, !tbaa !63
  %.reass.3.2 = add i32 %i.ka, 4
  %i.le = sext i32 %.reass.3.2 to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.le
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !62
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.lg, i64 %.0139176
  %i.li = getelementptr inbounds [4 x i8], ptr %i.lh, i64 %i.kd
  %i.lj = load <4 x float>, ptr %i.li, align 1, !tbaa !63
  %i.lk = fsub <4 x float> %i.ld, %i.lj
  %i.ll = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.lk)
  %i.lm = fadd <4 x float> %i.lc, %i.ll
  %i.ln = load <4 x float>, ptr %i.jy, align 1, !tbaa !63
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.lp = load <4 x float>, ptr %i.lo, align 1, !tbaa !63
  %i.lq = fsub <4 x float> %i.ln, %i.lp
  %i.lr = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.lq)
  %i.ls = fadd <4 x float> %i.lm, %i.lr
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0144168.2
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !102 ; 2 uses
  %.sroa.023.0.copyload.2 = load <4 x float>, ptr %i.lu, align 16, !tbaa !63
  %i.lv = fmul <4 x float> %i.jt, %i.ls
  %i.lw = fadd <4 x float> %i.lv, %.sroa.023.0.copyload.2
  store <4 x float> %i.lw, ptr %i.lu, align 16, !tbaa !63
  %i.lx = add nuw nsw i64 %.0144168.2, 1          ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.lx, 12
  br i1 %exitcond.2.not, label %bb.b, label %.preheader.2, !llvm.loop !94

bb.b:                                             ; preds = %.preheader.2
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %.0139176
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %.0139176
  %i.ma = insertelement <4 x float> poison, float %i.eg, i64 0
  %i.mb = shufflevector <4 x float> %i.ma, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mc = fmul <4 x float> %i.mb, %i.fb           ; 12 uses
  %i.md = load <4 x float>, ptr %i.fe, align 16, !tbaa !63
  %i.me = load <4 x float>, ptr %i.hm, align 16, !tbaa !63
  %i.mf = load <4 x float>, ptr %i.ju, align 16, !tbaa !63
  %.sroa.015.0.copyload = load <4 x float>, ptr %8, align 16, !tbaa !63
  %i.mg = getelementptr inbounds [4 x i8], ptr %25, i64 %.0139176
  %i.mh = load <4 x float>, ptr %i.mg, align 1, !tbaa !63, !noalias !105
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.br, i64 %.0139176
  %i.mj = load <4 x float>, ptr %i.mi, align 1, !tbaa !63, !noalias !105
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %.0139176
  %i.ml = load <4 x float>, ptr %i.mk, align 1, !tbaa !63, !noalias !105
  %i.mm = fmul <4 x float> %i.mc, %.sroa.015.0.copyload
  %i.mn = fadd <4 x float> %i.mm, splat (float 1.000000e+00) ; 2 uses
  %i.mo = call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.mn, <4 x float> zeroinitializer, <4 x float> %i.mn) ; 4 uses
  %i.mp = fadd <4 x float> %i.mo, splat (float 1.000000e+00)
  %i.mq = fmul <4 x float> %i.mh, %i.mo
  %i.mr = fadd <4 x float> %i.md, %i.mq
  %i.ms = fmul <4 x float> %i.mj, %i.mo
  %i.mt = fadd <4 x float> %i.me, %i.ms
  %i.mu = fmul <4 x float> %i.ml, %i.mo
  %i.mv = fadd <4 x float> %i.mf, %i.mu
  %i.mw = add nsw i64 %.0139176, -1               ; 9 uses
  %.sroa.015.0.copyload.1 = load <4 x float>, ptr %9, align 16, !tbaa !63
  %i.mx = getelementptr inbounds [4 x i8], ptr %29, i64 %i.mw
  %i.my = load <4 x float>, ptr %i.mx, align 1, !tbaa !63, !noalias !105
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.mw
  %i.na = load <4 x float>, ptr %i.mz, align 1, !tbaa !63, !noalias !105
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.mw
  %i.nc = load <4 x float>, ptr %i.nb, align 1, !tbaa !63, !noalias !105
  %i.nd = fmul <4 x float> %i.mc, %.sroa.015.0.copyload.1
  %i.ne = fadd <4 x float> %i.nd, splat (float 1.000000e+00) ; 2 uses
  %i.nf = call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.ne, <4 x float> zeroinitializer, <4 x float> %i.ne) ; 4 uses
  %i.ng = fadd <4 x float> %i.mp, %i.nf
  %i.nh = fmul <4 x float> %i.my, %i.nf
  %i.ni = fadd <4 x float> %i.mr, %i.nh
  %i.nj = fmul <4 x float> %i.na, %i.nf
  %i.nk = fadd <4 x float> %i.mt, %i.nj
  %i.nl = fmul <4 x float> %i.nc, %i.nf
  %i.nm = fadd <4 x float> %i.mv, %i.nl
  %.sroa.015.0.copyload.2 = load <4 x float>, ptr %10, align 16, !tbaa !63
  %i.nn = load <4 x float>, ptr %i.hi, align 1, !tbaa !63, !noalias !105
  %i.no = load <4 x float>, ptr %i.jq, align 1, !tbaa !63, !noalias !105
  %i.np = load <4 x float>, ptr %i.ly, align 1, !tbaa !63, !noalias !105
  %i.nq = fmul <4 x float> %i.mc, %.sroa.015.0.copyload.2
  %i.nr = fadd <4 x float> %i.nq, splat (float 1.000000e+00) ; 2 uses
  %i.ns = call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.nr, <4 x float> zeroinitializer, <4 x float> %i.nr) ; 4 uses
  %i.nt = fadd <4 x float> %i.ng, %i.ns
  %i.nu = fmul <4 x float> %i.nn, %i.ns
  %i.nv = fadd <4 x float> %i.ni, %i.nu
  %i.nw = fmul <4 x float> %i.no, %i.ns
  %i.nx = fadd <4 x float> %i.nk, %i.nw
  %i.ny = fmul <4 x float> %i.np, %i.ns
  %i.nz = fadd <4 x float> %i.nm, %i.ny
  %i.oa = or disjoint i64 %.0139176, 1            ; 9 uses
  %.sroa.015.0.copyload.3 = load <4 x float>, ptr %11, align 16, !tbaa !63
  %i.ob = getelementptr inbounds [4 x i8], ptr %29, i64 %i.oa
  %i.oc = load <4 x float>, ptr %i.ob, align 1, !tbaa !63, !noalias !105
  %i.od = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.oa
  %i.oe = load <4 x float>, ptr %i.od, align 1, !tbaa !63, !noalias !105
  %i.of = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.oa
  %i.og = load <4 x float>, ptr %i.of, align 1, !tbaa !63, !noalias !105
  %i.oh = fmul <4 x float> %i.mc, %.sroa.015.0.copyload.3
  %i.oi = fadd <4 x float> %i.oh, splat (float 1.000000e+00) ; 2 uses
  %i.oj = call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.oi, <4 x float> zeroinitializer, <4 x float> %i.oi) ; 4 uses
  %i.ok = fadd <4 x float> %i.nt, %i.oj
  %i.ol = fmul <4 x float> %i.oc, %i.oj
  %i.om = fadd <4 x float> %i.nv, %i.ol
  %i.on = fmul <4 x float> %i.oe, %i.oj
  %i.oo = fadd <4 x float> %i.nx, %i.on
  %i.op = fmul <4 x float> %i.og, %i.oj
  %i.oq = fadd <4 x float> %i.nz, %i.op
  %i.or = add nsw i64 %.0139176, -2               ; 3 uses
  %.sroa.015.0.copyload.4 = load <4 x float>, ptr %12, align 16, !tbaa !63
  %i.os = getelementptr inbounds [4 x i8], ptr %31, i64 %i.or
  %i.ot = load <4 x float>, ptr %i.os, align 1, !tbaa !63, !noalias !105
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.or
  %i.ov = load <4 x float>, ptr %i.ou, align 1, !tbaa !63, !noalias !105
  %i.ow = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.or
  %i.ox = load <4 x float>, ptr %i.ow, align 1, !tbaa !63, !noalias !105
  %i.oy = fmul <4 x float> %i.mc, %.sroa.015.0.copyload.4
  %i.oz = fadd <4 x float> %i.oy, splat (float 1.000000e+00) ; 2 uses
  %i.pa = call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.oz, <4 x float> zeroinitializer, <4 x float> %i.oz) ; 4 uses
  %i.pb = fadd <4 x float> %i.ok, %i.pa
  %i.pc = fmul <4 x float> %i.ot, %i.pa
  %i.pd = fadd <4 x float> %i.om, %i.pc
  %i.pe = fmul <4 x float> %i.ov, %i.pa
  %i.pf = fadd <4 x float> %i.oo, %i.pe
  %i.pg = fmul <4 x float> %i.ox, %i.pa
  %i.ph = fadd <4 x float> %i.oq, %i.pg
  %.sroa.015.0.copyload.5 = load <4 x float>, ptr %13, align 16, !tbaa !63
  %i.pi = getelementptr inbounds [4 x i8], ptr %31, i64 %i.mw
  %i.pj = load <4 x float>, ptr %i.pi, align 1, !tbaa !63, !noalias !105
  %i.pk = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.mw
  %i.pl = load <4 x float>, ptr %i.pk, align 1, !tbaa !63, !noalias !105
  %i.pm = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.mw
  %i.pn = load <4 x float>, ptr %i.pm, align 1, !tbaa !63, !noalias !105
  %i.po = fmul <4 x float> %i.mc, %.sroa.015.0.copyload.5
  %i.pp = fadd <4 x float> %i.po, splat (float 1.000000e+00) ; 2 uses
  %i.pq = call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.pp, <4 x float> zeroinitializer, <4 x float> %i.pp) ; 4 uses
  %i.pr = fadd <4 x float> %i.pb, %i.pq
  %i.ps = fmul <4 x float> %i.pj, %i.pq
  %i.pt = fadd <4 x float> %i.pd, %i.ps
  %i.pu = fmul <4 x float> %i.pl, %i.pq
  %i.pv = fadd <4 x float> %i.pf, %i.pu
  %i.pw = fmul <4 x float> %i.pn, %i.pq
  %i.px = fadd <4 x float> %i.ph, %i.pw
  %.sroa.015.0.copyload.6 = load <4 x float>, ptr %14, align 16, !tbaa !63
  %i.py = getelementptr inbounds [4 x i8], ptr %31, i64 %i.oa
  %i.pz = load <4 x float>, ptr %i.py, align 1, !tbaa !63, !noalias !105
  %i.qa = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.oa
  %i.qb = load <4 x float>, ptr %i.qa, align 1, !tbaa !63, !noalias !105
  %i.qc = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.oa
  %i.qd = load <4 x float>, ptr %i.qc, align 1, !tbaa !63, !noalias !105
  %i.qe = fmul <4 x float> %i.mc, %.sroa.015.0.copyload.6
  %i.qf = fadd <4 x float> %i.qe, splat (float 1.000000e+00) ; 2 uses
  %i.qg = call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.qf, <4 x float> zeroinitializer, <4 x float> %i.qf) ; 4 uses
  %i.qh = fadd <4 x float> %i.pr, %i.qg
  %i.qi = fmul <4 x float> %i.pz, %i.qg
  %i.qj = fadd <4 x float> %i.pt, %i.qi
  %i.qk = fmul <4 x float> %i.qb, %i.qg
  %i.ql = fadd <4 x float> %i.pv, %i.qk
  %i.qm = fmul <4 x float> %i.qd, %i.qg
  %i.qn = fadd <4 x float> %i.px, %i.qm
  %i.qo = or disjoint i64 %.0139176, 2            ; 3 uses
  %.sroa.015.0.copyload.7 = load <4 x float>, ptr %15, align 16, !tbaa !63
  %i.qp = getelementptr inbounds [4 x i8], ptr %31, i64 %i.qo
  %i.qq = load <4 x float>, ptr %i.qp, align 1, !tbaa !63, !noalias !105
  %i.qr = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.qo
  %i.qs = load <4 x float>, ptr %i.qr, align 1, !tbaa !63, !noalias !105
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.qo
  %i.qu = load <4 x float>, ptr %i.qt, align 1, !tbaa !63, !noalias !105
  %i.qv = fmul <4 x float> %i.mc, %.sroa.015.0.copyload.7
  %i.qw = fadd <4 x float> %i.qv, splat (float 1.000000e+00) ; 2 uses
  %i.qx = call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.qw, <4 x float> zeroinitializer, <4 x float> %i.qw) ; 4 uses
  %i.qy = fadd <4 x float> %i.qh, %i.qx
  %i.qz = fmul <4 x float> %i.qq, %i.qx
  %i.ra = fadd <4 x float> %i.qj, %i.qz
  %i.rb = fmul <4 x float> %i.qs, %i.qx
  %i.rc = fadd <4 x float> %i.ql, %i.rb
  %i.rd = fmul <4 x float> %i.qu, %i.qx
  %i.re = fadd <4 x float> %i.qn, %i.rd
  %.sroa.015.0.copyload.8 = load <4 x float>, ptr %16, align 16, !tbaa !63
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.mw
  %i.rg = load <4 x float>, ptr %i.rf, align 1, !tbaa !63, !noalias !105
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.mw
  %i.ri = load <4 x float>, ptr %i.rh, align 1, !tbaa !63, !noalias !105
  %i.rj = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.mw
  %i.rk = load <4 x float>, ptr %i.rj, align 1, !tbaa !63, !noalias !105
  %i.rl = fmul <4 x float> %i.mc, %.sroa.015.0.copyload.8
  %i.rm = fadd <4 x float> %i.rl, splat (float 1.000000e+00) ; 2 uses
  %i.rn = call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.rm, <4 x float> zeroinitializer, <4 x float> %i.rm) ; 4 uses
  %i.ro = fadd <4 x float> %i.qy, %i.rn
  %i.rp = fmul <4 x float> %i.rg, %i.rn
  %i.rq = fadd <4 x float> %i.ra, %i.rp
  %i.rr = fmul <4 x float> %i.ri, %i.rn
  %i.rs = fadd <4 x float> %i.rc, %i.rr
  %i.rt = fmul <4 x float> %i.rk, %i.rn
  %i.ru = fadd <4 x float> %i.re, %i.rt
  %.sroa.015.0.copyload.9 = load <4 x float>, ptr %17, align 16, !tbaa !63
  %i.rv = load <4 x float>, ptr %i.hj, align 1, !tbaa !63, !noalias !105
  %i.rw = load <4 x float>, ptr %i.jr, align 1, !tbaa !63, !noalias !105
  %i.rx = load <4 x float>, ptr %i.lz, align 1, !tbaa !63, !noalias !105
  %i.ry = fmul <4 x float> %i.mc, %.sroa.015.0.copyload.9
  %i.rz = fadd <4 x float> %i.ry, splat (float 1.000000e+00) ; 2 uses
  %i.sa = call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.rz, <4 x float> zeroinitializer, <4 x float> %i.rz) ; 4 uses
  %i.sb = fadd <4 x float> %i.ro, %i.sa
  %i.sc = fmul <4 x float> %i.rv, %i.sa
  %i.sd = fadd <4 x float> %i.rq, %i.sc
  %i.se = fmul <4 x float> %i.rw, %i.sa
  %i.sf = fadd <4 x float> %i.rs, %i.se
  %i.sg = fmul <4 x float> %i.rx, %i.sa
  %i.sh = fadd <4 x float> %i.ru, %i.sg
  %.sroa.015.0.copyload.10 = load <4 x float>, ptr %18, align 16, !tbaa !63
  %i.si = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.oa
  %i.sj = load <4 x float>, ptr %i.si, align 1, !tbaa !63, !noalias !105
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.oa
  %i.sl = load <4 x float>, ptr %i.sk, align 1, !tbaa !63, !noalias !105
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.oa
  %i.sn = load <4 x float>, ptr %i.sm, align 1, !tbaa !63, !noalias !105
  %i.so = fmul <4 x float> %i.mc, %.sroa.015.0.copyload.10
  %i.sp = fadd <4 x float> %i.so, splat (float 1.000000e+00) ; 2 uses
  %i.sq = call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.sp, <4 x float> zeroinitializer, <4 x float> %i.sp) ; 4 uses
  %i.sr = fadd <4 x float> %i.sb, %i.sq
  %i.ss = fmul <4 x float> %i.sj, %i.sq
  %i.st = fadd <4 x float> %i.sd, %i.ss
  %i.su = fmul <4 x float> %i.sl, %i.sq
  %i.sv = fadd <4 x float> %i.sf, %i.su
  %i.sw = fmul <4 x float> %i.sn, %i.sq
  %i.sx = fadd <4 x float> %i.sh, %i.sw
  %.sroa.015.0.copyload.11 = load <4 x float>, ptr %19, align 16, !tbaa !63
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %.0139176
  %i.sz = load <4 x float>, ptr %i.sy, align 1, !tbaa !63, !noalias !105
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %.0139176
  %i.tb = load <4 x float>, ptr %i.ta, align 1, !tbaa !63, !noalias !105
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %.0139176
  %i.td = load <4 x float>, ptr %i.tc, align 1, !tbaa !63, !noalias !105
  %i.te = fmul <4 x float> %i.mc, %.sroa.015.0.copyload.11
  %i.tf = fadd <4 x float> %i.te, splat (float 1.000000e+00) ; 2 uses
  %i.tg = call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.tf, <4 x float> zeroinitializer, <4 x float> %i.tf) ; 4 uses
  %i.th = fadd <4 x float> %i.sr, %i.tg
  %i.ti = fmul <4 x float> %i.sz, %i.tg
  %i.tj = fadd <4 x float> %i.st, %i.ti
  %i.tk = fmul <4 x float> %i.tb, %i.tg
  %i.tl = fadd <4 x float> %i.sv, %i.tk
  %i.tm = fmul <4 x float> %i.td, %i.tg
  %i.tn = fadd <4 x float> %i.sx, %i.tm
  %i.to = fdiv <4 x float> splat (float 1.000000e+00), %i.th ; 3 uses
  %i.tp = fmul <4 x float> %i.tj, %i.to
  %i.tq = load ptr, ptr %2, align 8, !tbaa !53
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !60
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !62
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 128
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %.0139176
  store <4 x float> %i.tp, ptr %i.tu, align 1, !tbaa !63
  %i.tv = fmul <4 x float> %i.to, %i.tl
  %i.tw = load ptr, ptr %2, align 8, !tbaa !53
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 24
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !60
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !62
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 128
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %.0139176
  store <4 x float> %i.tv, ptr %i.ub, align 1, !tbaa !63
  %i.uc = fmul <4 x float> %i.to, %i.tn
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader160.preheader, %bb.b
  %.sink = phi <4 x float> [ %i.ey, %.preheader160.preheader ], [ %i.uc, %bb.b ]
  %i.ud = load ptr, ptr %2, align 8, !tbaa !53
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 48
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !60
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !62
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 128
  %i.ui = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %.0139176
  store <4 x float> %.sink, ptr %i.ui, align 1, !tbaa !63
  %i.uj = add i64 %.0139176, 4                    ; 2 uses
  %i.uk = icmp slt i64 %i.uj, %i.dx
  br i1 %i.uk, label %bb.a, label %._crit_edge, !llvm.loop !100
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK3jxl6N_SSE49EPF0Stage14GetChannelModeEm(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %1, 3
  %i.b = select i1 %i.a, i32 2, i32 0
  ret i32 %i.b
}

declare i32 @_ZNK3jxl19RenderPipelineStage13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

declare i32 @_ZN3jxl19RenderPipelineStage13SetInputSizesERKNSt3__16vectorINS1_4pairImmEENS1_9allocatorIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare i32 @_ZN3jxl19RenderPipelineStage17PrepareForThreadsEm(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZNK3jxl19RenderPipelineStage23SwitchToImageDimensionsEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

declare void @_ZNK3jxl19RenderPipelineStage18GetImageDimensionsEPmS1_PNS_11FrameOriginE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZNK3jxl19RenderPipelineStage17ProcessPaddingRowERKNSt3__16vectorINS2_IPfNS1_9allocatorIS3_EEEENS4_IS6_EEEEmmm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK3jxl6N_SSE49EPF0Stage7GetNameEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nounwind
declare void @_ZN3jxl19RenderPipelineStageD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse41.blendvps(<4 x float>, <4 x float>, <4 x float>) #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl6N_SSE49EPF1StageD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN3jxl19RenderPipelineStageD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl6N_SSE49EPF1StageD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN3jxl19RenderPipelineStageD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(192) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK3jxl6N_SSE49EPF1Stage10ProcessRowERKNSt3__16vectorINS3_IPfNS2_9allocatorIS4_EEEENS5_IS7_EEEESB_mmmmm(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) unnamed_addr #8 comdat align 2 {
.preheader369:
  %i.a = alloca [8 x float], align 16             ; 7 uses
  %i.b = alloca [8 x float], align 16             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = lshr i64 %6, 3
  %i.f = add nuw nsw i64 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !47
  %i.k = mul i64 %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.l, i64 64) ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.n = load float, ptr %i.m, align 4, !tbaa !127
  %i.o = fmul float %i.n, 1.650000e+00            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store float %i.o, ptr %i.a, align 16, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <4 x float> splat (float 1.650000e+00), ptr %i.p, align 4, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store <2 x float> splat (float 1.650000e+00), ptr %i.q, align 4, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store float %i.o, ptr %i.r, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.s = insertelement <4 x float> poison, float %i.o, i64 0
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x float> %i.t, ptr %i.b, align 16, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <4 x float> %i.t, ptr %i.u, align 16, !tbaa !48
  %i.v = load ptr, ptr %1, align 8, !tbaa !53     ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK3jxl6N_SSE49EPF2Stage10ProcessRowERKNSt3__16vectorINS3_IPfNS2_9allocatorIS4_EEEENS5_IS7_EEEESB_mmmmm:.preheader180
  %i.gd = fsub <4 x float> %i.fv, %i.df
  %i.ge = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.gd)
  %i.gf = fmul <4 x float> %i.ea, %i.ge
  %i.gg = fadd <4 x float> %i.gf, %i.gc
  %i.gh = fmul <4 x float> %i.da, %i.gg
  %i.gi = fadd <4 x float> %i.gh, splat (float 1.000000e+00) ; 2 uses
  %i.gj = tail call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.gi, <4 x float> zeroinitializer, <4 x float> %i.gi) ; 4 uses
  %i.gk = fadd <4 x float> %i.fi, %i.gj
  %i.gl = fmul <4 x float> %i.fr, %i.gj
  %i.gm = fadd <4 x float> %i.fk, %i.gl
  %i.gn = fmul <4 x float> %i.ft, %i.gj
  %i.go = fadd <4 x float> %i.fm, %i.gn
  %i.gp = fmul <4 x float> %i.fv, %i.gj
  %i.gq = fadd <4 x float> %i.fo, %i.gp
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %.0118184
  %i.gs = load <4 x float>, ptr %i.gr, align 16, !tbaa !63, !noalias !158 ; 2 uses
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %.0118184
  %i.gu = load <4 x float>, ptr %i.gt, align 16, !tbaa !63, !noalias !158 ; 2 uses
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %.0118184
  %i.gw = load <4 x float>, ptr %i.gv, align 16, !tbaa !63, !noalias !158 ; 2 uses
  %i.gx = fsub <4 x float> %i.gs, %i.dc
  %i.gy = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.gx)
  %i.gz = fmul <4 x float> %i.dp, %i.gy
  %i.ha = fsub <4 x float> %i.gu, %i.dd
  %i.hb = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ha)
  %i.hc = fmul <4 x float> %i.du, %i.hb
  %i.hd = fadd <4 x float> %i.gz, %i.hc
  %i.he = fsub <4 x float> %i.gw, %i.df
  %i.hf = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.he)
  %i.hg = fmul <4 x float> %i.ea, %i.hf
  %i.hh = fadd <4 x float> %i.hd, %i.hg
  %i.hi = fmul <4 x float> %i.da, %i.hh
  %i.hj = fadd <4 x float> %i.hi, splat (float 1.000000e+00) ; 2 uses
  %i.hk = tail call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.hj, <4 x float> zeroinitializer, <4 x float> %i.hj) ; 4 uses
  %i.hl = fadd <4 x float> %i.gk, %i.hk
  %i.hm = fmul <4 x float> %i.gs, %i.hk
  %i.hn = fadd <4 x float> %i.gm, %i.hm
  %i.ho = fmul <4 x float> %i.gu, %i.hk
  %i.hp = fadd <4 x float> %i.go, %i.ho
  %i.hq = fmul <4 x float> %i.gw, %i.hk
  %i.hr = fadd <4 x float> %i.gq, %i.hq
  %i.hs = fdiv <4 x float> splat (float 1.000000e+00), %i.hl ; 3 uses
  %i.ht = fmul <4 x float> %i.hn, %i.hs
  %i.hu = load ptr, ptr %2, align 8, !tbaa !53
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !60
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !62
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 128
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %.0118184
  store <4 x float> %i.ht, ptr %i.hy, align 16, !tbaa !63
  %i.hz = fmul <4 x float> %i.hp, %i.hs
  %i.ia = load ptr, ptr %2, align 8, !tbaa !53
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !60
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !62
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 128
  %i.if = getelementptr inbounds [4 x i8], ptr %i.ie, i64 %.0118184
  store <4 x float> %i.hz, ptr %i.if, align 16, !tbaa !63
  %i.ig = fmul <4 x float> %i.hr, %i.hs
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.b
  %.sink = phi <4 x float> [ %i.cu, %.preheader.preheader ], [ %i.ig, %bb.b ]
  %i.ih = load ptr, ptr %2, align 8, !tbaa !53
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !60
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !62
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 128
  %i.im = getelementptr inbounds [4 x i8], ptr %i.il, i64 %.0118184
  store <4 x float> %.sink, ptr %i.im, align 16, !tbaa !63
  %i.in = add i64 %.0118184, 4                    ; 2 uses
  %i.io = icmp slt i64 %i.in, %i.bt
  br i1 %i.io, label %bb.a, label %._crit_edge, !llvm.loop !152
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK3jxl6N_SSE49EPF2Stage14GetChannelModeEm(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %1, 3
  %i.b = select i1 %i.a, i32 2, i32 0
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK3jxl6N_SSE49EPF2Stage7GetNameEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @.str.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl6N_AVX29EPF0StageD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN3jxl19RenderPipelineStageD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl6N_AVX29EPF0StageD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN3jxl19RenderPipelineStageD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(192) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK3jxl6N_AVX29EPF0Stage10ProcessRowERKNSt3__16vectorINS3_IPfNS2_9allocatorIS4_EEEENS5_IS7_EEEESB_mmmmm(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) unnamed_addr #13 comdat align 2 {
.preheader158:
  %8 = alloca %"class.hwy::N_AVX2::Vec256", align 32 ; 5 uses
  %9 = alloca %"class.hwy::N_AVX2::Vec256", align 32 ; 5 uses
  %10 = alloca %"class.hwy::N_AVX2::Vec256", align 32 ; 5 uses
  %11 = alloca %"class.hwy::N_AVX2::Vec256", align 32 ; 5 uses
  %12 = alloca %"class.hwy::N_AVX2::Vec256", align 32 ; 5 uses
  %13 = alloca %"class.hwy::N_AVX2::Vec256", align 32 ; 5 uses
  %14 = alloca %"class.hwy::N_AVX2::Vec256", align 32 ; 5 uses
  %15 = alloca %"class.hwy::N_AVX2::Vec256", align 32 ; 5 uses
  %16 = alloca %"class.hwy::N_AVX2::Vec256", align 32 ; 5 uses
  %17 = alloca %"class.hwy::N_AVX2::Vec256", align 32 ; 5 uses
  %18 = alloca %"class.hwy::N_AVX2::Vec256", align 32 ; 5 uses
  %19 = alloca %"class.hwy::N_AVX2::Vec256", align 32 ; 5 uses
  %i.a = alloca [12 x ptr], align 16              ; 17 uses
  %i.b = alloca [8 x float], align 32             ; 8 uses
  %i.c = alloca [8 x float], align 32             ; 4 uses
  %i.d = alloca [3 x [7 x ptr]], align 16         ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %8, ptr %i.a, align 16, !tbaa !167
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %9, ptr %i.e, align 8, !tbaa !167
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %10, ptr %i.f, align 16, !tbaa !167
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %11, ptr %i.g, align 8, !tbaa !167
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %12, ptr %i.h, align 16, !tbaa !167
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %13, ptr %i.i, align 8, !tbaa !167
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %14, ptr %i.j, align 16, !tbaa !167
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %15, ptr %i.k, align 8, !tbaa !167
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %16, ptr %i.l, align 16, !tbaa !167
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %17, ptr %i.m, align 8, !tbaa !167
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %18, ptr %i.n, align 16, !tbaa !167
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %19, ptr %i.o, align 8, !tbaa !167
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31   ; 2 uses
  %i.r = lshr i64 %6, 3
  %i.s = add nuw nsw i64 %i.r, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !47
  %i.x = mul i64 %i.w, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.y, i64 64) ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.aa = load float, ptr %i.z, align 4, !tbaa !168
  %i.ab = fpext float %i.aa to double
  %i.ac = fmul double %i.ab, 1.650000e+00
  %i.ad = fptrunc double %i.ac to float           ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.af = load float, ptr %i.ae, align 4, !tbaa !169
  %i.ag = fmul float %i.af, %i.ad                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store float %i.ag, ptr %i.b, align 32, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ai = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.aj, ptr %i.ah, align 4, !tbaa !48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %i.ad, ptr %i.ak, align 4, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store float %i.ad, ptr %i.al, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store float %i.ag, ptr %i.am, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.an = insertelement <8 x float> poison, float %i.ag, i64 0
  %i.ao = shufflevector <8 x float> %i.an, <8 x float> poison, <8 x i32> zeroinitializer
  store <8 x float> %i.ao, ptr %i.c, align 32, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.ap = load ptr, ptr %1, align 8, !tbaa !53    ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !54 ; 3 uses
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !60
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %i.ar ; 4 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %20 = load ptr, ptr %i.au, align 8, !tbaa !62
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 128
  store ptr %21, ptr %i.d, align 16, !tbaa !62
  %i.av = getelementptr i8, ptr %i.at, i64 -16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !62
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 128 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !62
  %i.az = getelementptr i8, ptr %i.at, i64 -8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !62
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 128 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.bb, ptr %i.bc, align 16, !tbaa !62
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %22 = load <4 x ptr>, ptr %i.at, align 8, !tbaa !62
  %23 = getelementptr inbounds nuw i8, <4 x ptr> %22, i64 128 ; 4 uses
  store <4 x ptr> %23, ptr %i.bd, align 8, !tbaa !62
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %i.ar ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 4 uses
  %i.bi = getelementptr i8, ptr %i.bg, i64 -24
  %24 = load ptr, ptr %i.bi, align 8, !tbaa !62
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 128
  store ptr %25, ptr %i.bh, align 8, !tbaa !62
  %i.bj = getelementptr i8, ptr %i.bg, i64 -16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !62
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 128 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.bl, ptr %i.bm, align 16, !tbaa !62
  %i.bn = getelementptr i8, ptr %i.bg, i64 -8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !62
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 128 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %26 = load <4 x ptr>, ptr %i.bg, align 8, !tbaa !62
  %27 = getelementptr inbounds nuw i8, <4 x ptr> %26, i64 128 ; 4 uses
  store <4 x ptr> %27, ptr %i.br, align 16, !tbaa !62
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !60
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.ar ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 4 uses
  %i.bw = getelementptr i8, ptr %i.bu, i64 -24
  %28 = load ptr, ptr %i.bw, align 8, !tbaa !62
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 128
  store ptr %29, ptr %i.bv, align 16, !tbaa !62
  %i.bx = getelementptr i8, ptr %i.bu, i64 -16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 128 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !62
  %i.cb = getelementptr i8, ptr %i.bu, i64 -8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !62
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 128 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr %i.cd, ptr %i.ce, align 16, !tbaa !62
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %30 = load <4 x ptr>, ptr %i.bu, align 8, !tbaa !62
  %31 = getelementptr inbounds nuw i8, <4 x ptr> %30, i64 128 ; 4 uses
  store <4 x ptr> %31, ptr %i.cf, align 8, !tbaa !62
  %i.cg = add i64 %3, 7
  %i.ch = and i64 %i.cg, -8                       ; 2 uses
  %i.ci = sub i64 0, %i.ch                        ; 2 uses
  %i.cj = add i64 %i.ch, %4                       ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, %i.ci
  br i1 %i.ck, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader158
  %i.cl = and i64 %6, 7                           ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  %i.cn = icmp eq i64 %i.cl, 7
  %i.co = or i1 %i.cm, %i.cn
  %.sroa.sel = select i1 %i.co, ptr %i.c, ptr %i.b
  %i.cp = add i64 %5, 16
  %i.cq = and i64 %5, 7
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cv = extractelement <4 x ptr> %23, i64 0     ; 6 uses
  %i.cw = extractelement <4 x ptr> %23, i64 1     ; 4 uses
  %i.cx = extractelement <4 x ptr> %23, i64 2
  %i.cy = extractelement <4 x ptr> %27, i64 0     ; 6 uses
  %i.cz = extractelement <4 x ptr> %27, i64 1     ; 4 uses
  %i.da = extractelement <4 x ptr> %27, i64 2
  %i.db = extractelement <4 x ptr> %31, i64 0     ; 6 uses
  %i.dc = extractelement <4 x ptr> %31, i64 1     ; 4 uses
  %i.dd = extractelement <4 x ptr> %31, i64 2
  br label %bb.a

._crit_edge:                                      ; preds = %.loopexit, %.preheader158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  ret i32 0

bb.a:                                             ; preds = %.lr.ph, %.loopexit
  %.0139172 = phi i64 [ %i.ci, %.lr.ph ], [ %i.rj, %.loopexit ] ; 44 uses
  %i.de = add i64 %i.cp, %.0139172
  %i.df = lshr i64 %i.de, 3
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !48 ; 2 uses
  %i.di = fcmp olt float %i.dh, f0xC079EF80
  br i1 %i.di, label %.preheader156.preheader, label %.preheader157.preheader

.preheader156.preheader:                          ; preds = %bb.a
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %.0139172
  %i.dk = load <8 x float>, ptr %i.dj, align 32, !tbaa !63
  %i.dl = load ptr, ptr %2, align 8, !tbaa !53
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !60
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !62
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 128
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.do, i64 %.0139172
  store <8 x float> %i.dk, ptr %i.dp, align 1, !tbaa !63
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %.0139172
  %i.dr = load <8 x float>, ptr %i.dq, align 32, !tbaa !63
  %i.ds = load ptr, ptr %2, align 8, !tbaa !53
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !60
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !62
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 128
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %.0139172
  store <8 x float> %i.dr, ptr %i.dx, align 1, !tbaa !63
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.db, i64 %.0139172
  %i.dz = load <8 x float>, ptr %i.dy, align 32, !tbaa !63
  br label %.loopexit

.preheader157.preheader:                          ; preds = %bb.a
  %i.ea = load <8 x float>, ptr %i.cr, align 32, !tbaa !63
  store <8 x float> zeroinitializer, ptr %8, align 32, !tbaa !63
  store <8 x float> zeroinitializer, ptr %9, align 32, !tbaa !63
  store <8 x float> zeroinitializer, ptr %10, align 32, !tbaa !63
  store <8 x float> zeroinitializer, ptr %11, align 32, !tbaa !63
  store <8 x float> zeroinitializer, ptr %12, align 32, !tbaa !63
  store <8 x float> zeroinitializer, ptr %13, align 32, !tbaa !63
  store <8 x float> zeroinitializer, ptr %14, align 32, !tbaa !63
  store <8 x float> zeroinitializer, ptr %15, align 32, !tbaa !63
  store <8 x float> zeroinitializer, ptr %16, align 32, !tbaa !63
  store <8 x float> zeroinitializer, ptr %17, align 32, !tbaa !63
  store <8 x float> zeroinitializer, ptr %18, align 32, !tbaa !63
  store <8 x float> zeroinitializer, ptr %19, align 32, !tbaa !63
  %i.eb = load <1 x float>, ptr %i.cs, align 8
  %i.ec = shufflevector <1 x float> %i.eb, <1 x float> poison, <8 x i32> zeroinitializer
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %.0139172 ; 4 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %.0139172
  %i.ef = getelementptr inbounds i8, ptr %i.ed, i64 -4
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %.0139172
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader157.preheader, %.preheader
  %.0144164 = phi i64 [ 0, %.preheader157.preheader ], [ %i.gf, %.preheader ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK3jxl6N_SSE29EPF0Stage10ProcessRowERKNSt3__16vectorINS3_IPfNS2_9allocatorIS4_EEEENS5_IS7_EEEESB_mmmmmE8sads_off, i64 %.0144164 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !64 ; 3 uses
  %invariant.op = add i32 %i.ej, 3
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !64
  %i.em = sext i32 %i.el to i64                   ; 3 uses
  %i.en = load <8 x float>, ptr %i.ed, align 1, !tbaa !63
  %i.eo = sext i32 %invariant.op to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !62
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %.0139172
  %i.es = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.em ; 3 uses
  %i.et = load <8 x float>, ptr %i.es, align 1, !tbaa !63
  %i.eu = fsub <8 x float> %i.en, %i.et
  %i.ev = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.eu)
  %i.ew = load <8 x float>, ptr %i.ee, align 1, !tbaa !63
  %.reass.1 = add i32 %i.ej, 2
  %i.ex = sext i32 %.reass.1 to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ex
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !62
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %.0139172
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.em
  %i.fc = load <8 x float>, ptr %i.fb, align 1, !tbaa !63
  %i.fd = fsub <8 x float> %i.ew, %i.fc
  %i.fe = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fd)
  %i.ff = fadd <8 x float> %i.ev, %i.fe
  %i.fg = load <8 x float>, ptr %i.ef, align 1, !tbaa !63
  %i.fh = getelementptr inbounds i8, ptr %i.es, i64 -4
  %i.fi = load <8 x float>, ptr %i.fh, align 1, !tbaa !63
  %i.fj = fsub <8 x float> %i.fg, %i.fi
  %i.fk = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fj)
  %i.fl = fadd <8 x float> %i.ff, %i.fk
  %i.fm = load <8 x float>, ptr %i.eg, align 1, !tbaa !63
  %.reass.3 = add i32 %i.ej, 4
  %i.fn = sext i32 %.reass.3 to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.fn
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !62
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %.0139172
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.em
  %i.fs = load <8 x float>, ptr %i.fr, align 1, !tbaa !63
  %i.ft = fsub <8 x float> %i.fm, %i.fs
  %i.fu = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ft)
  %i.fv = fadd <8 x float> %i.fl, %i.fu
  %i.fw = load <8 x float>, ptr %i.eh, align 1, !tbaa !63
  %i.fx = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.fy = load <8 x float>, ptr %i.fx, align 1, !tbaa !63
  %i.fz = fsub <8 x float> %i.fw, %i.fy
  %i.ga = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fz)
  %i.gb = fadd <8 x float> %i.fv, %i.ga
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0144164
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !167 ; 2 uses
  %.sroa.023.0.copyload = load <8 x float>, ptr %i.gd, align 32, !tbaa !63
  %i.ge = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.gb, <8 x float> %i.ec, <8 x float> %.sroa.023.0.copyload)
  store <8 x float> %i.ge, ptr %i.gd, align 32, !tbaa !63
  %i.gf = add nuw nsw i64 %.0144164, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.gf, 12
  br i1 %exitcond.not, label %.preheader157.1, label %.preheader, !llvm.loop !159

.preheader157.1:                                  ; preds = %.preheader
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %.0139172
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %.0139172
  %i.gi = load <1 x float>, ptr %i.ct, align 4
  %i.gj = shufflevector <1 x float> %i.gi, <1 x float> poison, <8 x i32> zeroinitializer
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %.0139172 ; 4 uses
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %.0139172
  %i.gm = getelementptr inbounds i8, ptr %i.gk, i64 -4
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %.0139172
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1, %.preheader157.1
  %.0144164.1 = phi i64 [ 0, %.preheader157.1 ], [ %i.im, %.preheader.1 ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK3jxl6N_SSE29EPF0Stage10ProcessRowERKNSt3__16vectorINS3_IPfNS2_9allocatorIS4_EEEENS5_IS7_EEEESB_mmmmmE8sads_off, i64 %.0144164.1 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !64 ; 3 uses
  %invariant.op.1 = add i32 %i.gq, 3
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !64
  %i.gt = sext i32 %i.gs to i64                   ; 3 uses
  %i.gu = load <8 x float>, ptr %i.gk, align 1, !tbaa !63
  %i.gv = sext i32 %invariant.op.1 to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.gv
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !62
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %.0139172
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.gt ; 3 uses
  %i.ha = load <8 x float>, ptr %i.gz, align 1, !tbaa !63
  %i.hb = fsub <8 x float> %i.gu, %i.ha
  %i.hc = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hb)
  %i.hd = load <8 x float>, ptr %i.gl, align 1, !tbaa !63
  %.reass.1.1 = add i32 %i.gq, 2
  %i.he = sext i32 %.reass.1.1 to i64
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.he
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !62
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %.0139172
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.gt
  %i.hj = load <8 x float>, ptr %i.hi, align 1, !tbaa !63
  %i.hk = fsub <8 x float> %i.hd, %i.hj
  %i.hl = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hk)
  %i.hm = fadd <8 x float> %i.hc, %i.hl
  %i.hn = load <8 x float>, ptr %i.gm, align 1, !tbaa !63
  %i.ho = getelementptr inbounds i8, ptr %i.gz, i64 -4
  %i.hp = load <8 x float>, ptr %i.ho, align 1, !tbaa !63
  %i.hq = fsub <8 x float> %i.hn, %i.hp
  %i.hr = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hq)
  %i.hs = fadd <8 x float> %i.hm, %i.hr
  %i.ht = load <8 x float>, ptr %i.gn, align 1, !tbaa !63
  %.reass.3.1 = add i32 %i.gq, 4
  %i.hu = sext i32 %.reass.3.1 to i64
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !62
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %.0139172
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.gt
  %i.hz = load <8 x float>, ptr %i.hy, align 1, !tbaa !63
  %i.ia = fsub <8 x float> %i.ht, %i.hz
  %i.ib = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ia)
  %i.ic = fadd <8 x float> %i.hs, %i.ib
  %i.id = load <8 x float>, ptr %i.go, align 1, !tbaa !63
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.if = load <8 x float>, ptr %i.ie, align 1, !tbaa !63
  %i.ig = fsub <8 x float> %i.id, %i.if
  %i.ih = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ig)
  %i.ii = fadd <8 x float> %i.ic, %i.ih
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0144164.1
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !167 ; 2 uses
  %.sroa.023.0.copyload.1 = load <8 x float>, ptr %i.ik, align 32, !tbaa !63
  %i.il = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ii, <8 x float> %i.gj, <8 x float> %.sroa.023.0.copyload.1)
  store <8 x float> %i.il, ptr %i.ik, align 32, !tbaa !63
  %i.im = add nuw nsw i64 %.0144164.1, 1          ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.im, 12
  br i1 %exitcond.1.not, label %.preheader157.2, label %.preheader.1, !llvm.loop !159

.preheader157.2:                                  ; preds = %.preheader.1
  %i.in = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %.0139172
  %i.io = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %.0139172
  %i.ip = load <1 x float>, ptr %i.cu, align 8
  %i.iq = shufflevector <1 x float> %i.ip, <1 x float> poison, <8 x i32> zeroinitializer
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.db, i64 %.0139172 ; 4 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %.0139172
  %i.it = getelementptr inbounds i8, ptr %i.ir, i64 -4
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %.0139172
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2, %.preheader157.2
  %.0144164.2 = phi i64 [ 0, %.preheader157.2 ], [ %i.kt, %.preheader.2 ] ; 3 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK3jxl6N_SSE29EPF0Stage10ProcessRowERKNSt3__16vectorINS3_IPfNS2_9allocatorIS4_EEEENS5_IS7_EEEESB_mmmmmE8sads_off, i64 %.0144164.2 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !64 ; 3 uses
  %invariant.op.2 = add i32 %i.ix, 3
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !64
  %i.ja = sext i32 %i.iz to i64                   ; 3 uses
  %i.jb = load <8 x float>, ptr %i.ir, align 1, !tbaa !63
  %i.jc = sext i32 %invariant.op.2 to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.jc
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !62
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.je, i64 %.0139172
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.ja ; 3 uses
  %i.jh = load <8 x float>, ptr %i.jg, align 1, !tbaa !63
  %i.ji = fsub <8 x float> %i.jb, %i.jh
  %i.jj = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ji)
  %i.jk = load <8 x float>, ptr %i.is, align 1, !tbaa !63
  %.reass.1.2 = add i32 %i.ix, 2
  %i.jl = sext i32 %.reass.1.2 to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.jl
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !62
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.jn, i64 %.0139172
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.jo, i64 %i.ja
  %i.jq = load <8 x float>, ptr %i.jp, align 1, !tbaa !63
  %i.jr = fsub <8 x float> %i.jk, %i.jq
  %i.js = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jr)
  %i.jt = fadd <8 x float> %i.jj, %i.js
  %i.ju = load <8 x float>, ptr %i.it, align 1, !tbaa !63
  %i.jv = getelementptr inbounds i8, ptr %i.jg, i64 -4
  %i.jw = load <8 x float>, ptr %i.jv, align 1, !tbaa !63
  %i.jx = fsub <8 x float> %i.ju, %i.jw
  %i.jy = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jx)
  %i.jz = fadd <8 x float> %i.jt, %i.jy
  %i.ka = load <8 x float>, ptr %i.iu, align 1, !tbaa !63
  %.reass.3.2 = add i32 %i.ix, 4
  %i.kb = sext i32 %.reass.3.2 to i64
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.kb
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !62
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %.0139172
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.ja
  %i.kg = load <8 x float>, ptr %i.kf, align 1, !tbaa !63
  %i.kh = fsub <8 x float> %i.ka, %i.kg
  %i.ki = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kh)
  %i.kj = fadd <8 x float> %i.jz, %i.ki
  %i.kk = load <8 x float>, ptr %i.iv, align 1, !tbaa !63
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.km = load <8 x float>, ptr %i.kl, align 1, !tbaa !63
  %i.kn = fsub <8 x float> %i.kk, %i.km
  %i.ko = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kn)
  %i.kp = fadd <8 x float> %i.kj, %i.ko
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0144164.2
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !167 ; 2 uses
  %.sroa.023.0.copyload.2 = load <8 x float>, ptr %i.kr, align 32, !tbaa !63
  %i.ks = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.kp, <8 x float> %i.iq, <8 x float> %.sroa.023.0.copyload.2)
  store <8 x float> %i.ks, ptr %i.kr, align 32, !tbaa !63
  %i.kt = add nuw nsw i64 %.0144164.2, 1          ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.kt, 12
  br i1 %exitcond.2.not, label %bb.b, label %.preheader.2, !llvm.loop !159

bb.b:                                             ; preds = %.preheader.2
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %.0139172
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %.0139172
  %i.kw = insertelement <8 x float> poison, float %i.dh, i64 0
  %i.kx = shufflevector <8 x float> %i.kw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ky = fmul <8 x float> %i.kx, %i.ea           ; 12 uses
  %i.kz = load <8 x float>, ptr %i.ed, align 32, !tbaa !63
  %i.la = load <8 x float>, ptr %i.gk, align 32, !tbaa !63
  %i.lb = load <8 x float>, ptr %i.ir, align 32, !tbaa !63
  %.sroa.015.0.copyload = load <8 x float>, ptr %8, align 32, !tbaa !63
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %.0139172
  %i.ld = load <8 x float>, ptr %i.lc, align 1, !tbaa !63, !noalias !170
  %i.le = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %.0139172
  %i.lf = load <8 x float>, ptr %i.le, align 1, !tbaa !63, !noalias !170
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %.0139172
  %i.lh = load <8 x float>, ptr %i.lg, align 1, !tbaa !63, !noalias !170
  %i.li = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.015.0.copyload, <8 x float> %i.ky, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.lj = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.li, <8 x float> zeroinitializer, <8 x float> %i.li) ; 4 uses
  %i.lk = fadd <8 x float> %i.lj, splat (float 1.000000e+00)
  %i.ll = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.lj, <8 x float> %i.ld, <8 x float> %i.kz)
  %i.lm = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.lj, <8 x float> %i.lf, <8 x float> %i.la)
  %i.ln = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.lj, <8 x float> %i.lh, <8 x float> %i.lb)
  %i.lo = add nsw i64 %.0139172, -1               ; 9 uses
  %.sroa.015.0.copyload.1 = load <8 x float>, ptr %9, align 32, !tbaa !63
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.lo
  %i.lq = load <8 x float>, ptr %i.lp, align 1, !tbaa !63, !noalias !170
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.lo
  %i.ls = load <8 x float>, ptr %i.lr, align 1, !tbaa !63, !noalias !170
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.lo
  %i.lu = load <8 x float>, ptr %i.lt, align 1, !tbaa !63, !noalias !170
  %i.lv = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.015.0.copyload.1, <8 x float> %i.ky, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.lw = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.lv, <8 x float> zeroinitializer, <8 x float> %i.lv) ; 4 uses
  %i.lx = fadd <8 x float> %i.lk, %i.lw
  %i.ly = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.lw, <8 x float> %i.lq, <8 x float> %i.ll)
  %i.lz = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.lw, <8 x float> %i.ls, <8 x float> %i.lm)
  %i.ma = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.lw, <8 x float> %i.lu, <8 x float> %i.ln)
  %.sroa.015.0.copyload.2 = load <8 x float>, ptr %10, align 32, !tbaa !63
  %i.mb = load <8 x float>, ptr %i.gg, align 1, !tbaa !63, !noalias !170
  %i.mc = load <8 x float>, ptr %i.in, align 1, !tbaa !63, !noalias !170
  %i.md = load <8 x float>, ptr %i.ku, align 1, !tbaa !63, !noalias !170
  %i.me = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.015.0.copyload.2, <8 x float> %i.ky, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.mf = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.me, <8 x float> zeroinitializer, <8 x float> %i.me) ; 4 uses
  %i.mg = fadd <8 x float> %i.lx, %i.mf
  %i.mh = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.mf, <8 x float> %i.mb, <8 x float> %i.ly)
  %i.mi = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.mf, <8 x float> %i.mc, <8 x float> %i.lz)
  %i.mj = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.mf, <8 x float> %i.md, <8 x float> %i.ma)
  %i.mk = or disjoint i64 %.0139172, 1            ; 9 uses
  %.sroa.015.0.copyload.3 = load <8 x float>, ptr %11, align 32, !tbaa !63
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.mk
  %i.mm = load <8 x float>, ptr %i.ml, align 1, !tbaa !63, !noalias !170
  %i.mn = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.mk
  %i.mo = load <8 x float>, ptr %i.mn, align 1, !tbaa !63, !noalias !170
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.mk
  %i.mq = load <8 x float>, ptr %i.mp, align 1, !tbaa !63, !noalias !170
  %i.mr = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.015.0.copyload.3, <8 x float> %i.ky, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.ms = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.mr, <8 x float> zeroinitializer, <8 x float> %i.mr) ; 4 uses
  %i.mt = fadd <8 x float> %i.mg, %i.ms
  %i.mu = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ms, <8 x float> %i.mm, <8 x float> %i.mh)
  %i.mv = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ms, <8 x float> %i.mo, <8 x float> %i.mi)
  %i.mw = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ms, <8 x float> %i.mq, <8 x float> %i.mj)
  %i.mx = add nsw i64 %.0139172, -2               ; 3 uses
  %.sroa.015.0.copyload.4 = load <8 x float>, ptr %12, align 32, !tbaa !63
  %i.my = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.mx
  %i.mz = load <8 x float>, ptr %i.my, align 1, !tbaa !63, !noalias !170
  %i.na = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.mx
  %i.nb = load <8 x float>, ptr %i.na, align 1, !tbaa !63, !noalias !170
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.mx
  %i.nd = load <8 x float>, ptr %i.nc, align 1, !tbaa !63, !noalias !170
  %i.ne = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.015.0.copyload.4, <8 x float> %i.ky, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.nf = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.ne, <8 x float> zeroinitializer, <8 x float> %i.ne) ; 4 uses
  %i.ng = fadd <8 x float> %i.mt, %i.nf
  %i.nh = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.nf, <8 x float> %i.mz, <8 x float> %i.mu)
  %i.ni = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.nf, <8 x float> %i.nb, <8 x float> %i.mv)
  %i.nj = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.nf, <8 x float> %i.nd, <8 x float> %i.mw)
  %.sroa.015.0.copyload.5 = load <8 x float>, ptr %13, align 32, !tbaa !63
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.lo
  %i.nl = load <8 x float>, ptr %i.nk, align 1, !tbaa !63, !noalias !170
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.lo
  %i.nn = load <8 x float>, ptr %i.nm, align 1, !tbaa !63, !noalias !170
  %i.no = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.lo
  %i.np = load <8 x float>, ptr %i.no, align 1, !tbaa !63, !noalias !170
  %i.nq = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.015.0.copyload.5, <8 x float> %i.ky, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.nr = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.nq, <8 x float> zeroinitializer, <8 x float> %i.nq) ; 4 uses
  %i.ns = fadd <8 x float> %i.ng, %i.nr
  %i.nt = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.nr, <8 x float> %i.nl, <8 x float> %i.nh)
  %i.nu = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.nr, <8 x float> %i.nn, <8 x float> %i.ni)
  %i.nv = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.nr, <8 x float> %i.np, <8 x float> %i.nj)
  %.sroa.015.0.copyload.6 = load <8 x float>, ptr %14, align 32, !tbaa !63
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.mk
  %i.nx = load <8 x float>, ptr %i.nw, align 1, !tbaa !63, !noalias !170
  %i.ny = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.mk
  %i.nz = load <8 x float>, ptr %i.ny, align 1, !tbaa !63, !noalias !170
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.mk
  %i.ob = load <8 x float>, ptr %i.oa, align 1, !tbaa !63, !noalias !170
  %i.oc = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.015.0.copyload.6, <8 x float> %i.ky, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.od = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.oc, <8 x float> zeroinitializer, <8 x float> %i.oc) ; 4 uses
  %i.oe = fadd <8 x float> %i.ns, %i.od
  %i.of = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.od, <8 x float> %i.nx, <8 x float> %i.nt)
  %i.og = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.od, <8 x float> %i.nz, <8 x float> %i.nu)
  %i.oh = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.od, <8 x float> %i.ob, <8 x float> %i.nv)
  %i.oi = or disjoint i64 %.0139172, 2            ; 3 uses
  %.sroa.015.0.copyload.7 = load <8 x float>, ptr %15, align 32, !tbaa !63
  %i.oj = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.oi
  %i.ok = load <8 x float>, ptr %i.oj, align 1, !tbaa !63, !noalias !170
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.oi
  %i.om = load <8 x float>, ptr %i.ol, align 1, !tbaa !63, !noalias !170
  %i.on = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.oi
  %i.oo = load <8 x float>, ptr %i.on, align 1, !tbaa !63, !noalias !170
  %i.op = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.015.0.copyload.7, <8 x float> %i.ky, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.oq = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.op, <8 x float> zeroinitializer, <8 x float> %i.op) ; 4 uses
  %i.or = fadd <8 x float> %i.oe, %i.oq
  %i.os = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.oq, <8 x float> %i.ok, <8 x float> %i.of)
  %i.ot = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.oq, <8 x float> %i.om, <8 x float> %i.og)
  %i.ou = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.oq, <8 x float> %i.oo, <8 x float> %i.oh)
  %.sroa.015.0.copyload.8 = load <8 x float>, ptr %16, align 32, !tbaa !63
  %i.ov = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.lo
  %i.ow = load <8 x float>, ptr %i.ov, align 1, !tbaa !63, !noalias !170
  %i.ox = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.lo
  %i.oy = load <8 x float>, ptr %i.ox, align 1, !tbaa !63, !noalias !170
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.lo
  %i.pa = load <8 x float>, ptr %i.oz, align 1, !tbaa !63, !noalias !170
  %i.pb = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.015.0.copyload.8, <8 x float> %i.ky, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.pc = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.pb, <8 x float> zeroinitializer, <8 x float> %i.pb) ; 4 uses
  %i.pd = fadd <8 x float> %i.or, %i.pc
  %i.pe = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.pc, <8 x float> %i.ow, <8 x float> %i.os)
  %i.pf = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.pc, <8 x float> %i.oy, <8 x float> %i.ot)
  %i.pg = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.pc, <8 x float> %i.pa, <8 x float> %i.ou)
  %.sroa.015.0.copyload.9 = load <8 x float>, ptr %17, align 32, !tbaa !63
  %i.ph = load <8 x float>, ptr %i.gh, align 1, !tbaa !63, !noalias !170
  %i.pi = load <8 x float>, ptr %i.io, align 1, !tbaa !63, !noalias !170
  %i.pj = load <8 x float>, ptr %i.kv, align 1, !tbaa !63, !noalias !170
  %i.pk = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.015.0.copyload.9, <8 x float> %i.ky, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.pl = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.pk, <8 x float> zeroinitializer, <8 x float> %i.pk) ; 4 uses
  %i.pm = fadd <8 x float> %i.pd, %i.pl
  %i.pn = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.pl, <8 x float> %i.ph, <8 x float> %i.pe)
  %i.po = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.pl, <8 x float> %i.pi, <8 x float> %i.pf)
  %i.pp = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.pl, <8 x float> %i.pj, <8 x float> %i.pg)
  %.sroa.015.0.copyload.10 = load <8 x float>, ptr %18, align 32, !tbaa !63
  %i.pq = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.mk
  %i.pr = load <8 x float>, ptr %i.pq, align 1, !tbaa !63, !noalias !170
  %i.ps = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.mk
  %i.pt = load <8 x float>, ptr %i.ps, align 1, !tbaa !63, !noalias !170
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.mk
  %i.pv = load <8 x float>, ptr %i.pu, align 1, !tbaa !63, !noalias !170
  %i.pw = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.015.0.copyload.10, <8 x float> %i.ky, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.px = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.pw, <8 x float> zeroinitializer, <8 x float> %i.pw) ; 4 uses
  %i.py = fadd <8 x float> %i.pm, %i.px
  %i.pz = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.px, <8 x float> %i.pr, <8 x float> %i.pn)
  %i.qa = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.px, <8 x float> %i.pt, <8 x float> %i.po)
  %i.qb = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.px, <8 x float> %i.pv, <8 x float> %i.pp)
  %.sroa.015.0.copyload.11 = load <8 x float>, ptr %19, align 32, !tbaa !63
  %i.qc = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %.0139172
  %i.qd = load <8 x float>, ptr %i.qc, align 1, !tbaa !63, !noalias !170
  %i.qe = getelementptr inbounds [4 x i8], ptr %i.da, i64 %.0139172
  %i.qf = load <8 x float>, ptr %i.qe, align 1, !tbaa !63, !noalias !170
  %i.qg = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %.0139172
  %i.qh = load <8 x float>, ptr %i.qg, align 1, !tbaa !63, !noalias !170
  %i.qi = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %.sroa.015.0.copyload.11, <8 x float> %i.ky, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.qj = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.qi, <8 x float> zeroinitializer, <8 x float> %i.qi) ; 4 uses
  %i.qk = fadd <8 x float> %i.py, %i.qj
  %i.ql = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.qj, <8 x float> %i.qd, <8 x float> %i.pz)
  %i.qm = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.qj, <8 x float> %i.qf, <8 x float> %i.qa)
  %i.qn = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.qj, <8 x float> %i.qh, <8 x float> %i.qb)
  %i.qo = fdiv <8 x float> splat (float 1.000000e+00), %i.qk ; 3 uses
  %i.qp = fmul <8 x float> %i.ql, %i.qo
  %i.qq = load ptr, ptr %2, align 8, !tbaa !53
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !60
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !62
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 128
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.qt, i64 %.0139172
  store <8 x float> %i.qp, ptr %i.qu, align 1, !tbaa !63
  %i.qv = fmul <8 x float> %i.qo, %i.qm
  %i.qw = load ptr, ptr %2, align 8, !tbaa !53
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !60
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !62
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 128
  %i.rb = getelementptr inbounds [4 x i8], ptr %i.ra, i64 %.0139172
  store <8 x float> %i.qv, ptr %i.rb, align 1, !tbaa !63
  %i.rc = fmul <8 x float> %i.qo, %i.qn
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader156.preheader, %bb.b
  %.sink = phi <8 x float> [ %i.dz, %.preheader156.preheader ], [ %i.rc, %bb.b ]
  %i.rd = load ptr, ptr %2, align 8, !tbaa !53
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 48
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !60
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !62
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 128
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.rh, i64 %.0139172
  store <8 x float> %.sink, ptr %i.ri, align 1, !tbaa !63
  %i.rj = add i64 %.0139172, 8                    ; 2 uses
  %i.rk = icmp slt i64 %i.rj, %i.cj
  br i1 %i.rk, label %bb.a, label %._crit_edge, !llvm.loop !165
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK3jxl6N_AVX29EPF0Stage14GetChannelModeEm(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %1, 3
  %i.b = select i1 %i.a, i32 2, i32 0
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK3jxl6N_AVX29EPF0Stage7GetNameEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float>, <8 x float>, <8 x float>) #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl6N_AVX29EPF1StageD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN3jxl19RenderPipelineStageD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl6N_AVX29EPF1StageD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN3jxl19RenderPipelineStageD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(192) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK3jxl6N_AVX29EPF1Stage10ProcessRowERKNSt3__16vectorINS3_IPfNS2_9allocatorIS4_EEEENS5_IS7_EEEESB_mmmmm(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) unnamed_addr #13 comdat align 2 {
.preheader353:
  %i.a = alloca [8 x float], align 32             ; 7 uses
  %i.b = alloca [8 x float], align 32             ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %i.e = lshr i64 %6, 3
  %i.f = add nuw nsw i64 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !47
  %i.k = mul i64 %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.l, i64 64) ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.n = load float, ptr %i.m, align 4, !tbaa !192
  %i.o = fmul float %i.n, 1.650000e+00            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store float %i.o, ptr %i.a, align 32, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <4 x float> splat (float 1.650000e+00), ptr %i.p, align 4, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store <2 x float> splat (float 1.650000e+00), ptr %i.q, align 4, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store float %i.o, ptr %i.r, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.s = insertelement <8 x float> poison, float %i.o, i64 0
  %i.t = shufflevector <8 x float> %i.s, <8 x float> poison, <8 x i32> zeroinitializer
  store <8 x float> %i.t, ptr %i.b, align 32, !tbaa !48
  %i.u = load ptr, ptr %1, align 8, !tbaa !53     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !54   ; 3 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !60
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %i.w ; 5 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ac = getelementptr i8, ptr %i.y, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !62
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 128 ; 4 uses
  %i.ah = getelementptr i8, ptr %i.y, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  %i.ak = getelementptr i8, ptr %i.y, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !62
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !60
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %i.w ; 5 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !62
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  %i.at = getelementptr i8, ptr %i.ap, i64 -8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 128 ; 4 uses
  %i.ay = getelementptr i8, ptr %i.ap, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !62
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  %i.bb = getelementptr i8, ptr %i.ap, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !62
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 128
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %i.w ; 5 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !62
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 128
  %i.bk = getelementptr i8, ptr %i.bg, i64 -8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !62
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  %i.bn = load ptr, ptr %i.bg, align 8, !tbaa !62
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 128 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bg, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 128
  %i.bs = getelementptr i8, ptr %i.bg, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 128
  %i.bv = add i64 %3, 7
  %i.bw = and i64 %i.bv, -8                       ; 2 uses
  %i.bx = sub i64 0, %i.bw                        ; 2 uses
  %i.by = add i64 %i.bw, %4                       ; 2 uses
  %i.bz = icmp sgt i64 %i.by, %i.bx
  br i1 %i.bz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader353
  %i.ca = and i64 %6, 7                           ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  %i.cc = icmp eq i64 %i.ca, 7
  %i.cd = or i1 %i.cb, %i.cc
  %.sroa.sel = select i1 %i.cd, ptr %i.b, ptr %i.a
  %i.ce = add i64 %5, 16
  %i.cf = and i64 %5, 7
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.a

._crit_edge:                                      ; preds = %.loopexit, %.preheader353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 0

bb.a:                                             ; preds = %.lr.ph, %.loopexit
  %.0302362 = phi i64 [ %i.bx, %.lr.ph ], [ %i.oz, %.loopexit ] ; 27 uses
  %i.ck = add i64 %i.ce, %.0302362
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cl
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !48 ; 2 uses
  %i.co = fcmp olt float %i.cn, f0xC079EF80
  br i1 %i.co, label %.preheader.preheader, label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.0302362
  %i.cq = load <8 x float>, ptr %i.cp, align 32, !tbaa !63
  %i.cr = load ptr, ptr %2, align 8, !tbaa !53
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !60
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !62
end_hunk_1
