Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/BackgroundImagesLoader?download=true
inline.NumInlined: 5824
inline.NumDeleted: 2299
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN3tev13ImageAdditionD2Ev:bb.a
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit
  %i.l = load ptr, ptr %0, align 8, !tbaa !206    ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__115__expected_baseINS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS5_EEEENS3_14ImageLoadErrorEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !209  ; 2 uses
  %.not6.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.e, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.o, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.n, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 -16 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !166  ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = atomicrmw add ptr %i.r, i64 -1 acq_rel, align 8
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.g, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !138
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(24) %i.q) #29, !inline_history !9
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.q) #29
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.o
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i.i.i.i.i.i.i
  %.pre1.i.i.i.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !206
  br label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i.i, %bb.e
  %i.x = phi ptr [ %.pre1.i.i.i.i.i.i.i.i, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.l, %bb.e ] ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !209
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !207
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ac) #30
  br label %_ZNSt3__115__expected_baseINS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS5_EEEENS3_14ImageLoadErrorEED2Ev.exit

bb.h:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(25) %0) #29
  br label %_ZNSt3__115__expected_baseINS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS5_EEEENS3_14ImageLoadErrorEED2Ev.exit

_ZNSt3__115__expected_baseINS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS5_EEEENS3_14ImageLoadErrorEED2Ev.exit: ; preds = %bb.d, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK3tev22BackgroundImagesLoader15hasPendingLoadsEv(ptr noundef nonnull align 8 dereferenceable(300) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load atomic i32, ptr %i.b seq_cst, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.e = load atomic i32, ptr %i.d seq_cst, align 4
  %i.f = icmp ne i32 %i.c, %i.e
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK3tev22BackgroundImagesLoader17hasImageAdditionsEv(ptr noundef nonnull align 8 dereferenceable(300) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  invoke void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !151
  %i.e = icmp ne i64 %i.d, 0
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #29
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29
  ret i1 %i.e

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29
  resume { ptr, i32 } %i.f
}

declare void @_ZNSt3__14__fs10filesystem8__statusERKNS1_4pathEPNS_10error_codeE(ptr dead_on_unwind writable sret(%"class.std::__1::__fs::filesystem::file_status") align 4, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #7

declare void @_ZNSt3__14__fs10filesystem11__canonicalERKNS1_4pathEPNS_10error_codeE(ptr dead_on_unwind writable sret(%"class.std::__1::__fs::filesystem::path") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #29 ; 0 uses
  tail call void @_ZSt9terminatev() #34
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryELb0EEEvT1_SM_T0_NS_15iterator_traitsISM_E15difference_typeEb"(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__1::__fs::filesystem::directory_entry", align 16 ; 10 uses
  %7 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %.sroa.9.i.i.i.i110 = alloca { [8 x i8], %"struct.std::__1::__fs::filesystem::directory_entry::__cached_data" }, align 8 ; 3 uses
  %11 = alloca %"class.std::__1::__fs::filesystem::directory_entry", align 16 ; 16 uses
  %12 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %15 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %.sroa.9.i.i.i.i = alloca { [8 x i8], %"struct.std::__1::__fs::filesystem::directory_entry::__cached_data" }, align 8 ; 3 uses
  %16 = alloca %"class.std::__1::__fs::filesystem::directory_entry", align 16 ; 21 uses
  %.sroa.9.i.i.i87 = alloca { [8 x i8], %"struct.std::__1::__fs::filesystem::directory_entry::__cached_data" }, align 8 ; 3 uses
  %17 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %18 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %19 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %20 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %.sroa.12.i.i.i = alloca { [8 x i8], %"struct.std::__1::__fs::filesystem::directory_entry::__cached_data" }, align 8 ; 4 uses
  %.sroa.16.i.i.i.i = alloca { [8 x i8], %"struct.std::__1::__fs::filesystem::directory_entry::__cached_data" }, align 8 ; 4 uses
  %21 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %22 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %.sroa.17.i54 = alloca { [8 x i8], %"struct.std::__1::__fs::filesystem::directory_entry::__cached_data" }, align 8 ; 4 uses
  %23 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %24 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %.sroa.17.i = alloca { [8 x i8], %"struct.std::__1::__fs::filesystem::directory_entry::__cached_data" }, align 8 ; 4 uses
  %.sroa.9.i.i.i = alloca { [8 x i8], %"struct.std::__1::__fs::filesystem::directory_entry::__cached_data" }, align 8 ; 3 uses
  %.sroa.9.32..sroa_idx.i.i.i93 = getelementptr inbounds nuw i8, ptr %.sroa.9.i.i.i87, i64 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %.sroa.9.32..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.9.i.i.i.i, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 1
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %16, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.9.32..sroa_idx.i.i.i.i120 = getelementptr inbounds nuw i8, ptr %.sroa.9.i.i.i.i110, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.outer.outer"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.outer.outer": ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.outer.outer.backedge", %bb.a
  %.024.ph.ph = phi ptr [ %0, %bb.a ], [ %.024.ph.ph.be, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.outer.outer.backedge" ]
  %.021.ph.ph = phi ptr [ %1, %bb.a ], [ %.021, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.outer.outer.backedge" ]
  %.048.ph.ph = phi i1 [ %3, %bb.a ], [ false, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.outer.outer.backedge" ] ; 3 uses
  %.046.ph.ph = phi i64 [ %2, %bb.a ], [ %i.qb, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.outer.outer.backedge" ]
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.outer"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.outer": ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.outer.outer", %bb.gw
  %.024.ph = phi ptr [ %.119.lcssa.i, %bb.gw ], [ %.024.ph.ph, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.outer.outer" ] ; 68 uses
  %.021.ph = phi ptr [ %.021, %bb.gw ], [ %.021.ph.ph, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.outer.outer" ]
  %.046.ph = phi i64 [ %i.qb, %bb.gw ], [ %.046.ph.ph, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.outer.outer" ]
  %i.al = ptrtoint ptr %.024.ph to i64            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.024.ph, i64 80
  %i.an = getelementptr inbounds nuw i8, ptr %.024.ph, i64 160
  %.sroa.89.0..sroa_idx.i.i.i91 = getelementptr inbounds nuw i8, ptr %.024.ph, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.024.ph, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.024.ph, i64 -80
  %i.aq = getelementptr inbounds nuw i8, ptr %.024.ph, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.024.ph, i64 16
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit": ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.outer", %bb.gv
  %.021 = phi ptr [ %i.ack, %bb.gv ], [ %.021.ph, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.outer" ] ; 28 uses
  %.046 = phi i64 [ %i.qb, %bb.gv ], [ %.046.ph, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.outer" ] ; 2 uses
  %i.as = ptrtoint ptr %.021 to i64
  %i.at = sub i64 %i.as, %i.al                    ; 4 uses
  %i.au = sdiv exact i64 %i.at, 80                ; 5 uses
  switch i64 %i.au, label %bb.h [
    i64 0, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.thread"
    i64 1, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.thread"
    i64 2, label %bb.b
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
  ]

bb.b:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit"
  %i.av = getelementptr inbounds i8, ptr %.021, i64 -80 ; 6 uses
  %i.aw = call fastcc noundef zeroext i1 @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_0clINS3_15directory_entryESI_EEDaRKT_RKT0_"(ptr noundef nonnull align 16 dereferenceable(80) %i.av, ptr noundef nonnull align 16 dereferenceable(80) %.024.ph)
  br i1 %i.aw, label %bb.c, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.thread"

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i)
  %i.ax = load <2 x i64>, ptr %.024.ph, align 16
  %.sroa.89.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.024.ph, i64 16
  %.sroa.89.0.copyload.i.i.i = load ptr, ptr %.sroa.89.0..sroa_idx.i.i.i, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.024.ph, i8 0, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.024.ph, i64 32 ; 2 uses
  %.sroa.9.32..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.9.i.i.i, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.32..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.ay, i64 48, i1 false), !tbaa.struct !224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.024.ph, ptr noundef nonnull align 16 dereferenceable(80) %i.av, i64 24, i1 false), !tbaa.struct !164
  store i8 0, ptr %i.av, align 16
  %i.az = getelementptr inbounds i8, ptr %.021, i64 -79
  store i8 0, ptr %i.az, align 1, !tbaa !149
  %i.ba = getelementptr inbounds i8, ptr %.021, i64 -48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.ay, ptr noundef nonnull align 16 dereferenceable(42) %i.ba, i64 42, i1 false), !tbaa.struct !224
  %i.bb = load i8, ptr %i.av, align 16
  %i.bc = trunc i8 %i.bb to i1
  br i1 %i.bc, label %bb.d, label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8ne180100IRPNS_4__fs10filesystem15directory_entryES8_EEvOT_OT0_.exit

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds i8, ptr %.021, i64 -64
  %i.be = load ptr, ptr %i.bd, align 16, !tbaa !149
  %i.bf = load i64, ptr %i.av, align 16
  %i.bg = and i64 %i.bf, -2
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bg) #30
  br label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8ne180100IRPNS_4__fs10filesystem15directory_entryES8_EEvOT_OT0_.exit

_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8ne180100IRPNS_4__fs10filesystem15directory_entryES8_EEvOT_OT0_.exit: ; preds = %bb.c, %bb.d
  store <2 x i64> %i.ax, ptr %i.av, align 16
  %.sroa.89.0..sroa_idx10.i.i.i = getelementptr inbounds i8, ptr %.021, i64 -64
  store ptr %.sroa.89.0.copyload.i.i.i, ptr %.sroa.89.0..sroa_idx10.i.i.i, align 16, !tbaa !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.ba, ptr noundef nonnull align 8 dereferenceable(42) %.sroa.9.32..sroa_idx.i.i.i, i64 42, i1 false), !tbaa.struct !224
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.thread"

bb.e:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit"
  %i.bh = getelementptr inbounds nuw i8, ptr %.024.ph, i64 80
  %i.bi = getelementptr inbounds i8, ptr %.021, i64 -80
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEjT1_SM_SM_T0_"(ptr noundef nonnull %.024.ph, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bi)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.thread"

bb.f:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit"
  %i.bj = getelementptr inbounds nuw i8, ptr %.024.ph, i64 80
  %i.bk = getelementptr inbounds nuw i8, ptr %.024.ph, i64 160
  %i.bl = getelementptr inbounds i8, ptr %.021, i64 -80
  call fastcc void @"_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_SM_SM_T0_"(ptr noundef nonnull %.024.ph, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.thread"

bb.g:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit"
  %i.bm = getelementptr inbounds nuw i8, ptr %.024.ph, i64 80
  %i.bn = getelementptr inbounds nuw i8, ptr %.024.ph, i64 160
  %i.bo = getelementptr inbounds nuw i8, ptr %.024.ph, i64 240
  %i.bp = getelementptr inbounds i8, ptr %.021, i64 -80
  call fastcc void @"_ZNSt3__124__sort5_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSO_SO_SO_SO_SO_SN_"(ptr noundef %.024.ph, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bp)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.thread"

bb.h:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit"
  %i.bq = icmp slt i64 %i.at, 1920
  br i1 %i.bq, label %bb.i, label %bb.az

bb.i:                                             ; preds = %bb.h
  %i.br = icmp eq ptr %.024.ph, %.021             ; 2 uses
  br i1 %.048.ph.ph, label %bb.j, label %bb.ae

bb.j:                                             ; preds = %bb.i
  br i1 %i.br, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.thread", label %.preheader.i

.preheader.i:                                     ; preds = %bb.j
  %storemerge80.i = getelementptr inbounds nuw i8, ptr %.024.ph, i64 80 ; 2 uses
  %.not81.i = icmp eq ptr %storemerge80.i, %.021
  br i1 %.not81.i, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.thread", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.sroa.17.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.17.i, i64 8 ; 2 uses
  %.sroa.13.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %.sroa.14.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %23, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %24, i64 1
  %i.bv = getelementptr inbounds nuw i8, ptr %24, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.ad, %.lr.ph.i
  %storemerge83.i = phi ptr [ %storemerge80.i, %.lr.ph.i ], [ %storemerge.i, %bb.ad ] ; 6 uses
  %.pn82.i = phi ptr [ %.024.ph, %.lr.ph.i ], [ %storemerge83.i, %bb.ad ] ; 5 uses
  %i.bw = call fastcc noundef zeroext i1 @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_0clINS3_15directory_entryESI_EEDaRKT_RKT0_"(ptr noundef nonnull align 16 dereferenceable(80) %storemerge83.i, ptr noundef nonnull align 16 dereferenceable(80) %.pn82.i)
  br i1 %i.bw, label %bb.l, label %bb.ad

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i)
  %.sroa.0.0.copyload.i = load i64, ptr %storemerge83.i, align 16 ; 5 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn82.i, i64 88
  %.sroa.13.0.copyload.i = load i64, ptr %.sroa.13.0..sroa_idx.i, align 8 ; 4 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn82.i, i64 96
  %.sroa.14.0.copyload.i = load ptr, ptr %.sroa.14.0..sroa_idx.i, align 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %storemerge83.i, i8 0, i64 24, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn82.i, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.17.32..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(48) %i.bx, i64 48, i1 false), !tbaa.struct !224
  %i.by = trunc i64 %.sroa.0.0.copyload.i to i1   ; 2 uses
  %i.bz = trunc i64 %.sroa.0.0.copyload.i to i8
  br label %bb.m

bb.m:                                             ; preds = %bb.aa, %bb.l
  %.056.i = phi ptr [ %.pn82.i, %bb.l ], [ %i.cj, %bb.aa ] ; 10 uses
  %.0.i = phi ptr [ %storemerge83.i, %bb.l ], [ %.056.i, %bb.aa ] ; 5 uses
  %i.ca = load i8, ptr %.0.i, align 8
  %i.cb = trunc i8 %i.ca to i1
  br i1 %i.cb, label %bb.n, label %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !149
  %i.ce = load i64, ptr %.0.i, align 8
  %i.cf = and i64 %i.ce, -2
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cf) #30
  br label %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i

_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i: ; preds = %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.0.i, ptr noundef nonnull align 16 dereferenceable(80) %.056.i, i64 24, i1 false), !tbaa.struct !164
  store i8 0, ptr %.056.i, align 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.056.i, i64 1
  store i8 0, ptr %i.cg, align 1, !tbaa !149
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %.056.i, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.ch, ptr noundef nonnull align 16 dereferenceable(42) %i.ci, i64 42, i1 false), !tbaa.struct !224
  %.not18.i = icmp eq ptr %.056.i, %.024.ph
  br i1 %.not18.i, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i
  %i.cj = getelementptr inbounds i8, ptr %.056.i, i64 -80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  br i1 %i.by, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 %.sroa.0.0.copyload.i, ptr %23, align 8
  store i64 %.sroa.13.0.copyload.i, ptr %.sroa.13.0..sroa_idx8.i, align 8
  store ptr %.sroa.14.0.copyload.i, ptr %.sroa.14.0..sroa_idx11.i, align 8, !tbaa !149
  br label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i.i

bb.q:                                             ; preds = %bb.o
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef %.sroa.14.0.copyload.i, i64 noundef %.sroa.13.0.copyload.i)
          to label %._ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i_crit_edge.i unwind label %.body.thread.i

._ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i_crit_edge.i: ; preds = %bb.q
  %.pre.i = load i8, ptr %23, align 8
  %.pre101.i = load ptr, ptr %.sroa.14.0..sroa_idx11.i, align 8
  %.pre102.i = load i64, ptr %.sroa.13.0..sroa_idx8.i, align 8
  br label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i.i

_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i.i: ; preds = %._ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i_crit_edge.i, %bb.p
  %i.ck = phi i64 [ %.pre102.i, %._ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i_crit_edge.i ], [ %.sroa.13.0.copyload.i, %bb.p ]
  %i.cl = phi ptr [ %.pre101.i, %._ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i_crit_edge.i ], [ %.sroa.14.0.copyload.i, %bb.p ]
  %i.cm = phi i8 [ %.pre.i, %._ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i_crit_edge.i ], [ %i.bz, %bb.p ] ; 2 uses
  %i.cn = trunc i8 %i.cm to i1                    ; 2 uses
  %i.co = select i1 %i.cn, ptr %i.cl, ptr %i.bs
  %i.cp = lshr i8 %i.cm, 1
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = select i1 %i.cn, i64 %i.ck, i64 %i.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  %i.cs = load i8, ptr %i.cj, align 16, !noalias !577
  %i.ct = trunc i8 %i.cs to i1
  br i1 %i.ct, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull readonly align 16 dereferenceable(80) %i.cj, i64 24, i1 false), !tbaa.struct !164
  br label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i.i

bb.s:                                             ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i.i
  %i.cu = getelementptr inbounds i8, ptr %.056.i, i64 -64
  %i.cv = load ptr, ptr %i.cu, align 16, !tbaa !149, !noalias !577
  %i.cw = getelementptr inbounds i8, ptr %.056.i, i64 -72
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !149, !noalias !577
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef %i.cv, i64 noundef %i.cx)
          to label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i.i unwind label %bb.w

_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i.i: ; preds = %bb.s, %bb.r
  %i.cy = load i8, ptr %24, align 8               ; 2 uses
  %i.cz = trunc i8 %i.cy to i1                    ; 2 uses
  %i.da = load ptr, ptr %i.bt, align 8
  %i.db = select i1 %i.cz, ptr %i.da, ptr %i.bu
  %i.dc = load i64, ptr %i.bv, align 8
  %i.dd = lshr i8 %i.cy, 1
  %i.de = zext nneg i8 %i.dd to i64
  %i.df = select i1 %i.cz, i64 %i.dc, i64 %i.de
  %i.dg = invoke noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.co, i64 %i.cr, ptr %i.db, i64 %i.df)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i.i
  %i.dh = load i8, ptr %24, align 8
  %i.di = trunc i8 %i.dh to i1
  br i1 %i.di, label %bb.u, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.dj = load ptr, ptr %i.bt, align 8, !tbaa !149
  %i.dk = load i64, ptr %24, align 8
  %i.dl = and i64 %i.dk, -2
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dl) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  %i.dm = load i8, ptr %23, align 8
  %i.dn = trunc i8 %i.dm to i1
  br i1 %i.dn, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i
  %i.do = load ptr, ptr %.sroa.14.0..sroa_idx11.i, align 8, !tbaa !149
  %i.dp = load i64, ptr %23, align 8
  %i.dq = and i64 %i.dp, -2
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dq) #30
  br label %bb.aa

bb.w:                                             ; preds = %bb.s
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i.i

bb.x:                                             ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i.i
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load i8, ptr %24, align 8
  %i.du = trunc i8 %i.dt to i1
  br i1 %i.du, label %bb.y, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i.i

bb.y:                                             ; preds = %bb.x
  %i.dv = load ptr, ptr %i.bt, align 8, !tbaa !149
  %i.dw = load i64, ptr %24, align 8
  %i.dx = and i64 %i.dw, -2
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dx) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i.i: ; preds = %bb.y, %bb.x, %bb.w
  %.pn.i.i = phi { ptr, i32 } [ %i.dr, %bb.w ], [ %i.ds, %bb.x ], [ %i.ds, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  %i.dy = load i8, ptr %23, align 8
  %i.dz = trunc i8 %i.dy to i1
  br i1 %i.dz, label %bb.z, label %.body.i

bb.z:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i.i
  %i.ea = load ptr, ptr %.sroa.14.0..sroa_idx11.i, align 8, !tbaa !149
  %i.eb = load i64, ptr %23, align 8
  %i.ec = and i64 %i.eb, -2
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ec) #30
  br label %.body.i

bb.aa:                                            ; preds = %bb.v, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  br i1 %i.dg, label %bb.m, label %.critedge.i, !llvm.loop !535

.critedge.i:                                      ; preds = %bb.aa, %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i
  %.056.lcssa.i = phi ptr [ %.024.ph, %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i ], [ %.056.i, %bb.aa ] ; 6 uses
  %i.ed = load i8, ptr %.056.lcssa.i, align 8
  %i.ee = trunc i8 %i.ed to i1
  br i1 %i.ee, label %bb.ab, label %_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit.i

bb.ab:                                            ; preds = %.critedge.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.056.lcssa.i, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !149
  %i.eh = load i64, ptr %.056.lcssa.i, align 8
end_hunk_0
begin_hunk_1_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryELb0EEEvT1_SM_T0_NS_15iterator_traitsISM_E15difference_typeEb":bb.a
  %.sroa.14.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %.pn85.i, i64 96
  %.sroa.14.0.copyload.i67 = load ptr, ptr %.sroa.14.0..sroa_idx.i66, align 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %storemerge86.i, i8 0, i64 24, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %.pn85.i, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.17.32..sroa_idx.i58, ptr noundef nonnull align 16 dereferenceable(48) %i.eq, i64 48, i1 false), !tbaa.struct !224
  %i.er = trunc i64 %.sroa.0.0.copyload.i63 to i1 ; 2 uses
  %i.es = trunc i64 %.sroa.0.0.copyload.i63 to i8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.au, %bb.ag
  %.056.i68 = phi ptr [ %.pn85.i, %bb.ag ], [ %i.fc, %bb.au ] ; 14 uses
  %.0.i69 = phi ptr [ %storemerge86.i, %bb.ag ], [ %.056.i68, %bb.au ] ; 5 uses
  %i.et = load i8, ptr %.0.i69, align 8
  %i.eu = trunc i8 %i.et to i1
  br i1 %i.eu, label %bb.ai, label %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i70

bb.ai:                                            ; preds = %bb.ah
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i69, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !149
  %i.ex = load i64, ptr %.0.i69, align 8
  %i.ey = and i64 %i.ex, -2
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ey) #30
  br label %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i70

_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i70: ; preds = %bb.ai, %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.0.i69, ptr noundef nonnull align 16 dereferenceable(80) %.056.i68, i64 24, i1 false), !tbaa.struct !164
  store i8 0, ptr %.056.i68, align 16
  %i.ez = getelementptr inbounds nuw i8, ptr %.056.i68, i64 1
  store i8 0, ptr %i.ez, align 1, !tbaa !149
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.i69, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %.056.i68, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.fa, ptr noundef nonnull align 16 dereferenceable(42) %i.fb, i64 42, i1 false), !tbaa.struct !224
  %i.fc = getelementptr inbounds i8, ptr %.056.i68, i64 -80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  br i1 %i.er, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i70
  store i64 %.sroa.0.0.copyload.i63, ptr %21, align 8
  store i64 %.sroa.13.0.copyload.i65, ptr %.sroa.13.0..sroa_idx8.i59, align 8
  store ptr %.sroa.14.0.copyload.i67, ptr %.sroa.14.0..sroa_idx11.i60, align 8, !tbaa !149
  br label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i.i71

bb.ak:                                            ; preds = %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i70
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef %.sroa.14.0.copyload.i67, i64 noundef %.sroa.13.0.copyload.i65)
          to label %._ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i_crit_edge.i83 unwind label %.body.thread.i82

._ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i_crit_edge.i83: ; preds = %bb.ak
  %.pre.i84 = load i8, ptr %21, align 8
  %.pre103.i = load ptr, ptr %.sroa.14.0..sroa_idx11.i60, align 8
  %.pre104.i = load i64, ptr %.sroa.13.0..sroa_idx8.i59, align 8
  br label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i.i71

_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i.i71: ; preds = %._ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i_crit_edge.i83, %bb.aj
  %i.fd = phi i64 [ %.pre104.i, %._ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i_crit_edge.i83 ], [ %.sroa.13.0.copyload.i65, %bb.aj ]
  %i.fe = phi ptr [ %.pre103.i, %._ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i_crit_edge.i83 ], [ %.sroa.14.0.copyload.i67, %bb.aj ]
  %i.ff = phi i8 [ %.pre.i84, %._ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i_crit_edge.i83 ], [ %i.es, %bb.aj ] ; 2 uses
  %i.fg = trunc i8 %i.ff to i1                    ; 2 uses
  %i.fh = select i1 %i.fg, ptr %i.fe, ptr %i.el
  %i.fi = lshr i8 %i.ff, 1
  %i.fj = zext nneg i8 %i.fi to i64
  %i.fk = select i1 %i.fg, i64 %i.fd, i64 %i.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  %i.fl = load i8, ptr %i.fc, align 16, !noalias !578
  %i.fm = trunc i8 %i.fl to i1
  br i1 %i.fm, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i.i71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull readonly align 16 dereferenceable(80) %i.fc, i64 24, i1 false), !tbaa.struct !164
  br label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i.i72

bb.am:                                            ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i.i71
  %i.fn = getelementptr inbounds i8, ptr %.056.i68, i64 -64
  %i.fo = load ptr, ptr %i.fn, align 16, !tbaa !149, !noalias !578
  %i.fp = getelementptr inbounds i8, ptr %.056.i68, i64 -72
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !149, !noalias !578
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef %i.fo, i64 noundef %i.fq)
          to label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i.i72 unwind label %bb.aq

_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i.i72: ; preds = %bb.am, %bb.al
  %i.fr = load i8, ptr %22, align 8               ; 2 uses
  %i.fs = trunc i8 %i.fr to i1                    ; 2 uses
  %i.ft = load ptr, ptr %i.em, align 8
  %i.fu = select i1 %i.fs, ptr %i.ft, ptr %i.en
  %i.fv = load i64, ptr %i.eo, align 8
  %i.fw = lshr i8 %i.fr, 1
  %i.fx = zext nneg i8 %i.fw to i64
  %i.fy = select i1 %i.fs, i64 %i.fv, i64 %i.fx
  %i.fz = invoke noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.fh, i64 %i.fk, ptr %i.fu, i64 %i.fy)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i.i72
  %i.ga = load i8, ptr %22, align 8
  %i.gb = trunc i8 %i.ga to i1
  br i1 %i.gb, label %bb.ao, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i78

bb.ao:                                            ; preds = %bb.an
  %i.gc = load ptr, ptr %i.em, align 8, !tbaa !149
  %i.gd = load i64, ptr %22, align 8
  %i.ge = and i64 %i.gd, -2
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.ge) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i78

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i78: ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  %i.gf = load i8, ptr %21, align 8
  %i.gg = trunc i8 %i.gf to i1
  br i1 %i.gg, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i78
  %i.gh = load ptr, ptr %.sroa.14.0..sroa_idx11.i60, align 8, !tbaa !149
  %i.gi = load i64, ptr %21, align 8
  %i.gj = and i64 %i.gi, -2
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gj) #30
  br label %bb.au

bb.aq:                                            ; preds = %bb.am
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i.i73

bb.ar:                                            ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i.i72
  %i.gl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gm = load i8, ptr %22, align 8
  %i.gn = trunc i8 %i.gm to i1
  br i1 %i.gn, label %bb.as, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i.i73

bb.as:                                            ; preds = %bb.ar
  %i.go = load ptr, ptr %i.em, align 8, !tbaa !149
  %i.gp = load i64, ptr %22, align 8
  %i.gq = and i64 %i.gp, -2
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gq) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i.i73

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i.i73: ; preds = %bb.as, %bb.ar, %bb.aq
  %.pn.i.i74 = phi { ptr, i32 } [ %i.gk, %bb.aq ], [ %i.gl, %bb.ar ], [ %i.gl, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  %i.gr = load i8, ptr %21, align 8
  %i.gs = trunc i8 %i.gr to i1
  br i1 %i.gs, label %bb.at, label %.body.i75

bb.at:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i.i73
  %i.gt = load ptr, ptr %.sroa.14.0..sroa_idx11.i60, align 8, !tbaa !149
  %i.gu = load i64, ptr %21, align 8
  %i.gv = and i64 %i.gu, -2
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gv) #30
  br label %.body.i75

bb.au:                                            ; preds = %bb.ap, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br i1 %i.fz, label %bb.ah, label %bb.av, !llvm.loop !539

bb.av:                                            ; preds = %bb.au
  %i.gw = load i8, ptr %.056.i68, align 8
  %i.gx = trunc i8 %i.gw to i1
  br i1 %i.gx, label %bb.aw, label %_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit.i79

bb.aw:                                            ; preds = %bb.av
  %i.gy = getelementptr inbounds nuw i8, ptr %.056.i68, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !149
  %i.ha = load i64, ptr %.056.i68, align 8
  %i.hb = and i64 %i.ha, -2
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hb) #30
  br label %_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit.i79

_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit.i79: ; preds = %bb.aw, %bb.av
  store i64 %.sroa.0.0.copyload.i63, ptr %.056.i68, align 16
  %.sroa.13.0..0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %.056.i68, i64 8
  store i64 %.sroa.13.0.copyload.i65, ptr %.sroa.13.0..0..sroa_idx.i80, align 8
  %.sroa.14.0..0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %.056.i68, i64 16
  store ptr %.sroa.14.0.copyload.i67, ptr %.sroa.14.0..0..sroa_idx.i81, align 16, !tbaa !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.fb, ptr noundef nonnull align 8 dereferenceable(42) %.sroa.17.32..sroa_idx.i58, i64 42, i1 false), !tbaa.struct !224
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i54)
  br label %bb.ay

.body.thread.i82:                                 ; preds = %bb.ak
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.body.i75:                                        ; preds = %bb.at, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br i1 %i.er, label %bb.ax, label %_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit16.i

bb.ax:                                            ; preds = %.body.i75, %.body.thread.i82
  %eh.lpad-body59.i77 = phi { ptr, i32 } [ %i.hc, %.body.thread.i82 ], [ %.pn.i.i74, %.body.i75 ]
  %i.hd = and i64 %.sroa.0.0.copyload.i63, -2
  call void @_ZdlPvm(ptr noundef %.sroa.14.0.copyload.i67, i64 noundef %i.hd) #30
  br label %_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit16.i

_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit16.i: ; preds = %bb.ax, %.body.i75
  %eh.lpad-body58.i76 = phi { ptr, i32 } [ %.pn.i.i74, %.body.i75 ], [ %eh.lpad-body59.i77, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i54)
  br label %common.resume

bb.ay:                                            ; preds = %_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit.i79, %bb.af
  %storemerge.i61 = getelementptr inbounds nuw i8, ptr %storemerge86.i, i64 80 ; 2 uses
  %.not.i62 = icmp eq ptr %storemerge.i61, %.021
  br i1 %.not.i62, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.thread", label %bb.af, !llvm.loop !540

bb.az:                                            ; preds = %bb.h
  %i.he = icmp eq i64 %.046, 0
  br i1 %i.he, label %bb.ba, label %bb.df

bb.ba:                                            ; preds = %bb.az
  %i.hf = add nsw i64 %i.au, -2
  %i.hg = lshr i64 %i.hf, 1                       ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_OT0_NS_15iterator_traitsISM_E15difference_typeESM_.exit", %bb.ba
  %.01.i.i.i = phi i64 [ %i.hg, %bb.ba ], [ %i.ix, %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_OT0_NS_15iterator_traitsISM_E15difference_typeESM_.exit" ] ; 4 uses
  %i.hi = getelementptr inbounds nuw [80 x i8], ptr %.024.ph, i64 %.01.i.i.i ; 5 uses
  %i.hj = shl nsw i64 %.01.i.i.i, 1               ; 2 uses
  %i.hk = or disjoint i64 %i.hj, 1                ; 3 uses
  %i.hl = getelementptr inbounds [80 x i8], ptr %.024.ph, i64 %i.hk ; 4 uses
  %i.hm = add nsw i64 %i.hj, 2                    ; 2 uses
  %i.hn = icmp slt i64 %i.hm, %i.au
  br i1 %i.hn, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 80 ; 2 uses
  %i.hp = call fastcc noundef zeroext i1 @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_0clINS3_15directory_entryESI_EEDaRKT_RKT0_"(ptr noundef nonnull align 16 dereferenceable(80) %i.hl, ptr noundef nonnull align 16 dereferenceable(80) %i.ho) ; 2 uses
  %spec.select.i = select i1 %i.hp, ptr %i.ho, ptr %i.hl
  %spec.select14.i = select i1 %i.hp, i64 %i.hm, i64 %i.hk
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.010.i = phi ptr [ %i.hl, %bb.bb ], [ %spec.select.i, %bb.bc ] ; 2 uses
  %.0.i142 = phi i64 [ %i.hk, %bb.bb ], [ %spec.select14.i, %bb.bc ]
  %i.hq = call fastcc noundef zeroext i1 @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_0clINS3_15directory_entryESI_EEDaRKT_RKT0_"(ptr noundef nonnull align 16 dereferenceable(80) %.010.i, ptr noundef nonnull align 16 dereferenceable(80) %i.hi)
  br i1 %i.hq, label %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_OT0_NS_15iterator_traitsISM_E15difference_typeESM_.exit", label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %6, ptr noundef nonnull align 16 dereferenceable(80) %i.hi, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.hi, i8 0, i64 24, i1 false)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.hh, ptr noundef nonnull align 16 dereferenceable(48) %i.hr, i64 48, i1 false), !tbaa.struct !224
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bn, %bb.be
  %.013.i = phi ptr [ %i.hi, %bb.be ], [ %.111.i, %bb.bn ] ; 5 uses
  %.111.i = phi ptr [ %.010.i, %bb.be ], [ %.212.i, %bb.bn ] ; 9 uses
  %.1.i143 = phi i64 [ %.0.i142, %bb.be ], [ %.2.i145, %bb.bn ] ; 2 uses
  %i.hs = load i8, ptr %.013.i, align 8
  %i.ht = trunc i8 %i.hs to i1
  br i1 %i.ht, label %bb.bg, label %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i144

bb.bg:                                            ; preds = %bb.bf
  %i.hu = getelementptr inbounds nuw i8, ptr %.013.i, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !149
  %i.hw = load i64, ptr %.013.i, align 8
  %i.hx = and i64 %i.hw, -2
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hx) #30
  br label %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i144

_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i144: ; preds = %bb.bg, %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.013.i, ptr noundef nonnull align 16 dereferenceable(80) %.111.i, i64 24, i1 false), !tbaa.struct !164
  store i8 0, ptr %.111.i, align 16
  %i.hy = getelementptr inbounds nuw i8, ptr %.111.i, i64 1
  store i8 0, ptr %i.hy, align 1, !tbaa !149
  %i.hz = getelementptr inbounds nuw i8, ptr %.013.i, i64 32
  %i.ia = getelementptr inbounds nuw i8, ptr %.111.i, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.hz, ptr noundef nonnull align 16 dereferenceable(42) %i.ia, i64 42, i1 false), !tbaa.struct !224
  %i.ib = icmp slt i64 %i.hg, %.1.i143
  br i1 %i.ib, label %bb.bo, label %bb.bj

bb.bh:                                            ; preds = %bb.bm, %bb.bk
  %i.ic = landingpad { ptr, i32 }
          cleanup
  %i.id = load i8, ptr %6, align 16
  %i.ie = trunc i8 %i.id to i1
  br i1 %i.ie, label %bb.bi, label %_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit.i146

bb.bi:                                            ; preds = %bb.bh
  %i.if = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ig = load ptr, ptr %i.if, align 16, !tbaa !149
  %i.ih = load i64, ptr %6, align 16
  %i.ii = and i64 %i.ih, -2
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ii) #30
  br label %_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit.i146

_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit.i146: ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %common.resume

bb.bj:                                            ; preds = %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i144
  %i.ij = shl nsw i64 %.1.i143, 1                 ; 2 uses
  %i.ik = or disjoint i64 %i.ij, 1                ; 3 uses
  %i.il = getelementptr inbounds [80 x i8], ptr %.024.ph, i64 %i.ik ; 4 uses
  %i.im = add nsw i64 %i.ij, 2                    ; 2 uses
  %i.in = icmp slt i64 %i.im, %i.au
  br i1 %i.in, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 80 ; 2 uses
  %i.ip = invoke fastcc noundef zeroext i1 @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_0clINS3_15directory_entryESI_EEDaRKT_RKT0_"(ptr noundef nonnull align 16 dereferenceable(80) %i.il, ptr noundef nonnull align 16 dereferenceable(80) %i.io)
          to label %bb.bl unwind label %bb.bh     ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  %spec.select15.i = select i1 %i.ip, ptr %i.io, ptr %i.il
  %spec.select16.i = select i1 %i.ip, i64 %i.im, i64 %i.ik
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bj
  %.212.i = phi ptr [ %i.il, %bb.bj ], [ %spec.select15.i, %bb.bl ] ; 2 uses
  %.2.i145 = phi i64 [ %i.ik, %bb.bj ], [ %spec.select16.i, %bb.bl ]
  %i.iq = invoke fastcc noundef zeroext i1 @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_0clINS3_15directory_entryESI_EEDaRKT_RKT0_"(ptr noundef nonnull align 16 dereferenceable(80) %.212.i, ptr noundef nonnull align 16 dereferenceable(80) %6)
          to label %bb.bn unwind label %bb.bh

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.iq, label %bb.bo, label %bb.bf, !llvm.loop !541

bb.bo:                                            ; preds = %bb.bn, %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i144
  %i.ir = load i8, ptr %.111.i, align 8
  %i.is = trunc i8 %i.ir to i1
  br i1 %i.is, label %bb.bp, label %_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit29.i

bb.bp:                                            ; preds = %bb.bo
  %i.it = getelementptr inbounds nuw i8, ptr %.111.i, i64 16
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !149
  %i.iv = load i64, ptr %.111.i, align 8
  %i.iw = and i64 %i.iv, -2
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.iw) #30
  br label %_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit29.i

_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit29.i: ; preds = %bb.bp, %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.111.i, ptr noundef nonnull align 16 dereferenceable(80) %6, i64 24, i1 false), !tbaa.struct !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.ia, ptr noundef nonnull align 16 dereferenceable(42) %i.hh, i64 42, i1 false), !tbaa.struct !224
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_OT0_NS_15iterator_traitsISM_E15difference_typeESM_.exit"

"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_OT0_NS_15iterator_traitsISM_E15difference_typeESM_.exit": ; preds = %bb.bd, %_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit29.i
  %i.ix = add nsw i64 %.01.i.i.i, -1
  %.not.i.i.i = icmp eq i64 %.01.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %bb.bb, !llvm.loop !542

.lr.ph.i.i.i:                                     ; preds = %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_OT0_NS_15iterator_traitsISM_E15difference_typeESM_.exit"
  %i.iy = udiv exact i64 %i.at, 80
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.024.ph, i64 8
  %.sroa.1410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.024.ph, i64 16
  %i.iz = getelementptr inbounds nuw i8, ptr %.024.ph, i64 32
  %.sroa.16.32..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.16.i.i.i.i, i64 8 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %17, i64 1
  %i.jc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %18, i64 1
  %i.jf = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.12.32..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.12.i.i.i, i64 8 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %19, i64 1
  %i.ji = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %20, i64 1
  br label %bb.bq

bb.bq:                                            ; preds = %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SL_RT0_NS_15iterator_traitsISL_E15difference_typeE.exit.i.i.i", %.lr.ph.i.i.i
  %.063.i.i.i = phi i64 [ %i.iy, %.lr.ph.i.i.i ], [ %i.pz, %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SL_RT0_NS_15iterator_traitsISL_E15difference_typeE.exit.i.i.i" ] ; 4 uses
  %.01362.i.i.i = phi ptr [ %.021, %.lr.ph.i.i.i ], [ %i.mc, %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SL_RT0_NS_15iterator_traitsISL_E15difference_typeE.exit.i.i.i" ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i.i.i.i)
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.024.ph, align 16 ; 4 uses
  %.sroa.14.0.copyload.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8 ; 2 uses
  %.sroa.1410.0.copyload.i.i.i.i = load ptr, ptr %.sroa.1410.0..sroa_idx.i.i.i.i, align 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.024.ph, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16.32..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.iz, i64 48, i1 false), !tbaa.struct !224
  %i.jk = add nsw i64 %.063.i.i.i, -2
  %i.jl = lshr i64 %i.jk, 1
  br label %bb.br

bb.br:                                            ; preds = %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i.i.i.i.i, %bb.bq
  %.04.i.i.i.i.i = phi ptr [ %.024.ph, %bb.bq ], [ %.15.i.i.i.i.i, %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i.i.i.i.i ] ; 6 uses
  %.0.i.i.i.i.i = phi i64 [ 0, %bb.bq ], [ %.1.i.i.i.i.i, %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i.i.i.i.i ] ; 2 uses
  %i.jm = getelementptr [80 x i8], ptr %.04.i.i.i.i.i, i64 %.0.i.i.i.i.i ; 6 uses
  %i.jn = getelementptr i8, ptr %i.jm, i64 80     ; 4 uses
  %i.jo = shl nsw i64 %.0.i.i.i.i.i, 1            ; 2 uses
  %i.jp = or disjoint i64 %i.jo, 1                ; 2 uses
  %i.jq = add nsw i64 %i.jo, 2                    ; 2 uses
  %i.jr = icmp slt i64 %i.jq, %.063.i.i.i
  br i1 %i.jr, label %bb.bs, label %bb.ce

bb.bs:                                            ; preds = %bb.br
  %i.js = getelementptr i8, ptr %i.jm, i64 160    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.jt = load i8, ptr %i.jn, align 8, !noalias !579
  %i.ju = trunc i8 %i.jt to i1
  br i1 %i.ju, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull readonly align 16 dereferenceable(80) %i.jn, i64 24, i1 false), !tbaa.struct !164
  br label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i14.i.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.jv = getelementptr i8, ptr %i.jm, i64 96
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !149, !noalias !579
  %i.jx = getelementptr i8, ptr %i.jm, i64 88
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !149, !noalias !579
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef %i.jw, i64 noundef %i.jy)
          to label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i14.i.i.i unwind label %.body.i.i.i.i

_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i14.i.i.i: ; preds = %bb.bu, %bb.bt
end_hunk_1
begin_hunk_2_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryELb0EEEvT1_SM_T0_NS_15iterator_traitsISM_E15difference_typeEb":bb.a
bb.cn:                                            ; preds = %bb.dc, %bb.cm
  %.07.i.i.i.i.i = phi ptr [ %.15.i.i.i.i.i, %bb.cm ], [ %.06.i.i.i.i.i, %bb.dc ] ; 5 uses
  %.06.i.i.i.i.i = phi ptr [ %i.ng, %bb.cm ], [ %i.ny, %bb.dc ] ; 11 uses
  %.0.i15.i.i.i.i = phi i64 [ %i.nf, %bb.cm ], [ %i.nx, %bb.dc ] ; 2 uses
  %i.nk = load i8, ptr %.07.i.i.i.i.i, align 8
  %i.nl = trunc i8 %i.nk to i1
  br i1 %i.nl, label %bb.co, label %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i16.i.i.i.i

bb.co:                                            ; preds = %bb.cn
  %i.nm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !149
  %i.no = load i64, ptr %.07.i.i.i.i.i, align 8
  %i.np = and i64 %i.no, -2
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.np) #30
  br label %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i16.i.i.i.i

_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i16.i.i.i.i: ; preds = %bb.co, %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.07.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(80) %.06.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !164
  store i8 0, ptr %.06.i.i.i.i.i, align 16
  %i.nq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 1
  store i8 0, ptr %i.nq, align 1, !tbaa !149
  %i.nr = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 32
  %i.ns = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.nr, ptr noundef nonnull align 16 dereferenceable(42) %i.ns, i64 42, i1 false), !tbaa.struct !224
  %i.nt = icmp eq i64 %.0.i15.i.i.i.i, 0
  br i1 %i.nt, label %bb.dd, label %bb.cq

.split.i.i:                                       ; preds = %bb.cs
  %i.nu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ni, label %bb.cp, label %.body.thread.i.i.i.i

.body.i.i.i:                                      ; preds = %bb.db, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br i1 %i.pn, label %bb.cp, label %.body.thread.i.i.i.i

bb.cp:                                            ; preds = %.body.i.i.i, %.split.i.i
  %eh.lpad-body.i9.i.i = phi { ptr, i32 } [ %i.nu, %.split.i.i ], [ %.pn.i.i.i.i, %.body.i.i.i ]
  %i.nv = and i64 %.sroa.0.0.copyload.i.i.i86, -2
  call void @_ZdlPvm(ptr noundef %.sroa.10.0.copyload.i.i.i, i64 noundef %i.nv) #30
  br label %.body.thread.i.i.i.i

.body.thread.i.i.i.i:                             ; preds = %bb.cp, %.body.i.i.i, %.split.i.i
  %eh.lpad-body.i8.i.i = phi { ptr, i32 } [ %i.nu, %.split.i.i ], [ %eh.lpad-body.i9.i.i, %bb.cp ], [ %.pn.i.i.i.i, %.body.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i)
  br label %_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit.i.i.i.i

bb.cq:                                            ; preds = %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i16.i.i.i.i
  %i.nw = add nsw i64 %.0.i15.i.i.i.i, -1
  %i.nx = lshr i64 %i.nw, 1                       ; 2 uses
  %i.ny = getelementptr inbounds nuw [80 x i8], ptr %.024.ph, i64 %i.nx ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  %i.nz = load i8, ptr %i.ny, align 8, !noalias !581
  %i.oa = trunc i8 %i.nz to i1
  br i1 %i.oa, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull readonly align 16 dereferenceable(80) %i.ny, i64 24, i1 false), !tbaa.struct !164
  br label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i.i.i.i

bb.cs:                                            ; preds = %bb.cq
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !149, !noalias !581
  %i.od = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !149, !noalias !581
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef %i.oc, i64 noundef %i.oe)
          to label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i.i.i.i unwind label %.split.i.i

_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i.i.i.i: ; preds = %bb.cs, %bb.cr
  %i.of = load i8, ptr %19, align 8               ; 2 uses
  %i.og = trunc i8 %i.of to i1                    ; 2 uses
  %i.oh = load ptr, ptr %i.jg, align 8
  %i.oi = select i1 %i.og, ptr %i.oh, ptr %i.jh
  %i.oj = load i64, ptr %i.ji, align 8
  %i.ok = lshr i8 %i.of, 1
  %i.ol = zext nneg i8 %i.ok to i64
  %i.om = select i1 %i.og, i64 %i.oj, i64 %i.ol
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  br i1 %i.ni, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i.i.i.i
  store i64 %.sroa.0.0.copyload.i.i.i86, ptr %20, align 8
  store i64 %.sroa.9.0.copyload.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8
  store ptr %.sroa.10.0.copyload.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !tbaa !149
  br label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i.i.i.i

bb.cu:                                            ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i.i.i.i
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef %.sroa.10.0.copyload.i.i.i, i64 noundef %.sroa.9.0.copyload.i.i.i)
          to label %._ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i_crit_edge.i.i.i unwind label %bb.cy

._ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i_crit_edge.i.i.i: ; preds = %bb.cu
  %.pre.i.i.i = load i8, ptr %20, align 8
  %.pre95.i.i.i = load ptr, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8
  %.pre96.i.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8
  br label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i.i.i.i

_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i.i.i.i: ; preds = %._ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i_crit_edge.i.i.i, %bb.ct
  %i.on = phi i64 [ %.pre96.i.i.i, %._ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i_crit_edge.i.i.i ], [ %.sroa.9.0.copyload.i.i.i, %bb.ct ]
  %i.oo = phi ptr [ %.pre95.i.i.i, %._ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i_crit_edge.i.i.i ], [ %.sroa.10.0.copyload.i.i.i, %bb.ct ]
  %i.op = phi i8 [ %.pre.i.i.i, %._ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i_crit_edge.i.i.i ], [ %i.nj, %bb.ct ] ; 2 uses
  %i.oq = trunc i8 %i.op to i1                    ; 2 uses
  %i.or = select i1 %i.oq, ptr %i.oo, ptr %i.jj
  %i.os = lshr i8 %i.op, 1
  %i.ot = zext nneg i8 %i.os to i64
  %i.ou = select i1 %i.oq, i64 %i.on, i64 %i.ot
  %i.ov = invoke noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.oi, i64 %i.om, ptr %i.or, i64 %i.ou)
          to label %bb.cv unwind label %bb.cz

bb.cv:                                            ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i.i.i.i
  %i.ow = load i8, ptr %20, align 8
  %i.ox = trunc i8 %i.ow to i1
  br i1 %i.ox, label %bb.cw, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i

bb.cw:                                            ; preds = %bb.cv
  %i.oy = load ptr, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !tbaa !149
  %i.oz = load i64, ptr %20, align 8
  %i.pa = and i64 %i.oz, -2
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pa) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i: ; preds = %bb.cw, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  %i.pb = load i8, ptr %19, align 8
  %i.pc = trunc i8 %i.pb to i1
  br i1 %i.pc, label %bb.cx, label %bb.dc

bb.cx:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i
  %i.pd = load ptr, ptr %i.jg, align 8, !tbaa !149
  %i.pe = load i64, ptr %19, align 8
  %i.pf = and i64 %i.pe, -2
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.pf) #30
  br label %bb.dc

bb.cy:                                            ; preds = %bb.cu
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i.i.i.i

bb.cz:                                            ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i.i.i.i
  %i.ph = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pi = load i8, ptr %20, align 8
  %i.pj = trunc i8 %i.pi to i1
  br i1 %i.pj, label %bb.da, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  %i.pk = load ptr, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !tbaa !149
  %i.pl = load i64, ptr %20, align 8
  %i.pm = and i64 %i.pl, -2
  call void @_ZdlPvm(ptr noundef %i.pk, i64 noundef %i.pm) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i.i.i.i: ; preds = %bb.da, %bb.cz, %bb.cy
  %i.pn = phi i1 [ true, %bb.cy ], [ %i.ni, %bb.cz ], [ %i.ni, %bb.da ]
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.pg, %bb.cy ], [ %i.ph, %bb.cz ], [ %i.ph, %bb.da ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  %i.po = load i8, ptr %19, align 8
  %i.pp = trunc i8 %i.po to i1
  br i1 %i.pp, label %bb.db, label %.body.i.i.i

bb.db:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i.i.i.i
  %i.pq = load ptr, ptr %i.jg, align 8, !tbaa !149
  %i.pr = load i64, ptr %19, align 8
  %i.ps = and i64 %i.pr, -2
  call void @_ZdlPvm(ptr noundef %i.pq, i64 noundef %i.ps) #30
  br label %.body.i.i.i

bb.dc:                                            ; preds = %bb.cx, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br i1 %i.ov, label %bb.cn, label %bb.dd, !llvm.loop !550

bb.dd:                                            ; preds = %bb.dc, %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i16.i.i.i.i
  %i.pt = load i8, ptr %.06.i.i.i.i.i, align 8
  %i.pu = trunc i8 %i.pt to i1
  br i1 %i.pu, label %bb.de, label %_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit13.i.i.i.i.i

bb.de:                                            ; preds = %bb.dd
  %i.pv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !149
  %i.px = load i64, ptr %.06.i.i.i.i.i, align 8
  %i.py = and i64 %i.px, -2
  call void @_ZdlPvm(ptr noundef %i.pw, i64 noundef %i.py) #30
  br label %_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit13.i.i.i.i.i

_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit13.i.i.i.i.i: ; preds = %bb.de, %bb.dd
  store i64 %.sroa.0.0.copyload.i.i.i86, ptr %.06.i.i.i.i.i, align 16
  %.sroa.9.0..06.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  store i64 %.sroa.9.0.copyload.i.i.i, ptr %.sroa.9.0..06.i.i.sroa_idx.i.i.i, align 8
  %.sroa.10.0..06.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  store ptr %.sroa.10.0.copyload.i.i.i, ptr %.sroa.10.0..06.i.i.sroa_idx.i.i.i, align 16, !tbaa !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.ns, ptr noundef nonnull align 8 dereferenceable(42) %.sroa.12.32..sroa_idx.i.i.i, i64 42, i1 false), !tbaa.struct !224
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i)
  br label %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SL_RT0_NS_15iterator_traitsISL_E15difference_typeE.exit.i.i.i"

"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SL_RT0_NS_15iterator_traitsISL_E15difference_typeE.exit.i.i.i": ; preds = %_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit13.i.i.i.i.i, %.noexc17.i.i.i.i, %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit14.i.i.i.i, %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i.i.i)
  %i.pz = add nsw i64 %.063.i.i.i, -1
  %i.qa = icmp sgt i64 %.063.i.i.i, 2
  br i1 %i.qa, label %bb.bq, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.thread", !llvm.loop !551

bb.df:                                            ; preds = %bb.az
  %i.qb = add nsw i64 %.046, -1                   ; 4 uses
  %i.qc = lshr i64 %i.au, 1
  %i.qd = icmp samesign ugt i64 %i.at, 10240
  %i.qe = getelementptr [80 x i8], ptr %.024.ph, i64 %i.qc ; 9 uses
  %i.qf = getelementptr inbounds i8, ptr %.021, i64 -80 ; 2 uses
  br i1 %i.qd, label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8ne180100IRPNS_4__fs10filesystem15directory_entryES7_EEvOT_OT0_.exit, label %bb.dg

_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8ne180100IRPNS_4__fs10filesystem15directory_entryES7_EEvOT_OT0_.exit: ; preds = %bb.df
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEjT1_SM_SM_T0_"(ptr noundef %.024.ph, ptr noundef %i.qe, ptr noundef nonnull %i.qf)
  %i.qg = getelementptr i8, ptr %i.qe, i64 -80    ; 2 uses
  %i.qh = getelementptr inbounds i8, ptr %.021, i64 -160
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEjT1_SM_SM_T0_"(ptr noundef nonnull %i.am, ptr noundef %i.qg, ptr noundef nonnull %i.qh)
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 80 ; 2 uses
  %i.qj = getelementptr inbounds i8, ptr %.021, i64 -240
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEjT1_SM_SM_T0_"(ptr noundef nonnull %i.an, ptr noundef nonnull %i.qi, ptr noundef nonnull %i.qj)
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEjT1_SM_SM_T0_"(ptr noundef %i.qg, ptr noundef %i.qe, ptr noundef nonnull %i.qi)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i87)
  %.sroa.89.0.copyload.i.i.i92 = load ptr, ptr %.sroa.89.0..sroa_idx.i.i.i91, align 16
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qe, i64 32 ; 2 uses
  %i.ql = load <2 x i64>, ptr %.024.ph, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.024.ph, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.32..sroa_idx.i.i.i93, ptr noundef nonnull align 16 dereferenceable(48) %i.ao, i64 48, i1 false), !tbaa.struct !224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.024.ph, ptr noundef nonnull align 16 dereferenceable(80) %i.qe, i64 24, i1 false), !tbaa.struct !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.ao, ptr noundef nonnull align 16 dereferenceable(42) %i.qk, i64 42, i1 false), !tbaa.struct !224
  store <2 x i64> %i.ql, ptr %i.qe, align 16
  %.sroa.89.0..sroa_idx10.i.i.i95 = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  store ptr %.sroa.89.0.copyload.i.i.i92, ptr %.sroa.89.0..sroa_idx10.i.i.i95, align 16, !tbaa !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.qk, ptr noundef nonnull align 8 dereferenceable(42) %.sroa.9.32..sroa_idx.i.i.i93, i64 42, i1 false), !tbaa.struct !224
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i87)
  br label %bb.dh

bb.dg:                                            ; preds = %bb.df
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEjT1_SM_SM_T0_"(ptr noundef %i.qe, ptr noundef %.024.ph, ptr noundef nonnull %i.qf)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8ne180100IRPNS_4__fs10filesystem15directory_entryES7_EEvOT_OT0_.exit
  br i1 %.048.ph.ph, label %bb.ew, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.qm = call fastcc noundef zeroext i1 @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_0clINS3_15directory_entryESI_EEDaRKT_RKT0_"(ptr noundef nonnull align 16 dereferenceable(80) %i.ap, ptr noundef nonnull align 16 dereferenceable(80) %.024.ph)
  br i1 %i.qm, label %bb.ew, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %16, ptr noundef nonnull align 16 dereferenceable(80) %.024.ph, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.024.ph, i8 0, i64 24, i1 false)
  %i.qn = getelementptr inbounds nuw i8, ptr %.024.ph, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 16 dereferenceable(48) %i.qn, i64 48, i1 false), !tbaa.struct !224
  %i.qo = getelementptr inbounds i8, ptr %.021, i64 -80
  %i.qp = invoke fastcc noundef zeroext i1 @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_0clINS3_15directory_entryESI_EEDaRKT_RKT0_"(ptr noundef nonnull align 16 dereferenceable(80) %16, ptr noundef nonnull align 16 dereferenceable(80) %i.qo)
          to label %bb.dk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.dk:                                            ; preds = %bb.dj
  br i1 %i.qp, label %.preheader29.i, label %.preheader33.i

.preheader29.i:                                   ; preds = %bb.dk, %bb.dl
  %.018.i = phi ptr [ %i.qq, %bb.dl ], [ %.024.ph, %bb.dk ]
  %i.qq = getelementptr inbounds nuw i8, ptr %.018.i, i64 80 ; 3 uses
  %i.qr = invoke fastcc noundef zeroext i1 @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_0clINS3_15directory_entryESI_EEDaRKT_RKT0_"(ptr noundef nonnull align 16 dereferenceable(80) %16, ptr noundef nonnull align 16 dereferenceable(80) %i.qq)
          to label %bb.dl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.dl:                                            ; preds = %.preheader29.i
  br i1 %i.qr, label %.critedge.i97, label %.preheader29.i, !llvm.loop !552

.loopexit.i:                                      ; preds = %bb.ee
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i96

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.ds
  %lpad.loopexit22.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i96

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %.preheader25.i
  %lpad.loopexit26.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i96

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.preheader29.i
  %lpad.loopexit30.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i96

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.dm
  %lpad.loopexit35.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i96

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.dj
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i96

.preheader33.i:                                   ; preds = %bb.dk, %bb.dn
  %.119.i = phi ptr [ %i.qs, %bb.dn ], [ %.024.ph, %bb.dk ]
  %i.qs = getelementptr inbounds nuw i8, ptr %.119.i, i64 80 ; 5 uses
  %i.qt = icmp ult ptr %i.qs, %.021
  br i1 %i.qt, label %bb.dm, label %.critedge.i97

bb.dm:                                            ; preds = %.preheader33.i
  %i.qu = invoke fastcc noundef zeroext i1 @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_0clINS3_15directory_entryESI_EEDaRKT_RKT0_"(ptr noundef nonnull align 16 dereferenceable(80) %16, ptr noundef nonnull align 16 dereferenceable(80) %i.qs)
          to label %bb.dn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.dn:                                            ; preds = %bb.dm
  br i1 %i.qu, label %.critedge.i97, label %.preheader33.i, !llvm.loop !553

.critedge.i97:                                    ; preds = %bb.dn, %.preheader33.i, %bb.dl
  %.220.i = phi ptr [ %i.qq, %bb.dl ], [ %i.qs, %.preheader33.i ], [ %i.qs, %bb.dn ] ; 4 uses
  %i.qv = icmp ult ptr %.220.i, %.021
  br i1 %i.qv, label %.preheader25.i, label %.loopexit28.i

.preheader25.i:                                   ; preds = %.critedge.i97, %bb.do
  %.0.i109 = phi ptr [ %i.qw, %bb.do ], [ %.021, %.critedge.i97 ]
  %i.qw = getelementptr inbounds i8, ptr %.0.i109, i64 -80 ; 3 uses
  %i.qx = invoke fastcc noundef zeroext i1 @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_0clINS3_15directory_entryESI_EEDaRKT_RKT0_"(ptr noundef nonnull align 16 dereferenceable(80) %16, ptr noundef nonnull align 16 dereferenceable(80) %i.qw)
          to label %bb.do unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.do:                                            ; preds = %.preheader25.i
  br i1 %i.qx, label %.preheader25.i, label %.loopexit28.i, !llvm.loop !554

.loopexit28.i:                                    ; preds = %bb.do, %.critedge.i97
  %.1.i = phi ptr [ %.021, %.critedge.i97 ], [ %i.qw, %bb.do ] ; 2 uses
  %i.qy = icmp ult ptr %.220.i, %.1.i
  br i1 %i.qy, label %.lr.ph.i101, label %._crit_edge.i

.lr.ph.i101:                                      ; preds = %.loopexit28.i, %bb.ep
  %.267.i = phi ptr [ %i.th, %bb.ep ], [ %.1.i, %.loopexit28.i ] ; 10 uses
  %.32166.i = phi ptr [ %i.rn, %bb.ep ], [ %.220.i, %.loopexit28.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i)
  %i.qz = load <2 x i64>, ptr %.32166.i, align 16
  %.sroa.89.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.32166.i, i64 16
  %.sroa.89.0.copyload.i.i.i.i = load ptr, ptr %.sroa.89.0..sroa_idx.i.i.i.i, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.32166.i, i8 0, i64 24, i1 false)
  %i.ra = getelementptr inbounds nuw i8, ptr %.32166.i, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.32..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.ra, i64 48, i1 false), !tbaa.struct !224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.32166.i, ptr noundef nonnull align 16 dereferenceable(80) %.267.i, i64 24, i1 false), !tbaa.struct !164
  store i8 0, ptr %.267.i, align 16
  %i.rb = getelementptr inbounds nuw i8, ptr %.267.i, i64 1
  store i8 0, ptr %i.rb, align 1, !tbaa !149
  %i.rc = getelementptr inbounds nuw i8, ptr %.267.i, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.ra, ptr noundef nonnull align 16 dereferenceable(42) %i.rc, i64 42, i1 false), !tbaa.struct !224
  %i.rd = load i8, ptr %.267.i, align 16
  %i.re = trunc i8 %i.rd to i1
  br i1 %i.re, label %bb.dp, label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8ne180100IRPNS_4__fs10filesystem15directory_entryES8_EEvOT_OT0_.exit.i

bb.dp:                                            ; preds = %.lr.ph.i101
  %i.rf = getelementptr inbounds nuw i8, ptr %.267.i, i64 16
  %i.rg = load ptr, ptr %i.rf, align 16, !tbaa !149
  %i.rh = load i64, ptr %.267.i, align 16
  %i.ri = and i64 %i.rh, -2
  call void @_ZdlPvm(ptr noundef %i.rg, i64 noundef %i.ri) #30
  br label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8ne180100IRPNS_4__fs10filesystem15directory_entryES8_EEvOT_OT0_.exit.i

_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8ne180100IRPNS_4__fs10filesystem15directory_entryES8_EEvOT_OT0_.exit.i: ; preds = %bb.dp, %.lr.ph.i101
  store <2 x i64> %i.qz, ptr %.267.i, align 16
  %.sroa.89.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %.267.i, i64 16
  store ptr %.sroa.89.0.copyload.i.i.i.i, ptr %.sroa.89.0..sroa_idx10.i.i.i.i, align 16, !tbaa !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.rc, ptr noundef nonnull align 8 dereferenceable(42) %.sroa.9.32..sroa_idx.i.i.i.i, i64 42, i1 false), !tbaa.struct !224
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i)
  %i.rj = load i8, ptr %16, align 16, !noalias !582
  %i.rk = trunc i8 %i.rj to i1                    ; 2 uses
  %i.rl = load ptr, ptr %i.b, align 16            ; 2 uses
  %i.rm = load i64, ptr %i.c, align 8             ; 2 uses
  br label %bb.dq

bb.dq:                                            ; preds = %bb.ec, %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8ne180100IRPNS_4__fs10filesystem15directory_entryES8_EEvOT_OT0_.exit.i
  %.4.i = phi ptr [ %.32166.i, %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8ne180100IRPNS_4__fs10filesystem15directory_entryES8_EEvOT_OT0_.exit.i ], [ %i.rn, %bb.ec ] ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.4.i, i64 80 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  br i1 %i.rk, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull readonly align 16 dereferenceable(80) %16, i64 24, i1 false), !tbaa.struct !164
  br label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i.i103

bb.ds:                                            ; preds = %bb.dq
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef %i.rl, i64 noundef %i.rm)
          to label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i.i103 unwind label %.loopexit.split-lp.loopexit.i

_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i.i103: ; preds = %bb.ds, %bb.dr
  %i.ro = load i8, ptr %14, align 8               ; 2 uses
  %i.rp = trunc i8 %i.ro to i1                    ; 2 uses
  %i.rq = load ptr, ptr %i.d, align 8
  %i.rr = select i1 %i.rp, ptr %i.rq, ptr %i.e
  %i.rs = load i64, ptr %i.f, align 8
  %i.rt = lshr i8 %i.ro, 1
  %i.ru = zext nneg i8 %i.rt to i64
  %i.rv = select i1 %i.rp, i64 %i.rs, i64 %i.ru
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.rw = load i8, ptr %i.rn, align 8, !noalias !583
  %i.rx = trunc i8 %i.rw to i1
  br i1 %i.rx, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i.i103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull readonly align 16 dereferenceable(80) %i.rn, i64 24, i1 false), !tbaa.struct !164
  br label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i.i104

bb.du:                                            ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i.i103
  %i.ry = getelementptr inbounds nuw i8, ptr %.4.i, i64 96
end_hunk_2
begin_hunk_3_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryELb0EEEvT1_SM_T0_NS_15iterator_traitsISM_E15difference_typeEb":bb.a

bb.gd:                                            ; preds = %.preheader.i136
  %i.aas = getelementptr inbounds i8, ptr %.4.i137, i64 -64
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !149, !noalias !587
  %i.aau = getelementptr inbounds i8, ptr %.4.i137, i64 -72
  %i.aav = load i64, ptr %i.aau, align 8, !tbaa !149, !noalias !587
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %i.aat, i64 noundef %i.aav)
          to label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i17.i unwind label %.loopexit.i138

_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i17.i: ; preds = %bb.gd, %bb.gc
  %i.aaw = load i8, ptr %7, align 8               ; 2 uses
  %i.aax = trunc i8 %i.aaw to i1                  ; 2 uses
  %i.aay = load ptr, ptr %i.af, align 8
  %i.aaz = select i1 %i.aax, ptr %i.aay, ptr %i.ag
  %i.aba = load i64, ptr %i.ah, align 8
  %i.abb = lshr i8 %i.aaw, 1
  %i.abc = zext nneg i8 %i.abb to i64
  %i.abd = select i1 %i.aax, i64 %i.aba, i64 %i.abc
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  br i1 %i.ys, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i17.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull readonly align 16 dereferenceable(80) %11, i64 24, i1 false), !tbaa.struct !164
  br label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i18.i

bb.gf:                                            ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit.i17.i
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.yt, i64 noundef %i.yu)
          to label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i18.i unwind label %bb.gj

_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i18.i: ; preds = %bb.gf, %bb.ge
  %i.abe = load i8, ptr %8, align 8               ; 2 uses
  %i.abf = trunc i8 %i.abe to i1                  ; 2 uses
  %i.abg = load ptr, ptr %i.ai, align 8
  %i.abh = select i1 %i.abf, ptr %i.abg, ptr %i.aj
  %i.abi = load i64, ptr %i.ak, align 8
  %i.abj = lshr i8 %i.abe, 1
  %i.abk = zext nneg i8 %i.abj to i64
  %i.abl = select i1 %i.abf, i64 %i.abi, i64 %i.abk
  %i.abm = invoke noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.aaz, i64 %i.abd, ptr %i.abh, i64 %i.abl)
          to label %bb.gg unwind label %bb.gk

bb.gg:                                            ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i18.i
  %i.abn = load i8, ptr %8, align 8
  %i.abo = trunc i8 %i.abn to i1
  br i1 %i.abo, label %bb.gh, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i22.i

bb.gh:                                            ; preds = %bb.gg
  %i.abp = load ptr, ptr %i.ai, align 8, !tbaa !149
  %i.abq = load i64, ptr %8, align 8
  %i.abr = and i64 %i.abq, -2
  call void @_ZdlPvm(ptr noundef %i.abp, i64 noundef %i.abr) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i22.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i22.i: ; preds = %bb.gh, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.abs = load i8, ptr %7, align 8
  %i.abt = trunc i8 %i.abs to i1
  br i1 %i.abt, label %bb.gi, label %bb.gn

bb.gi:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i22.i
  %i.abu = load ptr, ptr %i.af, align 8, !tbaa !149
  %i.abv = load i64, ptr %7, align 8
  %i.abw = and i64 %i.abv, -2
  call void @_ZdlPvm(ptr noundef %i.abu, i64 noundef %i.abw) #30
  br label %bb.gn

bb.gj:                                            ; preds = %bb.gf
  %i.abx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i19.i

bb.gk:                                            ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7.i18.i
  %i.aby = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abz = load i8, ptr %8, align 8
  %i.aca = trunc i8 %i.abz to i1
  br i1 %i.aca, label %bb.gl, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i19.i

bb.gl:                                            ; preds = %bb.gk
  %i.acb = load ptr, ptr %i.ai, align 8, !tbaa !149
  %i.acc = load i64, ptr %8, align 8
  %i.acd = and i64 %i.acc, -2
  call void @_ZdlPvm(ptr noundef %i.acb, i64 noundef %i.acd) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i19.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i19.i: ; preds = %bb.gl, %bb.gk, %bb.gj
  %.pn.i20.i = phi { ptr, i32 } [ %i.abx, %bb.gj ], [ %i.aby, %bb.gk ], [ %i.aby, %bb.gl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.ace = load i8, ptr %7, align 8
  %i.acf = trunc i8 %i.ace to i1
  br i1 %i.acf, label %bb.gm, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12.i21.i

bb.gm:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i19.i
  %i.acg = load ptr, ptr %i.af, align 8, !tbaa !149
  %i.ach = load i64, ptr %7, align 8
  %i.aci = and i64 %i.ach, -2
  call void @_ZdlPvm(ptr noundef %i.acg, i64 noundef %i.aci) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12.i21.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12.i21.i: ; preds = %bb.gm, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11.i19.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %.body.i112

bb.gn:                                            ; preds = %bb.gi, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br i1 %i.abm, label %bb.go, label %.preheader.i136, !llvm.loop !575

bb.go:                                            ; preds = %bb.gn
  %i.acj = icmp ult ptr %i.yv, %i.aap
  br i1 %i.acj, label %.lr.ph.i119, label %._crit_edge.i115, !llvm.loop !576

.loopexit.i138:                                   ; preds = %bb.gd
  %lpad.loopexit.i139 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i112

.loopexit.split-lp.i:                             ; preds = %bb.fr
  %lpad.loopexit.split-lp.i140 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i112

._crit_edge.i115:                                 ; preds = %bb.go, %.critedge.i114
  %.119.lcssa.i = phi ptr [ %i.wg, %.critedge.i114 ], [ %i.yv, %bb.go ] ; 8 uses
  %i.ack = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -80 ; 9 uses
  %.not.i116 = icmp eq ptr %.024.ph, %i.ack
  br i1 %.not.i116, label %bb.gr, label %bb.gp

bb.gp:                                            ; preds = %._crit_edge.i115
  %i.acl = load i8, ptr %.024.ph, align 16
  %i.acm = trunc i8 %i.acl to i1
  br i1 %i.acm, label %bb.gq, label %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i117

bb.gq:                                            ; preds = %bb.gp
  %i.acn = load ptr, ptr %i.ar, align 16, !tbaa !149
  %i.aco = load i64, ptr %.024.ph, align 16
  %i.acp = and i64 %i.aco, -2
  call void @_ZdlPvm(ptr noundef %i.acn, i64 noundef %i.acp) #30
  br label %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i117

_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i117: ; preds = %bb.gq, %bb.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.024.ph, ptr noundef nonnull align 16 dereferenceable(80) %i.ack, i64 24, i1 false), !tbaa.struct !164
  store i8 0, ptr %i.ack, align 16
  %i.acq = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -79
  store i8 0, ptr %i.acq, align 1, !tbaa !149
  %i.acr = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.aq, ptr noundef nonnull align 16 dereferenceable(42) %i.acr, i64 42, i1 false), !tbaa.struct !224
  br label %bb.gr

bb.gr:                                            ; preds = %_ZNSt3__14__fs10filesystem15directory_entryaSB8ne180100EOS2_.exit.i117, %._crit_edge.i115
  %i.acs = load i8, ptr %i.ack, align 8
  %i.act = trunc i8 %i.acs to i1
  br i1 %i.act, label %bb.gs, label %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPNS_4__fs10filesystem15directory_entryERZN3tev22BackgroundImagesLoader7enqueueERKNS3_4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS6_5ImageEEEE3$_0EENS_4pairIT0_bEESN_SN_T1_.exit"

bb.gs:                                            ; preds = %bb.gr
  %i.acu = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -64
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !149
  %i.acw = load i64, ptr %i.ack, align 8
  %i.acx = and i64 %i.acw, -2
  call void @_ZdlPvm(ptr noundef %i.acv, i64 noundef %i.acx) #30
  br label %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPNS_4__fs10filesystem15directory_entryERZN3tev22BackgroundImagesLoader7enqueueERKNS3_4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS6_5ImageEEEE3$_0EENS_4pairIT0_bEESN_SN_T1_.exit"

.body.i112:                                       ; preds = %.loopexit.split-lp23.loopexit.split-lp.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12.i, %.loopexit.split-lp.i, %.loopexit.i138, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12.i21.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12.i.i134, %.loopexit.split-lp23.loopexit.i, %.loopexit22.i
  %i.acy = phi ptr [ %i.yt, %.loopexit.split-lp.i ], [ %i.yt, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12.i21.i ], [ %i.yt, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12.i.i134 ], [ %i.we, %.loopexit22.i ], [ %i.we, %.loopexit.split-lp23.loopexit.i ], [ %i.yt, %.loopexit.i138 ], [ %i.we, %.loopexit.split-lp23.loopexit.split-lp.i ], [ %i.we, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12.i ]
  %i.acz = phi i8 [ %i.yr, %.loopexit.split-lp.i ], [ %i.yr, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12.i21.i ], [ %i.yr, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12.i.i134 ], [ %i.wc, %.loopexit22.i ], [ %i.wc, %.loopexit.split-lp23.loopexit.i ], [ %i.yr, %.loopexit.i138 ], [ %i.wc, %.loopexit.split-lp23.loopexit.split-lp.i ], [ %i.wc, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12.i ]
  %.pn.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i140, %.loopexit.split-lp.i ], [ %.pn.i20.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12.i21.i ], [ %.pn.i.i133, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12.i.i134 ], [ %lpad.loopexit24.i, %.loopexit22.i ], [ %lpad.loopexit28.i, %.loopexit.split-lp23.loopexit.i ], [ %lpad.loopexit.i139, %.loopexit.i138 ], [ %lpad.loopexit.split-lp29.i, %.loopexit.split-lp23.loopexit.split-lp.i ], [ %.pn.i147, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12.i ]
  %i.ada = trunc i8 %i.acz to i1
  br i1 %i.ada, label %bb.gt, label %_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit28.i

bb.gt:                                            ; preds = %.body.i112
  %i.adb = load i64, ptr %11, align 16
  %i.adc = and i64 %i.adb, -2
  call void @_ZdlPvm(ptr noundef %i.acy, i64 noundef %i.adc) #30
  br label %_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit28.i

_ZNSt3__14__fs10filesystem15directory_entryD2B8ne180100Ev.exit28.i: ; preds = %bb.gt, %.body.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %common.resume

"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPNS_4__fs10filesystem15directory_entryERZN3tev22BackgroundImagesLoader7enqueueERKNS3_4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS6_5ImageEEEE3$_0EENS_4pairIT0_bEESN_SN_T1_.exit": ; preds = %bb.gr, %bb.gs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.ack, ptr noundef nonnull align 16 dereferenceable(80) %11, i64 24, i1 false), !tbaa.struct !164
  %i.add = getelementptr inbounds i8, ptr %.119.lcssa.i, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.add, ptr noundef nonnull align 16 dereferenceable(42) %i.q, i64 42, i1 false), !tbaa.struct !224
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br i1 %i.yg, label %.loopexit, label %bb.gu

bb.gu:                                            ; preds = %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPNS_4__fs10filesystem15directory_entryERZN3tev22BackgroundImagesLoader7enqueueERKNS3_4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS6_5ImageEEEE3$_0EENS_4pairIT0_bEESN_SN_T1_.exit"
  %i.ade = call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEbT1_SM_T0_"(ptr noundef %.024.ph, ptr noundef nonnull %i.ack) ; 2 uses
  %i.adf = call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEbT1_SM_T0_"(ptr noundef nonnull %.119.lcssa.i, ptr noundef %.021)
  br i1 %i.adf, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  br i1 %i.ade, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.thread", label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit", !llvm.loop !564

bb.gw:                                            ; preds = %bb.gu
  br i1 %i.ade, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.outer", label %.loopexit, !llvm.loop !564

.loopexit:                                        ; preds = %bb.gw, %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPNS_4__fs10filesystem15directory_entryERZN3tev22BackgroundImagesLoader7enqueueERKNS3_4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS6_5ImageEEEE3$_0EENS_4pairIT0_bEESN_SN_T1_.exit"
  call fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryELb0EEEvT1_SM_T0_NS_15iterator_traitsISM_E15difference_typeEb"(ptr noundef %.024.ph, ptr noundef nonnull %i.ack, i64 noundef %i.qb, i1 noundef zeroext %.048.ph.ph)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.outer.outer.backedge"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit.thread": ; preds = %bb.gv, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit", %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_T0_.exit", %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SL_RT0_NS_15iterator_traitsISL_E15difference_typeE.exit.i.i.i", %bb.ay, %bb.ad, %.preheader.i55, %bb.ae, %.preheader.i, %bb.j, %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8ne180100IRPNS_4__fs10filesystem15directory_entryES8_EEvOT_OT0_.exit, %bb.f, %bb.e, %bb.g, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_0clINS3_15directory_entryESI_EEDaRKT_RKT0_"(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(80) %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = load i8, ptr %0, align 16, !noalias !592
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 16 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !164
  br label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !149, !noalias !592
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !149, !noalias !592
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.d, i64 noundef %i.f)
  br label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit

_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit: ; preds = %bb.b, %bb.c
  %i.g = load i8, ptr %2, align 8                 ; 2 uses
  %i.h = trunc i8 %i.g to i1                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.l = select i1 %i.h, ptr %i.j, ptr %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = lshr i8 %i.g, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = select i1 %i.h, i64 %i.n, i64 %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.r = load i8, ptr %1, align 16, !noalias !593
  %i.s = trunc i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 16 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !164
  br label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7

bb.e:                                             ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !149, !noalias !593
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !149, !noalias !593
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.u, i64 noundef %i.w)
          to label %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7 unwind label %bb.i

_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7: ; preds = %bb.d, %bb.e
  %i.x = load i8, ptr %3, align 8                 ; 2 uses
  %i.y = trunc i8 %i.x to i1                      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ac = select i1 %i.y, ptr %i.aa, ptr %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = lshr i8 %i.x, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = select i1 %i.y, i64 %i.ae, i64 %i.ag
  %i.ai = invoke noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.l, i64 %i.q, ptr %i.ac, i64 %i.ah)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7
  %i.aj = load i8, ptr %3, align 8
  %i.ak = trunc i8 %i.aj to i1
  br i1 %i.ak, label %bb.g, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.z, align 8, !tbaa !149
  %i.am = load i64, ptr %3, align 8
  %i.an = and i64 %i.am, -2
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.ao = load i8, ptr %2, align 8
  %i.ap = trunc i8 %i.ao to i1
  br i1 %i.ap, label %bb.h, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10

bb.h:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !149
  %i.ar = load i64, ptr %2, align 8
  %i.as = and i64 %i.ar, -2
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.as) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret i1 %i.ai

bb.i:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11

bb.j:                                             ; preds = %_ZNKSt3__14__fs10filesystem4path6stringB8ne180100Ev.exit7
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load i8, ptr %3, align 8
  %i.aw = trunc i8 %i.av to i1
  br i1 %i.aw, label %bb.k, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.z, align 8, !tbaa !149
  %i.ay = load i64, ptr %3, align 8
  %i.az = and i64 %i.ay, -2
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.az) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11: ; preds = %bb.k, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.at, %bb.i ], [ %i.au, %bb.j ], [ %i.au, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.ba = load i8, ptr %2, align 8
  %i.bb = trunc i8 %i.ba to i1
  br i1 %i.bb, label %bb.l, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12

bb.l:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !149
  %i.bd = load i64, ptr %2, align 8
  %i.be = and i64 %i.bd, -2
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.be) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit11, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZNSt3__124__sort5_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSO_SO_SO_SO_SO_SN_"(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.9.i.i.i25.i = alloca { [8 x i8], %"struct.std::__1::__fs::filesystem::directory_entry::__cached_data" }, align 8 ; 3 uses
  %.sroa.9.i.i.i15.i = alloca { [8 x i8], %"struct.std::__1::__fs::filesystem::directory_entry::__cached_data" }, align 8 ; 3 uses
  %.sroa.9.i.i.i5.i = alloca { [8 x i8], %"struct.std::__1::__fs::filesystem::directory_entry::__cached_data" }, align 8 ; 3 uses
  %.sroa.9.i.i.i.i = alloca { [8 x i8], %"struct.std::__1::__fs::filesystem::directory_entry::__cached_data" }, align 8 ; 3 uses
  tail call fastcc void @"_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_SM_SM_T0_"(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  %i.a = tail call fastcc noundef zeroext i1 @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_0clINS3_15directory_entryESI_EEDaRKT_RKT0_"(ptr noundef nonnull align 16 dereferenceable(80) %4, ptr noundef nonnull align 16 dereferenceable(80) %3)
  br i1 %i.a, label %bb.b, label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_SM_SM_SM_T0_.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i)
  %i.b = load <2 x i64>, ptr %3, align 16
  %.sroa.89.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.sroa.89.0.copyload.i.i.i.i = load ptr, ptr %.sroa.89.0..sroa_idx.i.i.i.i, align 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %3, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %.sroa.9.32..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.9.i.i.i.i, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.32..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.c, i64 48, i1 false), !tbaa.struct !224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %3, ptr noundef nonnull align 16 dereferenceable(80) %4, i64 24, i1 false), !tbaa.struct !164
  store i8 0, ptr %4, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 0, ptr %i.d, align 1, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.c, ptr noundef nonnull align 16 dereferenceable(42) %i.e, i64 42, i1 false), !tbaa.struct !224
  %i.f = load i8, ptr %4, align 16
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8ne180100IRPNS_4__fs10filesystem15directory_entryES8_EEvOT_OT0_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !149
  %i.j = load i64, ptr %4, align 16
  %i.k = and i64 %i.j, -2
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.k) #30
  br label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8ne180100IRPNS_4__fs10filesystem15directory_entryES8_EEvOT_OT0_.exit.i

_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8ne180100IRPNS_4__fs10filesystem15directory_entryES8_EEvOT_OT0_.exit.i: ; preds = %bb.c, %bb.b
  store <2 x i64> %i.b, ptr %4, align 16
  %.sroa.89.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.sroa.89.0.copyload.i.i.i.i, ptr %.sroa.89.0..sroa_idx10.i.i.i.i, align 16, !tbaa !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.e, ptr noundef nonnull align 8 dereferenceable(42) %.sroa.9.32..sroa_idx.i.i.i.i, i64 42, i1 false), !tbaa.struct !224
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i)
  %i.l = tail call fastcc noundef zeroext i1 @"_ZZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEEENK3$_0clINS3_15directory_entryESI_EEDaRKT_RKT0_"(ptr noundef nonnull align 16 dereferenceable(80) %3, ptr noundef nonnull align 16 dereferenceable(80) %2)
  br i1 %i.l, label %bb.d, label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZN3tev22BackgroundImagesLoader7enqueueERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcNS_11char_traitsIcEEEEbRKNS_10shared_ptrINS2_5ImageEEEE3$_0PNS5_15directory_entryEEEvT1_SM_SM_SM_SM_T0_.exit"

bb.d:                                             ; preds = %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8ne180100IRPNS_4__fs10filesystem15directory_entryES8_EEvOT_OT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i5.i)
  %i.m = load <2 x i64>, ptr %2, align 16
  %.sroa.89.0..sroa_idx.i.i.i9.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.sroa.89.0.copyload.i.i.i10.i = load ptr, ptr %.sroa.89.0..sroa_idx.i.i.i9.i, align 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %2, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %.sroa.9.32..sroa_idx.i.i.i11.i = getelementptr inbounds nuw i8, ptr %.sroa.9.i.i.i5.i, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.32..sroa_idx.i.i.i11.i, ptr noundef nonnull align 16 dereferenceable(48) %i.n, i64 48, i1 false), !tbaa.struct !224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %2, ptr noundef nonnull align 16 dereferenceable(80) %3, i64 24, i1 false), !tbaa.struct !164
  store i8 0, ptr %3, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.o, align 1, !tbaa !149
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.n, ptr noundef nonnull align 16 dereferenceable(42) %i.c, i64 42, i1 false), !tbaa.struct !224
end_hunk_3
