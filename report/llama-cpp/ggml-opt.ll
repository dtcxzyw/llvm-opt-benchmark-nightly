Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-opt?download=true
inline.NumInlined: 620
inline.NumDeleted: 324
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt6vectorIlSaIlEE17_M_default_appendEm:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !23
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !37
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #28 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !23
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !23
  br label %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #29
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36: ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36, %bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #30 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @ggml_opt_dataset_free(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  tail call void @ggml_backend_buffer_free(ptr noundef %i.b)
  %i.c = load ptr, ptr %0, align 8, !tbaa !27
  tail call void @ggml_free(ptr noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN16ggml_opt_datasetD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #29
  br label %_ZN16ggml_opt_datasetD2Ev.exit

_ZN16ggml_opt_datasetD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #29
  ret void
}

declare void @ggml_backend_buffer_free(ptr noundef) local_unnamed_addr #4

declare void @ggml_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ggml_opt_dataset_ndata(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ggml_opt_dataset_data(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ggml_opt_dataset_labels(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @ggml_opt_dataset_shuffle(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  %.not = icmp sgt i64 %2, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 151, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp slt i64 %2, 0
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_(ptr %i.e, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(5000) %i.h)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %i.k = srem i64 %2, %i.j
  %i.l = sdiv exact i64 %2, %i.j
  %i.m = icmp eq i64 %i.k, 0
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 158, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_(ptr %i.o, ptr %i.p, ptr noundef nonnull align 8 dereferenceable(5000) %i.q)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(5000) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %4 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %5 = alloca %"class.std::uniform_int_distribution", align 8 ; 5 uses
  %6 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8 ; 5 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = udiv i64 4294967295, %i.e
  %.not = icmp ult i64 %i.f, %i.e
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = and i64 %i.d, 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store i64 0, ptr %4, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.j, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.n = load i64, ptr %i.g, align 8, !tbaa !23
  %i.o = load i64, ptr %i.m, align 8, !tbaa !23
  store i64 %i.o, ptr %i.g, align 8, !tbaa !23
  store i64 %i.n, ptr %i.m, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.018.0 = phi ptr [ %i.k, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %.not3739 = icmp eq ptr %.sroa.018.0, %1
  br i1 %.not3739, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.018.140 = phi ptr [ %.sroa.018.0, %.lr.ph ], [ %i.ae, %bb.f ] ; 5 uses
  %i.q = ptrtoint ptr %.sroa.018.140 to i64
  %i.r = sub i64 %i.q, %i.c
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %i.t = add nsw i64 %i.s, 1
  %i.u = add nsw i64 %i.s, 2                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.v = mul i64 %i.u, %i.t
  %i.w = add i64 %i.v, -1
  store i64 0, ptr %3, align 8, !tbaa !41
  store i64 %i.w, ptr %i.p, align 8, !tbaa !42
  %i.x = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.y = udiv i64 %i.x, %i.u
  %i.z = urem i64 %i.x, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.018.140, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.ac = load i64, ptr %.sroa.018.140, align 8, !tbaa !23
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !23
  store i64 %i.ad, ptr %.sroa.018.140, align 8, !tbaa !23
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.018.140, i64 16 ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !23
  store i64 %i.ah, ptr %i.aa, align 8, !tbaa !23
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !23
  %.not37 = icmp eq ptr %i.ae, %1
  br i1 %.not37, label %.loopexit, label %bb.f, !llvm.loop !151

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store i64 0, ptr %5, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 -1, ptr %i.ai, align 8, !tbaa !42
  %.sroa.0.041 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not3842 = icmp eq ptr %.sroa.0.041, %1
  br i1 %.not3842, label %._crit_edge, label %.lr.ph44

.lr.ph44:                                         ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph44, %bb.h
  %.sroa.0.043 = phi ptr [ %.sroa.0.041, %.lr.ph44 ], [ %.sroa.0.0, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.ak = ptrtoint ptr %.sroa.0.043 to i64
  %i.al = sub i64 %i.ak, %i.c
  %i.am = ashr exact i64 %i.al, 3
  store i64 0, ptr %6, align 8, !tbaa !41
  store i64 %i.am, ptr %i.aj, align 8, !tbaa !42
  %i.an = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %.sroa.0.043, align 8, !tbaa !23
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !23
  store i64 %i.aq, ptr %.sroa.0.043, align 8, !tbaa !23
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.043, i64 8 ; 2 uses
  %.not38 = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not38, label %._crit_edge, label %bb.h, !llvm.loop !152

.loopexit:                                        ; preds = %bb.f, %bb.e, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !42
  %i.c = load i64, ptr %2, align 8, !tbaa !41
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = icmp ult i64 %i.d, 4294967295
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i64 %i.d to i32                ; 3 uses
  %i.g = add nuw i32 %i.f, 1                      ; 2 uses
  %i.h = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.i = zext i32 %i.g to i64                     ; 2 uses
  %i.j = mul i64 %i.h, %i.i                       ; 3 uses
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %.not21 = icmp ult i32 %i.f, %i.k
  br i1 %.not21, label %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = xor i32 %i.f, -1
  %i.m = urem i32 %i.l, %i.g                      ; 2 uses
  %i.n = icmp ugt i32 %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.o = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.p = mul i64 %i.o, %i.i                       ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp ugt i32 %i.m, %i.q
  br i1 %i.r, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit, !llvm.loop !153

_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c
  %.1.i = phi i64 [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %i.p, %.lr.ph.i ]
  %i.s = lshr i64 %.1.i, 32
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 4294967295
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.t = lshr i64 %i.d, 32
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i64 0, ptr %3, align 8, !tbaa !41
  store i64 %i.t, ptr %i.u, align 8, !tbaa !42
  %i.v = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.w = shl i64 %i.v, 32                         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.x = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.y = add i64 %i.x, %i.w                       ; 3 uses
  %i.z = icmp ugt i64 %i.y, %i.d
  %i.aa = icmp ult i64 %i.y, %i.w
  %i.ab = or i1 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %.loopexit, !llvm.loop !154

bb.f:                                             ; preds = %bb.d
  %i.ac = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f, %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
  %.0 = phi i64 [ %i.s, %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit ], [ %i.ac, %bb.f ], [ %i.y, %bb.e ]
  %i.ad = load i64, ptr %2, align 8, !tbaa !41
  %i.ae = add i64 %i.ad, %.0
  ret i64 %i.ae
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4992 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = icmp ugt i64 %i.b, 623
  br i1 %i.c, label %vector.ph, label %bb.b

vector.ph:                                        ; preds = %bb.a
  %.pre.i = load i64, ptr %0, align 8, !tbaa !23
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !23 ; 5 uses
  %i.g = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.h = and <2 x i64> %i.g, splat (i64 -2147483648)
  %i.i = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.j = or disjoint <2 x i64> %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 3176
  %wide.load9 = load <2 x i64>, ptr %i.k, align 8, !tbaa !23
  %i.l = lshr exact <2 x i64> %i.j, splat (i64 1)
  %i.m = xor <2 x i64> %i.l, %wide.load9
  %i.n = and <2 x i64> %wide.load, splat (i64 1)
  %i.o = icmp eq <2 x i64> %i.n, zeroinitializer
  %i.p = select <2 x i1> %i.o, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.q = xor <2 x i64> %i.m, %i.p
  store <2 x i64> %i.q, ptr %i.d, align 8, !tbaa !23
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.r = icmp eq i64 %index.next, 226
  br i1 %i.r, label %vector.ph11, label %vector.body, !llvm.loop !155

vector.ph11:                                      ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.t = and i64 %vector.recur.extract, -2147483648
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.v = load i64, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %i.w = and i64 %i.v, 2147483646
  %i.x = or disjoint i64 %i.w, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4984
  %i.z = load i64, ptr %i.y, align 8, !tbaa !23
  %i.aa = lshr exact i64 %i.x, 1
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = and i64 %i.v, 1
  %.not20.i = icmp eq i64 %i.ac, 0
  %i.ad = select i1 %.not20.i, i64 0, i64 2567483615
  %i.ae = xor i64 %i.ab, %i.ad
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !23
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %.pre24.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !23
  %vector.recur.init14 = insertelement <2 x i64> poison, i64 %.pre24.i, i64 1
  br label %vector.body12

vector.body12:                                    ; preds = %vector.body12, %vector.ph11
  %index13 = phi i64 [ 0, %vector.ph11 ], [ %index.next18, %vector.body12 ] ; 3 uses
  %vector.recur15 = phi <2 x i64> [ %vector.recur.init14, %vector.ph11 ], [ %wide.load16, %vector.body12 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index13 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1816
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1824
  %wide.load16 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !23 ; 4 uses
  %i.aj = shufflevector <2 x i64> %vector.recur15, <2 x i64> %wide.load16, <2 x i32> <i32 1, i32 2>
  %i.ak = and <2 x i64> %i.aj, splat (i64 -2147483648)
  %i.al = and <2 x i64> %wide.load16, splat (i64 2147483646)
  %i.am = or disjoint <2 x i64> %i.al, %i.ak
  %wide.load17 = load <2 x i64>, ptr %i.af, align 8, !tbaa !23
  %i.an = lshr exact <2 x i64> %i.am, splat (i64 1)
  %i.ao = xor <2 x i64> %i.an, %wide.load17
  %i.ap = and <2 x i64> %wide.load16, splat (i64 1)
  %i.aq = icmp eq <2 x i64> %i.ap, zeroinitializer
  %i.ar = select <2 x i1> %i.aq, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.as = xor <2 x i64> %i.ao, %i.ar
  store <2 x i64> %i.as, ptr %i.ag, align 8, !tbaa !23
  %index.next18 = add nuw i64 %index13, 2         ; 2 uses
  %i.at = icmp eq i64 %index.next18, 396
  br i1 %i.at, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit, label %vector.body12, !llvm.loop !156

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit: ; preds = %vector.body12
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4984 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !23
  %i.aw = and i64 %i.av, -2147483648
  %i.ax = load i64, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.ay = and i64 %i.ax, 2147483646
  %i.az = or disjoint i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !23
  %i.bc = lshr exact i64 %i.az, 1
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = and i64 %i.ax, 1
  %.not.i = icmp eq i64 %i.be, 0
  %i.bf = select i1 %.not.i, i64 0, i64 2567483615
  %i.bg = xor i64 %i.bd, %i.bf
  store i64 %i.bg, ptr %i.au, align 8, !tbaa !23
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit, %bb.a
  %i.bh = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.bi = add nuw nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !44
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bh
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !23 ; 2 uses
  %i.bl = lshr i64 %i.bk, 11
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = xor i64 %i.bm, %i.bk                    ; 2 uses
  %i.bo = shl i64 %i.bn, 7
  %i.bp = and i64 %i.bo, 2636928640
  %i.bq = xor i64 %i.bp, %i.bn                    ; 2 uses
  %i.br = shl i64 %i.bq, 15
  %i.bs = and i64 %i.br, 4022730752
  %i.bt = xor i64 %i.bs, %i.bq                    ; 2 uses
  %i.bu = lshr i64 %i.bt, 18
  %i.bv = xor i64 %i.bu, %i.bt
  ret i64 %i.bv
}

; Function Attrs: mustprogress uwtable
define void @ggml_opt_dataset_get_batch(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %1)
  br i1 %i.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 164, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not50 = icmp eq ptr %2, null                  ; 5 uses
  br i1 %.not50, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.b = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %2)
  br i1 %i.b, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 165, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #27
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = xor i1 %.not50, %i.e
  br i1 %i.f, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 166, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11) #27
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.g = load i32, ptr %1, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = load i32, ptr %i.i, align 8, !tbaa !48
  %i.k = icmp eq i32 %i.g, %i.j
  br i1 %i.k, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 167, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #27
  unreachable

bb.k:                                             ; preds = %bb.i
  br i1 %.not50, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = load i32, ptr %2, align 8, !tbaa !48
  %i.m = load i32, ptr %i.d, align 8, !tbaa !48
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 168, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13) #27
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.o = tail call i64 @ggml_nbytes(ptr noundef nonnull %1) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %i.r = urem i64 %i.o, %i.q
  %i.s = udiv exact i64 %i.o, %i.q                ; 6 uses
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 171, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  br i1 %.not50, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.u = tail call i64 @ggml_nbytes(ptr noundef nonnull %2)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !31
  %i.x = mul i64 %i.w, %i.s
  %i.y = icmp eq i64 %i.u, %i.x
  br i1 %i.y, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 176, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15) #27
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.z = add nsw i64 %3, 1
  %i.aa = mul nsw i64 %i.s, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !37
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !33
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %.not51 = icmp sgt i64 %i.aa, %i.ai
  br i1 %.not51, label %bb.t, label %.preheader

.preheader:                                       ; preds = %bb.s
  %i.aj = icmp sgt i64 %i.s, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ak = mul nsw i64 %i.s, %3                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  br i1 %.not50, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.052.us = phi i64 [ %i.ax, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !33
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.ak
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %.052.us
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !23
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 248
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !49
  %i.at = load i64, ptr %i.p, align 8, !tbaa !29  ; 3 uses
  %i.au = mul i64 %i.at, %i.ap
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au
  %i.aw = mul i64 %i.at, %.052.us
  tail call void @ggml_backend_tensor_set(ptr noundef nonnull %1, ptr noundef %i.av, i64 noundef %i.aw, i64 noundef %i.at)
  %i.ax = add nuw nsw i64 %.052.us, 1             ; 2 uses
  %i.ay = icmp slt i64 %i.ax, %i.s
  br i1 %i.ay, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !157

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 179, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16) #27
  unreachable

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %.preheader
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.052 = phi i64 [ %i.br, %.lr.ph.split ], [ 0, %.lr.ph ] ; 4 uses
  %i.az = load ptr, ptr %i.ab, align 8, !tbaa !33
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.ak
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %.052
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !23 ; 2 uses
  %i.bd = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 248
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !49
  %i.bg = load i64, ptr %i.p, align 8, !tbaa !29  ; 3 uses
  %i.bh = mul i64 %i.bg, %i.bc
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh
  %i.bj = mul i64 %i.bg, %.052
  tail call void @ggml_backend_tensor_set(ptr noundef nonnull %1, ptr noundef %i.bi, i64 noundef %i.bj, i64 noundef %i.bg)
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 248
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !49
  %i.bn = load i64, ptr %i.al, align 8, !tbaa !31 ; 3 uses
  %i.bo = mul i64 %i.bn, %i.bc
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bo
  %i.bq = mul i64 %i.bn, %.052
  tail call void @ggml_backend_tensor_set(ptr noundef nonnull %2, ptr noundef %i.bp, i64 noundef %i.bq, i64 noundef %i.bn)
  %i.br = add nuw nsw i64 %.052, 1                ; 2 uses
  %i.bs = icmp slt i64 %i.br, %i.s
  br i1 %i.bs, label %.lr.ph.split, label %._crit_edge, !llvm.loop !157
}

declare zeroext i1 @ggml_is_contiguous(ptr noundef) local_unnamed_addr #4

declare void @ggml_backend_tensor_set(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @ggml_opt_dataset_get_batch_host(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %3, null                     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = icmp ne ptr %i.c, null
  %i.e = xor i1 %i.a, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 197, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !29   ; 3 uses
  %i.h = urem i64 %2, %i.g
  %i.i = udiv exact i64 %2, %i.g                  ; 7 uses
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 198, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nsw i64 %4, 1
  %i.l = mul nsw i64 %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %.not = icmp sgt i64 %i.l, %i.t
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.u = icmp sgt i64 %i.i, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.v = mul nsw i64 %i.i, %4                     ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  br i1 %i.a, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter = and i64 %i.i, 1
  %i.y = icmp eq i64 %2, %i.g
  br i1 %i.y, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter = and i64 %i.i, 9223372036854775806
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %.037.us = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %i.ay, %.lr.ph.split.us ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter.next.1, %.lr.ph.split.us ]
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.v
  %i.ab = getelementptr [8 x i8], ptr %i.aa, i64 %.037.us
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 248
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !49
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !29  ; 3 uses
  %i.ah = mul i64 %i.ag, %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  %i.aj = mul i64 %i.ag, %.037.us
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.ai, i64 %i.ag, i1 false)
  %i.al = or disjoint i64 %.037.us, 1             ; 2 uses
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.v
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %i.al
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !23
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 248
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !49
  %i.at = load i64, ptr %i.f, align 8, !tbaa !29  ; 3 uses
  %i.au = mul i64 %i.at, %i.ap
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au
  %i.aw = mul i64 %i.at, %i.al
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.av, i64 %i.at, i1 false)
  %i.ay = add nuw nsw i64 %.037.us, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !158

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 202, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16) #27
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %.037.us.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod43 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.v
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %.037.us.epil.init
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !23
  %i.bd = load ptr, ptr %i.w, align 8, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 248
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !49
  %i.bg = load i64, ptr %i.f, align 8, !tbaa !29  ; 3 uses
  %i.bh = mul i64 %i.bg, %i.bc
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh
  %i.bj = mul i64 %i.bg, %.037.us.epil.init
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %i.bj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr align 1 %i.bi, i64 %i.bg, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.037 = phi i64 [ %i.cf, %.lr.ph.split ], [ 0, %.lr.ph ] ; 4 uses
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %i.v
  %i.bn = getelementptr [8 x i8], ptr %i.bm, i64 %.037
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !23 ; 2 uses
  %i.bp = load ptr, ptr %i.w, align 8, !tbaa !28
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 248
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !49
  %i.bs = load i64, ptr %i.f, align 8, !tbaa !29  ; 3 uses
  %i.bt = mul i64 %i.bs, %i.bo
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bt
  %i.bv = mul i64 %i.bs, %.037
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %i.bv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.bu, i64 %i.bs, i1 false)
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 248
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !49
  %i.ca = load i64, ptr %i.x, align 8, !tbaa !31  ; 3 uses
  %i.cb = mul i64 %i.ca, %i.bo
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cb
  %i.cd = mul i64 %i.ca, %.037
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 %i.cd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr align 1 %i.cc, i64 %i.ca, i1 false)
  %i.cf = add nuw nsw i64 %.037, 1                ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %i.i
  br i1 %i.cg, label %.lr.ph.split, label %._crit_edge, !llvm.loop !158
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ggml_opt_get_default_optimizer_params(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ggml_opt_optimizer_params) align 4 captures(none) initializes((0, 28)) %0, ptr nofree readnone captures(none) %1) #9 {
bb.a:
  store <4 x float> <float 1.000000e-03, float f0x3F666666, float 9.990000e-01, float f0x322BCC77>, ptr %0, align 4, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> <float 0.000000e+00, float 1.000000e-03>, ptr %i.a, align 4, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ggml_opt_get_constant_optimizer_params(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ggml_opt_optimizer_params) align 4 captures(none) initializes((0, 28)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !159
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ggml_opt_default_params(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ggml_opt_params) align 8 captures(none) initializes((0, 44), (48, 68)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store i32 %2, ptr %i.b, align 8, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 30, ptr %i.c, align 4, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @ggml_opt_get_default_optimizer_params, ptr %i.e, align 8, !tbaa !161
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.f, align 8, !tbaa !162
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.g, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @ggml_opt_init(ptr nofree noundef readonly byval(%struct.ggml_opt_params) align 8 captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(5296) ptr @_Znwm(i64 noundef 5296) #28 ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5292) %i.a, i8 0, i64 72, i1 false)
  store i64 5489, ptr %i.b, align 8, !tbaa !23
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ 5489, %bb.a ], [ %i.o, %bb.c ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.p, %bb.c ] ; 4 uses
  %i.c = getelementptr [8 x i8], ptr %i.b, i64 %.011.i.i.i.i
  %i.d = lshr i64 %store_forwarded, 30
  %i.e = xor i64 %i.d, %store_forwarded
  %i.f = mul nuw nsw i64 %i.e, 1812433253
  %i.g = add nuw i64 %i.f, %.011.i.i.i.i          ; 2 uses
  %i.h = and i64 %i.g, 4294967295                 ; 2 uses
  store i64 %i.h, ptr %i.c, align 8, !tbaa !23
  %i.i = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.i, 624
  br i1 %exitcond.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr [8 x i8], ptr %i.b, i64 %i.i
  %i.k = lshr i64 %i.h, 30
  %i.l = xor i64 %i.k, %i.g
  %i.m = mul i64 %i.l, 1812433253
  %i.n = add i64 %i.m, %i.i
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !23
  %i.p = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 5064
  store i64 624, ptr %i.q, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 5088
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 5168
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 5240
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 5104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %i.u, i8 0, i64 58, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, i8 0, i64 72, i1 false)
  store i64 1, ptr %i.t, align 8, !tbaa !73
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 5248
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 5252
  store i32 0, ptr %i.w, align 4, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 5256
  store i8 0, ptr %i.x, align 8, !tbaa !75
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 5264
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 5280
  store i64 0, ptr %i.z, align 8
  %i.aa = load ptr, ptr %0, align 8, !tbaa !61
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !163 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 5072
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag:bb.a
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 4
  br i1 %i.al, label %bb.n, label %bb.o, !prof !212

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !130
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 4
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !134
  store i32 %i.an, ptr %i.h, align 4, !tbaa !134
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = phi ptr [ %.pre, %bb.n ], [ %i.h, %bb.o ], [ %i.h, %bb.p ]
  %i.ap = sub nuw nsw i64 %i.d, %i.n
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !130
  %i.ar = icmp sgt i64 %i.m, 4
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !212

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aq, ptr align 4 %1, i64 %i.m, i1 false)
  %.pre71 = load ptr, ptr %i.g, align 8, !tbaa !130
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.as = load i32, ptr %1, align 4, !tbaa !134
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !134
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = phi ptr [ %.pre71, %bb.q ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8, !tbaa !130
  %i.av = icmp sgt i64 %i.m, 4
  br i1 %i.av, label %bb.t, label %bb.u, !prof !212

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51
  %i.aw = icmp eq i64 %i.m, 4
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load i32, ptr %2, align 4, !tbaa !134
  store i32 %i.ax, ptr %1, align 4, !tbaa !134
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !124   ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 2                 ; 4 uses
  %i.bc = sub nsw i64 2305843009213693951, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #27
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 2305843009213693951)
  %i.bh = select i1 %i.bf, i64 2305843009213693951, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #28
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 4
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !212

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bk, ptr align 4 %i.ay, i64 %i.bm, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 4
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load i32, ptr %i.ay, align 4, !tbaa !134
  store i32 %i.bp, ptr %i.bk, align 4, !tbaa !134
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 4
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !212

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bq, ptr align 4 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 4
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load i32, ptr %2, align 4, !tbaa !134
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !134
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 4
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !212

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr align 4 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 4
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load i32, ptr %1, align 4, !tbaa !134
  store i32 %i.by, ptr %i.bu, align 4, !tbaa !134
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i55 = icmp eq ptr %i.ay, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = sub i64 %i.i, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.ca) #29
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8, !tbaa !124
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !130
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cb, ptr %i.e, align 8, !tbaa !125
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ggml_opt_epoch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef readonly captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !83, !range !85, !noundef !86
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 889, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.76) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5088
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !79   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !101  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !23
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 893, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.77) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !23   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !23   ; 4 uses
  %i.s = srem i64 %i.p, %i.r
  %i.t = sdiv exact i64 %i.p, %i.r                ; 4 uses
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 898, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.78) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.v = icmp slt i64 %4, 0
  %i.w = select i1 %i.v, i64 %i.p, i64 %4         ; 2 uses
  %i.x = srem i64 %i.w, %i.r
  %i.y = sdiv exact i64 %i.w, %i.r                ; 8 uses
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 902, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.79) #27
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call i64 @ggml_time_us()
  %i.ab = icmp sgt i64 %i.y, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %.not61 = icmp eq ptr %5, null
  br i1 %.not61, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.062.us = phi i64 [ %i.ac, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  tail call void @ggml_opt_alloc(ptr noundef nonnull %0, i1 noundef zeroext true)
  tail call void @ggml_opt_dataset_get_batch(ptr noundef nonnull %1, ptr noundef nonnull %i.e, ptr noundef %i.g, i64 noundef %.062.us)
  tail call void @ggml_opt_eval(ptr noundef nonnull %0, ptr noundef %2)
  %i.ac = add nuw nsw i64 %.062.us, 1             ; 2 uses
  %exitcond70.not = icmp eq i64 %i.ac, %i.y
  br i1 %exitcond70.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !213

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.062 = phi i64 [ %i.ad, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  tail call void @ggml_opt_alloc(ptr noundef nonnull %0, i1 noundef zeroext true)
  tail call void @ggml_opt_dataset_get_batch(ptr noundef nonnull %1, ptr noundef nonnull %i.e, ptr noundef %i.g, i64 noundef %.062)
  tail call void @ggml_opt_eval(ptr noundef nonnull %0, ptr noundef %2)
  %i.ad = add nuw nsw i64 %.062, 1                ; 3 uses
  tail call void %5(i1 noundef zeroext true, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %i.ad, i64 noundef %i.y, i64 noundef %i.aa)
  %exitcond.not = icmp eq i64 %i.ad, %i.y
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !213

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.i
  %.0.lcssa = phi i64 [ 0, %bb.i ], [ %i.y, %.lr.ph.split.us ], [ %i.y, %.lr.ph.split ] ; 3 uses
  %i.ae = tail call i64 @ggml_time_us()
  %i.af = icmp slt i64 %.0.lcssa, %i.t
  br i1 %i.af, label %.lr.ph65, label %._crit_edge66

.lr.ph65:                                         ; preds = %._crit_edge
  %.not = icmp eq ptr %6, null
  %i.ag = sub nsw i64 %i.t, %i.y
  br i1 %.not, label %.lr.ph65.split.us, label %.lr.ph65.split.preheader

.lr.ph65.split.preheader:                         ; preds = %.lr.ph65
  %invariant.op = sub i64 1, %i.y
  br label %.lr.ph65.split

.lr.ph65.split.us:                                ; preds = %.lr.ph65, %.lr.ph65.split.us
  %.163.us = phi i64 [ %i.ah, %.lr.ph65.split.us ], [ %.0.lcssa, %.lr.ph65 ] ; 2 uses
  tail call void @ggml_opt_alloc(ptr noundef nonnull %0, i1 noundef zeroext false)
  tail call void @ggml_opt_dataset_get_batch(ptr noundef nonnull %1, ptr noundef nonnull %i.e, ptr noundef %i.g, i64 noundef %.163.us)
  tail call void @ggml_opt_eval(ptr noundef nonnull %0, ptr noundef %3)
  %i.ah = add i64 %.163.us, 1                     ; 2 uses
  %exitcond72.not = icmp eq i64 %i.ah, %i.t
  br i1 %exitcond72.not, label %._crit_edge66, label %.lr.ph65.split.us, !llvm.loop !214

.lr.ph65.split:                                   ; preds = %.lr.ph65.split.preheader, %.lr.ph65.split
  %.163 = phi i64 [ %i.ai, %.lr.ph65.split ], [ %.0.lcssa, %.lr.ph65.split.preheader ] ; 3 uses
  tail call void @ggml_opt_alloc(ptr noundef nonnull %0, i1 noundef zeroext false)
  tail call void @ggml_opt_dataset_get_batch(ptr noundef nonnull %1, ptr noundef nonnull %i.e, ptr noundef %i.g, i64 noundef %.163)
  tail call void @ggml_opt_eval(ptr noundef nonnull %0, ptr noundef %3)
  %.reass.reass = add i64 %.163, %invariant.op
  tail call void %6(i1 noundef zeroext false, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %3, i64 noundef %.reass.reass, i64 noundef %i.ag, i64 noundef %i.ae)
  %i.ai = add i64 %.163, 1                        ; 2 uses
  %exitcond71.not = icmp eq i64 %i.ai, %i.t
  br i1 %exitcond71.not, label %._crit_edge66, label %.lr.ph65.split, !llvm.loop !214

._crit_edge66:                                    ; preds = %.lr.ph65.split, %.lr.ph65.split.us, %._crit_edge
  ret void
}

declare i64 @ggml_time_us() local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define void @ggml_opt_epoch_callback_progress_bar(i1 noundef zeroext %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #22 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !148
  %.str.81..str.82 = select i1 %0, ptr @.str.81, ptr @.str.82
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.80, ptr noundef nonnull %.str.81..str.82) #33 ; 0 uses
  %i.c = shl nsw i64 %4, 3                        ; 8 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.x
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 5088
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %i.h = mul nsw i64 %i.g, %4
  %i.i = mul nsw i64 %i.g, %5
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !129  ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !126  ; 4 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 3 uses
  %i.r = icmp eq ptr %i.l, %i.m
  br i1 %i.r, label %ggml_opt_result_loss.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.t = load i8, ptr %i.s, align 8, !tbaa !123, !range !85, !noundef !86
  %i.u = trunc nuw i8 %i.t to i1                  ; 3 uses
  br i1 %i.u, label %.preheader.split.us.i, label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.w = load i64, ptr %i.v, align 8, !tbaa !122
  %i.x = sitofp i64 %i.w to float
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.split.us.i
  %.sroa.038.042.us.i = phi ptr [ %i.m, %.preheader.split.us.i ], [ %i.ag, %bb.c ] ; 2 uses
  %i.y = phi <2 x double> [ zeroinitializer, %.preheader.split.us.i ], [ %i.af, %bb.c ]
  %i.z = load float, ptr %.sroa.038.042.us.i, align 4, !tbaa !51
  %i.aa = fmul float %i.z, %i.x                   ; 3 uses
  %i.ab = fmul float %i.aa, %i.aa
  %i.ac = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.aa, i64 1
  %i.ae = fpext <2 x float> %i.ad to <2 x double>
  %i.af = fadd <2 x double> %i.y, %i.ae           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.038.042.us.i, i64 4 ; 2 uses
  %.not41.us.i = icmp eq ptr %i.ag, %i.l
  br i1 %.not41.us.i, label %.split.us.i, label %bb.c

.split.us.i:                                      ; preds = %.preheader.split.i, %bb.c
  %i.ah = phi <2 x double> [ %i.af, %bb.c ], [ %i.at, %.preheader.split.i ] ; 2 uses
  %i.ai = sitofp i64 %i.q to double               ; 3 uses
  %i.aj = extractelement <2 x double> %i.ah, i64 1 ; 2 uses
  %i.ak = fdiv double %i.aj, %i.ai                ; 3 uses
  %i.al = select i1 %i.u, double %i.ak, double %i.aj ; 2 uses
  %i.am = icmp slt i64 %i.q, 2
  br i1 %i.am, label %ggml_opt_result_loss.exit, label %bb.d

.preheader.split.i:                               ; preds = %.preheader.i, %.preheader.split.i
  %.sroa.038.042.i = phi ptr [ %i.au, %.preheader.split.i ], [ %i.m, %.preheader.i ] ; 2 uses
  %i.an = phi <2 x double> [ %i.at, %.preheader.split.i ], [ zeroinitializer, %.preheader.i ]
  %i.ao = load float, ptr %.sroa.038.042.i, align 4, !tbaa !51 ; 3 uses
  %i.ap = fmul float %i.ao, %i.ao
  %i.aq = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %i.ao, i64 1
  %i.as = fpext <2 x float> %i.ar to <2 x double>
  %i.at = fadd <2 x double> %i.an, %i.as          ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.038.042.i, i64 4 ; 2 uses
  %.not41.i = icmp eq ptr %i.au, %i.l
  br i1 %.not41.i, label %.split.us.i, label %.preheader.split.i

bb.d:                                             ; preds = %.split.us.i
  %i.av = extractelement <2 x double> %i.ah, i64 0
  %i.aw = fdiv double %i.av, %i.ai
  %i.ax = fneg double %i.ak
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ak, double %i.aw) ; 2 uses
  %i.az = fmul double %i.ay, %i.ai
  %.sink57.i = select i1 %i.u, double %i.ay, double %i.az
  %i.ba = add nsw i64 %i.q, -1
  %i.bb = uitofp nneg i64 %i.ba to double
  %i.bc = fdiv double %.sink57.i, %i.bb
  %i.bd = tail call double @sqrt(double noundef %i.bc) #30
  br label %ggml_opt_result_loss.exit

ggml_opt_result_loss.exit:                        ; preds = %bb.b, %.split.us.i, %bb.d
  %.072 = phi double [ %i.al, %bb.d ], [ %i.al, %.split.us.i ], [ 0.000000e+00, %bb.b ]
  %.sink.i = phi double [ %i.bd, %bb.d ], [ +qnan, %.split.us.i ], [ +qnan, %bb.b ]
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !131 ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, -1
  br i1 %i.bg, label %bb.e, label %ggml_opt_result_accuracy.exit

bb.e:                                             ; preds = %ggml_opt_result_loss.exit
  %i.bh = uitofp nneg i64 %i.bf to double
  %i.bi = load i64, ptr %3, align 8, !tbaa !128   ; 3 uses
  %i.bj = sitofp i64 %i.bi to double
  %i.bk = fdiv double %i.bh, %i.bj                ; 4 uses
  %i.bl = icmp sgt i64 %i.bi, 1
  br i1 %i.bl, label %bb.f, label %ggml_opt_result_accuracy.exit

bb.f:                                             ; preds = %bb.e
  %i.bm = fsub double 1.000000e+00, %i.bk
  %i.bn = fmul double %i.bk, %i.bm
  %i.bo = add nsw i64 %i.bi, -1
  %i.bp = uitofp nneg i64 %i.bo to double
  %i.bq = fdiv double %i.bn, %i.bp
  %i.br = tail call double @sqrt(double noundef %i.bq) #30
  %i.bs = fmul double %i.br, 1.000000e+02
  br label %ggml_opt_result_accuracy.exit

ggml_opt_result_accuracy.exit:                    ; preds = %ggml_opt_result_loss.exit, %bb.e, %bb.f
  %.071 = phi double [ %i.bk, %bb.f ], [ %i.bk, %bb.e ], [ +qnan, %ggml_opt_result_loss.exit ]
  %i.bt = phi double [ %i.bs, %bb.f ], [ +qnan, %bb.e ], [ +qnan, %ggml_opt_result_loss.exit ]
  %i.bu = tail call i64 @ggml_time_us()
  %i.bv = sub nsw i64 %i.bu, %6                   ; 3 uses
  %i.bw = sdiv i64 %i.bv, 1000000
  %i.bx = sdiv i64 %i.bv, 3600000000              ; 2 uses
  %.neg = mul nsw i64 %i.bx, -3600
  %i.by = add nsw i64 %.neg, %i.bw                ; 2 uses
  %i.bz = sdiv i64 %i.by, 60                      ; 2 uses
  %.neg64 = mul nsw i64 %i.bz, -60
  %i.ca = add nsw i64 %.neg64, %i.by
  %i.cb = sub nsw i64 %5, %4
  %i.cc = mul nsw i64 %i.bv, %i.cb
  %i.cd = sdiv i64 %i.cc, %4                      ; 2 uses
  %i.ce = sdiv i64 %i.cd, 1000000
  %i.cf = sdiv i64 %i.cd, 3600000000              ; 2 uses
  %.neg65 = mul nsw i64 %i.cf, -3600
  %i.cg = add nsw i64 %.neg65, %i.ce              ; 2 uses
  %i.ch = sdiv i64 %i.cg, 60                      ; 2 uses
  %.neg66 = mul nsw i64 %i.ch, -60
  %i.ci = add nsw i64 %.neg66, %i.cg
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !148
  %i.ck = fmul double %.071, 1.000000e+02
  %i.cl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cj, ptr noundef nonnull @.str.92, i64 noundef %i.h, i64 noundef %i.i, double noundef %.072, double noundef %.sink.i, double noundef %i.ck, double noundef %i.bt, i64 noundef %i.bx, i64 noundef %i.bz, i64 noundef %i.ca, i64 noundef %i.cf, i64 noundef %i.ch, i64 noundef %i.ci) #33 ; 0 uses
  %i.cm = icmp eq i64 %4, %5
  br i1 %i.cm, label %bb.y, label %bb.z

bb.g:                                             ; preds = %bb.a, %bb.x
  %.077 = phi i64 [ 0, %bb.a ], [ %i.ek, %bb.x ]  ; 2 uses
  %i.cn = shl nuw nsw i64 %.077, 3                ; 8 uses
  %i.co = add nuw nsw i64 %i.cn, 8
  %i.cp = mul nsw i64 %i.co, %5
  %i.cq = ashr exact i64 %i.cp, 3
  %i.cr = icmp slt i64 %i.cq, %i.c
  br i1 %i.cr, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cs = load ptr, ptr @stderr, align 8, !tbaa !148
  %i.ct = tail call i64 @fwrite(ptr nonnull @.str.83, i64 3, i64 1, ptr %i.cs) #34 ; 0 uses
  br label %bb.x

bb.i:                                             ; preds = %bb.g
  %i.cu = or disjoint i64 %i.cn, 7
  %i.cv = mul nsw i64 %i.cu, %5
  %i.cw = sdiv i64 %i.cv, 8
  %i.cx = icmp slt i64 %i.cw, %i.c
  br i1 %i.cx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cy = load ptr, ptr @stderr, align 8, !tbaa !148
  %i.cz = tail call i64 @fwrite(ptr nonnull @.str.84, i64 3, i64 1, ptr %i.cy) #34 ; 0 uses
  br label %bb.x

bb.k:                                             ; preds = %bb.i
  %i.da = or disjoint i64 %i.cn, 6
  %i.db = mul nsw i64 %i.da, %5
  %i.dc = sdiv i64 %i.db, 8
  %i.dd = icmp slt i64 %i.dc, %i.c
  br i1 %i.dd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !148
  %i.df = tail call i64 @fwrite(ptr nonnull @.str.85, i64 3, i64 1, ptr %i.de) #34 ; 0 uses
  br label %bb.x

bb.m:                                             ; preds = %bb.k
  %i.dg = or disjoint i64 %i.cn, 5
  %i.dh = mul nsw i64 %i.dg, %5
  %i.di = sdiv i64 %i.dh, 8
  %i.dj = icmp slt i64 %i.di, %i.c
  br i1 %i.dj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dk = load ptr, ptr @stderr, align 8, !tbaa !148
  %i.dl = tail call i64 @fwrite(ptr nonnull @.str.86, i64 3, i64 1, ptr %i.dk) #34 ; 0 uses
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  %i.dm = or disjoint i64 %i.cn, 4
  %i.dn = mul nsw i64 %i.dm, %5
  %i.do = sdiv i64 %i.dn, 8
  %i.dp = icmp slt i64 %i.do, %i.c
  br i1 %i.dp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dq = load ptr, ptr @stderr, align 8, !tbaa !148
  %i.dr = tail call i64 @fwrite(ptr nonnull @.str.87, i64 3, i64 1, ptr %i.dq) #34 ; 0 uses
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.ds = or disjoint i64 %i.cn, 3
  %i.dt = mul nsw i64 %i.ds, %5
  %i.du = sdiv i64 %i.dt, 8
  %i.dv = icmp slt i64 %i.du, %i.c
  br i1 %i.dv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dw = load ptr, ptr @stderr, align 8, !tbaa !148
  %i.dx = tail call i64 @fwrite(ptr nonnull @.str.88, i64 3, i64 1, ptr %i.dw) #34 ; 0 uses
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.dy = or disjoint i64 %i.cn, 2
  %i.dz = mul nsw i64 %i.dy, %5
  %i.ea = sdiv i64 %i.dz, 8
  %i.eb = icmp slt i64 %i.ea, %i.c
  br i1 %i.eb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr @stderr, align 8, !tbaa !148
  %i.ed = tail call i64 @fwrite(ptr nonnull @.str.89, i64 3, i64 1, ptr %i.ec) #34 ; 0 uses
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.ee = or disjoint i64 %i.cn, 1
  %i.ef = mul nsw i64 %i.ee, %5
  %i.eg = sdiv i64 %i.ef, 8
  %i.eh = icmp slt i64 %i.eg, %i.c
  %i.ei = load ptr, ptr @stderr, align 8, !tbaa !148 ; 2 uses
  br i1 %i.eh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ej = tail call i64 @fwrite(ptr nonnull @.str.90, i64 3, i64 1, ptr %i.ei) #34 ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %fputc67 = tail call i32 @fputc(i32 32, ptr %i.ei) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.h, %bb.l, %bb.p, %bb.t, %bb.w, %bb.v, %bb.r, %bb.n, %bb.j
  %i.ek = add nuw nsw i64 %.077, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ek, 8
  br i1 %exitcond.not, label %bb.b, label %bb.g, !llvm.loop !215

bb.y:                                             ; preds = %ggml_opt_result_accuracy.exit
  %i.el = load ptr, ptr @stderr, align 8, !tbaa !148
  %fputc = tail call i32 @fputc(i32 10, ptr %i.el) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %ggml_opt_result_accuracy.exit
  %i.em = load ptr, ptr @stderr, align 8, !tbaa !148
  %i.en = tail call i32 @fflush(ptr noundef %i.em) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define void @ggml_opt_fit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i64 noundef %8, i64 noundef %9, float noundef %10, i1 noundef zeroext %11) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %12 = alloca %struct.ggml_opt_params, align 8   ; 11 uses
  tail call void @ggml_time_init()
  %i.b = tail call i64 @ggml_time_us()
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = srem i64 %i.f, %9
  %i.j = sdiv exact i64 %i.f, %9
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 1017, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.94) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = srem i64 %9, %i.h
  %i.m = sdiv exact i64 %9, %i.h
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 1018, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.95) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = fcmp ult float %10, 0.000000e+00
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 1023, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.96) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = fcmp olt float %10, 1.000000e+00
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 1024, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.97) #27
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.q = fsub nnan float 1.000000e+00, %10
  %i.r = sitofp i64 %i.j to float
  %i.s = fmul float %i.q, %i.r
  %i.t = fptosi float %i.s to i64
  %i.u = mul i64 %9, %i.t                         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 1, ptr %i.a, align 8, !tbaa !23
  %i.v = trunc i64 %i.m to i32
  store ptr %0, ptr %12, align 8, !tbaa !217
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !99
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !94
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %3, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !94
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 %5, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !218
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 36
  store i32 30, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !219
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i32 %i.v, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !134
  %.sroa.1276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 48
  store ptr %7, ptr %.sroa.1276.0..sroa_idx, align 8, !tbaa !24
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr %i.a, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !24
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i32 %6, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !220
  %i.w = call ptr @ggml_opt_init(ptr noundef nonnull byval(%struct.ggml_opt_params) align 8 %12) ; 5 uses
  %i.x = icmp slt i64 %9, %i.f
  br i1 %i.x, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !21
  %.not.i = icmp slt i64 %i.z, -1
  br i1 %.not.i, label %bb.k, label %ggml_opt_dataset_shuffle.exit

bb.k:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 151, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #27
  unreachable

ggml_opt_dataset_shuffle.exit:                    ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  call void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_(ptr %i.ab, ptr %i.ad, ptr noundef nonnull align 8 dereferenceable(5000) %i.ae)
  br label %bb.l

bb.l:                                             ; preds = %ggml_opt_dataset_shuffle.exit, %bb.i
  %i.af = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28 ; 16 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.af, i8 0, i64 64, i1 false)
  store i64 -1, ptr %i.ag, align 8, !tbaa !122
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  store i8 0, ptr %i.ah, align 8, !tbaa !123
  %i.ai = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28 ; 16 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.ai, i8 0, i64 64, i1 false)
  store i64 -1, ptr %i.aj, align 8, !tbaa !122
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  store i8 0, ptr %i.ak, align 8, !tbaa !123
  %i.al = load i64, ptr %i.a, align 8, !tbaa !23
  %.not77 = icmp sgt i64 %i.al, %8
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.am = icmp slt i64 %9, %i.u
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ao = icmp slt i64 %i.u, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 72 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.v
  br i1 %i.am, label %bb.n, label %ggml_opt_dataset_shuffle.exit65

bb.n:                                             ; preds = %bb.m
  %i.bd = load i64, ptr %i.an, align 8, !tbaa !21
  %.not.i64 = icmp sgt i64 %i.u, %i.bd
  br i1 %.not.i64, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 151, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  br i1 %i.ao, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.aq, align 8, !tbaa !39
  %i.bf = load ptr, ptr %i.as, align 8, !tbaa !39
  call void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_(ptr %i.be, ptr %i.bf, ptr noundef nonnull align 8 dereferenceable(5000) %i.ar)
  br label %ggml_opt_dataset_shuffle.exit65

bb.r:                                             ; preds = %bb.p
  %i.bg = load i64, ptr %i.ap, align 8, !tbaa !22 ; 2 uses
  %i.bh = srem i64 %i.u, %i.bg
  %i.bi = sdiv exact i64 %i.u, %i.bg
  %i.bj = icmp eq i64 %i.bh, 0
  br i1 %i.bj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 158, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #27
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bk = load ptr, ptr %i.aq, align 8, !tbaa !39 ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bi
  call void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_(ptr %i.bk, ptr %i.bl, ptr noundef nonnull align 8 dereferenceable(5000) %i.ar)
  br label %ggml_opt_dataset_shuffle.exit65

ggml_opt_dataset_shuffle.exit65:                  ; preds = %bb.t, %bb.q, %bb.m
  store i64 0, ptr %i.af, align 8, !tbaa !128
  %i.bm = load ptr, ptr %i.at, align 8, !tbaa !126 ; 2 uses
  %i.bn = load ptr, ptr %i.au, align 8, !tbaa !129
  %.not.i.i.i = icmp eq ptr %i.bn, %i.bm
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEE5clearEv.exit.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %ggml_opt_dataset_shuffle.exit65
  store ptr %i.bm, ptr %i.au, align 8, !tbaa !129
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit.i

_ZNSt6vectorIfSaIfEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i, %ggml_opt_dataset_shuffle.exit65
  %i.bo = load ptr, ptr %i.av, align 8, !tbaa !124 ; 2 uses
  %i.bp = load ptr, ptr %i.aw, align 8, !tbaa !130
  %.not.i.i4.i = icmp eq ptr %i.bp, %i.bo
  br i1 %.not.i.i4.i, label %ggml_opt_result_reset.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit.i
  store ptr %i.bo, ptr %i.aw, align 8, !tbaa !130
  br label %ggml_opt_result_reset.exit

ggml_opt_result_reset.exit:                       ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  store i64 0, ptr %i.ax, align 8, !tbaa !131
  store i64 0, ptr %i.ai, align 8, !tbaa !128
  %i.bq = load ptr, ptr %i.ay, align 8, !tbaa !126 ; 2 uses
  %i.br = load ptr, ptr %i.az, align 8, !tbaa !129
  %.not.i.i.i66 = icmp eq ptr %i.br, %i.bq
  br i1 %.not.i.i.i66, label %_ZNSt6vectorIfSaIfEE5clearEv.exit.i68, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i67

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i67:    ; preds = %ggml_opt_result_reset.exit
  store ptr %i.bq, ptr %i.az, align 8, !tbaa !129
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit.i68

_ZNSt6vectorIfSaIfEE5clearEv.exit.i68:            ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i67, %ggml_opt_result_reset.exit
  %i.bs = load ptr, ptr %i.ba, align 8, !tbaa !124 ; 2 uses
  %i.bt = load ptr, ptr %i.bb, align 8, !tbaa !130
  %.not.i.i4.i69 = icmp eq ptr %i.bt, %i.bs
  br i1 %.not.i.i4.i69, label %ggml_opt_result_reset.exit71, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i70

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i70:    ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit.i68
  store ptr %i.bs, ptr %i.bb, align 8, !tbaa !130
  br label %ggml_opt_result_reset.exit71

ggml_opt_result_reset.exit71:                     ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit.i68, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i70
  store i64 0, ptr %i.bc, align 8, !tbaa !131
  br i1 %11, label %.critedge, label %bb.u

bb.u:                                             ; preds = %ggml_opt_result_reset.exit71
  %i.bu = load ptr, ptr @stderr, align 8, !tbaa !148
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !23
  %i.bw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bu, ptr noundef nonnull @.str.98, ptr noundef nonnull @__func__.ggml_opt_fit, i64 noundef %i.bv, i64 noundef %8) #33 ; 0 uses
  call void @ggml_opt_epoch(ptr noundef nonnull %i.w, ptr noundef %4, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ai, i64 noundef %i.u, ptr noundef nonnull @ggml_opt_epoch_callback_progress_bar, ptr noundef nonnull @ggml_opt_epoch_callback_progress_bar)
  %i.bx = load ptr, ptr @stderr, align 8, !tbaa !148
  %fputc = call i32 @fputc(i32 10, ptr %i.bx)     ; 0 uses
  br label %bb.v

.critedge:                                        ; preds = %ggml_opt_result_reset.exit71
  call void @ggml_opt_epoch(ptr noundef nonnull %i.w, ptr noundef %4, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ai, i64 noundef %i.u, ptr noundef null, ptr noundef null)
  br label %bb.v

bb.v:                                             ; preds = %.critedge, %bb.u
  %i.by = load i64, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.bz = add nsw i64 %i.by, 1
  store i64 %i.bz, ptr %i.a, align 8, !tbaa !23
  %.not.not = icmp slt i64 %i.by, %8
  br i1 %.not.not, label %bb.m, label %._crit_edge, !llvm.loop !216

._crit_edge:                                      ; preds = %bb.v, %bb.l
  br i1 %11, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.ca = call i64 @ggml_time_us()
  %i.cb = sub nsw i64 %i.ca, %i.b                 ; 2 uses
  %i.cc = sdiv i64 %i.cb, 1000000
  %i.cd = sdiv i64 %i.cb, 3600000000              ; 2 uses
  %.neg = mul nsw i64 %i.cd, -3600
  %i.ce = add nsw i64 %.neg, %i.cc                ; 2 uses
  %i.cf = sdiv i64 %i.ce, 60                      ; 2 uses
  %.neg63 = mul nsw i64 %i.cf, -60
  %i.cg = add nsw i64 %.neg63, %i.ce
  %i.ch = load ptr, ptr @stderr, align 8, !tbaa !148
  %i.ci = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ch, ptr noundef nonnull @.str.99, ptr noundef nonnull @__func__.ggml_opt_fit, i64 noundef %i.cd, i64 noundef %i.cf, i64 noundef %i.cg) #33 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge
  call void @ggml_opt_free(ptr noundef nonnull %i.w)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !124 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !125
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i:                ; preds = %bb.y, %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !126 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i1.i.i, label %ggml_opt_result_free.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !127
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cw) #29
  br label %ggml_opt_result_free.exit

ggml_opt_result_free.exit:                        ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, %bb.z
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 80) #29
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !124 ; 3 uses
  %.not.i.i.i.i.i72 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i72, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i73, label %bb.aa

bb.aa:                                            ; preds = %ggml_opt_result_free.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !125
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dd) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i73

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i73:              ; preds = %bb.aa, %ggml_opt_result_free.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !126 ; 3 uses
  %.not.i.i.i1.i.i74 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i1.i.i74, label %ggml_opt_result_free.exit75, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i73
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !127
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dk) #29
  br label %ggml_opt_result_free.exit75

ggml_opt_result_free.exit75:                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i73, %bb.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 80) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

declare void @ggml_time_init() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ggml_opt_context_optimizer_type(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5288
  %i.b = load i32, ptr %i.a, align 8, !tbaa !82
  ret i32 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
