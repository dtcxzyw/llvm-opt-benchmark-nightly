Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/bridge?download=true
inline.NumInlined: 8866
inline.NumDeleted: 3382
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJSt10shared_ptrINS0_5FieldEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i7.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i7.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.r, align 4, !tbaa !69   ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !134
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !2754
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.a, ptr %i.h, align 8, !tbaa !528
  br label %_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow17LargeListViewTypeEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #31, !inline_history !2760
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !546  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !95
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #31
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17LargeListViewTypeC2ERKSt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.std::shared_ptr.267"], align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 42, ptr %i.b, align 8, !tbaa !232
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow17LargeListViewTypeE, i64 16), ptr %0, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !181  ; 2 uses
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !272
  store <2 x ptr> %i.f, ptr %2, align 16, !tbaa !272
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !69
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !69
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit:   ; preds = %bb.a, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.l)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader unwind label %bb.k

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader: ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !181  ; 8 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.o, align 8, !tbaa !183
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !184
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !134
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #31, !inline_history !38
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !134
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #31, !inline_history !38
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i3 = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.r, %bb.h ], [ %i.ab, %bb.i ]
  %i.ac = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ac, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !185

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #31
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.k:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @_ZN5arrow12BaseListTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #31
  resume { ptr, i32 } %i.ad
}

declare void @_ZN5arrow15fixed_size_listESt10shared_ptrINS_5FieldEEi(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaImporter15MakeChildFieldsEv(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %3 = alloca %"class.std::vector.22", align 8    ; 11 uses
  %4 = alloca %"class.arrow::Result.134", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.val20 = load ptr, ptr %i.a, align 8, !tbaa !346 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %.val21 = load ptr, ptr %i.b, align 8, !tbaa !347 ; 2 uses
  %i.c = ptrtoint ptr %.val21 to i64
  %i.d = ptrtoint ptr %.val20 to i64              ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 176                 ; 3 uses
  %i.g = icmp ugt i64 %i.f, 576460752303423487
  br i1 %i.g, label %.noexc, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #41
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %.val21, %.val20
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2EmRKS4_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.h = shl nuw nsw i64 %i.f, 4                  ; 3 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #38 ; 4 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.f
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.i, i64 %i.h
  %.val35.pre = load ptr, ptr %i.a, align 8, !tbaa !346 ; 2 uses
  %.val1936.pre = load ptr, ptr %i.b, align 8, !tbaa !347
  %.pre46 = ptrtoint ptr %.val1936.pre to i64
  %.pre47 = ptrtoint ptr %.val35.pre to i64
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2EmRKS4_.exit.thread.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %.lr.ph.preheader.i.i.i.i.i
  %.pre-phi48 = phi i64 [ %.pre47, %.lr.ph.preheader.i.i.i.i.i ], [ %i.d, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %.pre-phi = phi i64 [ %.pre46, %.lr.ph.preheader.i.i.i.i.i ], [ %i.d, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %i.k = phi ptr [ %.val35.pre, %.lr.ph.preheader.i.i.i.i.i ], [ %.val20, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %.val35 = phi ptr [ %i.i, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.j, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 2 uses
  store ptr %.val35, ptr %3, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.m, align 8, !tbaa !355
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.l, align 8, !tbaa !352
  %i.n = sub i64 %.pre-phi, %.pre-phi48
  %.not37 = icmp sgt i64 %i.n, 0
  br i1 %.not37, label %.lr.ph, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i.thread

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2EmRKS4_.exit.thread.i
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev.exit
  %i.q = add nuw nsw i64 %.01238, 1               ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !346 ; 2 uses
  %.val19 = load ptr, ptr %i.b, align 8, !tbaa !347
  %i.r = ptrtoint ptr %.val19 to i64
  %i.s = ptrtoint ptr %.val to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 176
  %.not = icmp slt i64 %i.q, %i.u
  br i1 %.not, label %bb.c, label %.critedge.loopexit, !llvm.loop !2761

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.val39 = phi ptr [ %i.k, %.lr.ph ], [ %.val, %bb.b ]
  %.01238 = phi i64 [ 0, %.lr.ph ], [ %i.q, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.v = getelementptr inbounds nuw [176 x i8], ptr %.val39, i64 %.01238 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !345, !noalias !2770
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !156, !noalias !2770
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !2770
  invoke void @_ZN5arrow6Status8FromArgsIJRA47_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(47) @.str.95)
          to label %.noexc24 unwind label %bb.i

.noexc24:                                         ; preds = %bb.d
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #31
  %i.aa = load ptr, ptr %2, align 8, !tbaa !132, !noalias !2770 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.e, !prof !135

bb.e:                                             ; preds = %.noexc24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !146, !range !147, !noundef !148
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #31
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.f, %bb.e, %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !2770
  br label %_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl.exit

bb.g:                                             ; preds = %bb.c
  invoke fastcc void @_ZNK5arrow12_GLOBAL__N_114SchemaImporter9MakeFieldEv(ptr dead_on_unwind noalias nonnull writable align 8 %4, ptr noundef nonnull readonly align 8 dereferenceable(176) %i.v)
          to label %_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl.exit unwind label %bb.i

_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %bb.g
  %i.ae = load ptr, ptr %4, align 8, !tbaa !132
  %i.af = icmp eq ptr %i.ae, null                 ; 2 uses
  br i1 %i.af, label %bb.j, label %bb.h, !prof !135

bb.h:                                             ; preds = %_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl.exit
  call void @_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #31
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g, %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %i.ag

bb.j:                                             ; preds = %_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl.exit
  %i.ah = load <2 x ptr>, ptr %i.o, align 8, !tbaa !272, !noalias !2771
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.ai = load ptr, ptr %3, align 8, !tbaa !353
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.01238 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !181 ; 8 uses
  store <2 x ptr> %i.ah, ptr %i.aj, align 8, !tbaa !272
  %.not.i.i.i.i26 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i26, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.am, align 8, !tbaa !183
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !184
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !134
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #31, !inline_history !2768
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !134
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #31, !inline_history !2768
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i = phi i32 [ %i.ap, %bb.n ], [ %i.az, %bb.o ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !185

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #31
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.p, %bb.h
  %i.bb = load ptr, ptr %4, align 8, !tbaa !132   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.q, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.thread.i, !prof !135

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !181 ; 8 uses
  %.not.i.i.i.i.i29 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i29, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.be, align 8, !tbaa !183
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !184
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !134
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #31, !inline_history !39
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !134
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #31, !inline_history !39
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.i

bb.t:                                             ; preds = %bb.r
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bh, %bb.u ], [ %i.br, %bb.v ]
  %i.bs = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bs, label %bb.w, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.i, !prof !185

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #31
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.i: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.s
  %.pr.i.pr = load ptr, ptr %4, align 8, !tbaa !132 ; 2 uses
  %.not.i.i30 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i30, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.thread.i, !prof !149

_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bt = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.i ], [ %i.bb, %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !146, !range !147, !noundef !148
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #31
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev.exit: ; preds = %bb.q, %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.thread.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %i.af, label %bb.b, label %.loopexit

.critedge.loopexit:                               ; preds = %bb.b
  %.pre = load ptr, ptr %3, align 8, !tbaa !353
  %.pre42 = load ptr, ptr %i.l, align 8, !tbaa !352
  %.pre43 = load ptr, ptr %i.m, align 8, !tbaa !355
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i.thread

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i.thread: ; preds = %.critedge.loopexit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2EmRKS4_.exit.thread.i
  %i.bx = phi ptr [ %.pre43, %.critedge.loopexit ], [ %.sink.i, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2EmRKS4_.exit.thread.i ]
  %i.by = phi ptr [ %.pre42, %.critedge.loopexit ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2EmRKS4_.exit.thread.i ]
  %i.bz = phi ptr [ %.pre, %.critedge.loopexit ], [ %.val35, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2EmRKS4_.exit.thread.i ]
  store ptr null, ptr %0, align 8, !tbaa !132
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !353
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !352
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bx, ptr %i.cc, align 8, !tbaa !355
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

.loopexit:                                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev.exit
  %.pre44 = load ptr, ptr %3, align 8, !tbaa !353 ; 3 uses
  %.pre45 = load ptr, ptr %i.l, align 8, !tbaa !352 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre44, %.pre45
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cu, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i ], [ %.pre44, %.loopexit ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !181 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 4294967297
  %i.ci = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %i.ch, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.cf, align 8, !tbaa !183
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %i.cj, align 4, !tbaa !184
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !134
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #31, !inline_history !2769
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !134
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #31, !inline_history !2769
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ci, %bb.ab ], [ %i.cs, %bb.ac ]
  %i.ct = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ct, label %bb.ad, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, !prof !185

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #31
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i: ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.z, %.lr.ph.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.cu, %.pre45
  br i1 %.not.i.i.i31, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.pr.i32 = load ptr, ptr %3, align 8, !tbaa !353
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %i.cv = phi ptr [ %.pr.i32, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %.pre44, %.loopexit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i
  %i.cw = load ptr, ptr %i.m, align 8, !tbaa !355
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.cz) #33
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i.thread, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !132    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEE7DestroyEv.exit.thread, !prof !135

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !353  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !352  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !181  ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.i, align 8, !tbaa !183
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !184
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31, !inline_history !2772
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31, !inline_history !2772
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.l, %bb.f ], [ %i.v, %bb.g ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.h, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i.i, !prof !185

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !353
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.y = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEE7DestroyEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !355
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #33
  br label %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEE7DestroyEv.exit

_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEE7DestroyEv.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !132    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEE7DestroyEv.exit.thread, !prof !149

_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEE7DestroyEv.exit
  %i.ae = phi ptr [ %.pr, %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !146, !range !147, !noundef !148
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZN5arrow6StatusD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #31
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_5FieldEESaIS4_EEE7DestroyEv.exit.thread, %bb.j
  ret void
end_hunk_0
