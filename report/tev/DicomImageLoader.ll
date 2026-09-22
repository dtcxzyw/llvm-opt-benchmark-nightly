Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/DicomImageLoader?download=true
inline.NumInlined: 15066
inline.NumDeleted: 4736
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 134
begin_hunk_0_@_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED0Ev:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #41
  tail call void @_ZNSt3__114__shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(144) %0) #41
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8, !tbaa !192
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !501  ; 5 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !499  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i ], [ %i.g, %bb.c ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -280 ; 3 uses
  tail call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.h) #41
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.h
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %i.d, align 8, !tbaa !501
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, %bb.c
  %i.i = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.e, %bb.c ] ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !499
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !500
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.n) #44
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, %bb.b, %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !93
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(144) %0) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::exception_ptr", align 8 ; 4 uses
  %2 = alloca %"class.std::exception_ptr", align 8 ; 3 uses
  %3 = alloca %"class.std::__1::future_error", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !493    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt3__114__shared_count16__release_sharedB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load i32, ptr %i.b, align 8, !tbaa !192
  %i.d = and i32 %i.c, 1
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread

_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  store ptr null, ptr %1, align 8, !tbaa !193
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !193
  %.not1 = icmp eq ptr %i.f, null
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  %.pre2 = load ptr, ptr %0, align 8, !tbaa !493  ; 4 uses
  br i1 %.not1, label %bb.c, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread

bb.c:                                             ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %.pre2, i64 8
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__115future_categoryEv() #41
  invoke void @_ZNSt3__112future_errorC1ENS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 4, ptr nonnull %i.j)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = call ptr @__cxa_allocate_exception(i64 noundef 32) #41, !noalias !2971 ; 5 uses
  %i.l = call ptr @__cxa_init_primary_exception(ptr noundef %i.k, ptr noundef nonnull @_ZTINSt3__112future_errorE, ptr noundef nonnull @_ZZSt18make_exception_ptrB8ne180100INSt3__112future_errorEESt13exception_ptrT_ENUlPvE_8__invokeES4_) #41, !noalias !2971 ; 0 uses
  call void @_ZNSt11logic_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %3) #41, !noalias !2971
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt3__112future_errorE, i64 16), ptr %i.k, align 8, !tbaa !93, !noalias !2971
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !527, !noalias !2971
  call void @_ZNSt13exception_ptr31__from_native_exception_pointerEPv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %2, ptr noundef nonnull %i.k) #41
  invoke void @_ZNSt3__117__assoc_sub_state13set_exceptionESt13exception_ptr(ptr noundef nonnull align 8 dereferenceable(116) %.pre2, ptr nofree noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #41
  call void @_ZNSt3__112future_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #41
  %.pre = load ptr, ptr %0, align 8, !tbaa !493
  br label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread

_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread: ; preds = %bb.b, %bb.f, %bb.c, %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit
  %i.o = phi ptr [ %i.a, %bb.b ], [ %.pre, %bb.f ], [ %.pre2, %bb.c ], [ %.pre2, %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = atomicrmw add ptr %i.p, i64 -1 acq_rel, align 8
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt3__114__shared_count16__release_sharedB8ne180100Ev.exit

bb.g:                                             ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !93
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #41, !inline_history !32
  br label %_ZNSt3__114__shared_count16__release_sharedB8ne180100Ev.exit

_ZNSt3__114__shared_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.g, %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread, %bb.a
  ret void

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #46
  unreachable
}

declare { ptr, i64 } @_ZNKSt3__14__fs10filesystem4path11__extensionEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev11ImageLoader18FormatNotSupportedD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #41
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataELb0EEEvT1_SP_T0_NS_15iterator_traitsISP_E15difference_typeEb"(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.tev::DicomImageData", align 16 ; 25 uses
  %5 = alloca %"struct.tev::DicomImageData", align 16 ; 25 uses
  %6 = alloca %"struct.tev::DicomImageData", align 16 ; 25 uses
  %7 = alloca %"struct.tev::DicomImageData", align 16 ; 25 uses
  %8 = alloca %"struct.tev::DicomImageData", align 16 ; 23 uses
  %9 = alloca %"struct.tev::DicomImageData", align 16 ; 25 uses
  %10 = alloca %"struct.tev::DicomImageData", align 16 ; 25 uses
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 280
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 296 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 320 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 328 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 352 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 272 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 257 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 264 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 344
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 256 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 280
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 296 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 320 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 328 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 352 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 272 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 257 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 344
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 312
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.outer"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.outer": ; preds = %bb.fv, %bb.a
  %.024.ph = phi ptr [ %i.bec, %bb.fv ], [ %1, %bb.a ] ; 29 uses
  %.021.ph = phi ptr [ %.021, %bb.fv ], [ %0, %bb.a ]
  %.048.ph = phi i8 [ %.048.ph678, %bb.fv ], [ %i.a, %bb.a ]
  %.046.ph = phi i64 [ %i.aqz, %bb.fv ], [ %2, %bb.a ]
  %i.al = ptrtoint ptr %.024.ph to i64
  %i.am = getelementptr inbounds i8, ptr %.024.ph, i64 -360 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.024.ph, i64 -720
  %i.ao = getelementptr inbounds i8, ptr %.024.ph, i64 -1080
  %i.ap = getelementptr inbounds i8, ptr %.024.ph, i64 -104
  %i.aq = getelementptr inbounds i8, ptr %.024.ph, i64 -88
  %i.ar = getelementptr inbounds i8, ptr %.024.ph, i64 -103
  %i.as = getelementptr inbounds i8, ptr %.024.ph, i64 -96
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.outer676"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.outer676": ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.outer676.backedge", %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.outer"
  %.021.ph677 = phi ptr [ %.021.ph, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.outer" ], [ %.021.ph677.be, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.outer676.backedge" ]
  %.048.ph678 = phi i8 [ %.048.ph, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.outer" ], [ 0, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.outer676.backedge" ] ; 3 uses
  %.046.ph679 = phi i64 [ %.046.ph, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.outer" ], [ %i.aqz, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.outer676.backedge" ]
  %i.at = trunc nuw i8 %.048.ph678 to i1          ; 2 uses
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit": ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.outer676", %bb.fw
  %.021 = phi ptr [ %i.beu, %bb.fw ], [ %.021.ph677, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.outer676" ] ; 98 uses
  %.046 = phi i64 [ %i.aqz, %bb.fw ], [ %.046.ph679, %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.outer676" ] ; 2 uses
  %i.au = ptrtoint ptr %.021 to i64               ; 2 uses
  %i.av = sub i64 %i.al, %i.au                    ; 4 uses
  %i.aw = sdiv exact i64 %i.av, 360               ; 5 uses
  switch i64 %i.aw, label %bb.g [
    i64 0, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.thread"
    i64 1, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.thread"
    i64 2, label %bb.b
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.f
  ]

bb.b:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit"
  %i.ax = getelementptr inbounds i8, ptr %.024.ph, i64 -104
  %i.ay = load i8, ptr %i.ax, align 8             ; 2 uses
  %i.az = trunc i8 %i.ay to i1                    ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.024.ph, i64 -88
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %.024.ph, i64 -103
  %i.bd = select i1 %i.az, ptr %i.bb, ptr %i.bc
  %i.be = getelementptr inbounds i8, ptr %.024.ph, i64 -96
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = lshr i8 %i.ay, 1
  %i.bh = zext nneg i8 %i.bg to i64
  %i.bi = select i1 %i.az, i64 %i.bf, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %.021, i64 256
  %i.bk = load i8, ptr %i.bj, align 8             ; 2 uses
  %i.bl = trunc i8 %i.bk to i1                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.021, i64 272
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.021, i64 257
  %i.bp = select i1 %i.bl, ptr %i.bn, ptr %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %.021, i64 264
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = lshr i8 %i.bk, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = select i1 %i.bl, i64 %i.br, i64 %i.bt
  %i.bv = call noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.bd, i64 %i.bi, ptr %i.bp, i64 %i.bu)
  br i1 %i.bv, label %bb.c, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.thread"

bb.c:                                             ; preds = %bb.b
  %i.bw = getelementptr inbounds i8, ptr %.024.ph, i64 -360
  call void @_ZNSt3__14swapB8ne180100IN3tev14DicomImageDataEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(360) %.021, ptr noundef nonnull align 8 dereferenceable(360) %i.bw) #41
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.thread"

bb.d:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit"
  %i.bx = getelementptr inbounds nuw i8, ptr %.021, i64 360
  %i.by = getelementptr inbounds i8, ptr %.024.ph, i64 -360
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEjT1_SP_SP_T0_"(ptr noundef %.021, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.by)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.thread"

bb.e:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit"
  %i.bz = getelementptr inbounds nuw i8, ptr %.021, i64 360
  %i.ca = getelementptr inbounds nuw i8, ptr %.021, i64 720
  %i.cb = getelementptr inbounds i8, ptr %.024.ph, i64 -360
  call fastcc void @"_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_SP_SP_T0_"(ptr noundef %.021, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.cb)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.thread"

bb.f:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit"
  %i.cc = getelementptr inbounds nuw i8, ptr %.021, i64 360
  %i.cd = getelementptr inbounds nuw i8, ptr %.021, i64 720
  %i.ce = getelementptr inbounds nuw i8, ptr %.021, i64 1080
  %i.cf = getelementptr inbounds i8, ptr %.024.ph, i64 -360
  call fastcc void @"_ZNSt3__124__sort5_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSR_SR_SR_SR_SR_SQ_"(ptr noundef %.021, ptr noundef nonnull %i.cc, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ce, ptr noundef nonnull %i.cf)
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.thread"

bb.g:                                             ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit"
  %i.cg = icmp slt i64 %i.av, 8640
  br i1 %i.cg, label %bb.h, label %bb.bu

bb.h:                                             ; preds = %bb.g
  %i.ch = trunc nuw i8 %.048.ph678 to i1
  %i.ci = icmp eq ptr %.021, %.024.ph             ; 2 uses
  br i1 %i.ch, label %bb.i, label %bb.ao

bb.i:                                             ; preds = %bb.h
  br i1 %i.ci, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.thread", label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %storemerge7.i = getelementptr inbounds nuw i8, ptr %.021, i64 360 ; 2 uses
  %.not8.i = icmp eq ptr %storemerge7.i, %.024.ph
  br i1 %.not8.i, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.thread", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 120
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 256 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 280
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 296 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 320 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 328 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 352 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 272
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 257
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 264
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 344
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 312
  br label %bb.j

bb.j:                                             ; preds = %bb.an, %.lr.ph.i
  %storemerge10.i = phi ptr [ %storemerge7.i, %.lr.ph.i ], [ %storemerge.i, %bb.an ] ; 5 uses
  %.pn9.i = phi ptr [ %.021, %.lr.ph.i ], [ %storemerge10.i, %bb.an ] ; 21 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 616 ; 3 uses
  %i.dc = load i8, ptr %i.db, align 8             ; 2 uses
  %i.dd = trunc i8 %i.dc to i1                    ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 632
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 617
  %i.dh = select i1 %i.dd, ptr %i.df, ptr %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 624
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = lshr i8 %i.dc, 1
  %i.dl = zext nneg i8 %i.dk to i64
  %i.dm = select i1 %i.dd, i64 %i.dj, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 256
  %i.do = load i8, ptr %i.dn, align 8             ; 2 uses
  %i.dp = trunc i8 %i.do to i1                    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 272
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 257
  %i.dt = select i1 %i.dp, ptr %i.dr, ptr %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 264
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = lshr i8 %i.do, 1
  %i.dx = zext nneg i8 %i.dw to i64
  %i.dy = select i1 %i.dp, i64 %i.dv, i64 %i.dx
  %i.dz = call noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.dh, i64 %i.dm, ptr %i.dt, i64 %i.dy)
  br i1 %i.dz, label %bb.k, label %bb.an

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.ea = load <2 x ptr>, ptr %storemerge10.i, align 8, !tbaa !342
  store <2 x ptr> %i.ea, ptr %10, align 16, !tbaa !342
  %i.eb = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 376
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !342
  store ptr %i.ec, ptr %i.cj, align 16, !tbaa !342
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %storemerge10.i, i8 0, i64 24, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 384 ; 2 uses
  %i.ee = load <2 x ptr>, ptr %i.ed, align 8, !tbaa !420
  store <2 x ptr> %i.ee, ptr %i.ck, align 8, !tbaa !420
  %i.ef = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 400
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !420
  store ptr %i.eg, ptr %i.cl, align 8, !tbaa !420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i8 0, i64 24, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.cm, ptr noundef nonnull align 8 dereferenceable(44) %i.eh, i64 44, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 456 ; 2 uses
  %i.ej = load <2 x ptr>, ptr %i.ei, align 8, !tbaa !257
  store <2 x ptr> %i.ej, ptr %i.cn, align 16, !tbaa !257
  %i.ek = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 472
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !257
  store ptr %i.el, ptr %i.co, align 16, !tbaa !257
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i8 0, i64 24, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.cp, ptr noundef nonnull align 8 dereferenceable(136) %i.em, i64 136, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.cr, ptr noundef nonnull align 8 dereferenceable(13) %i.en, i64 13, i1 false)
  store i8 0, ptr %i.cs, align 8, !tbaa !91
  store i8 0, ptr %i.ct, align 16, !tbaa !368
  %i.eo = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 680
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !368, !range !202, !noundef !203
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.l, label %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne180100EOS7_.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.er = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 656 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cs, ptr noundef nonnull align 8 dereferenceable(25) %i.er, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.er, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.ct, align 16, !tbaa !368
  br label %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne180100EOS7_.exit.i.i

_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne180100EOS7_.exit.i.i: ; preds = %bb.l, %bb.k
  store i8 0, ptr %i.cu, align 8, !tbaa !91
  store i8 0, ptr %i.cv, align 16, !tbaa !368
  %i.es = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 712
  %i.et = load i8, ptr %i.es, align 8, !tbaa !368, !range !202, !noundef !203
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.m, label %_ZN3tev14DicomImageDataC2EOS0_.exit.i.preheader

bb.m:                                             ; preds = %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne180100EOS7_.exit.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 688 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cu, ptr noundef nonnull align 8 dereferenceable(25) %i.ev, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ev, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.cv, align 16, !tbaa !368
  br label %_ZN3tev14DicomImageDataC2EOS0_.exit.i.preheader

_ZN3tev14DicomImageDataC2EOS0_.exit.i.preheader:  ; preds = %bb.m, %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne180100EOS7_.exit.i.i
  br label %_ZN3tev14DicomImageDataC2EOS0_.exit.i

_ZN3tev14DicomImageDataC2EOS0_.exit.i:            ; preds = %_ZN3tev14DicomImageDataC2EOS0_.exit.i.preheader, %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit.i"
  %.05.i = phi ptr [ %i.kh, %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit.i" ], [ %.pn9.i, %_ZN3tev14DicomImageDataC2EOS0_.exit.i.preheader ] ; 26 uses
  %.0.i = phi ptr [ %.05.i, %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit.i" ], [ %storemerge10.i, %_ZN3tev14DicomImageDataC2EOS0_.exit.i.preheader ] ; 27 uses
  %i.ew = load ptr, ptr %.0.i, align 8, !tbaa !398 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZN3tev14DicomImageDataC2EOS0_.exit.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !341 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.ew, %i.ey
  br i1 %.not6.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.n, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.ez, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i ], [ %i.ey, %bb.n ] ; 3 uses
  %i.ez = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -72 ; 4 uses
  %i.fa = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !345 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = atomicrmw add ptr %i.fc, i64 -1 acq_rel, align 8
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %bb.p, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.ff = load ptr, ptr %i.fb, align 8, !tbaa !93
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(24) %i.fb) #41, !inline_history !2972
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fb) #41
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o, %.lr.ph.i.i.i.i.i.i
  %i.fi = load i8, ptr %i.ez, align 8
  %i.fj = trunc i8 %i.fi to i1
  br i1 %i.fj, label %bb.q, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i
  %i.fk = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -56
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !91
  %i.fm = load i64, ptr %i.ez, align 8
  %i.fn = and i64 %i.fm, -2
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fn) #44
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i: ; preds = %bb.q, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ew, %i.ez
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %.0.i, align 8, !tbaa !398
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i, %bb.n
  %i.fo = phi ptr [ %.pre.i.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i ], [ %i.ew, %bb.n ] ; 2 uses
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !341
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !342
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fo to i64
  %i.ft = sub i64 %i.fr, %i.fs
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.ft) #44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.0.i, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE.exit.i: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i, %_ZN3tev14DicomImageDataC2EOS0_.exit.i
  %i.fu = load <2 x ptr>, ptr %.05.i, align 8, !tbaa !342
  store <2 x ptr> %i.fu, ptr %.0.i, align 8, !tbaa !342
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !342
end_hunk_0
begin_hunk_1_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataELb0EEEvT1_SP_T0_NS_15iterator_traitsISP_E15difference_typeEb":bb.a
  %i.qi = getelementptr inbounds nuw i8, ptr %.05.i64, i64 257
  store i8 0, ptr %i.qi, align 1, !tbaa !91
  %i.qj = getelementptr inbounds nuw i8, ptr %.0.i65, i64 280
  %i.qk = getelementptr inbounds nuw i8, ptr %.05.i64, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.qj, ptr noundef nonnull align 8 dereferenceable(13) %i.qk, i64 13, i1 false)
  %i.ql = getelementptr inbounds nuw i8, ptr %.0.i65, i64 296 ; 6 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.05.i64, i64 296 ; 4 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.0.i65, i64 320 ; 3 uses
  %i.qo = load i8, ptr %i.qn, align 8, !tbaa !368, !range !202, !noundef !203 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.05.i64, i64 320
  %i.qq = load i8, ptr %i.qp, align 8, !tbaa !368, !range !202, !noundef !203
  %i.qr = icmp eq i8 %i.qo, %i.qq
  %i.qs = trunc nuw i8 %i.qo to i1                ; 2 uses
  br i1 %i.qr, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %_ZN3tev9ImageDataaSEOS0_.exit.i90
  br i1 %i.qs, label %bb.bc, label %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB8ne180100EOS7_.exit.i.i91

bb.bc:                                            ; preds = %bb.bb
  %i.qt = load i8, ptr %i.ql, align 8
  %i.qu = trunc i8 %i.qt to i1
  br i1 %i.qu, label %bb.bd, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i101

bb.bd:                                            ; preds = %bb.bc
  %i.qv = getelementptr inbounds nuw i8, ptr %.0.i65, i64 312
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !91
  %i.qx = load i64, ptr %i.ql, align 8
  %i.qy = and i64 %i.qx, -2
  call void @_ZdlPvm(ptr noundef %i.qw, i64 noundef %i.qy) #44
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i101

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i101: ; preds = %bb.bd, %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ql, ptr noundef nonnull align 8 dereferenceable(25) %i.qm, i64 24, i1 false), !tbaa.struct !251
  store i8 0, ptr %i.qm, align 8
  %i.qz = getelementptr inbounds nuw i8, ptr %.05.i64, i64 297
  store i8 0, ptr %i.qz, align 1, !tbaa !91
  br label %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB8ne180100EOS7_.exit.i.i91

bb.be:                                            ; preds = %_ZN3tev9ImageDataaSEOS0_.exit.i90
  br i1 %i.qs, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.ra = load i8, ptr %i.ql, align 8
  %i.rb = trunc i8 %i.ra to i1
  br i1 %i.rb, label %bb.bg, label %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5resetB8ne180100Ev.exit.i.i.i.i.i100

bb.bg:                                            ; preds = %bb.bf
  %i.rc = getelementptr inbounds nuw i8, ptr %.0.i65, i64 312
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !91
  %i.re = load i64, ptr %i.ql, align 8
  %i.rf = and i64 %i.re, -2
  call void @_ZdlPvm(ptr noundef %i.rd, i64 noundef %i.rf) #44
  br label %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5resetB8ne180100Ev.exit.i.i.i.i.i100

_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5resetB8ne180100Ev.exit.i.i.i.i.i100: ; preds = %bb.bg, %bb.bf
  store i8 0, ptr %i.qn, align 8, !tbaa !368
  br label %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB8ne180100EOS7_.exit.i.i91

bb.bh:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ql, ptr noundef nonnull align 8 dereferenceable(25) %i.qm, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.qm, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.qn, align 8, !tbaa !368
  br label %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB8ne180100EOS7_.exit.i.i91

_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB8ne180100EOS7_.exit.i.i91: ; preds = %bb.bh, %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5resetB8ne180100Ev.exit.i.i.i.i.i100, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i101, %bb.bb
  %i.rg = getelementptr inbounds nuw i8, ptr %.0.i65, i64 328 ; 6 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.05.i64, i64 328 ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.0.i65, i64 352 ; 3 uses
  %i.rj = load i8, ptr %i.ri, align 8, !tbaa !368, !range !202, !noundef !203 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.05.i64, i64 352
  %i.rl = load i8, ptr %i.rk, align 8, !tbaa !368, !range !202, !noundef !203
  %i.rm = icmp eq i8 %i.rj, %i.rl
  %i.rn = trunc nuw i8 %i.rj to i1                ; 2 uses
  br i1 %i.rm, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB8ne180100EOS7_.exit.i.i91
  br i1 %i.rn, label %bb.bj, label %_ZN3tev14DicomImageDataaSEOS0_.exit.i92

bb.bj:                                            ; preds = %bb.bi
  %i.ro = load i8, ptr %i.rg, align 8
  %i.rp = trunc i8 %i.ro to i1
  br i1 %i.rp, label %bb.bk, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i6.i.i99

bb.bk:                                            ; preds = %bb.bj
  %i.rq = getelementptr inbounds nuw i8, ptr %.0.i65, i64 344
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !91
  %i.rs = load i64, ptr %i.rg, align 8
  %i.rt = and i64 %i.rs, -2
  call void @_ZdlPvm(ptr noundef %i.rr, i64 noundef %i.rt) #44
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i6.i.i99

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i6.i.i99: ; preds = %bb.bk, %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.rg, ptr noundef nonnull align 8 dereferenceable(25) %i.rh, i64 24, i1 false), !tbaa.struct !251
  store i8 0, ptr %i.rh, align 8
  %i.ru = getelementptr inbounds nuw i8, ptr %.05.i64, i64 329
  store i8 0, ptr %i.ru, align 1, !tbaa !91
  br label %_ZN3tev14DicomImageDataaSEOS0_.exit.i92

bb.bl:                                            ; preds = %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB8ne180100EOS7_.exit.i.i91
  br i1 %i.rn, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.rv = load i8, ptr %i.rg, align 8
  %i.rw = trunc i8 %i.rv to i1
  br i1 %i.rw, label %bb.bn, label %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5resetB8ne180100Ev.exit.i.i.i5.i.i98

bb.bn:                                            ; preds = %bb.bm
  %i.rx = getelementptr inbounds nuw i8, ptr %.0.i65, i64 344
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !91
  %i.rz = load i64, ptr %i.rg, align 8
  %i.sa = and i64 %i.rz, -2
  call void @_ZdlPvm(ptr noundef %i.ry, i64 noundef %i.sa) #44
  br label %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5resetB8ne180100Ev.exit.i.i.i5.i.i98

_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5resetB8ne180100Ev.exit.i.i.i5.i.i98: ; preds = %bb.bn, %bb.bm
  store i8 0, ptr %i.ri, align 8, !tbaa !368
  br label %_ZN3tev14DicomImageDataaSEOS0_.exit.i92

bb.bo:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.rg, ptr noundef nonnull align 8 dereferenceable(25) %i.rh, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.rh, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.ri, align 8, !tbaa !368
  br label %_ZN3tev14DicomImageDataaSEOS0_.exit.i92

_ZN3tev14DicomImageDataaSEOS0_.exit.i92:          ; preds = %bb.bo, %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5resetB8ne180100Ev.exit.i.i.i5.i.i98, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i6.i.i99, %bb.bi
  %i.sb = load i8, ptr %i.lf, align 16            ; 2 uses
  %i.sc = trunc i8 %i.sb to i1                    ; 2 uses
  %i.sd = load ptr, ptr %i.ll, align 16
  %i.se = select i1 %i.sc, ptr %i.sd, ptr %i.lm
  %i.sf = load i64, ptr %i.ln, align 8
  %i.sg = lshr i8 %i.sb, 1
  %i.sh = zext nneg i8 %i.sg to i64
  %i.si = select i1 %i.sc, i64 %i.sf, i64 %i.sh
  %i.sj = getelementptr inbounds i8, ptr %.05.i64, i64 -104
  %i.sk = load i8, ptr %i.sj, align 8             ; 2 uses
  %i.sl = trunc i8 %i.sk to i1                    ; 2 uses
  %i.sm = getelementptr inbounds i8, ptr %.05.i64, i64 -88
  %i.sn = load ptr, ptr %i.sm, align 8
  %i.so = getelementptr inbounds i8, ptr %.05.i64, i64 -103
  %i.sp = select i1 %i.sl, ptr %i.sn, ptr %i.so
  %i.sq = getelementptr inbounds i8, ptr %.05.i64, i64 -96
  %i.sr = load i64, ptr %i.sq, align 8
  %i.ss = lshr i8 %i.sk, 1
  %i.st = zext nneg i8 %i.ss to i64
  %i.su = select i1 %i.sl, i64 %i.sr, i64 %i.st
  %i.sv = invoke noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.se, i64 %i.si, ptr %i.sp, i64 %i.su)
          to label %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit.i93" unwind label %bb.bs

"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit.i93": ; preds = %_ZN3tev14DicomImageDataaSEOS0_.exit.i92
  %i.sw = getelementptr inbounds i8, ptr %.05.i64, i64 -360
  br i1 %i.sv, label %_ZN3tev14DicomImageDataC2EOS0_.exit.i63, label %bb.bp, !llvm.loop !2976

bb.bp:                                            ; preds = %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit.i93"
  %i.sx = call noundef nonnull align 8 dereferenceable(360) ptr @_ZN3tev14DicomImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(360) %.05.i64, ptr noundef nonnull align 8 dereferenceable(360) %9) #41 ; 0 uses
  %i.sy = load i8, ptr %i.lk, align 16, !tbaa !368, !range !202, !noundef !203
  %i.sz = trunc nuw i8 %i.sy to i1
  %i.ta = load i8, ptr %i.lj, align 8
  %i.tb = trunc i8 %i.ta to i1
  %or.cond.i.i.i94 = select i1 %i.sz, i1 %i.tb, i1 false
  br i1 %or.cond.i.i.i94, label %bb.bq, label %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit.i.i95

bb.bq:                                            ; preds = %bb.bp
  %i.tc = load ptr, ptr %i.lo, align 8, !tbaa !91
  %i.td = load i64, ptr %i.lj, align 8
  %i.te = and i64 %i.td, -2
  call void @_ZdlPvm(ptr noundef %i.tc, i64 noundef %i.te) #44
  br label %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit.i.i95

_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit.i.i95: ; preds = %bb.bq, %bb.bp
  %i.tf = load i8, ptr %i.li, align 16, !tbaa !368, !range !202, !noundef !203
  %i.tg = trunc nuw i8 %i.tf to i1
  %i.th = load i8, ptr %i.lh, align 8
  %i.ti = trunc i8 %i.th to i1
  %or.cond.i1.i.i96 = select i1 %i.tg, i1 %i.ti, i1 false
  br i1 %or.cond.i1.i.i96, label %bb.br, label %_ZN3tev14DicomImageDataD2Ev.exit.i97

bb.br:                                            ; preds = %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit.i.i95
  %i.tj = load ptr, ptr %i.lp, align 8, !tbaa !91
  %i.tk = load i64, ptr %i.lh, align 8
  %i.tl = and i64 %i.tk, -2
  call void @_ZdlPvm(ptr noundef %i.tj, i64 noundef %i.tl) #44
  br label %_ZN3tev14DicomImageDataD2Ev.exit.i97

_ZN3tev14DicomImageDataD2Ev.exit.i97:             ; preds = %bb.br, %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit.i.i95
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(360) %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.bt

bb.bs:                                            ; preds = %_ZN3tev14DicomImageDataaSEOS0_.exit.i92
  %i.tm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tev14DicomImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %common.resume

bb.bt:                                            ; preds = %_ZN3tev14DicomImageDataD2Ev.exit.i97, %bb.ap
  %storemerge.i60 = getelementptr inbounds nuw i8, ptr %storemerge10.i58, i64 360 ; 2 uses
  %.not.i61 = icmp eq ptr %storemerge.i60, %.024.ph
  br i1 %.not.i61, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.thread", label %bb.ap, !llvm.loop !2977

bb.bu:                                            ; preds = %bb.g
  %i.tn = icmp eq i64 %.046, 0
  br i1 %i.tn, label %bb.bv, label %bb.eu

bb.bv:                                            ; preds = %bb.bu
  %i.to = add nsw i64 %i.aw, -2
  %i.tp = lshr i64 %i.to, 1                       ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.tr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ts = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.tt = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.tu = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.tv = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.tw = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.tx = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.tz = getelementptr inbounds nuw i8, ptr %4, i64 296 ; 4 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %4, i64 320 ; 3 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %4, i64 328 ; 4 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %4, i64 352 ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.ue = getelementptr inbounds nuw i8, ptr %4, i64 257
  %i.uf = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.ug = getelementptr inbounds nuw i8, ptr %4, i64 344
  %i.uh = getelementptr inbounds nuw i8, ptr %4, i64 312
  br label %bb.bw

bb.bw:                                            ; preds = %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_OT0_NS_15iterator_traitsISP_E15difference_typeESP_.exit", %bb.bv
  %.01.i.i.i = phi i64 [ %i.tp, %bb.bv ], [ %i.zz, %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_OT0_NS_15iterator_traitsISP_E15difference_typeESP_.exit" ] ; 4 uses
  %i.ui = getelementptr inbounds nuw [360 x i8], ptr %.021, i64 %.01.i.i.i ; 19 uses
  %i.uj = shl nsw i64 %.01.i.i.i, 1               ; 2 uses
  %i.uk = or disjoint i64 %i.uj, 1                ; 3 uses
  %i.ul = getelementptr inbounds [360 x i8], ptr %.021, i64 %i.uk ; 10 uses
  %i.um = add nsw i64 %i.uj, 2                    ; 2 uses
  %i.un = icmp slt i64 %i.um, %i.aw
  br i1 %i.un, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 256
  %i.up = load i8, ptr %i.uo, align 8             ; 2 uses
  %i.uq = trunc i8 %i.up to i1                    ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ul, i64 272
  %i.us = load ptr, ptr %i.ur, align 8
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ul, i64 257
  %i.uu = select i1 %i.uq, ptr %i.us, ptr %i.ut
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ul, i64 264
  %i.uw = load i64, ptr %i.uv, align 8
  %i.ux = lshr i8 %i.up, 1
  %i.uy = zext nneg i8 %i.ux to i64
  %i.uz = select i1 %i.uq, i64 %i.uw, i64 %i.uy
  %i.va = getelementptr inbounds nuw i8, ptr %i.ul, i64 616
  %i.vb = load i8, ptr %i.va, align 8             ; 2 uses
  %i.vc = trunc i8 %i.vb to i1                    ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ul, i64 632
  %i.ve = load ptr, ptr %i.vd, align 8
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ul, i64 617
  %i.vg = select i1 %i.vc, ptr %i.ve, ptr %i.vf
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ul, i64 624
  %i.vi = load i64, ptr %i.vh, align 8
  %i.vj = lshr i8 %i.vb, 1
  %i.vk = zext nneg i8 %i.vj to i64
  %i.vl = select i1 %i.vc, i64 %i.vi, i64 %i.vk
  %i.vm = call noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.uu, i64 %i.uz, ptr %i.vg, i64 %i.vl) ; 2 uses
  %spec.select.idx.i = select i1 %i.vm, i64 360, i64 0
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.ul, i64 %spec.select.idx.i
  %spec.select14.i = select i1 %i.vm, i64 %i.um, i64 %i.uk
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.010.i = phi ptr [ %i.ul, %bb.bw ], [ %spec.select.i, %bb.bx ] ; 5 uses
  %.0.i145 = phi i64 [ %i.uk, %bb.bw ], [ %spec.select14.i, %bb.bx ]
  %i.vn = getelementptr inbounds nuw i8, ptr %.010.i, i64 256
  %i.vo = load i8, ptr %i.vn, align 8             ; 2 uses
  %i.vp = trunc i8 %i.vo to i1                    ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.010.i, i64 272
  %i.vr = load ptr, ptr %i.vq, align 8
  %i.vs = getelementptr inbounds nuw i8, ptr %.010.i, i64 257
  %i.vt = select i1 %i.vp, ptr %i.vr, ptr %i.vs
  %i.vu = getelementptr inbounds nuw i8, ptr %.010.i, i64 264
  %i.vv = load i64, ptr %i.vu, align 8
  %i.vw = lshr i8 %i.vo, 1
  %i.vx = zext nneg i8 %i.vw to i64
  %i.vy = select i1 %i.vp, i64 %i.vv, i64 %i.vx
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ui, i64 256 ; 3 uses
  %i.wa = load i8, ptr %i.vz, align 8             ; 2 uses
  %i.wb = trunc i8 %i.wa to i1                    ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ui, i64 272
  %i.wd = load ptr, ptr %i.wc, align 8
  %i.we = getelementptr inbounds nuw i8, ptr %i.ui, i64 257
  %i.wf = select i1 %i.wb, ptr %i.wd, ptr %i.we
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ui, i64 264
  %i.wh = load i64, ptr %i.wg, align 8
  %i.wi = lshr i8 %i.wa, 1
  %i.wj = zext nneg i8 %i.wi to i64
  %i.wk = select i1 %i.wb, i64 %i.wh, i64 %i.wj
  %i.wl = call noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.vt, i64 %i.vy, ptr %i.wf, i64 %i.wk)
  br i1 %i.wl, label %"_ZNSt3__111__sift_downB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_OT0_NS_15iterator_traitsISP_E15difference_typeESP_.exit", label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.wm = load <2 x ptr>, ptr %i.ui, align 8, !tbaa !342
  store <2 x ptr> %i.wm, ptr %4, align 16, !tbaa !342
  %i.wn = getelementptr inbounds nuw i8, ptr %i.ui, i64 16
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !342
  store ptr %i.wo, ptr %i.tq, align 16, !tbaa !342
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.ui, i8 0, i64 24, i1 false)
  %i.wp = getelementptr inbounds nuw i8, ptr %i.ui, i64 24 ; 2 uses
  %i.wq = load <2 x ptr>, ptr %i.wp, align 8, !tbaa !420
  store <2 x ptr> %i.wq, ptr %i.tr, align 8, !tbaa !420
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ui, i64 40
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !420
  store ptr %i.ws, ptr %i.ts, align 8, !tbaa !420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wp, i8 0, i64 24, i1 false)
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ui, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.tt, ptr noundef nonnull align 8 dereferenceable(44) %i.wt, i64 44, i1 false)
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ui, i64 96 ; 2 uses
  %i.wv = load <2 x ptr>, ptr %i.wu, align 8, !tbaa !257
  store <2 x ptr> %i.wv, ptr %i.tu, align 16, !tbaa !257
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ui, i64 112
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !257
  store ptr %i.wx, ptr %i.tv, align 16, !tbaa !257
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wu, i8 0, i64 24, i1 false)
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ui, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.tw, ptr noundef nonnull align 8 dereferenceable(136) %i.wy, i64 136, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.tx, ptr noundef nonnull align 8 dereferenceable(24) %i.vz, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vz, i8 0, i64 24, i1 false)
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ui, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ty, ptr noundef nonnull align 8 dereferenceable(13) %i.wz, i64 13, i1 false)
  store i8 0, ptr %i.tz, align 8, !tbaa !91
  store i8 0, ptr %i.ua, align 16, !tbaa !368
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ui, i64 320
  %i.xb = load i8, ptr %i.xa, align 8, !tbaa !368, !range !202, !noundef !203
  %i.xc = trunc nuw i8 %i.xb to i1
  br i1 %i.xc, label %bb.ca, label %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne180100EOS7_.exit.i.i146

bb.ca:                                            ; preds = %bb.bz
  %i.xd = getelementptr inbounds nuw i8, ptr %i.ui, i64 296 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.tz, ptr noundef nonnull align 8 dereferenceable(25) %i.xd, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.xd, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.ua, align 16, !tbaa !368
  br label %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne180100EOS7_.exit.i.i146

_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne180100EOS7_.exit.i.i146: ; preds = %bb.ca, %bb.bz
  store i8 0, ptr %i.ub, align 8, !tbaa !91
  store i8 0, ptr %i.uc, align 16, !tbaa !368
  %i.xe = getelementptr inbounds nuw i8, ptr %i.ui, i64 352
  %i.xf = load i8, ptr %i.xe, align 8, !tbaa !368, !range !202, !noundef !203
  %i.xg = trunc nuw i8 %i.xf to i1
  br i1 %i.xg, label %bb.cb, label %_ZN3tev14DicomImageDataC2EOS0_.exit.i147.preheader

bb.cb:                                            ; preds = %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne180100EOS7_.exit.i.i146
  %i.xh = getelementptr inbounds nuw i8, ptr %i.ui, i64 328 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ub, ptr noundef nonnull align 8 dereferenceable(25) %i.xh, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.xh, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.uc, align 16, !tbaa !368
  br label %_ZN3tev14DicomImageDataC2EOS0_.exit.i147.preheader

_ZN3tev14DicomImageDataC2EOS0_.exit.i147.preheader: ; preds = %bb.cb, %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne180100EOS7_.exit.i.i146
  br label %_ZN3tev14DicomImageDataC2EOS0_.exit.i147

_ZN3tev14DicomImageDataC2EOS0_.exit.i147:         ; preds = %_ZN3tev14DicomImageDataC2EOS0_.exit.i147.preheader, %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit28.i"
  %.013.i = phi ptr [ %.111.i, %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit28.i" ], [ %i.ui, %_ZN3tev14DicomImageDataC2EOS0_.exit.i147.preheader ]
  %.111.i = phi ptr [ %.212.i, %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit28.i" ], [ %.010.i, %_ZN3tev14DicomImageDataC2EOS0_.exit.i147.preheader ] ; 3 uses
  %.1.i148 = phi i64 [ %.2.i149, %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit28.i" ], [ %.0.i145, %_ZN3tev14DicomImageDataC2EOS0_.exit.i147.preheader ] ; 2 uses
  %i.xi = call noundef nonnull align 8 dereferenceable(360) ptr @_ZN3tev14DicomImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(360) %.013.i, ptr noundef nonnull align 8 dereferenceable(360) %.111.i) #41 ; 0 uses
  %i.xj = icmp slt i64 %i.tp, %.1.i148
  br i1 %i.xj, label %bb.cg, label %bb.cd

bb.cc:                                            ; preds = %bb.cf, %bb.ce
  %i.xk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tev14DicomImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %common.resume

bb.cd:                                            ; preds = %_ZN3tev14DicomImageDataC2EOS0_.exit.i147
  %i.xl = shl nsw i64 %.1.i148, 1                 ; 2 uses
  %i.xm = or disjoint i64 %i.xl, 1                ; 3 uses
  %i.xn = getelementptr inbounds [360 x i8], ptr %.021, i64 %i.xm ; 10 uses
  %i.xo = add nsw i64 %i.xl, 2                    ; 2 uses
  %i.xp = icmp slt i64 %i.xo, %i.aw
  br i1 %i.xp, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xn, i64 256
  %i.xr = load i8, ptr %i.xq, align 8             ; 2 uses
  %i.xs = trunc i8 %i.xr to i1                    ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xn, i64 272
  %i.xu = load ptr, ptr %i.xt, align 8
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xn, i64 257
  %i.xw = select i1 %i.xs, ptr %i.xu, ptr %i.xv
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xn, i64 264
  %i.xy = load i64, ptr %i.xx, align 8
  %i.xz = lshr i8 %i.xr, 1
  %i.ya = zext nneg i8 %i.xz to i64
  %i.yb = select i1 %i.xs, i64 %i.xy, i64 %i.ya
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xn, i64 616
  %i.yd = load i8, ptr %i.yc, align 8             ; 2 uses
  %i.ye = trunc i8 %i.yd to i1                    ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xn, i64 632
  %i.yg = load ptr, ptr %i.yf, align 8
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xn, i64 617
  %i.yi = select i1 %i.ye, ptr %i.yg, ptr %i.yh
end_hunk_1
begin_hunk_2_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataELb0EEEvT1_SP_T0_NS_15iterator_traitsISP_E15difference_typeEb":bb.a
bb.ec:                                            ; preds = %_ZN3tev9ImageDataaSEOS0_.exit.i.i.i
  br i1 %i.anl, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.ant = load i8, ptr %i.ane, align 8
  %i.anu = trunc i8 %i.ant to i1
  br i1 %i.anu, label %bb.ee, label %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5resetB8ne180100Ev.exit.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ed
  %i.anv = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 312
  %i.anw = load ptr, ptr %i.anv, align 8, !tbaa !91
  %i.anx = load i64, ptr %i.ane, align 8
  %i.any = and i64 %i.anx, -2
  call void @_ZdlPvm(ptr noundef %i.anw, i64 noundef %i.any) #44
  br label %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5resetB8ne180100Ev.exit.i.i.i.i.i.i.i

_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5resetB8ne180100Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.ee, %bb.ed
  store i8 0, ptr %i.ang, align 8, !tbaa !368
  br label %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB8ne180100EOS7_.exit.i.i.i.i

bb.ef:                                            ; preds = %bb.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ane, ptr noundef nonnull align 8 dereferenceable(25) %i.anf, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.anf, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.ang, align 8, !tbaa !368
  br label %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB8ne180100EOS7_.exit.i.i.i.i

_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB8ne180100EOS7_.exit.i.i.i.i: ; preds = %bb.ef, %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5resetB8ne180100Ev.exit.i.i.i.i.i.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i.i, %bb.dz
  %i.anz = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 328 ; 6 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 328 ; 4 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 352 ; 3 uses
  %i.aoc = load i8, ptr %i.aob, align 8, !tbaa !368, !range !202, !noundef !203 ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 352
  %i.aoe = load i8, ptr %i.aod, align 8, !tbaa !368, !range !202, !noundef !203
  %i.aof = icmp eq i8 %i.aoc, %i.aoe
  %i.aog = trunc nuw i8 %i.aoc to i1              ; 2 uses
  br i1 %i.aof, label %bb.eg, label %bb.ej

bb.eg:                                            ; preds = %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB8ne180100EOS7_.exit.i.i.i.i
  br i1 %i.aog, label %bb.eh, label %_ZN3tev14DicomImageDataaSEOS0_.exit.i.i.i

bb.eh:                                            ; preds = %bb.eg
  %i.aoh = load i8, ptr %i.anz, align 8
  %i.aoi = trunc i8 %i.aoh to i1
  br i1 %i.aoi, label %bb.ei, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i6.i.i.i.i

bb.ei:                                            ; preds = %bb.eh
  %i.aoj = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 344
  %i.aok = load ptr, ptr %i.aoj, align 8, !tbaa !91
  %i.aol = load i64, ptr %i.anz, align 8
  %i.aom = and i64 %i.aol, -2
  call void @_ZdlPvm(ptr noundef %i.aok, i64 noundef %i.aom) #44
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i6.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i6.i.i.i.i: ; preds = %bb.ei, %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.anz, ptr noundef nonnull align 8 dereferenceable(25) %i.aoa, i64 24, i1 false), !tbaa.struct !251
  store i8 0, ptr %i.aoa, align 8
  %i.aon = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 329
  store i8 0, ptr %i.aon, align 1, !tbaa !91
  br label %_ZN3tev14DicomImageDataaSEOS0_.exit.i.i.i

bb.ej:                                            ; preds = %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEaSB8ne180100EOS7_.exit.i.i.i.i
  br i1 %i.aog, label %bb.ek, label %bb.em

bb.ek:                                            ; preds = %bb.ej
  %i.aoo = load i8, ptr %i.anz, align 8
  %i.aop = trunc i8 %i.aoo to i1
  br i1 %i.aop, label %bb.el, label %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5resetB8ne180100Ev.exit.i.i.i5.i.i.i.i

bb.el:                                            ; preds = %bb.ek
  %i.aoq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 344
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !91
  %i.aos = load i64, ptr %i.anz, align 8
  %i.aot = and i64 %i.aos, -2
  call void @_ZdlPvm(ptr noundef %i.aor, i64 noundef %i.aot) #44
  br label %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5resetB8ne180100Ev.exit.i.i.i5.i.i.i.i

_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5resetB8ne180100Ev.exit.i.i.i5.i.i.i.i: ; preds = %bb.el, %bb.ek
  store i8 0, ptr %i.aob, align 8, !tbaa !368
  br label %_ZN3tev14DicomImageDataaSEOS0_.exit.i.i.i

bb.em:                                            ; preds = %bb.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.anz, ptr noundef nonnull align 8 dereferenceable(25) %i.aoa, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.aoa, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.aob, align 8, !tbaa !368
  br label %_ZN3tev14DicomImageDataaSEOS0_.exit.i.i.i

_ZN3tev14DicomImageDataaSEOS0_.exit.i.i.i:        ; preds = %bb.em, %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5resetB8ne180100Ev.exit.i.i.i5.i.i.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i6.i.i.i.i, %bb.eg
  %i.aou = icmp eq i64 %.0.i13.i.i.i.i, 0
  br i1 %i.aou, label %bb.ep, label %bb.eo

bb.en:                                            ; preds = %bb.eo
  %i.aov = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tev14DicomImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %.body.i.i.i.i

bb.eo:                                            ; preds = %_ZN3tev14DicomImageDataaSEOS0_.exit.i.i.i
  %i.aow = add nsw i64 %.0.i13.i.i.i.i, -1
  %i.aox = lshr i64 %i.aow, 1                     ; 2 uses
  %i.aoy = getelementptr inbounds nuw [360 x i8], ptr %.021, i64 %i.aox ; 5 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 256
  %i.apa = load i8, ptr %i.aoz, align 8           ; 2 uses
  %i.apb = trunc i8 %i.apa to i1                  ; 2 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aoy, i64 272
  %i.apd = load ptr, ptr %i.apc, align 8
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aoy, i64 257
  %i.apf = select i1 %i.apb, ptr %i.apd, ptr %i.ape
  %i.apg = getelementptr inbounds nuw i8, ptr %i.aoy, i64 264
  %i.aph = load i64, ptr %i.apg, align 8
  %i.api = lshr i8 %i.apa, 1
  %i.apj = zext nneg i8 %i.api to i64
  %i.apk = select i1 %i.apb, i64 %i.aph, i64 %i.apj
  %i.apl = load i8, ptr %i.abi, align 16          ; 2 uses
  %i.apm = trunc i8 %i.apl to i1                  ; 2 uses
  %i.apn = load ptr, ptr %i.abo, align 16
  %i.apo = select i1 %i.apm, ptr %i.apn, ptr %i.abp
  %i.app = load i64, ptr %i.abq, align 8
  %i.apq = lshr i8 %i.apl, 1
  %i.apr = zext nneg i8 %i.apq to i64
  %i.aps = select i1 %i.apm, i64 %i.app, i64 %i.apr
  %i.apt = invoke noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.apf, i64 %i.apk, ptr %i.apo, i64 %i.aps)
          to label %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit.i.i.i.i.i" unwind label %bb.en

"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit.i.i.i.i.i": ; preds = %bb.eo
  br i1 %i.apt, label %_ZN3tev14DicomImageDataC2EOS0_.exit.i.i.i.i.i, label %bb.ep, !llvm.loop !2982

bb.ep:                                            ; preds = %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit.i.i.i.i.i", %_ZN3tev14DicomImageDataaSEOS0_.exit.i.i.i
  %i.apu = call noundef nonnull align 8 dereferenceable(360) ptr @_ZN3tev14DicomImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(360) %.06.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(360) %7) #41 ; 0 uses
  %i.apv = load i8, ptr %i.abn, align 16, !tbaa !368, !range !202, !noundef !203
  %i.apw = trunc nuw i8 %i.apv to i1
  %i.apx = load i8, ptr %i.abm, align 8
  %i.apy = trunc i8 %i.apx to i1
  %or.cond.i.i.i.i.i.i.i = select i1 %i.apw, i1 %i.apy, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.eq, label %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit.i.i.i.i.i.i

bb.eq:                                            ; preds = %bb.ep
  %i.apz = load ptr, ptr %i.abr, align 8, !tbaa !91
  %i.aqa = load i64, ptr %i.abm, align 8
  %i.aqb = and i64 %i.aqa, -2
  call void @_ZdlPvm(ptr noundef %i.apz, i64 noundef %i.aqb) #44
  br label %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit.i.i.i.i.i.i

_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit.i.i.i.i.i.i: ; preds = %bb.eq, %bb.ep
  %i.aqc = load i8, ptr %i.abl, align 16, !tbaa !368, !range !202, !noundef !203
  %i.aqd = trunc nuw i8 %i.aqc to i1
  %i.aqe = load i8, ptr %i.abk, align 8
  %i.aqf = trunc i8 %i.aqe to i1
  %or.cond.i1.i.i.i.i.i.i = select i1 %i.aqd, i1 %i.aqf, i1 false
  br i1 %or.cond.i1.i.i.i.i.i.i, label %bb.er, label %_ZN3tev14DicomImageDataD2Ev.exit.i.i.i.i.i

bb.er:                                            ; preds = %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit.i.i.i.i.i.i
  %i.aqg = load ptr, ptr %i.abs, align 8, !tbaa !91
  %i.aqh = load i64, ptr %i.abk, align 8
  %i.aqi = and i64 %i.aqh, -2
  call void @_ZdlPvm(ptr noundef %i.aqg, i64 noundef %i.aqi) #44
  br label %_ZN3tev14DicomImageDataD2Ev.exit.i.i.i.i.i

_ZN3tev14DicomImageDataD2Ev.exit.i.i.i.i.i:       ; preds = %bb.er, %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit.i.i.i.i.i.i
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(360) %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %"_ZNSt3__19__sift_upB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_OT0_NS_15iterator_traitsISP_E15difference_typeE.exit.i.i.i.i"

"_ZNSt3__19__sift_upB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_OT0_NS_15iterator_traitsISP_E15difference_typeE.exit.i.i.i.i": ; preds = %_ZN3tev14DicomImageDataD2Ev.exit.i.i.i.i.i, %.noexc14.i.i.i.i, %bb.dm, %bb.dl
  %i.aqj = load i8, ptr %i.aay, align 16, !tbaa !368, !range !202, !noundef !203
  %i.aqk = trunc nuw i8 %i.aqj to i1
  %i.aql = load i8, ptr %i.aax, align 8
  %i.aqm = trunc i8 %i.aql to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.aqk, i1 %i.aqm, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.es, label %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit.i.i.i.i.i

bb.es:                                            ; preds = %"_ZNSt3__19__sift_upB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_OT0_NS_15iterator_traitsISP_E15difference_typeE.exit.i.i.i.i"
  %i.aqn = load ptr, ptr %i.abt, align 8, !tbaa !91
  %i.aqo = load i64, ptr %i.aax, align 8
  %i.aqp = and i64 %i.aqo, -2
  call void @_ZdlPvm(ptr noundef %i.aqn, i64 noundef %i.aqp) #44
  br label %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit.i.i.i.i.i

_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit.i.i.i.i.i: ; preds = %bb.es, %"_ZNSt3__19__sift_upB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_OT0_NS_15iterator_traitsISP_E15difference_typeE.exit.i.i.i.i"
  %i.aqq = load i8, ptr %i.aau, align 16, !tbaa !368, !range !202, !noundef !203
  %i.aqr = trunc nuw i8 %i.aqq to i1
  %i.aqs = load i8, ptr %i.aat, align 8
  %i.aqt = trunc i8 %i.aqs to i1
  %or.cond.i1.i.i.i.i.i = select i1 %i.aqr, i1 %i.aqt, i1 false
  br i1 %or.cond.i1.i.i.i.i.i, label %bb.et, label %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SO_RT0_NS_15iterator_traitsISO_E15difference_typeE.exit.i.i.i"

bb.et:                                            ; preds = %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit.i.i.i.i.i
  %i.aqu = load ptr, ptr %i.abu, align 8, !tbaa !91
  %i.aqv = load i64, ptr %i.aat, align 8
  %i.aqw = and i64 %i.aqv, -2
  call void @_ZdlPvm(ptr noundef %i.aqu, i64 noundef %i.aqw) #44
  br label %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SO_RT0_NS_15iterator_traitsISO_E15difference_typeE.exit.i.i.i"

"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SO_RT0_NS_15iterator_traitsISO_E15difference_typeE.exit.i.i.i": ; preds = %bb.et, %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit.i.i.i.i.i
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(360) %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  %i.aqx = add nsw i64 %.028.i.i.i, -1
  %i.aqy = icmp sgt i64 %.028.i.i.i, 2
  br i1 %i.aqy, label %bb.cj, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.thread", !llvm.loop !2983

bb.eu:                                            ; preds = %bb.bu
  %i.aqz = add nsw i64 %.046, -1                  ; 4 uses
  %i.ara = lshr i64 %i.aw, 1
  %i.arb = icmp samesign ugt i64 %i.av, 46080
  %i.arc = getelementptr [360 x i8], ptr %.021, i64 %i.ara ; 6 uses
  br i1 %i.arb, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEjT1_SP_SP_T0_"(ptr noundef %.021, ptr noundef %i.arc, ptr noundef nonnull %i.am)
  %i.ard = getelementptr inbounds nuw i8, ptr %.021, i64 360
  %i.are = getelementptr i8, ptr %i.arc, i64 -360 ; 2 uses
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEjT1_SP_SP_T0_"(ptr noundef nonnull %i.ard, ptr noundef %i.are, ptr noundef nonnull %i.an)
  %i.arf = getelementptr inbounds nuw i8, ptr %.021, i64 720
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arc, i64 360 ; 2 uses
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEjT1_SP_SP_T0_"(ptr noundef nonnull %i.arf, ptr noundef nonnull %i.arg, ptr noundef nonnull %i.ao)
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEjT1_SP_SP_T0_"(ptr noundef %i.are, ptr noundef %i.arc, ptr noundef nonnull %i.arg)
  call void @_ZNSt3__14swapB8ne180100IN3tev14DicomImageDataEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(360) %.021, ptr noundef nonnull align 8 dereferenceable(360) %i.arc) #41
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  call fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEjT1_SP_SP_T0_"(ptr noundef %i.arc, ptr noundef %.021, ptr noundef nonnull %i.am)
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  br i1 %i.at, label %bb.fj, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.arh = getelementptr inbounds i8, ptr %.021, i64 -104
  %i.ari = load i8, ptr %i.arh, align 8           ; 2 uses
  %i.arj = trunc i8 %i.ari to i1                  ; 2 uses
  %i.ark = getelementptr inbounds i8, ptr %.021, i64 -88
  %i.arl = load ptr, ptr %i.ark, align 8
  %i.arm = getelementptr inbounds i8, ptr %.021, i64 -103
  %i.arn = select i1 %i.arj, ptr %i.arl, ptr %i.arm
  %i.aro = getelementptr inbounds i8, ptr %.021, i64 -96
  %i.arp = load i64, ptr %i.aro, align 8
  %i.arq = lshr i8 %i.ari, 1
  %i.arr = zext nneg i8 %i.arq to i64
  %i.ars = select i1 %i.arj, i64 %i.arp, i64 %i.arr
  %i.art = getelementptr inbounds nuw i8, ptr %.021, i64 256
  %i.aru = load i8, ptr %i.art, align 8           ; 2 uses
  %i.arv = trunc i8 %i.aru to i1                  ; 2 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %.021, i64 272
  %i.arx = load ptr, ptr %i.arw, align 8
  %i.ary = getelementptr inbounds nuw i8, ptr %.021, i64 257
  %i.arz = select i1 %i.arv, ptr %i.arx, ptr %i.ary
  %i.asa = getelementptr inbounds nuw i8, ptr %.021, i64 264
  %i.asb = load i64, ptr %i.asa, align 8
  %i.asc = lshr i8 %i.aru, 1
  %i.asd = zext nneg i8 %i.asc to i64
  %i.ase = select i1 %i.arv, i64 %i.asb, i64 %i.asd
  %i.asf = call noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.arn, i64 %i.ars, ptr %i.arz, i64 %i.ase)
  br i1 %i.asf, label %bb.fj, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.asg = getelementptr inbounds nuw i8, ptr %.021, i64 256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.ash = load <2 x ptr>, ptr %.021, align 8, !tbaa !342
  store <2 x ptr> %i.ash, ptr %6, align 16, !tbaa !342
  %i.asi = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.asj = load ptr, ptr %i.asi, align 8, !tbaa !342
  store ptr %i.asj, ptr %i.b, align 16, !tbaa !342
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.021, i8 0, i64 24, i1 false)
  %i.ask = getelementptr inbounds nuw i8, ptr %.021, i64 24 ; 2 uses
  %i.asl = load <2 x ptr>, ptr %i.ask, align 8, !tbaa !420
  store <2 x ptr> %i.asl, ptr %i.c, align 8, !tbaa !420
  %i.asm = getelementptr inbounds nuw i8, ptr %.021, i64 40
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !420
  store ptr %i.asn, ptr %i.d, align 8, !tbaa !420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ask, i8 0, i64 24, i1 false)
  %i.aso = getelementptr inbounds nuw i8, ptr %.021, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.e, ptr noundef nonnull align 8 dereferenceable(44) %i.aso, i64 44, i1 false)
  %i.asp = getelementptr inbounds nuw i8, ptr %.021, i64 96 ; 2 uses
  %i.asq = load <2 x ptr>, ptr %i.asp, align 8, !tbaa !257
  store <2 x ptr> %i.asq, ptr %i.f, align 16, !tbaa !257
  %i.asr = getelementptr inbounds nuw i8, ptr %.021, i64 112
  %i.ass = load ptr, ptr %i.asr, align 8, !tbaa !257
  store ptr %i.ass, ptr %i.g, align 16, !tbaa !257
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.asp, i8 0, i64 24, i1 false)
  %i.ast = getelementptr inbounds nuw i8, ptr %.021, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(136) %i.ast, i64 136, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.asg, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.asg, i8 0, i64 24, i1 false)
  %i.asu = getelementptr inbounds nuw i8, ptr %.021, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.j, ptr noundef nonnull align 8 dereferenceable(13) %i.asu, i64 13, i1 false)
  store i8 0, ptr %i.k, align 8, !tbaa !91
  store i8 0, ptr %i.l, align 16, !tbaa !368
  %i.asv = getelementptr inbounds nuw i8, ptr %.021, i64 320
  %i.asw = load i8, ptr %i.asv, align 8, !tbaa !368, !range !202, !noundef !203
  %i.asx = trunc nuw i8 %i.asw to i1
  br i1 %i.asx, label %bb.fa, label %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne180100EOS7_.exit.i.i111

bb.fa:                                            ; preds = %bb.ez
  %i.asy = getelementptr inbounds nuw i8, ptr %.021, i64 296 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.k, ptr noundef nonnull align 8 dereferenceable(25) %i.asy, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.asy, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.l, align 16, !tbaa !368
  br label %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne180100EOS7_.exit.i.i111

_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne180100EOS7_.exit.i.i111: ; preds = %bb.fa, %bb.ez
  store i8 0, ptr %i.m, align 8, !tbaa !91
  store i8 0, ptr %i.n, align 16, !tbaa !368
  %i.asz = getelementptr inbounds nuw i8, ptr %.021, i64 352
  %i.ata = load i8, ptr %i.asz, align 8, !tbaa !368, !range !202, !noundef !203
  %i.atb = trunc nuw i8 %i.ata to i1
  br i1 %i.atb, label %bb.fb, label %_ZN3tev14DicomImageDataC2EOS0_.exit.i112

bb.fb:                                            ; preds = %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne180100EOS7_.exit.i.i111
  %i.atc = getelementptr inbounds nuw i8, ptr %.021, i64 328 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.m, ptr noundef nonnull align 8 dereferenceable(25) %i.atc, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.atc, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.n, align 16, !tbaa !368
  br label %_ZN3tev14DicomImageDataC2EOS0_.exit.i112

_ZN3tev14DicomImageDataC2EOS0_.exit.i112:         ; preds = %bb.fb, %_ZNSt3__18optionalINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne180100EOS7_.exit.i.i111
  %i.atd = load i8, ptr %i.i, align 16            ; 2 uses
  %i.ate = trunc i8 %i.atd to i1                  ; 2 uses
  %i.atf = load ptr, ptr %i.o, align 16
  %i.atg = select i1 %i.ate, ptr %i.atf, ptr %i.p
  %i.ath = load i64, ptr %i.q, align 8
  %i.ati = lshr i8 %i.atd, 1
  %i.atj = zext nneg i8 %i.ati to i64
  %i.atk = select i1 %i.ate, i64 %i.ath, i64 %i.atj
  %i.atl = load i8, ptr %i.ap, align 8            ; 2 uses
  %i.atm = trunc i8 %i.atl to i1                  ; 2 uses
  %i.atn = load ptr, ptr %i.aq, align 8
  %i.ato = select i1 %i.atm, ptr %i.atn, ptr %i.ar
  %i.atp = load i64, ptr %i.as, align 8
  %i.atq = lshr i8 %i.atl, 1
  %i.atr = zext nneg i8 %i.atq to i64
  %i.ats = select i1 %i.atm, i64 %i.atp, i64 %i.atr
  %i.att = invoke noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.atg, i64 %i.atk, ptr %i.ato, i64 %i.ats)
          to label %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit.i113" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit.i113": ; preds = %_ZN3tev14DicomImageDataC2EOS0_.exit.i112
  br i1 %i.att, label %.preheader29.i, label %.preheader33.i

.preheader29.i:                                   ; preds = %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit.i113", %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit13.i"
  %.018.i = phi ptr [ %i.aup, %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit13.i" ], [ %.021, %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit.i113" ] ; 5 uses
  %i.atu = load i8, ptr %i.i, align 16            ; 2 uses
  %i.atv = trunc i8 %i.atu to i1                  ; 2 uses
  %i.atw = load ptr, ptr %i.o, align 16
  %i.atx = select i1 %i.atv, ptr %i.atw, ptr %i.p
  %i.aty = load i64, ptr %i.q, align 8
  %i.atz = lshr i8 %i.atu, 1
  %i.aua = zext nneg i8 %i.atz to i64
  %i.aub = select i1 %i.atv, i64 %i.aty, i64 %i.aua
  %i.auc = getelementptr inbounds nuw i8, ptr %.018.i, i64 616
  %i.aud = load i8, ptr %i.auc, align 8           ; 2 uses
  %i.aue = trunc i8 %i.aud to i1                  ; 2 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %.018.i, i64 632
  %i.aug = load ptr, ptr %i.auf, align 8
  %i.auh = getelementptr inbounds nuw i8, ptr %.018.i, i64 617
  %i.aui = select i1 %i.aue, ptr %i.aug, ptr %i.auh
  %i.auj = getelementptr inbounds nuw i8, ptr %.018.i, i64 624
  %i.auk = load i64, ptr %i.auj, align 8
  %i.aul = lshr i8 %i.aud, 1
  %i.aum = zext nneg i8 %i.aul to i64
  %i.aun = select i1 %i.aue, i64 %i.auk, i64 %i.aum
  %i.auo = invoke noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.atx, i64 %i.aub, ptr %i.aui, i64 %i.aun)
          to label %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit13.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit13.i": ; preds = %.preheader29.i
  %i.aup = getelementptr inbounds nuw i8, ptr %.018.i, i64 360 ; 2 uses
  br i1 %i.auo, label %.critedge.i114, label %.preheader29.i, !llvm.loop !2984

.loopexit.i:                                      ; preds = %.preheader.i121
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.fd
  %lpad.loopexit22.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %.preheader25.i
  %lpad.loopexit26.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.preheader29.i
  %lpad.loopexit30.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.fc
  %lpad.loopexit35.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %_ZN3tev14DicomImageDataC2EOS0_.exit.i112
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit22.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit26.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit30.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit35.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  call void @_ZN3tev14DicomImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %common.resume
end_hunk_2
begin_hunk_3_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataELb0EEEvT1_SP_T0_NS_15iterator_traitsISP_E15difference_typeEb":bb.a

.loopexit22.i:                                    ; preds = %bb.fn
  %lpad.loopexit24.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp23.i

.loopexit.split-lp23.loopexit.i:                  ; preds = %.preheader27.i
  %lpad.loopexit28.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp23.i

.loopexit.split-lp23.loopexit.split-lp.i:         ; preds = %_ZN3tev14DicomImageDataC2EOS0_.exit.i124
  %lpad.loopexit.split-lp29.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp23.i

.preheader27.i:                                   ; preds = %bb.fm, %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit18.i"
  %.1.i127 = phi ptr [ %i.bch, %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit18.i" ], [ %.024.ph, %bb.fm ] ; 5 uses
  %i.bbm = getelementptr inbounds i8, ptr %.1.i127, i64 -104
  %i.bbn = load i8, ptr %i.bbm, align 8           ; 2 uses
  %i.bbo = trunc i8 %i.bbn to i1                  ; 2 uses
  %i.bbp = getelementptr inbounds i8, ptr %.1.i127, i64 -88
  %i.bbq = load ptr, ptr %i.bbp, align 8
  %i.bbr = getelementptr inbounds i8, ptr %.1.i127, i64 -103
  %i.bbs = select i1 %i.bbo, ptr %i.bbq, ptr %i.bbr
  %i.bbt = getelementptr inbounds i8, ptr %.1.i127, i64 -96
  %i.bbu = load i64, ptr %i.bbt, align 8
  %i.bbv = lshr i8 %i.bbn, 1
  %i.bbw = zext nneg i8 %i.bbv to i64
  %i.bbx = select i1 %i.bbo, i64 %i.bbu, i64 %i.bbw
  %i.bby = load i8, ptr %i.aa, align 16           ; 2 uses
  %i.bbz = trunc i8 %i.bby to i1                  ; 2 uses
  %i.bca = load ptr, ptr %i.ag, align 16
  %i.bcb = select i1 %i.bbz, ptr %i.bca, ptr %i.ah
  %i.bcc = load i64, ptr %i.ai, align 8
  %i.bcd = lshr i8 %i.bby, 1
  %i.bce = zext nneg i8 %i.bcd to i64
  %i.bcf = select i1 %i.bbz, i64 %i.bcc, i64 %i.bce
  %i.bcg = invoke noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.bbs, i64 %i.bbx, ptr %i.bcb, i64 %i.bcf)
          to label %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit18.i" unwind label %.loopexit.split-lp23.loopexit.i

"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit18.i": ; preds = %.preheader27.i
  %i.bch = getelementptr inbounds i8, ptr %.1.i127, i64 -360 ; 2 uses
  br i1 %i.bcg, label %.critedge.i128, label %.preheader27.i, !llvm.loop !2992

.critedge.i128:                                   ; preds = %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit18.i", %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit17.i144", %.preheader21.i
  %.2.i = phi ptr [ %i.bbl, %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit17.i144" ], [ %.0.i143, %.preheader21.i ], [ %i.bch, %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit18.i" ] ; 2 uses
  %i.bci = icmp ult ptr %i.ban, %.2.i             ; 2 uses
  br i1 %i.bci, label %.lr.ph.i135, label %._crit_edge.i129

.lr.ph.i135:                                      ; preds = %.critedge.i128, %bb.fp
  %.346.i = phi ptr [ %i.bea, %bb.fp ], [ %.2.i, %.critedge.i128 ] ; 2 uses
  %.11945.i = phi ptr [ %i.bde, %bb.fp ], [ %i.ban, %.critedge.i128 ] ; 2 uses
  call void @_ZNSt3__14swapB8ne180100IN3tev14DicomImageDataEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(360) %.11945.i, ptr noundef nonnull align 8 dereferenceable(360) %.346.i) #41
  br label %bb.fo

bb.fo:                                            ; preds = %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit19.i", %.lr.ph.i135
  %.220.i136 = phi ptr [ %.11945.i, %.lr.ph.i135 ], [ %i.bde, %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit19.i" ] ; 6 uses
  %i.bcj = getelementptr inbounds nuw i8, ptr %.220.i136, i64 616
  %i.bck = load i8, ptr %i.bcj, align 8           ; 2 uses
  %i.bcl = trunc i8 %i.bck to i1                  ; 2 uses
  %i.bcm = getelementptr inbounds nuw i8, ptr %.220.i136, i64 632
  %i.bcn = load ptr, ptr %i.bcm, align 8
  %i.bco = getelementptr inbounds nuw i8, ptr %.220.i136, i64 617
  %i.bcp = select i1 %i.bcl, ptr %i.bcn, ptr %i.bco
  %i.bcq = getelementptr inbounds nuw i8, ptr %.220.i136, i64 624
  %i.bcr = load i64, ptr %i.bcq, align 8
  %i.bcs = lshr i8 %i.bck, 1
  %i.bct = zext nneg i8 %i.bcs to i64
  %i.bcu = select i1 %i.bcl, i64 %i.bcr, i64 %i.bct
  %i.bcv = load i8, ptr %i.aa, align 16           ; 2 uses
  %i.bcw = trunc i8 %i.bcv to i1                  ; 2 uses
  %i.bcx = load ptr, ptr %i.ag, align 16
  %i.bcy = select i1 %i.bcw, ptr %i.bcx, ptr %i.ah
  %i.bcz = load i64, ptr %i.ai, align 8
  %i.bda = lshr i8 %i.bcv, 1
  %i.bdb = zext nneg i8 %i.bda to i64
  %i.bdc = select i1 %i.bcw, i64 %i.bcz, i64 %i.bdb
  %i.bdd = invoke noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.bcp, i64 %i.bcu, ptr %i.bcy, i64 %i.bdc)
          to label %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit19.i" unwind label %.loopexit.split-lp.i137

"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit19.i": ; preds = %bb.fo
  %i.bde = getelementptr inbounds nuw i8, ptr %.220.i136, i64 360 ; 3 uses
  br i1 %i.bdd, label %bb.fo, label %.preheader.i139, !llvm.loop !2993

.preheader.i139:                                  ; preds = %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit19.i", %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit20.i"
  %.4.i140 = phi ptr [ %i.bea, %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit20.i" ], [ %.346.i, %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit19.i" ] ; 5 uses
  %i.bdf = getelementptr inbounds i8, ptr %.4.i140, i64 -104
  %i.bdg = load i8, ptr %i.bdf, align 8           ; 2 uses
  %i.bdh = trunc i8 %i.bdg to i1                  ; 2 uses
  %i.bdi = getelementptr inbounds i8, ptr %.4.i140, i64 -88
  %i.bdj = load ptr, ptr %i.bdi, align 8
  %i.bdk = getelementptr inbounds i8, ptr %.4.i140, i64 -103
  %i.bdl = select i1 %i.bdh, ptr %i.bdj, ptr %i.bdk
  %i.bdm = getelementptr inbounds i8, ptr %.4.i140, i64 -96
  %i.bdn = load i64, ptr %i.bdm, align 8
  %i.bdo = lshr i8 %i.bdg, 1
  %i.bdp = zext nneg i8 %i.bdo to i64
  %i.bdq = select i1 %i.bdh, i64 %i.bdn, i64 %i.bdp
  %i.bdr = load i8, ptr %i.aa, align 16           ; 2 uses
  %i.bds = trunc i8 %i.bdr to i1                  ; 2 uses
  %i.bdt = load ptr, ptr %i.ag, align 16
  %i.bdu = select i1 %i.bds, ptr %i.bdt, ptr %i.ah
  %i.bdv = load i64, ptr %i.ai, align 8
  %i.bdw = lshr i8 %i.bdr, 1
  %i.bdx = zext nneg i8 %i.bdw to i64
  %i.bdy = select i1 %i.bds, i64 %i.bdv, i64 %i.bdx
  %i.bdz = invoke noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.bdl, i64 %i.bdq, ptr %i.bdu, i64 %i.bdy)
          to label %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit20.i" unwind label %.loopexit.i141

"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit20.i": ; preds = %.preheader.i139
  %i.bea = getelementptr inbounds i8, ptr %.4.i140, i64 -360 ; 3 uses
  br i1 %i.bdz, label %bb.fp, label %.preheader.i139, !llvm.loop !2994

bb.fp:                                            ; preds = %"_ZZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_0clERKNS_14DicomImageDataESM_.exit20.i"
  %i.beb = icmp ult ptr %i.bde, %i.bea
  br i1 %i.beb, label %.lr.ph.i135, label %._crit_edge.i129, !llvm.loop !2995

.loopexit.i141:                                   ; preds = %.preheader.i139
  %lpad.loopexit.i142 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp23.i

.loopexit.split-lp.i137:                          ; preds = %bb.fo
  %lpad.loopexit.split-lp.i138 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp23.i

._crit_edge.i129:                                 ; preds = %bb.fp, %.critedge.i128
  %i.bec = phi ptr [ %.018.i125, %.critedge.i128 ], [ %.220.i136, %bb.fp ] ; 8 uses
  %.not.i130 = icmp eq ptr %.021, %i.bec
  br i1 %.not.i130, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %._crit_edge.i129
  %i.bed = call noundef nonnull align 8 dereferenceable(360) ptr @_ZN3tev14DicomImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(360) %.021, ptr noundef nonnull align 8 dereferenceable(360) %i.bec) #41 ; 0 uses
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %._crit_edge.i129
  %i.bee = call noundef nonnull align 8 dereferenceable(360) ptr @_ZN3tev14DicomImageDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.bec, ptr noundef nonnull align 8 dereferenceable(360) %5) #41 ; 0 uses
  %i.bef = load i8, ptr %i.af, align 16, !tbaa !368, !range !202, !noundef !203
  %i.beg = trunc nuw i8 %i.bef to i1
  %i.beh = load i8, ptr %i.ae, align 8
  %i.bei = trunc i8 %i.beh to i1
  %or.cond.i.i.i131 = select i1 %i.beg, i1 %i.bei, i1 false
  br i1 %or.cond.i.i.i131, label %bb.fs, label %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit.i.i132

bb.fs:                                            ; preds = %bb.fr
  %i.bej = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.bek = load i64, ptr %i.ae, align 8
  %i.bel = and i64 %i.bek, -2
  call void @_ZdlPvm(ptr noundef %i.bej, i64 noundef %i.bel) #44
  br label %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit.i.i132

_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit.i.i132: ; preds = %bb.fs, %bb.fr
  %i.bem = load i8, ptr %i.ad, align 16, !tbaa !368, !range !202, !noundef !203
  %i.ben = trunc nuw i8 %i.bem to i1
  %i.beo = load i8, ptr %i.ac, align 8
  %i.bep = trunc i8 %i.beo to i1
  %or.cond.i1.i.i133 = select i1 %i.ben, i1 %i.bep, i1 false
  br i1 %or.cond.i1.i.i133, label %bb.ft, label %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev14DicomImageDataERZNKS2_16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_0EENS_4pairIT0_bEESQ_SQ_T1_.exit"

bb.ft:                                            ; preds = %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit.i.i132
  %i.beq = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.ber = load i64, ptr %i.ac, align 8
  %i.bes = and i64 %i.ber, -2
  call void @_ZdlPvm(ptr noundef %i.beq, i64 noundef %i.bes) #44
  br label %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev14DicomImageDataERZNKS2_16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_0EENS_4pairIT0_bEESQ_SQ_T1_.exit"

.loopexit.split-lp23.i:                           ; preds = %.loopexit.split-lp.i137, %.loopexit.i141, %.loopexit.split-lp23.loopexit.split-lp.i, %.loopexit.split-lp23.loopexit.i, %.loopexit22.i
  %.pn.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp29.i, %.loopexit.split-lp23.loopexit.split-lp.i ], [ %lpad.loopexit24.i, %.loopexit22.i ], [ %lpad.loopexit28.i, %.loopexit.split-lp23.loopexit.i ], [ %lpad.loopexit.i142, %.loopexit.i141 ], [ %lpad.loopexit.split-lp.i138, %.loopexit.split-lp.i137 ]
  call void @_ZN3tev14DicomImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %common.resume

"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev14DicomImageDataERZNKS2_16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_0EENS_4pairIT0_bEESQ_SQ_T1_.exit": ; preds = %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit.i.i132, %bb.ft
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(360) %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br i1 %i.bci, label %bb.fx, label %bb.fu

bb.fu:                                            ; preds = %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev14DicomImageDataERZNKS2_16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_0EENS_4pairIT0_bEESQ_SQ_T1_.exit"
  %i.bet = call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEbT1_SP_T0_"(ptr noundef nonnull %.021, ptr noundef nonnull %i.bec) ; 2 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bec, i64 360 ; 2 uses
  %i.bev = call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEbT1_SP_T0_"(ptr noundef nonnull %i.beu, ptr noundef %.024.ph)
  br i1 %i.bev, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  br i1 %i.bet, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.thread", label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.outer", !llvm.loop !2996

bb.fw:                                            ; preds = %bb.fu
  br i1 %i.bet, label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit", label %bb.fx, !llvm.loop !2996

bb.fx:                                            ; preds = %bb.fw, %"_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPN3tev14DicomImageDataERZNKS2_16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_0EENS_4pairIT0_bEESQ_SQ_T1_.exit"
  call fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataELb0EEEvT1_SP_T0_NS_15iterator_traitsISP_E15difference_typeEb"(ptr noundef nonnull %.021, ptr noundef nonnull %i.bec, i64 noundef %i.aqz, i1 noundef zeroext %i.at)
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bec, i64 360
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.outer676.backedge"

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.outer676.backedge": ; preds = %bb.fx, %"_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN3tev14DicomImageDataERZNKS2_16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_0EET0_SP_SP_T1_.exit"
  %.021.ph677.be = phi ptr [ %.321.lcssa.i, %"_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPN3tev14DicomImageDataERZNKS2_16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS8_EERKNS2_19ImageLoaderSettingsEiE3$_0EET0_SP_SP_T1_.exit" ], [ %i.bew, %bb.fx ]
  br label %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.outer676", !llvm.loop !2996

"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit.thread": ; preds = %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit", %"_ZNSt3__116__insertion_sortB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_T0_.exit", %bb.fv, %"_ZNSt3__110__pop_heapB8ne180100INS_17_ClassicAlgPolicyEZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SO_RT0_NS_15iterator_traitsISO_E15difference_typeE.exit.i.i.i", %bb.bt, %bb.an, %.preheader.i54, %bb.ao, %.preheader.i, %bb.i, %bb.c, %bb.e, %bb.d, %bb.f, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZNSt3__124__sort5_maybe_branchlessB8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSR_SR_SR_SR_SR_SQ_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #14 {
bb.a:
  tail call fastcc void @"_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_SP_SP_T0_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = trunc i8 %i.b to i1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 257
  %i.g = select i1 %i.c, ptr %i.e, ptr %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.i = load i64, ptr %i.h, align 8
  %i.j = lshr i8 %i.b, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = select i1 %i.c, i64 %i.i, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8               ; 2 uses
  %i.o = trunc i8 %i.n to i1                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 272 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 257 ; 2 uses
  %i.s = select i1 %i.o, ptr %i.q, ptr %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 264 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = lshr i8 %i.n, 1
  %i.w = zext nneg i8 %i.v to i64
  %i.x = select i1 %i.o, i64 %i.u, i64 %i.w
  %i.y = tail call noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.g, i64 %i.l, ptr %i.s, i64 %i.x)
  br i1 %i.y, label %bb.b, label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_SP_SP_SP_T0_.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt3__14swapB8ne180100IN3tev14DicomImageDataEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(360) %3, ptr noundef nonnull align 8 dereferenceable(360) %4) #41
  %i.z = load i8, ptr %i.m, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.p, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.r
  %i.ad = load i64, ptr %i.t, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8             ; 2 uses
  %i.aj = trunc i8 %i.ai to i1                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 257 ; 2 uses
  %i.an = select i1 %i.aj, ptr %i.al, ptr %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = lshr i8 %i.ai, 1
  %i.ar = zext nneg i8 %i.aq to i64
  %i.as = select i1 %i.aj, i64 %i.ap, i64 %i.ar
  %i.at = tail call noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.ac, i64 %i.ag, ptr %i.an, i64 %i.as)
  br i1 %i.at, label %bb.c, label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_SP_SP_SP_T0_.exit"

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt3__14swapB8ne180100IN3tev14DicomImageDataEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(360) %3) #41
  %i.au = load i8, ptr %i.ah, align 8             ; 2 uses
  %i.av = trunc i8 %i.au to i1                    ; 2 uses
  %i.aw = load ptr, ptr %i.ak, align 8
  %i.ax = select i1 %i.av, ptr %i.aw, ptr %i.am
  %i.ay = load i64, ptr %i.ao, align 8
  %i.az = lshr i8 %i.au, 1
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = select i1 %i.av, i64 %i.ay, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8             ; 2 uses
  %i.be = trunc i8 %i.bd to i1                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 257 ; 2 uses
  %i.bi = select i1 %i.be, ptr %i.bg, ptr %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = lshr i8 %i.bd, 1
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = select i1 %i.be, i64 %i.bk, i64 %i.bm
  %i.bo = tail call noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.ax, i64 %i.bb, ptr %i.bi, i64 %i.bn)
  br i1 %i.bo, label %bb.d, label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_SP_SP_SP_T0_.exit"

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt3__14swapB8ne180100IN3tev14DicomImageDataEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) #41
  %i.bp = load i8, ptr %i.bc, align 8             ; 2 uses
  %i.bq = trunc i8 %i.bp to i1                    ; 2 uses
  %i.br = load ptr, ptr %i.bf, align 8
  %i.bs = select i1 %i.bq, ptr %i.br, ptr %i.bh
  %i.bt = load i64, ptr %i.bj, align 8
  %i.bu = lshr i8 %i.bp, 1
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = select i1 %i.bq, i64 %i.bt, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.by = load i8, ptr %i.bx, align 8             ; 2 uses
  %i.bz = trunc i8 %i.by to i1                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.cd = select i1 %i.bz, ptr %i.cb, ptr %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = lshr i8 %i.by, 1
  %i.ch = zext nneg i8 %i.cg to i64
  %i.ci = select i1 %i.bz, i64 %i.cf, i64 %i.ch
  %i.cj = tail call noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.bs, i64 %i.bw, ptr %i.cd, i64 %i.ci)
  br i1 %i.cj, label %bb.e, label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_SP_SP_SP_T0_.exit"

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt3__14swapB8ne180100IN3tev14DicomImageDataEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) #41
  br label %"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_SP_SP_SP_T0_.exit"

"_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEvT1_SP_SP_SP_SP_T0_.exit": ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERZNK3tev16DicomImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS6_EERKNS2_19ImageLoaderSettingsEiE3$_0PNS2_14DicomImageDataEEEjT1_SP_SP_T0_"(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = trunc i8 %i.b to i1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 257 ; 4 uses
  %i.g = select i1 %i.c, ptr %i.e, ptr %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = lshr i8 %i.b, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = select i1 %i.c, i64 %i.i, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8               ; 2 uses
  %i.o = trunc i8 %i.n to i1                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 257 ; 2 uses
  %i.s = select i1 %i.o, ptr %i.q, ptr %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = lshr i8 %i.n, 1
  %i.w = zext nneg i8 %i.v to i64
  %i.x = select i1 %i.o, i64 %i.u, i64 %i.w
  %i.y = tail call noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.g, i64 %i.l, ptr %i.s, i64 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8              ; 2 uses
  %i.ab = trunc i8 %i.aa to i1                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 257 ; 2 uses
  %i.af = select i1 %i.ab, ptr %i.ad, ptr %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = lshr i8 %i.aa, 1
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = select i1 %i.ab, i64 %i.ah, i64 %i.aj
  %i.al = load i8, ptr %i.a, align 8              ; 2 uses
  %i.am = trunc i8 %i.al to i1                    ; 2 uses
  %i.an = load ptr, ptr %i.d, align 8
  %i.ao = select i1 %i.am, ptr %i.an, ptr %i.f
  %i.ap = load i64, ptr %i.h, align 8
  %i.aq = lshr i8 %i.al, 1
  %i.ar = zext nneg i8 %i.aq to i64
  %i.as = select i1 %i.am, i64 %i.ap, i64 %i.ar
  %i.at = tail call noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.af, i64 %i.ak, ptr %i.ao, i64 %i.as) ; 2 uses
  br i1 %i.y, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.at, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt3__14swapB8ne180100IN3tev14DicomImageDataEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) #41
  %i.au = load i8, ptr %i.a, align 8              ; 2 uses
  %i.av = trunc i8 %i.au to i1                    ; 2 uses
  %i.aw = load ptr, ptr %i.d, align 8
  %i.ax = select i1 %i.av, ptr %i.aw, ptr %i.f
  %i.ay = load i64, ptr %i.h, align 8
  %i.az = lshr i8 %i.au, 1
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = select i1 %i.av, i64 %i.ay, i64 %i.ba
  %i.bc = load i8, ptr %i.m, align 8              ; 2 uses
  %i.bd = trunc i8 %i.bc to i1                    ; 2 uses
  %i.be = load ptr, ptr %i.p, align 8
  %i.bf = select i1 %i.bd, ptr %i.be, ptr %i.r
  %i.bg = load i64, ptr %i.t, align 8
  %i.bh = lshr i8 %i.bc, 1
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = select i1 %i.bd, i64 %i.bg, i64 %i.bi
  %i.bk = tail call noundef zeroext i1 @_ZN3tev14naturalCompareENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr %i.ax, i64 %i.bb, ptr %i.bf, i64 %i.bj)
  br i1 %i.bk, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt3__14swapB8ne180100IN3tev14DicomImageDataEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) #41
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
end_hunk_3
