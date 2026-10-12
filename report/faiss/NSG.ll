Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/NSG?download=true
inline.NumInlined: 1167
inline.NumDeleted: 509
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
@_ZTIN5faiss3nsg5GraphINS0_4NodeEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5faiss3nsg5GraphINS0_4NodeEEE }, comdat, align 8
@_ZTSN5faiss3nsg5GraphINS0_4NodeEEE = linkonce_odr constant [31 x i8] c"N5faiss3nsg5GraphINS0_4NodeEEE\00", comdat, align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"integer overflow in %s: %zu * %zu\00", align 1
@__PRETTY_FUNCTION__._ZN5faiss15mul_no_overflowEmmPKc = private unnamed_addr constant [60 x i8] c"size_t faiss::mul_no_overflow(size_t, size_t, const char *)\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"/opt-bench/work/faiss/faiss/faiss/impl/FaissAssert.h\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5faiss3nsg5GraphIiEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5faiss3nsg5GraphIiEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5faiss3nsg5GraphIiEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5faiss3nsg5GraphIiEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5faiss3nsg5GraphIiEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5faiss3nsg5GraphIiEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5faiss3nsg5GraphIiEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5faiss3nsg5GraphIiEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5faiss3nsg5GraphIiEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [85 x i8] c"St23_Sp_counted_ptr_inplaceIN5faiss3nsg5GraphIiEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN5faiss3nsg5GraphIiEE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5faiss3nsg5GraphIiEE, ptr @_ZN5faiss3nsg5GraphIiED2Ev, ptr @_ZN5faiss3nsg5GraphIiED0Ev, ptr @_ZNK5faiss3nsg5GraphIiE13get_neighborsEiPi] }, comdat, align 8
@_ZTIN5faiss3nsg5GraphIiEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5faiss3nsg5GraphIiEE }, comdat, align 8
@_ZTSN5faiss3nsg5GraphIiEE = linkonce_odr constant [22 x i8] c"N5faiss3nsg5GraphIiEE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @0 }, align 8
@.str.17 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"id < ntotal && (id >= 0 || id == EMPTY_ID)\00", align 1
@__PRETTY_FUNCTION__._ZNK5faiss3NSG11check_graphEv.omp_outlined = private unnamed_addr constant [37 x i8] c"void faiss::NSG::check_graph() const\00", align 1

@_ZN5faiss3NSGC1Ei = unnamed_addr alias void (ptr, i32), ptr @_ZN5faiss3NSGC2Ei

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5faiss3nsg25storage_distance_computerEPKNS_5IndexE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21
  switch i32 %i.b, label %bb.e [
    i32 23, label %bb.b
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(36) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5faiss24NegativeDistanceComputerE, i64 16), ptr %i.c, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !28
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 16) #24
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(36) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ %i.m, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss24NegativeDistanceComputer9set_queryEPKf(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZN5faiss24NegativeDistanceComputerclEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef float %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1)
  %i.g = fneg float %i.f
  ret float %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss24NegativeDistanceComputer17distances_batch_4EllllRfS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8)
  %i.f = load float, ptr %5, align 4, !tbaa !29
  %i.g = fneg float %i.f
  store float %i.g, ptr %5, align 4, !tbaa !29
  %i.h = load float, ptr %6, align 4, !tbaa !29
  %i.i = fneg float %i.h
  store float %i.i, ptr %6, align 4, !tbaa !29
  %i.j = load float, ptr %7, align 4, !tbaa !29
  %i.k = fneg float %i.j
  store float %i.k, ptr %7, align 4, !tbaa !29
  %i.l = load float, ptr %8, align 4, !tbaa !29
  %i.m = fneg float %i.l
  store float %i.m, ptr %8, align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZN5faiss24NegativeDistanceComputer13symmetric_disEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef float %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1, i64 noundef %2)
  %i.g = fneg float %i.f
  ret float %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss24NegativeDistanceComputerD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5faiss24NegativeDistanceComputerE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss24NegativeDistanceComputerD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5faiss24NegativeDistanceComputerE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5faiss24NegativeDistanceComputerD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #17, !inline_history !130
  br label %_ZN5faiss24NegativeDistanceComputerD2Ev.exit

_ZN5faiss24NegativeDistanceComputerD2Ev.exit:     ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss3NSGC2Ei(ptr noundef nonnull align 8 dereferenceable(5056) initializes((0, 8), (16, 20), (21, 22), (32, 49)) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 16, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.c, align 1, !tbaa !131
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.d, i8 0, i64 17, i1 false)
  invoke void @_ZN5faiss15RandomGeneratorC1El(ptr noundef nonnull align 8 dereferenceable(5000) %i.e, i64 noundef 2307)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %2 = load i32, ptr %i.a, align 4, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.g = shufflevector <2 x i32> %3, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.h = add nsw <2 x i32> %i.g, <i32 32, i32 100>
  store <2 x i32> %i.h, ptr %i.f, align 8, !tbaa !45
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN5faiss3nsg5GraphIiEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.d) #17
  resume { ptr, i32 } %i.i
}

declare void @_ZN5faiss15RandomGeneratorC1El(ptr noundef nonnull align 8 dereferenceable(5000), i64 noundef) unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !inline_history !132
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !45   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !inline_history !132
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss3NSG6searchERNS_16DistanceComputerEiPlPfRNS_12VisitedTableE(ptr noundef nonnull align 8 dereferenceable(5056) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::vector", align 8       ; 10 uses
  %9 = alloca %"class.std::vector.3", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !47, !range !48, !noundef !49
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !54
  store i8 0, ptr %i.d, align 8, !tbaa !46
  %i.f = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17 ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i32 %i.f to i64                ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.i)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %6, align 8, !tbaa !55
  %i.k = load i64, ptr %i.e, align 8, !tbaa !54
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.j, i64 noundef %i.k, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.h)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.n = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss3NSG6searchERNS_16DistanceComputerEiPlPfRNS_12VisitedTableE, ptr noundef nonnull @.str.2, i32 noundef 125)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.aa unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.n) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.o, %bb.h ]
  %i.p = load ptr, ptr %6, align 8, !tbaa !55     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.r = load i64, ptr %i.d, align 8, !tbaa !46
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.z

bb.j:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !56   ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.v, ptr %7, align 8, !tbaa !52
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.w, align 8, !tbaa !54
  store i8 0, ptr %i.v, align 8, !tbaa !46
  %i.x = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #17 ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.z = zext nneg i32 %i.x to i64                ; 2 uses
  %i.aa = add nuw nsw i64 %i.z, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.aa)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ab = load ptr, ptr %7, align 8, !tbaa !55
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !54
  %i.ad = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.z)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m, %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.af = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss3NSG6searchERNS_16DistanceComputerEiPlPfRNS_12VisitedTableE, ptr noundef nonnull @.str.2, i32 noundef 126)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.aa unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.af) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn26 = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %i.ag, %bb.q ]
  %i.ah = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.v
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.r
  %i.aj = load i64, ptr %i.v, align 8, !tbaa !46
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
end_hunk_0
