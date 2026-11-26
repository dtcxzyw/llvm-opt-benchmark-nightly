Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/thread?download=true
inline.NumInlined: 2122
inline.NumDeleted: 1240
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9Stockfish6Thread12clear_workerEv:bb.a

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Thread25ensure_network_replicatedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #4 align 2 !guid !366 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149
  tail call void @_ZN9Stockfish6Search6Worker25ensure_network_replicatedEv(ptr noundef nonnull align 64 dereferenceable(14279296) %i.b) #26
  ret void
}

declare void @_ZN9Stockfish6Search6Worker25ensure_network_replicatedEv(ptr noundef nonnull align 64 dereferenceable(14279296)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN9Stockfish10ThreadPool12main_managerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #8 align 2 !guid !367 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 11422176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !153
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZNK9Stockfish10ThreadPool14nodes_searchedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #9 align 2 !guid !368 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.not9.i = icmp eq ptr %i.b, %i.d
  br i1 %.not9.i, label %_ZNK9Stockfish10ThreadPool10accumulateEMNS_6Search6WorkerESt6atomicImE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.011.i = phi i64 [ %i.j, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.06.010.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.06.010.i, align 8, !tbaa !130
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !149
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZNK9Stockfish10ThreadPool7tb_hitsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #9 align 2 !guid !369 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.not9.i = icmp eq ptr %i.b, %i.d
  br i1 %.not9.i, label %_ZNK9Stockfish10ThreadPool10accumulateEMNS_6Search6WorkerESt6atomicImE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.011.i = phi i64 [ %i.j, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.06.010.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.06.010.i, align 8, !tbaa !130
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !149
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
define dso_local void @_ZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef byval(%"struct.Stockfish::Search::SharedState") align 8 %2, ptr noundef nonnull align 8 dereferenceable(128) %3) local_unnamed_addr #4 align 2 !guid !388 {
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
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !155
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !156  ; 2 uses
  %.not = icmp eq ptr %i.j, %i.k
  br i1 %.not, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !130  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 3 uses
  store ptr %i.m, ptr %12, align 8, !tbaa !137
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.o = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #26 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.o) #31
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i:       ; preds = %bb.b
  store i8 1, ptr %i.n, align 8, !tbaa !138
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 169 ; 2 uses
  %.val.val2.i.i = load i8, ptr %i.q, align 1, !tbaa !128, !range !139, !noundef !118
  %i.r = trunc nuw i8 %.val.val2.i.i to i1
  br i1 %i.r, label %.lr.ph.i.i, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i.thread"

.lr.ph.i.i:                                       ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, %.lr.ph.i.i
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(9) %12) #26
  %.val.val.i.i = load i8, ptr %i.q, align 1, !tbaa !128, !range !139, !noundef !118
  %i.s = trunc nuw i8 %.val.val.i.i to i1
  br i1 %i.s, label %.lr.ph.i.i, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i", !llvm.loop !4

"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i": ; preds = %.lr.ph.i.i
  %.pre.i = load i8, ptr %i.n, align 8, !tbaa !138, !range !139
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
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !156  ; 3 uses
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !155  ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit, %_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.w, %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit ] ; 2 uses
  %i.y = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !130 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN9Stockfish6ThreadEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN9Stockfish6ThreadEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !93
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(192) %i.y) #26, !inline_history !370
  br label %_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN9Stockfish6ThreadEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i12 = icmp eq ptr %i.ac, %i.x
  br i1 %.not.i.i.i.i12, label %_ZSt8_DestroyIPSt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !371

_ZSt8_DestroyIPSt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.w, ptr %i.i, align 8, !tbaa !155
  br label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE5clearEv.exit: ; preds = %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit, %_ZSt8_DestroyIPSt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !159 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !160
  %.not.i.i13 = icmp eq ptr %i.ag, %i.ae
  br i1 %.not.i.i13, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE5clearEv.exit
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !160
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

_ZNSt6vectorImSaImEE5clearEv.exit:                ; preds = %bb.a, %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, %bb.d
  %i.ah = load ptr, ptr %2, align 8, !tbaa !117, !nonnull !118, !align !119
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.ai, ptr %13, align 8, !tbaa !122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ai, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 7, ptr %i.aj, align 8, !tbaa !124
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 23
  store i8 0, ptr %i.ak, align 1, !tbaa !125
  %i.al = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %13) #26
  %i.am = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.al) #26 ; 3 uses
  %i.an = sext i32 %i.am to i64                   ; 6 uses
  %i.ao = load ptr, ptr %13, align 8, !tbaa !126  ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ai
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit
  %i.aq = load i64, ptr %i.ai, align 8, !tbaa !125
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %.not11 = icmp eq i32 %i.am, 0
  br i1 %.not11, label %bb.ab, label %._crit_edge.i.i14

._crit_edge.i.i14:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.as = load ptr, ptr %2, align 8, !tbaa !117, !nonnull !118, !align !119
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.at, ptr %15, align 8, !tbaa !122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.at, ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 10, ptr %i.au, align 8, !tbaa !124
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 26
  store i8 0, ptr %i.av, align 2, !tbaa !125
  %i.aw = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %15) #26
  call void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(152) %i.aw) #26
  %i.ax = load ptr, ptr %15, align 8, !tbaa !126  ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.at
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %._crit_edge.i.i14
  %i.az = load i64, ptr %i.at, align 8, !tbaa !125
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %._crit_edge.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !124
  %cond.i = icmp eq i64 %i.bc, 4
  br i1 %cond.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.bd = load ptr, ptr %14, align 8, !tbaa !126  ; 2 uses
  %i.be = load i32, ptr %i.bd, align 1
  %i.bf = icmp ne i32 %i.be, 1701736302
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.bi = load i32, ptr %i.bd, align 1
  %i.bj = icmp ne i32 %i.bi, 1869903201
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i, label %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.i
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !389, !range !139, !noundef !118
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit", label %bb.e

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i
  %i.bp = icmp eq i32 %i.am, 1
  br i1 %i.bp, label %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = load ptr, ptr %1, align 8, !tbaa !390   ; 13 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !390 ; 5 uses
  %.not2931.i.i = icmp eq ptr %i.bq, %i.bs
  br i1 %.not2931.i.i, label %._crit_edge.thread.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %i.bt = ptrtoaddr ptr %i.bs to i64
  %i.bu = ptrtoaddr ptr %i.bq to i64
  %i.bv = add i64 %i.bt, -48
  %i.bw = sub i64 %i.bv, %i.bu                    ; 5 uses
  %i.bx = udiv i64 %i.bw, 48
  %i.by = add nuw nsw i64 %i.bx, 1                ; 8 uses
  %min.iters.check = icmp ult i64 %i.bw, 384
  br i1 %min.iters.check, label %.lr.ph.i.i19.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check108 = icmp ult i64 %i.bw, 1536
  br i1 %min.iters.check108, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bz = and i64 %i.by, 31                       ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = select i1 %i.ca, i64 32, i64 %i.bz      ; 2 uses
  %n.vec = sub nsw i64 %i.by, %i.cb               ; 3 uses
  %i.cc = mul i64 %n.vec, 48
  %i.cd = getelementptr i8, ptr %i.bq, i64 %i.cc  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.ce, %vector.body ]
  %vec.phi109 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.cf, %vector.body ]
  %vec.phi110 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.cg, %vector.body ]
  %vec.phi111 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.ch, %vector.body ]
  %pointer.phi = phi ptr [ %i.bq, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <8 x i64> <i64 0, i64 48, i64 96, i64 144, i64 192, i64 240, i64 288, i64 336> ; 4 uses
  %wide.gep = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 40
  %wide.gep112 = getelementptr i8, <8 x ptr> %vector.gep, i64 424
  %wide.gep113 = getelementptr i8, <8 x ptr> %vector.gep, i64 808
  %wide.gep114 = getelementptr i8, <8 x ptr> %vector.gep, i64 1192
  %wide.masked.gather = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !89
  %wide.masked.gather115 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep112, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !89
  %wide.masked.gather116 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep113, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !89
  %wide.masked.gather117 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep114, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !89
  %i.ce = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.masked.gather, <8 x i64> %vec.phi) ; 2 uses
  %i.cf = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.masked.gather115, <8 x i64> %vec.phi109) ; 2 uses
  %i.cg = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.masked.gather116, <8 x i64> %vec.phi110) ; 2 uses
  %i.ch = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.masked.gather117, <8 x i64> %vec.phi111) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 1536
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !372

vec.epilog.iter.check:                            ; preds = %vector.body
  %rdx.minmax = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %i.ce, <8 x i64> %i.cf)
  %rdx.minmax118 = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %rdx.minmax, <8 x i64> %i.cg)
  %rdx.minmax119 = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %rdx.minmax118, <8 x i64> %i.ch)
  %i.cj = call i64 @llvm.vector.reduce.umax.v8i64(<8 x i64> %rdx.minmax119) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.cb, 9
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i19.preheader, label %vec.epilog.ph, !prof !174

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.cj, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.cd, %vec.epilog.iter.check ], [ %i.bq, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.ck = and i64 %i.by, 7                        ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  %i.cm = select i1 %i.cl, i64 8, i64 %i.ck
  %n.vec120 = sub nsw i64 %i.by, %i.cm            ; 2 uses
  %i.cn = mul i64 %n.vec120, 48
  %i.co = getelementptr i8, ptr %i.bq, i64 %i.cn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index121 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ]
  %vec.phi122 = phi <8 x i64> [ %broadcast.splat, %vec.epilog.ph ], [ %i.cp, %vec.epilog.vector.body ]
  %pointer.phi123 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind128, %vec.epilog.vector.body ] ; 2 uses
  %vector.gep124 = getelementptr i8, ptr %pointer.phi123, <8 x i64> <i64 0, i64 48, i64 96, i64 144, i64 192, i64 240, i64 288, i64 336>
  %wide.gep125 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep124, i64 40
  %wide.masked.gather126 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep125, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !89
  %i.cp = call <8 x i64> @llvm.umax.v8i64(<8 x i64> %wide.masked.gather126, <8 x i64> %vec.phi122) ; 2 uses
  %index.next127 = add nuw i64 %index121, 8       ; 2 uses
  %ptr.ind128 = getelementptr i8, ptr %pointer.phi123, i64 384
  %i.cq = icmp eq i64 %index.next127, %n.vec120
  br i1 %i.cq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !373

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cr = call i64 @llvm.vector.reduce.umax.v8i64(<8 x i64> %i.cp)
  br label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01633.i.i.ph = phi i64 [ 0, %iter.check ], [ %i.cj, %vec.epilog.iter.check ], [ %i.cr, %vec.epilog.middle.block ]
  %.sroa.025.032.i.i.ph = phi ptr [ %i.bq, %iter.check ], [ %i.cd, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i19

iter.check162:                                    ; preds = %.lr.ph.i.i19
  %i.cs = uitofp i64 %spec.select28.i.i to double ; 3 uses
  %min.iters.check131 = icmp ult i64 %i.bw, 384
  br i1 %min.iters.check131, label %vec.epilog.scalar.ph164.preheader, label %vector.main.loop.iter.check132

vector.main.loop.iter.check132:                   ; preds = %iter.check162
  %min.iters.check133 = icmp ult i64 %i.bw, 1536
  br i1 %min.iters.check133, label %vec.epilog.ph166, label %vector.ph134

vector.ph134:                                     ; preds = %vector.main.loop.iter.check132
  %i.ct = and i64 %i.by, 31                       ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  %i.cv = select i1 %i.cu, i64 32, i64 %i.ct      ; 2 uses
  %n.vec135 = sub nsw i64 %i.by, %i.cv            ; 3 uses
  %i.cw = mul i64 %n.vec135, 48
  %i.cx = getelementptr i8, ptr %i.bq, i64 %i.cw  ; 2 uses
  %broadcast.splatinsert136 = insertelement <8 x double> poison, double %i.cs, i64 0
  %broadcast.splat137 = shufflevector <8 x double> %broadcast.splatinsert136, <8 x double> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body138

vector.body138:                                   ; preds = %vector.ph134, %vector.body138
  %index139 = phi i64 [ 0, %vector.ph134 ], [ %index.next157, %vector.body138 ]
  %vec.phi140 = phi <8 x i64> [ zeroinitializer, %vector.ph134 ], [ %i.do, %vector.body138 ]
  %vec.phi141 = phi <8 x i64> [ zeroinitializer, %vector.ph134 ], [ %i.dp, %vector.body138 ]
  %vec.phi142 = phi <8 x i64> [ zeroinitializer, %vector.ph134 ], [ %i.dq, %vector.body138 ]
  %vec.phi143 = phi <8 x i64> [ zeroinitializer, %vector.ph134 ], [ %i.dr, %vector.body138 ]
  %pointer.phi144 = phi ptr [ %i.bq, %vector.ph134 ], [ %ptr.ind158, %vector.body138 ] ; 2 uses
  %vector.gep145 = getelementptr i8, ptr %pointer.phi144, <8 x i64> <i64 0, i64 48, i64 96, i64 144, i64 192, i64 240, i64 288, i64 336> ; 4 uses
  %wide.gep149 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep145, i64 40
  %wide.gep150 = getelementptr i8, <8 x ptr> %vector.gep145, i64 424
  %wide.gep151 = getelementptr i8, <8 x ptr> %vector.gep145, i64 808
  %wide.gep152 = getelementptr i8, <8 x ptr> %vector.gep145, i64 1192
  %wide.masked.gather153 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep149, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !89
  %wide.masked.gather154 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep150, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !89
  %wide.masked.gather155 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep151, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !89
  %wide.masked.gather156 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep152, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !89
  %i.cy = uitofp <8 x i64> %wide.masked.gather153 to <8 x double>
  %i.cz = uitofp <8 x i64> %wide.masked.gather154 to <8 x double>
  %i.da = uitofp <8 x i64> %wide.masked.gather155 to <8 x double>
  %i.db = uitofp <8 x i64> %wide.masked.gather156 to <8 x double>
  %i.dc = fdiv <8 x double> %i.cy, %broadcast.splat137
  %i.dd = fdiv <8 x double> %i.cz, %broadcast.splat137
  %i.de = fdiv <8 x double> %i.da, %broadcast.splat137
  %i.df = fdiv <8 x double> %i.db, %broadcast.splat137
  %i.dg = fcmp ugt <8 x double> %i.dc, splat (double 6.000000e-01)
  %i.dh = fcmp ugt <8 x double> %i.dd, splat (double 6.000000e-01)
  %i.di = fcmp ugt <8 x double> %i.de, splat (double 6.000000e-01)
  %i.dj = fcmp ugt <8 x double> %i.df, splat (double 6.000000e-01)
  %i.dk = zext <8 x i1> %i.dg to <8 x i64>
  %i.dl = zext <8 x i1> %i.dh to <8 x i64>
  %i.dm = zext <8 x i1> %i.di to <8 x i64>
  %i.dn = zext <8 x i1> %i.dj to <8 x i64>
  %i.do = add <8 x i64> %vec.phi140, %i.dk        ; 2 uses
  %i.dp = add <8 x i64> %vec.phi141, %i.dl        ; 2 uses
  %i.dq = add <8 x i64> %vec.phi142, %i.dm        ; 2 uses
  %i.dr = add <8 x i64> %vec.phi143, %i.dn        ; 2 uses
  %index.next157 = add nuw i64 %index139, 32      ; 2 uses
  %ptr.ind158 = getelementptr i8, ptr %pointer.phi144, i64 1536
  %i.ds = icmp eq i64 %index.next157, %n.vec135
  br i1 %i.ds, label %vec.epilog.iter.check163, label %vector.body138, !llvm.loop !374

vec.epilog.iter.check163:                         ; preds = %vector.body138
  %bin.rdx = add <8 x i64> %i.dp, %i.do
  %bin.rdx160 = add <8 x i64> %i.dq, %bin.rdx
  %bin.rdx161 = add <8 x i64> %i.dr, %bin.rdx160
  %i.dt = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx161) ; 2 uses
  %min.epilog.iters.check165 = icmp samesign ult i64 %i.cv, 9
  br i1 %min.epilog.iters.check165, label %vec.epilog.scalar.ph164.preheader, label %vec.epilog.ph166, !prof !174

vec.epilog.ph166:                                 ; preds = %vector.main.loop.iter.check132, %vec.epilog.iter.check163
  %vec.epilog.resume.val167 = phi i64 [ %n.vec135, %vec.epilog.iter.check163 ], [ 0, %vector.main.loop.iter.check132 ]
  %bc.merge.rdx168 = phi i64 [ %i.dt, %vec.epilog.iter.check163 ], [ 0, %vector.main.loop.iter.check132 ]
  %bc.resume.val169 = phi ptr [ %i.cx, %vec.epilog.iter.check163 ], [ %i.bq, %vector.main.loop.iter.check132 ]
  %i.du = and i64 %i.by, 7                        ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  %i.dw = select i1 %i.dv, i64 8, i64 %i.du
  %n.vec170 = sub nsw i64 %i.by, %i.dw            ; 2 uses
  %i.dx = mul i64 %n.vec170, 48
  %i.dy = getelementptr i8, ptr %i.bq, i64 %i.dx
  %i.dz = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx168, i64 0
  %broadcast.splatinsert171 = insertelement <8 x double> poison, double %i.cs, i64 0
  %broadcast.splat172 = shufflevector <8 x double> %broadcast.splatinsert171, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body173

vec.epilog.vector.body173:                        ; preds = %vec.epilog.vector.body173, %vec.epilog.ph166
  %index174 = phi i64 [ %vec.epilog.resume.val167, %vec.epilog.ph166 ], [ %index.next180, %vec.epilog.vector.body173 ]
  %vec.phi175 = phi <8 x i64> [ %i.dz, %vec.epilog.ph166 ], [ %i.ee, %vec.epilog.vector.body173 ]
  %pointer.phi176 = phi ptr [ %bc.resume.val169, %vec.epilog.ph166 ], [ %ptr.ind181, %vec.epilog.vector.body173 ] ; 2 uses
  %vector.gep177 = getelementptr i8, ptr %pointer.phi176, <8 x i64> <i64 0, i64 48, i64 96, i64 144, i64 192, i64 240, i64 288, i64 336>
  %wide.gep178 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep177, i64 40
  %wide.masked.gather179 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %wide.gep178, <8 x i1> splat (i1 true), <8 x i64> poison), !tbaa !89
  %i.ea = uitofp <8 x i64> %wide.masked.gather179 to <8 x double>
  %i.eb = fdiv <8 x double> %i.ea, %broadcast.splat172
  %i.ec = fcmp ugt <8 x double> %i.eb, splat (double 6.000000e-01)
  %i.ed = zext <8 x i1> %i.ec to <8 x i64>
  %i.ee = add <8 x i64> %vec.phi175, %i.ed        ; 2 uses
  %index.next180 = add nuw i64 %index174, 8       ; 2 uses
  %ptr.ind181 = getelementptr i8, ptr %pointer.phi176, i64 384
  %i.ef = icmp eq i64 %index.next180, %n.vec170
  br i1 %i.ef, label %vec.epilog.middle.block182, label %vec.epilog.vector.body173, !llvm.loop !375

vec.epilog.middle.block182:                       ; preds = %vec.epilog.vector.body173
  %i.eg = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.ee)
  br label %vec.epilog.scalar.ph164.preheader

vec.epilog.scalar.ph164.preheader:                ; preds = %iter.check162, %vec.epilog.iter.check163, %vec.epilog.middle.block182
  %.036.i.i.ph = phi i64 [ 0, %iter.check162 ], [ %i.dt, %vec.epilog.iter.check163 ], [ %i.eg, %vec.epilog.middle.block182 ]
  %.sroa.020.035.i.i.ph = phi ptr [ %i.bq, %iter.check162 ], [ %i.cx, %vec.epilog.iter.check163 ], [ %i.dy, %vec.epilog.middle.block182 ]
  br label %vec.epilog.scalar.ph164

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.preheader, %.lr.ph.i.i19
  %.01633.i.i = phi i64 [ %spec.select28.i.i, %.lr.ph.i.i19 ], [ %.01633.i.i.ph, %.lr.ph.i.i19.preheader ]
  %.sroa.025.032.i.i = phi ptr [ %i.ej, %.lr.ph.i.i19 ], [ %.sroa.025.032.i.i.ph, %.lr.ph.i.i19.preheader ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.025.032.i.i, i64 40
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !89
  %spec.select28.i.i = call i64 @llvm.umax.i64(i64 %i.ei, i64 %.01633.i.i) ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.025.032.i.i, i64 48 ; 2 uses
  %.not29.i.i = icmp eq ptr %i.ej, %i.bs
  br i1 %.not29.i.i, label %iter.check162, label %.lr.ph.i.i19, !llvm.loop !376

._crit_edge.i.i20:                                ; preds = %vec.epilog.scalar.ph164
  %i.ek = shl i64 %spec.select.i.i, 2
  %i.el = icmp ugt i64 %i.ek, %i.an
  %i.em = lshr i64 %spec.select28.i.i, 1
  %i.en = icmp uge i64 %i.em, %i.an
  %or.cond.i.i = select i1 %i.en, i1 %i.el, i1 false
  br i1 %or.cond.i.i, label %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit", label %._crit_edge.thread.i.i

vec.epilog.scalar.ph164:                          ; preds = %vec.epilog.scalar.ph164.preheader, %vec.epilog.scalar.ph164
  %.036.i.i = phi i64 [ %spec.select.i.i, %vec.epilog.scalar.ph164 ], [ %.036.i.i.ph, %vec.epilog.scalar.ph164.preheader ]
  %.sroa.020.035.i.i = phi ptr [ %i.eu, %vec.epilog.scalar.ph164 ], [ %.sroa.020.035.i.i.ph, %vec.epilog.scalar.ph164.preheader ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.020.035.i.i, i64 40
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !89
  %i.eq = uitofp i64 %i.ep to double
  %i.er = fdiv double %i.eq, %i.cs
  %i.es = fcmp ugt double %i.er, 6.000000e-01
  %i.et = zext i1 %i.es to i64
  %spec.select.i.i = add i64 %.036.i.i, %i.et     ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.020.035.i.i, i64 48 ; 2 uses
  %.not30.i.i = icmp eq ptr %i.eu, %i.bs
  br i1 %.not30.i.i, label %._crit_edge.i.i20, label %vec.epilog.scalar.ph164, !llvm.loop !377

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i20, %bb.f
  %i.ev = ptrtoint ptr %i.bs to i64
  %i.ew = ptrtoint ptr %i.bq to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = sdiv exact i64 %i.ex, 48
  %i.ez = icmp ugt i64 %i.ey, 1
  br label %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit"

"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i, %bb.e, %._crit_edge.i.i20, %._crit_edge.thread.i.i
  %.0.i = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ %i.ez, %._crit_edge.thread.i.i ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.i ], [ false, %bb.e ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i ], [ false, %._crit_edge.i.i20 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ] ; 4 uses
  %i.fa = zext i1 %.0.i to i8
  store i8 %i.fa, ptr %i.b, align 1, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.fb = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 7 uses
  store i32 0, ptr %i.fb, align 8, !tbaa !85
  %i.fc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr null, ptr %i.fc, align 8, !tbaa !86
  %i.fd = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  store ptr %i.fb, ptr %i.fd, align 8, !tbaa !87
  %i.fe = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  store ptr %i.fb, ptr %i.fe, align 8, !tbaa !88
  %i.ff = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 3 uses
  store i64 0, ptr %i.ff, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  br i1 %.0.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit"
  call void @_ZNK9Stockfish10NumaConfig35distribute_threads_among_numa_nodesEm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.119") align 8 %17, ptr noundef nonnull align 8 dereferenceable(81) %1, i64 noundef %i.an)
  %i.fg = load <2 x ptr>, ptr %17, align 16, !tbaa !176
  %.phi.trans.insert65 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %.pre66 = load ptr, ptr %.phi.trans.insert65, align 16, !tbaa !177
  br label %bb.h

bb.h:                                             ; preds = %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit", %bb.g
  %i.fh = phi ptr [ %.pre66, %bb.g ], [ null, %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit" ]
  %i.fi = phi <2 x ptr> [ %i.fg, %bb.g ], [ splat (ptr null), %"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_0clEv.exit" ]
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !159 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !177
  store <2 x ptr> %i.fi, ptr %i.fj, align 8, !tbaa !176
  %i.fo = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.fh, ptr %i.fm, align 8, !tbaa !177
  %.not.i.i.i.i.i = icmp eq ptr %i.fk, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %_ZNSt6vectorImSaImEEaSEOS1_.exit

_ZNSt6vectorImSaImEEaSEOS1_.exit:                 ; preds = %bb.h
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fk to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fr) #30
  %.pr = load ptr, ptr %17, align 16, !tbaa !159  ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit
  %i.fs = load ptr, ptr %i.fo, align 16, !tbaa !177
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %.pr to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.fv) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.h, %_ZNSt6vectorImSaImEEaSEOS1_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.fw = load ptr, ptr %i.fj, align 8, !tbaa !176 ; 2 uses
  %i.fx = load ptr, ptr %i.fl, align 8, !tbaa !176
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %bb.j, label %.lr.ph

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 0, ptr %i.c, align 8, !tbaa !79
  %i.fz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  store i64 %i.an, ptr %i.fz, align 8, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %.lr.ph
  %i.ga = phi ptr [ %i.gh, %.lr.ph ], [ %i.fw, %_ZNSt6vectorImSaImEED2Ev.exit ]
  %.056 = phi i64 [ %i.gf, %.lr.ph ], [ 0, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.056
  %i.gc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.gb) ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !79
  %i.ge = add i64 %i.gd, 1
  store i64 %i.ge, ptr %i.gc, align 8, !tbaa !79
  %i.gf = add nuw i64 %.056, 1                    ; 2 uses
  %i.gg = load ptr, ptr %i.fl, align 8, !tbaa !160
  %i.gh = load ptr, ptr %i.fj, align 8, !tbaa !159 ; 2 uses
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = ashr exact i64 %i.gk, 3
  %i.gm = icmp ult i64 %i.gf, %i.gl
  br i1 %i.gm, label %.lr.ph, label %.loopexit, !llvm.loop !378

.loopexit:                                        ; preds = %.lr.ph, %bb.j
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !178, !nonnull !118, !align !119 ; 6 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !86
  call void @_ZNSt8_Rb_treeImSt4pairIKmN9Stockfish15SharedHistoriesEESt10_Select1stIS4_ESt4lessImESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.go, ptr noundef %i.gq)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  store ptr null, ptr %i.gp, align 8, !tbaa !86
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  store ptr %i.gr, ptr %i.gs, align 8, !tbaa !87
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  store ptr %i.gr, ptr %i.gt, align 8, !tbaa !88
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 40
  store i64 0, ptr %i.gu, align 8, !tbaa !89
  %i.gv = load ptr, ptr %i.fd, align 8, !tbaa !87 ; 2 uses
  %.not5557 = icmp eq ptr %i.gv, %i.fb
  br i1 %.not5557, label %._crit_edge, label %.lr.ph59

.lr.ph59:                                         ; preds = %.loopexit
  %i.gw = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %18, i64 16
  br label %bb.n

._crit_edge:                                      ; preds = %bb.s, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.gy = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  store i32 0, ptr %i.gy, align 8, !tbaa !85
  %i.gz = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  store ptr null, ptr %i.gz, align 8, !tbaa !86
  %i.ha = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  store ptr %i.gy, ptr %i.ha, align 8, !tbaa !87
  %i.hb = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  store ptr %i.gy, ptr %i.hb, align 8, !tbaa !88
  %i.hc = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 2 uses
  store i64 0, ptr %i.hc, align 8, !tbaa !89
  %i.hd = load ptr, ptr %i.fc, align 8, !tbaa !86 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i22, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2ERKS6_.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store ptr %19, ptr %11, align 8, !tbaa !392
  %i.he = call noundef ptr @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyILb0ENS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull %i.hd, ptr noundef nonnull %i.gy, ptr noundef nonnull align 8 dereferenceable(8) %11) ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi ptr [ %i.he, %bb.k ], [ %i.hg, %bb.l ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !179 ; 2 uses
  %.not.i.i.i.i.i.i23 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i.i.i23, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.l, !llvm.loop !379

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.l
  store ptr %.0.i.i.i.i.i.i, ptr %i.ha, align 8, !tbaa !90
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.he, %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.hi, %bb.m ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !180 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyERKS8_.exit.i.i, label %bb.m, !llvm.loop !380

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyERKS8_.exit.i.i: ; preds = %bb.m
  store ptr %.0.i.i7.i.i.i.i, ptr %i.hb, align 8, !tbaa !90
  %i.hj = load i64, ptr %i.ff, align 8, !tbaa !89
  store i64 %i.hj, ptr %i.hc, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  store ptr %i.he, ptr %i.gz, align 8, !tbaa !90
  %.pre69 = load ptr, ptr %i.fc, align 8, !tbaa !86
  br label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2ERKS6_.exit

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2ERKS6_.exit: ; preds = %._crit_edge, %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyERKS8_.exit.i.i
  %i.hk = phi ptr [ null, %._crit_edge ], [ %.pre69, %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyERKS8_.exit.i.i ]
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef %i.hk)
  store ptr null, ptr %i.fc, align 8, !tbaa !86
  store ptr %i.fb, ptr %i.fd, align 8, !tbaa !87
  store ptr %i.fb, ptr %i.fe, align 8, !tbaa !88
  store i64 0, ptr %i.ff, align 8, !tbaa !89
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !155
  %i.hm = load ptr, ptr %i.h, align 8, !tbaa !156
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho                    ; 2 uses
  %i.hq = ashr exact i64 %i.hp, 3                 ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.an
  br i1 %i.hr, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2ERKS6_.exit
  %i.hs = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.hu = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.hv = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.hw = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.hx = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.hy = getelementptr inbounds nuw i8, ptr %20, i64 56
  %i.hz = getelementptr inbounds nuw i8, ptr %20, i64 64
  br label %bb.t

bb.n:                                             ; preds = %.lr.ph59, %bb.s
  %i.ia = phi i1 [ %.0.i, %.lr.ph59 ], [ %i.jb, %bb.s ]
  %.sroa.046.058 = phi ptr [ %i.gv, %.lr.ph59 ], [ %i.jc, %bb.s ] ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.046.058, i64 32
  %.sroa.0.0.copyload = load i64, ptr %i.ib, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.046.058, i64 40
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i64 %.sroa.4.0.copyload, ptr %i.e, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  store ptr %2, ptr %18, align 8, !tbaa !143
end_hunk_0
begin_hunk_1_@_ZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextE:bb.a
  store ptr %1, ptr %i.hu, align 8, !tbaa !395
  store ptr %i.g, ptr %i.hv, align 8, !tbaa !176
  store ptr %0, ptr %i.hw, align 8, !tbaa !187
  store ptr %2, ptr %i.hx, align 8, !tbaa !143
  store ptr %16, ptr %i.hy, align 8, !tbaa !401
  store ptr %19, ptr %i.hz, align 8, !tbaa !401
  br i1 %i.jg, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 0, ptr %6, align 8, !tbaa !394
  %i.jl = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS3_10ThreadPool3setERKS4_NS3_6Search11SharedStateERKNS9_13SearchManager13UpdateContextEE3$_2EEvmOT_EUlvE_EEEEEE", i64 16), ptr %i.jl, align 8, !tbaa !93
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store ptr %1, ptr %i.jm, align 8, !tbaa !395
  %.sroa.4.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store ptr %20, ptr %.sroa.4.0..sroa_idx.i27, align 8, !tbaa !146
  %.sroa.5.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  store i64 %i.jk, ptr %.sroa.5.0..sroa_idx.i28, align 8, !tbaa !79
  store ptr %i.jl, ptr %5, align 8, !tbaa !397
  call void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 %5, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv) #26
  %i.jn = load ptr, ptr %5, align 8, !tbaa !397   ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i29, label %"_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS1_10ThreadPool3setERKS2_NS1_6Search11SharedStateERKNS7_13SearchManager13UpdateContextEE3$_2EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i", label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i30

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i30: ; preds = %bb.w
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !93
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr noundef nonnull align 8 dereferenceable(8) %i.jn) #26, !inline_history !386
  br label %"_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS1_10ThreadPool3setERKS2_NS1_6Search11SharedStateERKNS7_13SearchManager13UpdateContextEE3$_2EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i"

"_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS1_10ThreadPool3setERKS2_NS1_6Search11SharedStateERKNS7_13SearchManager13UpdateContextEE3$_2EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i": ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i30, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  %.sroa.0.0.copyload.i.i.i31 = load i64, ptr %6, align 8, !tbaa !79
  %.not.i.i32 = icmp eq i64 %.sroa.0.0.copyload.i.i.i31, 0
  br i1 %.not.i.i32, label %"_ZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS_10ThreadPool3setERKS0_NS_6Search11SharedStateERKNS5_13SearchManager13UpdateContextEE3$_2EEvmOT_.exit", label %bb.x

bb.x:                                             ; preds = %"_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS1_10ThreadPool3setERKS2_NS1_6Search11SharedStateERKNS7_13SearchManager13UpdateContextEE3$_2EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i"
  call void @_ZSt9terminatev() #31
  unreachable

"_ZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS_10ThreadPool3setERKS0_NS_6Search11SharedStateERKNS5_13SearchManager13UpdateContextEE3$_2EEvmOT_.exit": ; preds = %"_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS1_10ThreadPool3setERKS2_NS1_6Search11SharedStateERKNS7_13SearchManager13UpdateContextEE3$_2EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  call fastcc void @"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_2clEv"(ptr noundef nonnull align 8 dereferenceable(72) %20)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %"_ZNK9Stockfish10NumaConfig20execute_on_numa_nodeIRZNS_10ThreadPool3setERKS0_NS_6Search11SharedStateERKNS5_13SearchManager13UpdateContextEE3$_2EEvmOT_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.jr = load ptr, ptr %i.i, align 8, !tbaa !155
  %i.js = load ptr, ptr %i.h, align 8, !tbaa !156
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = sub i64 %i.jt, %i.ju                    ; 2 uses
  %i.jw = ashr exact i64 %i.jv, 3                 ; 2 uses
  %i.jx = icmp ult i64 %i.jw, %i.an
  br i1 %i.jx, label %bb.t, label %._crit_edge61, !llvm.loop !387

._crit_edge61:                                    ; preds = %bb.z, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEC2ERKS6_.exit
  call void @_ZN9Stockfish10ThreadPool5clearEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.jy = load ptr, ptr %i.h, align 8, !tbaa !151
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !130 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 48 ; 3 uses
  store ptr %i.ka, ptr %4, align 8, !tbaa !137
  %i.kb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.kc = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ka) #26 ; 2 uses
  %.not.i.i.i.i33 = icmp eq i32 %i.kc, 0
  br i1 %.not.i.i.i.i33, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i34, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge61
  call void @_ZSt20__throw_system_errori(i32 noundef %i.kc) #31
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i34:     ; preds = %._crit_edge61
  store i8 1, ptr %i.kb, align 8, !tbaa !138
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 88
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 169 ; 2 uses
  %.val.val2.i.i35 = load i8, ptr %i.ke, align 1, !tbaa !128, !range !139, !noundef !118
  %i.kf = trunc nuw i8 %.val.val2.i.i35 to i1
  br i1 %i.kf, label %.lr.ph.i.i38, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i36.thread"

.lr.ph.i.i38:                                     ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i34, %.lr.ph.i.i38
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.kd, ptr noundef nonnull align 8 dereferenceable(9) %4) #26
  %.val.val.i.i39 = load i8, ptr %i.ke, align 1, !tbaa !128, !range !139, !noundef !118
  %i.kg = trunc nuw i8 %.val.val.i.i39 to i1
  br i1 %i.kg, label %.lr.ph.i.i38, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i40", !llvm.loop !4

"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i40": ; preds = %.lr.ph.i.i38
  %.pre.i41 = load i8, ptr %i.kb, align 8, !tbaa !138, !range !139
  %i.kh = trunc nuw i8 %.pre.i41 to i1
  %.pre70 = load ptr, ptr %4, align 8             ; 2 uses
  %.not.i.i.i37 = icmp ne ptr %.pre70, null
  %or.cond107.not = select i1 %i.kh, i1 %.not.i.i.i37, i1 false
  br i1 %or.cond107.not, label %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i36.thread", label %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit42

"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i36.thread": ; preds = %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i40", %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i34
  %i.ki = phi ptr [ %.pre70, %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i40" ], [ %i.ka, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i34 ]
  %i.kj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ki) #26 ; 0 uses
  br label %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit42

_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit42: ; preds = %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.i40", %"_ZNSt18condition_variable4waitIZN9Stockfish6Thread24wait_for_search_finishedEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread.i36.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.kk = load ptr, ptr %i.gz, align 8, !tbaa !86
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef %i.kk)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.kl = load ptr, ptr %i.fc, align 8, !tbaa !86
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef %i.kl)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.km = load ptr, ptr %14, align 8, !tbaa !126  ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ko = icmp eq ptr %i.km, %i.kn
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit42
  %i.kp = load i64, ptr %i.kn, align 8, !tbaa !125
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

declare void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK9Stockfish10NumaConfig35distribute_threads_among_numa_nodesEm(ptr dead_on_unwind noalias writable sret(%"class.std::vector.119") align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !guid !405 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !188  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !189    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 48                  ; 3 uses
  %i.i = icmp eq i64 %i.g, 48
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !79
  %.not42 = icmp eq i64 %2, 0
  br i1 %.not42, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

_ZNSt6vectorImSaImEE6resizeEmRKm.exit:            ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.j, label %bb.e, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #31
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.d
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.thread, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.k = shl nuw nsw i64 %i.h, 3                  ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #29 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false), !tbaa !79
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.h
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge30, label %.preheader.lr.ph

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.thread:     ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.not46 = icmp eq i64 %2, 0
  br i1 %.not46, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.thread, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %.sroa.020.050 = phi ptr [ null, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.thread ], [ %i.l, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ] ; 11 uses
  %.sroa.9.048 = phi i64 [ 0, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.thread ], [ %i.n, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit
  %i.q = phi ptr [ null, %.preheader.lr.ph ], [ %i.bc, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 3 uses
  %i.r = phi ptr [ null, %.preheader.lr.ph ], [ %i.bd, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 3 uses
  %.01430 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bi, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %3 = phi ptr [ null, %.preheader.lr.ph ], [ %i.be, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 6 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !188  ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !189    ; 11 uses
  %.not31 = icmp eq ptr %i.s, %i.t
  br i1 %.not31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 48                  ; 3 uses
  %xtraiter = and i64 %i.x, 7                     ; 3 uses
  %i.y = icmp ult i64 %i.x, 8
  br i1 %i.y, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.x, -8
  br label %.lr.ph

._crit_edge30:                                    ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %.sink = phi ptr [ null, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ], [ %i.be, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %.sroa.020.052 = phi ptr [ %i.l, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ], [ %.sroa.020.050, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 2 uses
  %.sroa.9.047 = phi i64 [ %i.n, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ], [ %.sroa.9.048, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  store ptr %.sink, ptr %0, align 8
  %i.z = ptrtoint ptr %.sroa.020.052 to i64
  %i.aa = sub i64 %.sroa.9.047, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.020.052, i64 noundef %i.aa) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.028.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.es, %._crit_edge.loopexit.unr-lcssa ]
  %.01327.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.preheader ], [ %spec.select25.7, %._crit_edge.loopexit.unr-lcssa ]
  %.02326.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %spec.select.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.028.epil = phi i64 [ %i.al, %.lr.ph.epil ], [ %.028.epil.init, %.lr.ph.epil.preheader ] ; 4 uses
  %.01327.epil = phi float [ %spec.select25.epil, %.lr.ph.epil ], [ %.01327.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.02326.epil = phi i64 [ %spec.select.epil, %.lr.ph.epil ], [ %.02326.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.028.epil
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !79
  %i.ad = add i64 %i.ac, 1
  %i.ae = uitofp i64 %i.ad to float
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %.028.epil
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !89
  %i.ai = uitofp i64 %i.ah to float
  %i.aj = fdiv float %i.ae, %i.ai                 ; 2 uses
  %i.ak = fcmp olt float %i.aj, %.01327.epil      ; 2 uses
  %spec.select.epil = select i1 %i.ak, i64 %.028.epil, i64 %.02326.epil ; 2 uses
  %spec.select25.epil = select i1 %i.ak, float %i.aj, float %.01327.epil
  %i.al = add nuw i64 %.028.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !402

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.023.lcssa = phi i64 [ 0, %.preheader ], [ %spec.select.7, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil ] ; 3 uses
  %.not.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  store i64 %.023.lcssa, ptr %i.r, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.o, align 8, !tbaa !160
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

bb.g:                                             ; preds = %._crit_edge
  %i.an = ptrtoint ptr %i.q to i64
  %i.ao = ptrtoint ptr %3 to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 6 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.h, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  store ptr %3, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #31
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i.i16 = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %.not.i.i.i16)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #29 ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store i64 %.023.lcssa, ptr %i.ay, align 8, !tbaa !79
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.i, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %3, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %3, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.ap) #30
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.ba, ptr %i.o, align 8, !tbaa !160
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av ; 2 uses
  store ptr %i.bb, ptr %i.p, align 8, !tbaa !177
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %i.bc = phi ptr [ %i.q, %bb.f ], [ %i.bb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ]
  %i.bd = phi ptr [ %i.am, %bb.f ], [ %i.ba, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ]
  %i.be = phi ptr [ %3, %bb.f ], [ %i.ax, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.023.lcssa ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !79
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !79
  %i.bi = add nuw i64 %.01430, 1                  ; 2 uses
  %exitcond32.not = icmp eq i64 %i.bi, %2
  br i1 %exitcond32.not, label %._crit_edge30, label %.preheader, !llvm.loop !403

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.028 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.es, %.lr.ph ] ; 11 uses
  %.01327 = phi float [ f0x7F7FFFFF, %.lr.ph.preheader.new ], [ %spec.select25.7, %.lr.ph ] ; 2 uses
  %.02326 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %spec.select.7, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.028
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !79
  %i.bl = add i64 %i.bk, 1
  %i.bm = uitofp i64 %i.bl to float
  %i.bn = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %.028
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !89
  %i.bq = uitofp i64 %i.bp to float
  %i.br = fdiv float %i.bm, %i.bq                 ; 2 uses
  %i.bs = fcmp olt float %i.br, %.01327           ; 2 uses
  %spec.select = select i1 %i.bs, i64 %.028, i64 %.02326
  %spec.select25 = select i1 %i.bs, float %i.br, float %.01327 ; 2 uses
  %i.bt = or disjoint i64 %.028, 1                ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !79
  %i.bw = add i64 %i.bv, 1
  %i.bx = uitofp i64 %i.bw to float
  %i.by = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.bt
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !89
  %i.cb = uitofp i64 %i.ca to float
  %i.cc = fdiv float %i.bx, %i.cb                 ; 2 uses
  %i.cd = fcmp olt float %i.cc, %spec.select25    ; 2 uses
  %spec.select.1 = select i1 %i.cd, i64 %i.bt, i64 %spec.select
  %spec.select25.1 = select i1 %i.cd, float %i.cc, float %spec.select25 ; 2 uses
  %i.ce = or disjoint i64 %.028, 2                ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !79
  %i.ch = add i64 %i.cg, 1
  %i.ci = uitofp i64 %i.ch to float
  %i.cj = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.ce
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !89
  %i.cm = uitofp i64 %i.cl to float
  %i.cn = fdiv float %i.ci, %i.cm                 ; 2 uses
  %i.co = fcmp olt float %i.cn, %spec.select25.1  ; 2 uses
  %spec.select.2 = select i1 %i.co, i64 %i.ce, i64 %spec.select.1
  %spec.select25.2 = select i1 %i.co, float %i.cn, float %spec.select25.1 ; 2 uses
  %i.cp = or disjoint i64 %.028, 3                ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !79
  %i.cs = add i64 %i.cr, 1
  %i.ct = uitofp i64 %i.cs to float
  %i.cu = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.cp
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !89
  %i.cx = uitofp i64 %i.cw to float
  %i.cy = fdiv float %i.ct, %i.cx                 ; 2 uses
  %i.cz = fcmp olt float %i.cy, %spec.select25.2  ; 2 uses
  %spec.select.3 = select i1 %i.cz, i64 %i.cp, i64 %spec.select.2
  %spec.select25.3 = select i1 %i.cz, float %i.cy, float %spec.select25.2 ; 2 uses
  %i.da = or disjoint i64 %.028, 4                ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !79
  %i.dd = add i64 %i.dc, 1
  %i.de = uitofp i64 %i.dd to float
  %i.df = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.da
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !89
  %i.di = uitofp i64 %i.dh to float
  %i.dj = fdiv float %i.de, %i.di                 ; 2 uses
  %i.dk = fcmp olt float %i.dj, %spec.select25.3  ; 2 uses
  %spec.select.4 = select i1 %i.dk, i64 %i.da, i64 %spec.select.3
  %spec.select25.4 = select i1 %i.dk, float %i.dj, float %spec.select25.3 ; 2 uses
  %i.dl = or disjoint i64 %.028, 5                ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !79
  %i.do = add i64 %i.dn, 1
  %i.dp = uitofp i64 %i.do to float
  %i.dq = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.dl
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !89
  %i.dt = uitofp i64 %i.ds to float
  %i.du = fdiv float %i.dp, %i.dt                 ; 2 uses
  %i.dv = fcmp olt float %i.du, %spec.select25.4  ; 2 uses
  %spec.select.5 = select i1 %i.dv, i64 %i.dl, i64 %spec.select.4
  %spec.select25.5 = select i1 %i.dv, float %i.du, float %spec.select25.4 ; 2 uses
  %i.dw = or disjoint i64 %.028, 6                ; 3 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !79
  %i.dz = add i64 %i.dy, 1
  %i.ea = uitofp i64 %i.dz to float
  %i.eb = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.dw
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !89
  %i.ee = uitofp i64 %i.ed to float
  %i.ef = fdiv float %i.ea, %i.ee                 ; 2 uses
  %i.eg = fcmp olt float %i.ef, %spec.select25.5  ; 2 uses
  %spec.select.6 = select i1 %i.eg, i64 %i.dw, i64 %spec.select.5
  %spec.select25.6 = select i1 %i.eg, float %i.ef, float %spec.select25.5 ; 2 uses
  %i.eh = or disjoint i64 %.028, 7                ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !79
  %i.ek = add i64 %i.ej, 1
  %i.el = uitofp i64 %i.ek to float
  %i.em = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.eh
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !89
  %i.ep = uitofp i64 %i.eo to float
  %i.eq = fdiv float %i.el, %i.ep                 ; 2 uses
  %i.er = fcmp olt float %i.eq, %spec.select25.6  ; 2 uses
  %spec.select.7 = select i1 %i.er, i64 %i.eh, i64 %spec.select.6 ; 3 uses
  %spec.select25.7 = select i1 %i.er, float %i.eq, float %spec.select25.6 ; 2 uses
  %i.es = add nuw i64 %.028, 8                    ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !404

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.thread, %._crit_edge30, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !guid !407 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !79     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !79
  %i.g = icmp ult i64 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !90 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, label %bb.b, !llvm.loop !8

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !79
  %i.k = icmp ult i64 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i64, ptr %1, align 8, !tbaa !79
  store i64 %i.n, ptr %i.m, align 8, !tbaa !191
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !192
  %i.p = tail call { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i64, ptr %i.m, align 8, !tbaa !79
  %i.v = load i64, ptr %i.t, align 8, !tbaa !79
  %i.w = icmp ult i64 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.x = phi i1 [ %i.w, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #26
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !89
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !89
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #30
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.c
end_hunk_1
