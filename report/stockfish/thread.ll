Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/thread?download=true
inline.NumInlined: 2122
inline.NumDeleted: 1239
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9Stockfish6Thread14run_custom_jobESt8functionIFvvEE:bb.a
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.d) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6ThreadD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) initializes((0, 8), (168, 169)) %0) unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9Stockfish6ThreadE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 1, ptr %i.a, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.b = ptrtoint ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.e, align 8
  store i64 %i.b, ptr %1, align 8, !tbaa !88
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish6Thread15start_searchingEvE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.d, align 8, !tbaa !91
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish6Thread15start_searchingEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation", ptr %i.c, align 8, !tbaa !92
  call void @_ZN9Stockfish6Thread14run_custom_jobESt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 %1)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !92   ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN9Stockfish6Thread15start_searchingEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #26, !inline_history !6 ; 0 uses
  br label %_ZN9Stockfish6Thread15start_searchingEv.exit

_ZN9Stockfish6Thread15start_searchingEv.exit:     ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load i64, ptr %i.h, align 8, !tbaa !106
  %i.j = call i32 @pthread_join(i64 noundef %i.i, ptr noundef null) #26 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.k) #26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !92   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN9Stockfish6Thread15start_searchingEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i32 noundef 3) #26, !inline_history !5 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN9Stockfish6Thread15start_searchingEv.exit, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !107  ; 2 uses
  %.not.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN9Stockfish6Search6WorkerENS0_16LargePageDeleterIS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @_ZNK9Stockfish16LargePageDeleterINS_6Search6WorkerEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.q)
  br label %_ZNSt10unique_ptrIN9Stockfish6Search6WorkerENS0_16LargePageDeleterIS2_EEED2Ev.exit

_ZNSt10unique_ptrIN9Stockfish6Search6WorkerENS0_16LargePageDeleterIS2_EEED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Thread15start_searchingEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 7 uses
  %i.a = ptrtoint ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.d, align 8
  store i64 %i.a, ptr %1, align 8, !tbaa !88
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish6Thread15start_searchingEvE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.c, align 8, !tbaa !91
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish6Thread15start_searchingEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation", ptr %i.b, align 8, !tbaa !92
  call void @_ZN9Stockfish6Thread14run_custom_jobESt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 %1)
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !92   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #26, !inline_history !5 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6ThreadD0Ev(ptr noundef nonnull align 8 dereferenceable(192) initializes((0, 8), (168, 169)) %0) unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9Stockfish6ThreadE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 1, ptr %i.a, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.b = ptrtoint ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.e, align 8
  store i64 %i.b, ptr %1, align 8, !tbaa !88
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish6Thread15start_searchingEvE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.d, align 8, !tbaa !91
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish6Thread15start_searchingEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation", ptr %i.c, align 8, !tbaa !92
  call void @_ZN9Stockfish6Thread14run_custom_jobESt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 %1), !inline_history !312
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !92   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN9Stockfish6Thread15start_searchingEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #26, !inline_history !310 ; 0 uses
  br label %_ZN9Stockfish6Thread15start_searchingEv.exit.i

_ZN9Stockfish6Thread15start_searchingEv.exit.i:   ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load i64, ptr %i.h, align 8, !tbaa !106
  %i.j = call i32 @pthread_join(i64 noundef %i.i, ptr noundef null) #26, !inline_history !312 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.k) #26, !inline_history !312
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !92   ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN9Stockfish6Thread15start_searchingEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i32 noundef 3) #26, !inline_history !311 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.c, %_ZN9Stockfish6Thread15start_searchingEv.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !107  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i1.i, label %_ZN9Stockfish6ThreadD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  call void @_ZNK9Stockfish16LargePageDeleterINS_6Search6WorkerEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.q), !inline_history !312
  br label %_ZN9Stockfish6ThreadD2Ev.exit

_ZN9Stockfish6ThreadD2Ev.exit:                    ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %bb.d
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #30
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Thread12clear_workerEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 7 uses
  %i.a = ptrtoint ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.d, align 8
  store i64 %i.a, ptr %1, align 8, !tbaa !88
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish6Thread12clear_workerEvE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.c, align 8, !tbaa !91
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish6Thread12clear_workerEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation", ptr %i.b, align 8, !tbaa !92
  call void @_ZN9Stockfish6Thread14run_custom_jobESt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 %1)
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !92   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #26, !inline_history !5 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Thread25ensure_network_replicatedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107
  tail call void @_ZN9Stockfish6Search6Worker25ensure_network_replicatedEv(ptr noundef nonnull align 64 dereferenceable(14279296) %i.b) #26
  ret void
}

declare void @_ZN9Stockfish6Search6Worker25ensure_network_replicatedEv(ptr noundef nonnull align 64 dereferenceable(14279296)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN9Stockfish10ThreadPool12main_managerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 11422176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  ret ptr %i.g
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZNK9Stockfish10ThreadPool14nodes_searchedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %.not9.i = icmp eq ptr %i.b, %i.d
  br i1 %.not9.i, label %_ZNK9Stockfish10ThreadPool10accumulateEMNS_6Search6WorkerESt6atomicImE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.011.i = phi i64 [ %i.j, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.06.010.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.06.010.i, align 8, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 11419800
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = add i64 %i.i, %.011.i                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i, label %_ZNK9Stockfish10ThreadPool10accumulateEMNS_6Search6WorkerESt6atomicImE.exit, label %.lr.ph.i

_ZNK9Stockfish10ThreadPool10accumulateEMNS_6Search6WorkerESt6atomicImE.exit: ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.j, %.lr.ph.i ]
  ret i64 %.0.lcssa.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZNK9Stockfish10ThreadPool7tb_hitsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %.not9.i = icmp eq ptr %i.b, %i.d
  br i1 %.not9.i, label %_ZNK9Stockfish10ThreadPool10accumulateEMNS_6Search6WorkerESt6atomicImE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.011.i = phi i64 [ %i.j, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.06.010.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.06.010.i, align 8, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 11419808
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = add i64 %i.i, %.011.i                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i, label %_ZNK9Stockfish10ThreadPool10accumulateEMNS_6Search6WorkerESt6atomicImE.exit, label %.lr.ph.i

_ZNK9Stockfish10ThreadPool10accumulateEMNS_6Search6WorkerESt6atomicImE.exit: ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.j, %.lr.ph.i ]
  ret i64 %.0.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef byval(%"struct.Stockfish::Search::SharedState") align 8 %2, ptr noundef nonnull align 8 dereferenceable(128) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.std::unique_lock", align 8  ; 6 uses
  %5 = alloca %"class.std::unique_ptr.296", align 8 ; 5 uses
  %6 = alloca %"class.std::thread", align 8       ; 6 uses
  %7 = alloca %"class.std::tuple.227", align 8    ; 4 uses
  %8 = alloca %"class.std::tuple.230", align 8    ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %9 = alloca %"class.std::unique_ptr.296", align 8 ; 5 uses
  %10 = alloca %"class.std::thread", align 8      ; 6 uses
  %11 = alloca %"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, unsigned long>, std::_Select1st<std::pair<const unsigned long, unsigned long>>, std::less<unsigned long>>::_Alloc_node", align 8 ; 4 uses
  %12 = alloca %"class.std::unique_lock", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %16 = alloca %"class.std::map", align 8         ; 12 uses
  %17 = alloca %"class.std::vector.119", align 16 ; 8 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %18 = alloca %class.anon.130, align 8           ; 6 uses
  %19 = alloca %"class.std::map", align 8         ; 11 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %20 = alloca %class.anon.131, align 8           ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !114  ; 2 uses
  %.not = icmp eq ptr %i.j, %i.k
  br i1 %.not, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !88   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 3 uses
  store ptr %i.m, ptr %12, align 8, !tbaa !95
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.o = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #26 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.o) #31
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i:       ; preds = %bb.b
  store i8 1, ptr %i.n, align 8, !tbaa !96
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 169 ; 2 uses
  %.val.val2.i.i = load i8, ptr %i.q, align 1, !tbaa !86, !range !97, !noundef !76
  %i.r = trunc nuw i8 %.val.val2.i.i to i1
  br i1 %i.r, label %.lr.ph.i.i, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i.thread"

.lr.ph.i.i:                                       ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, %.lr.ph.i.i
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(9) %12) #26
  %.val.val.i.i = load i8, ptr %i.q, align 1, !tbaa !86, !range !97, !noundef !76
  %i.s = trunc nuw i8 %.val.val.i.i to i1
  br i1 %i.s, label %.lr.ph.i.i, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i", !llvm.loop !4

"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i": ; preds = %.lr.ph.i.i
  %.pre.i = load i8, ptr %i.n, align 8, !tbaa !96, !range !97
  %i.t = trunc nuw i8 %.pre.i to i1
  %.pre = load ptr, ptr %12, align 8              ; 2 uses
  %.not.i.i.i = icmp ne ptr %.pre, null
  %or.cond.not = select i1 %i.t, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i.thread", label %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit

"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i.thread": ; preds = %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i", %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  %i.u = phi ptr [ %.pre, %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i" ], [ %i.m, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i ]
  %i.v = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #26 ; 0 uses
  br label %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit

_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit: ; preds = %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i", %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !114  ; 3 uses
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !113  ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit, %_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.w, %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit ] ; 2 uses
  %i.y = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !88 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN9Stockfish6ThreadEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN9Stockfish6ThreadEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(192) %i.y) #26, !inline_history !313
  br label %_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN9Stockfish6ThreadEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i12 = icmp eq ptr %i.ac, %i.x
  br i1 %.not.i.i.i.i12, label %_ZSt8_DestroyIPSt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !314

_ZSt8_DestroyIPSt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.w, ptr %i.i, align 8, !tbaa !113
  br label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE5clearEv.exit: ; preds = %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit, %_ZSt8_DestroyIPSt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !117 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !118
  %.not.i.i13 = icmp eq ptr %i.ag, %i.ae
  br i1 %.not.i.i13, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE5clearEv.exit
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !118
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

_ZNSt6vectorImSaImEE5clearEv.exit:                ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, %bb.a
  %i.ah = load ptr, ptr %2, align 8, !tbaa !75, !nonnull !76, !align !77
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.ai, ptr %13, align 8, !tbaa !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ai, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 7, ptr %i.aj, align 8, !tbaa !82
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 23
  store i8 0, ptr %i.ak, align 1, !tbaa !83
  %i.al = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %13) #26
  %i.am = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.al) #26 ; 3 uses
  %i.an = sext i32 %i.am to i64                   ; 6 uses
  %i.ao = load ptr, ptr %13, align 8, !tbaa !84   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ai
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit
  %i.aq = load i64, ptr %i.ai, align 8, !tbaa !83
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %.not11 = icmp eq i32 %i.am, 0
  br i1 %.not11, label %bb.ab, label %._crit_edge.i.i14

._crit_edge.i.i14:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.as = load ptr, ptr %2, align 8, !tbaa !75, !nonnull !76, !align !77
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.at, ptr %15, align 8, !tbaa !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.at, ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 10, ptr %i.au, align 8, !tbaa !82
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 26
  store i8 0, ptr %i.av, align 2, !tbaa !83
  %i.aw = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %15) #26
  call void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(152) %i.aw) #26
  %i.ax = load ptr, ptr %15, align 8, !tbaa !84   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.at
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %._crit_edge.i.i14
  %i.az = load i64, ptr %i.at, align 8, !tbaa !83
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %._crit_edge.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !82
  %cond.i = icmp eq i64 %i.bc, 4
end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_Map_baseIN9Stockfish4MoveESt4pairIKS2_lESaIS5_ENS_10_Select1stESt8equal_toIS2_ENS2_8MoveHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_:bb.a
  store ptr %i.at, ptr %i.ab, align 8, !tbaa !265
  store ptr %i.ab, ptr %i.as, align 8, !tbaa !265
  br label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !264 ; 3 uses
  store ptr %i.av, ptr %i.ab, align 8, !tbaa !265
  store ptr %i.ab, ptr %i.au, align 8, !tbaa !264
  %.not11.i.i = icmp eq ptr %i.av, null
  br i1 %.not11.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !217
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !293
  %i.az = urem i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.az
  store ptr %i.ab, ptr %i.ba, align 8, !tbaa !291
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !291
  br label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.j, %bb.g
  %i.bb = load i64, ptr %i.ah, align 8, !tbaa !549
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.ah, align 8, !tbaa !549
  br label %.loopexit30

.loopexit30:                                      ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.ab, %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.k, %bb.b ], [ %i.x, %bb.c ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  ret ptr %.1
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !218

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !219
  br label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN9Stockfish4MoveElELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !218

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN9Stockfish4MoveElELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #29 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN9Stockfish4MoveElELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN9Stockfish4MoveElELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !264  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !264
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !265 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !293
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !291  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !264
  store ptr %i.o, ptr %.02530, align 8, !tbaa !265
  store ptr %.02530, ptr %i.g, align 8, !tbaa !264
  store ptr %i.g, ptr %i.m, align 8, !tbaa !291
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !265
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !291
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !265
  store ptr %i.r, ptr %.02530, align 8, !tbaa !265
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !291
  store ptr %.02530, ptr %i.s, align 8, !tbaa !265
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !550

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !216    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !217
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #30
  br label %_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN9Stockfish4MoveESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_8MoveHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !217
  store ptr %.0.i, ptr %0, align 8, !tbaa !216
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_thread.cpp() #0 section ".text.startup" {
bb.a:
  tail call void @_ZN9Stockfish20get_process_affinityEv(ptr dead_on_unwind nonnull writable sret(%"class.std::set") align 8 @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3setImSt4lessImESaImEED2Ev, ptr nonnull @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE, ptr nonnull @__dso_handle) #26 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr>, <8 x i1>, <8 x i64>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.umax.v8i64(<8 x i64>, <8 x i64>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umax.v8i64(<8 x i64>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr>, <8 x i1>, <8 x ptr>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v8i32(<8 x i32>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x i64> @llvm.masked.load.v3i64.p0(ptr captures(none), <3 x i1>, <3 x i64>) #25

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nounwind }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { builtin nounwind allocsize(0) }
attributes #30 = { builtin nounwind }
attributes #31 = { noreturn nounwind }

!llvm.module.flags = !{!14, !15, !16, !17, !18}
!llvm.ident = !{!19}
!llvm.errno.tbaa = !{!24}

!0 = distinct !{}
!1 = distinct !{}
!2 = distinct !{}
!3 = distinct !{}
!4 = distinct !{!4, !49}
!5 = distinct !{null}
!6 = distinct !{ptr @_ZN9Stockfish6Thread15start_searchingEv, null}
!7 = distinct !{!7, !49}
!8 = distinct !{!8, !49}
!9 = distinct !{!9, !49}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{!12, !49}
!13 = distinct !{!13, !49}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{i32 1, !"ThinLTO", i32 0}
!18 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!19 = !{!"Ubuntu clang version 23.0.0 (++20260706082120+bf74249b5ecd-1~exp1~20260706082130.1707)"}
!20 = !{!"Simple C++ TBAA"}
!21 = !{!"omnipotent char", !20, i64 0}
!22 = !{!"int", !21, i64 0}
!23 = !{!"__libc_errno", !22, i64 0}
!24 = !{!23, !22, i64 0}
!25 = !{i64 16, !"_ZTSN9Stockfish6ThreadE"}
!26 = !{i64 16, !"_ZTSN9Stockfish6Search14ISearchManagerE"}
!27 = !{i64 32, !"_ZTSMN9Stockfish6Search14ISearchManagerEFvRNS0_6WorkerEE.virtual"}
!28 = !{i64 16, !"_ZTSN9Stockfish6Search17NullSearchManagerE"}
!29 = !{i64 32, !"_ZTSMN9Stockfish6Search17NullSearchManagerEFvRNS0_6WorkerEE.virtual"}
!30 = !{i64 16, !0}
!31 = !{i64 32, !1}
!32 = !{i64 16, !"_ZTSNSt6thread6_StateE"}
!33 = !{i64 32, !"_ZTSMNSt6thread6_StateEFvvE.virtual"}
!34 = !{i64 16, !2}
!35 = !{i64 32, !3}
!36 = !{!"long", !21, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"_ZTSSt14_Rb_tree_color", !21, i64 0}
!39 = !{!"any pointer", !21, i64 0}
!40 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !39, i64 0}
!41 = !{!"_ZTSSt18_Rb_tree_node_base", !38, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!42 = !{!"_ZTSSt15_Rb_tree_header", !41, i64 0, !36, i64 32}
!43 = !{!42, !38, i64 0}
!44 = !{!42, !40, i64 8}
!45 = !{!42, !40, i64 16}
!46 = !{!42, !40, i64 24}
!47 = !{!42, !36, i64 32}
!48 = !{!40, !40, i64 0}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"vtable pointer", !20, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"p1 _ZTSN9Stockfish6Search6WorkerE", !39, i64 0}
!53 = !{!"_ZTSSt10_Head_baseILm0EPN9Stockfish6Search6WorkerELb0EE", !52, i64 0}
!54 = !{!"_ZTSSt11_Tuple_implILm0EJPN9Stockfish6Search6WorkerENS0_16LargePageDeleterIS2_EEEE", !53, i64 0}
!55 = !{!"_ZTSSt5tupleIJPN9Stockfish6Search6WorkerENS0_16LargePageDeleterIS2_EEEE", !54, i64 0}
!56 = !{!"_ZTSSt15__uniq_ptr_implIN9Stockfish6Search6WorkerENS0_16LargePageDeleterIS2_EEE", !55, i64 0}
!57 = !{!"_ZTSSt15__uniq_ptr_dataIN9Stockfish6Search6WorkerENS0_16LargePageDeleterIS2_EELb1ELb1EE", !56, i64 0}
!58 = !{!"_ZTSSt10unique_ptrIN9Stockfish6Search6WorkerENS0_16LargePageDeleterIS2_EEE", !57, i64 0}
!59 = !{!"_ZTSSt14_Function_base", !21, i64 0, !39, i64 16}
!60 = !{!"_ZTSSt8functionIFvvEE", !59, i64 0, !39, i64 24}
!61 = !{!"_ZTSSt12__mutex_base", !21, i64 0}
!62 = !{!"_ZTSSt5mutex", !61, i64 0}
!63 = !{!"_ZTSSt9__condvar", !21, i64 0}
!64 = !{!"_ZTSSt18condition_variable", !63, i64 0}
!65 = !{!"bool", !21, i64 0}
!66 = !{!"_ZTSN9Stockfish12NativeThreadE", !36, i64 0}
!67 = !{!"_ZTSN9Stockfish25NumaReplicatedAccessTokenE", !36, i64 0}
!68 = !{!"_ZTSN9Stockfish6ThreadE", !58, i64 8, !60, i64 16, !62, i64 48, !64, i64 88, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !65, i64 168, !65, i64 169, !66, i64 176, !67, i64 184}
!69 = !{!"p1 _ZTSN9Stockfish10OptionsMapE", !39, i64 0}
!70 = !{!"p1 _ZTSN9Stockfish10ThreadPoolE", !39, i64 0}
!71 = !{!"p1 _ZTSN9Stockfish18TranspositionTableE", !39, i64 0}
!72 = !{!"p1 _ZTSSt3mapImN9Stockfish15SharedHistoriesESt4lessImESaISt4pairIKmS1_EEE", !39, i64 0}
!73 = !{!"p1 _ZTSN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEE", !39, i64 0}
!74 = !{!"_ZTSN9Stockfish6Search11SharedStateE", !69, i64 0, !70, i64 8, !71, i64 16, !72, i64 24, !73, i64 32}
!75 = !{!74, !69, i64 0}
!76 = !{}
!77 = !{i64 8}
!78 = !{!"p1 omnipotent char", !39, i64 0}
!79 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !78, i64 0}
!80 = !{!79, !78, i64 0}
!81 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !79, i64 0, !36, i64 8, !21, i64 16}
!82 = !{!81, !36, i64 8}
!83 = !{!21, !21, i64 0}
!84 = !{!81, !78, i64 0}
!85 = !{!68, !65, i64 168}
!86 = !{!68, !65, i64 169}
!87 = !{!"p1 _ZTSN9Stockfish6ThreadE", !39, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !{!"p1 _ZTSSt5_BindIFMN9Stockfish6ThreadEFvvEPS1_EE", !39, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !{!60, !39, i64 24}
!92 = !{!59, !39, i64 16}
!93 = !{!"p1 _ZTSSt5mutex", !39, i64 0}
!94 = !{!"_ZTSSt11unique_lockISt5mutexE", !93, i64 0, !65, i64 8}
!95 = !{!94, !93, i64 0}
!96 = !{!94, !65, i64 8}
!97 = !{i8 0, i8 2}
!98 = !{!"p1 _ZTSN9Stockfish30OptionalThreadToNumaNodeBinderE", !39, i64 0}
!99 = !{!98, !98, i64 0}
!100 = !{!"p1 _ZTSN9Stockfish6Search11SharedStateE", !39, i64 0}
!101 = !{!100, !100, i64 0}
!102 = !{!"p1 _ZTSSt10unique_ptrIN9Stockfish6Search14ISearchManagerESt14default_deleteIS2_EE", !39, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!39, !39, i64 0}
!105 = !{i64 0, i64 16, !83}
!106 = !{!66, !36, i64 0}
!107 = !{!52, !52, i64 0}
!108 = !{!"p1 _ZTSSt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS1_EE", !39, i64 0}
!109 = !{!108, !108, i64 0}
!110 = !{!"p1 _ZTSN9Stockfish6Search14ISearchManagerE", !39, i64 0}
!111 = !{!110, !110, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !108, i64 0, !108, i64 8, !108, i64 16}
!113 = !{!112, !108, i64 8}
!114 = !{!112, !108, i64 0}
!115 = !{!"p1 long", !39, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !115, i64 0, !115, i64 8, !115, i64 16}
!117 = !{!116, !115, i64 0}
!118 = !{!116, !115, i64 8}
!119 = !{!"p1 _ZTSSt3setImSt4lessImESaImEE", !39, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE17_Vector_impl_dataE", !119, i64 0, !119, i64 8, !119, i64 16}
!121 = !{!"_ZTSNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE12_Vector_implE", !120, i64 0}
!122 = !{!"_ZTSSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE", !121, i64 0}
!123 = !{!"_ZTSSt6vectorISt3setImSt4lessImESaImEESaIS4_EE", !122, i64 0}
!124 = !{!"_ZTSSt4lessImE"}
!125 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !124, i64 0}
!126 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !125, i64 0, !42, i64 8}
!127 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE", !126, i64 0}
!128 = !{!"_ZTSSt3mapImmSt4lessImESaISt4pairIKmmEEE", !127, i64 0}
!129 = !{!"_ZTSN9Stockfish10NumaConfigE", !123, i64 0, !128, i64 24, !36, i64 72, !65, i64 80}
!130 = !{!"llvm.loop.isvectorized", i32 1}
!131 = !{!"llvm.loop.unroll.runtime.disable"}
!132 = !{!"branch_weights", i32 8, i32 24}
!133 = !{!65, !65, i64 0}
!134 = !{!115, !115, i64 0}
!135 = !{!116, !115, i64 16}
!136 = !{!74, !72, i64 24}
!137 = !{!41, !40, i64 16}
!138 = !{!41, !40, i64 24}
!139 = !{!"p1 _ZTSN9Stockfish10NumaConfigE", !39, i64 0}
!140 = !{!"p1 _ZTSN9Stockfish6Search13SearchManager13UpdateContextE", !39, i64 0}
!141 = !{!140, !140, i64 0}
!142 = !{!"p1 bool", !39, i64 0}
!143 = !{!"p1 _ZTSSt3mapImmSt4lessImESaISt4pairIKmmEEE", !39, i64 0}
!144 = !{!"_ZTSZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEE3$_2", !115, i64 0, !140, i64 8, !142, i64 16, !139, i64 24, !115, i64 32, !70, i64 40, !100, i64 48, !143, i64 56, !143, i64 64}
!145 = !{!144, !70, i64 40}
!146 = !{!120, !119, i64 8}
!147 = !{!120, !119, i64 0}
!148 = !{!"_ZTSSt4pairIKmmE", !36, i64 0, !36, i64 8}
!149 = !{!148, !36, i64 0}
!150 = !{!148, !36, i64 8}
!151 = !{!"_ZTSN9Stockfish14TimeManagementE", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !65, i64 32}
!152 = !{!"_ZTSN9Stockfish30OptionalThreadToNumaNodeBinderE", !139, i64 0, !36, i64 8}
!153 = !{!152, !139, i64 0}
!154 = !{!152, !36, i64 8}
!155 = !{!"_ZTSN9Stockfish6Search14ISearchManagerE"}
!156 = !{!"double", !21, i64 0}
!157 = !{!"_ZTSSt13__atomic_baseIbE", !65, i64 0}
!158 = !{!"_ZTSSt6atomicIbE", !157, i64 0}
!159 = !{!"_ZTSSt5arrayIiLm4EE", !21, i64 0}
!160 = !{!"_ZTSN9Stockfish6Search13SearchManagerE", !155, i64 0, !151, i64 8, !156, i64 48, !22, i64 56, !158, i64 60, !159, i64 64, !156, i64 80, !22, i64 88, !22, i64 92, !65, i64 96, !36, i64 104, !140, i64 112}
!161 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !39, i64 0}
!162 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !161, i64 0, !161, i64 8, !161, i64 16}
!163 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !162, i64 0}
!164 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !163, i64 0}
!165 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !164, i64 0}
!166 = !{!"_ZTSN9Stockfish6Search10LimitsTypeE", !165, i64 0, !21, i64 24, !21, i64 40, !36, i64 56, !36, i64 64, !36, i64 72, !22, i64 80, !22, i64 84, !22, i64 88, !22, i64 92, !22, i64 96, !36, i64 104, !65, i64 112}
!167 = !{!"p1 _ZTSN9Stockfish4MoveE", !39, i64 0}
!168 = !{!161, !161, i64 0}
!169 = !{!"p1 _ZTSN9Stockfish6Search8RootMoveE", !39, i64 0}
!170 = !{!169, !169, i64 0}
!171 = !{!"short", !21, i64 0}
!172 = !{!"_ZTSN9Stockfish4MoveE", !171, i64 0}
end_hunk_1
