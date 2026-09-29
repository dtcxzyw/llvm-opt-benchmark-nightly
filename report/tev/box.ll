Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/box?download=true
inline.NumInlined: 11465
inline.NumDeleted: 5743
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNSt3__120__shared_ptr_emplaceI8Box_sdtpNS_9allocatorIS1_EEED2Ev
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_sdtpNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI8Box_sdtpNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !27
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #41
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_sdtpNS_9allocatorIS1_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI8Box_sdtpNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !27
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(208) %0) #41, !inline_history !2904
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_sdtpNS_9allocatorIS1_EEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.a) #41, !inline_history !2905
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_sdtpNS_9allocatorIS1_EEE21__on_zero_shared_weakEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #40
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_prfrNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI8Box_prfrNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !27
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #41
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_prfrNS_9allocatorIS1_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI8Box_prfrNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !27
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(192) %0) #41, !inline_history !2906
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_prfrNS_9allocatorIS1_EEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.a) #41, !inline_history !2907
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_prfrNS_9allocatorIS1_EEE21__on_zero_shared_weakEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #40
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI9Box_ErrorNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI9Box_ErrorNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !27
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #41
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI9Box_ErrorNS_9allocatorIS1_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI9Box_ErrorNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !27
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(224) %0) #41, !inline_history !2908
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI9Box_ErrorNS_9allocatorIS1_EEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(196) %i.a) #41, !inline_history !2909
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI9Box_ErrorNS_9allocatorIS1_EEE21__on_zero_shared_weakEv(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112construct_atB8ne180100I9Box_ErrorJjR5ErrorR20parse_error_fatalityEPS1_EEPT_S8_DpOT0_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.Error, align 8               ; 4 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !25
  %i.b = load i64, ptr %2, align 8
  store i64 %i.b, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !75
  br label %_ZN5ErrorC2ERKS_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !40
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef %i.h, i64 noundef %i.j)
  br label %_ZN5ErrorC2ERKS_.exit

_ZN5ErrorC2ERKS_.exit:                            ; preds = %bb.b, %bb.c
  %i.k = load i32, ptr %3, align 4, !tbaa !107
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.n, i8 0, i64 28, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.o, i8 0, i64 28, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 -1, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.q, i8 0, i64 49, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTV9Box_Error, i64 16), ptr %0, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  invoke void @_ZN5ErrorC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %bb.d unwind label %.body

bb.d:                                             ; preds = %_ZN5ErrorC2ERKS_.exit
  store i32 1163022880, ptr %i.m, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %i.a, ptr %i.s, align 4, !tbaa !473
  %i.t = load i64, ptr %4, align 8
  store i64 %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.v = load i8, ptr %i.u, align 8
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %_ZN5ErrorD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.z = load i64, ptr %i.u, align 8
  %i.aa = and i64 %i.z, -2
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.aa) #40
  br label %_ZN5ErrorD2Ev.exit

.body:                                            ; preds = %_ZN5ErrorC2ERKS_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3BoxD2Ev(ptr noundef nonnull align 8 dead_on_return(153) dereferenceable(196) %0) #41
  %i.ac = load i8, ptr %i.c, align 8
  %i.ad = trunc i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN5ErrorD2Ev.exit5

_ZN5ErrorD2Ev.exit:                               ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !75
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %i.k, ptr %i.ae, align 8, !tbaa !474
  ret ptr %0

bb.f:                                             ; preds = %.body
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !40
  %i.ah = load i64, ptr %i.c, align 8
  %i.ai = and i64 %i.ah, -2
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ai) #40
  br label %_ZN5ErrorD2Ev.exit5

_ZN5ErrorD2Ev.exit5:                              ; preds = %.body, %bb.f
  resume { ptr, i32 } %i.ab
}

declare void @_ZN5ErrorC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define internal fastcc ptr @"_ZNSt3__123__stable_partition_implINS_17_ClassicAlgPolicyERZN8Box_ipma15sort_propertiesERKNS_10shared_ptrI8Box_ipcoEEE3$_0NS_11__wrap_iterIPNS2_19PropertyAssociationEEElNS_4pairISC_lEEEET1_SG_SG_T0_T2_T3_NS_26bidirectional_iterator_tagE"(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4, i64 %5) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 5 uses
  %i.b = ptrtoaddr ptr %4 to i64                  ; 3 uses
  switch i64 %3, label %bb.f [
    i64 2, label %bb.b
    i64 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 2
  %i.d = load i32, ptr %1, align 2
  store i32 %i.d, ptr %0, align 2
  store i32 %i.c, ptr %1, align 2
  br label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.f = getelementptr i8, ptr %0, i64 6
  %.val62 = load i16, ptr %i.f, align 2, !tbaa !547 ; 2 uses
  %i.g = icmp eq i16 %.val62, 0
  br i1 %i.g, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit.thread", label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val61 = load ptr, ptr %2, align 8             ; 2 uses
  %i.h = zext i16 %.val62 to i64                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val61, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !463
  %i.k = load ptr, ptr %.val61, align 8, !tbaa !462 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 4
  %i.p = icmp ult i64 %i.o, %i.h
  br i1 %i.p, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit.thread", label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit"

"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit": ; preds = %bb.d
  %i.q = getelementptr [16 x i8], ptr %i.k, i64 %i.h
  %i.r = getelementptr i8, ptr %i.q, i64 -16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !103  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(153) %i.s), !inline_history !2910
  br i1 %i.w, label %bb.e, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit.thread"

"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit.thread": ; preds = %bb.c, %bb.d, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit"
  %i.x = load i32, ptr %0, align 2                ; 2 uses
  %i.y = load i32, ptr %i.e, align 2
  store i32 %i.y, ptr %0, align 2
  store i32 %i.x, ptr %i.e, align 2
  %i.z = load i32, ptr %1, align 2
  store i32 %i.z, ptr %i.e, align 2
  store i32 %i.x, ptr %1, align 2
  br label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit

bb.e:                                             ; preds = %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit"
  %i.aa = load i32, ptr %i.e, align 2
  %i.ab = load i32, ptr %1, align 2
  store i32 %i.ab, ptr %i.e, align 2
  store i32 %i.aa, ptr %1, align 2
  %i.ac = load <2 x i32>, ptr %0, align 2
  %i.ad = shufflevector <2 x i32> %i.ac, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ad, ptr %0, align 2
  br label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit

bb.f:                                             ; preds = %bb.a
  %.not = icmp sgt i64 %3, %5
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %0, align 2
  store i32 %i.ae, ptr %4, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %.not115123 = icmp eq ptr %i.ag, %1
  br i1 %.not115123, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.g
  %i.ah = load i32, ptr %i.ag, align 2
  store i32 %i.ah, ptr %0, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph132.preheader

.lr.ph:                                           ; preds = %bb.g, %bb.j
  %i.aj = phi ptr [ %i.bg, %bb.j ], [ %i.ag, %bb.g ] ; 4 uses
  %.0126 = phi ptr [ %.1, %bb.j ], [ %i.af, %bb.g ] ; 3 uses
  %.sroa.087.0125 = phi ptr [ %i.aj, %bb.j ], [ %0, %bb.g ]
  %.sroa.0101.0124 = phi ptr [ %.sroa.0101.1, %bb.j ], [ %0, %bb.g ] ; 3 uses
  %i.ak = getelementptr i8, ptr %.sroa.087.0125, i64 6
  %.val60 = load i16, ptr %i.ak, align 2, !tbaa !547 ; 2 uses
  %i.al = icmp eq i16 %.val60, 0
  br i1 %i.al, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72.thread", label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %.val59 = load ptr, ptr %2, align 8             ; 2 uses
  %i.am = zext i16 %.val60 to i64                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val59, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !463
  %i.ap = load ptr, ptr %.val59, align 8, !tbaa !462 ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 4
  %i.au = icmp ult i64 %i.at, %i.am
  br i1 %i.au, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72.thread", label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72"

"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72": ; preds = %bb.h
  %i.av = getelementptr [16 x i8], ptr %i.ap, i64 %i.am
  %i.aw = getelementptr i8, ptr %i.av, i64 -16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !103 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(153) %i.ax), !inline_history !2910
  br i1 %i.bb, label %bb.i, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72.thread"

"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72.thread": ; preds = %.lr.ph, %bb.h, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72"
  %i.bc = load i32, ptr %i.aj, align 2
  store i32 %i.bc, ptr %.sroa.0101.0124, align 2
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0101.0124, i64 4
  br label %bb.j

bb.i:                                             ; preds = %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72"
  %i.be = load i32, ptr %i.aj, align 2
  store i32 %i.be, ptr %.0126, align 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.0126, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72.thread"
  %.sroa.0101.1 = phi ptr [ %i.bd, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72.thread" ], [ %.sroa.0101.0124, %bb.i ] ; 3 uses
  %.1 = phi ptr [ %.0126, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit72.thread" ], [ %i.bf, %bb.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 3 uses
  %.not115 = icmp eq ptr %i.bg, %1
  br i1 %.not115, label %._crit_edge, label %.lr.ph, !llvm.loop !2911

._crit_edge:                                      ; preds = %bb.j
  %i.bh = load i32, ptr %i.bg, align 2
  store i32 %i.bh, ptr %.sroa.0101.1, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0101.1, i64 4 ; 2 uses
  %i.bj = icmp ult ptr %4, %.1
  br i1 %i.bj, label %.lr.ph132.preheader, label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit

.lr.ph132.preheader:                              ; preds = %._crit_edge.thread, %._crit_edge
  %i.bk = phi ptr [ %i.ai, %._crit_edge.thread ], [ %i.bi, %._crit_edge ] ; 6 uses
  %.0.lcssa171 = phi ptr [ %i.af, %._crit_edge.thread ], [ %.1, %._crit_edge ] ; 2 uses
  %i.bl = ptrtoaddr ptr %.0.lcssa171 to i64
  %i.bm = add i64 %i.b, 4
  %i.bn = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 %i.bm)
  %i.bo = xor i64 %i.b, -1
  %i.bp = add i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = lshr i64 %i.bp, 2
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bp, 44
  %i.bs = ptrtoaddr ptr %i.bk to i64
  %i.bt = sub i64 %i.b, %i.bs
  %diff.check = icmp ugt i64 %i.bt, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph132.preheader209, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph132.preheader
  %n.vec = and i64 %i.br, 9223372036854775800     ; 3 uses
  %i.bu = shl i64 %n.vec, 2                       ; 2 uses
  %i.bv = getelementptr i8, ptr %4, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bk, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %4, i64 %i.bx ; 2 uses
  %next.gep180 = getelementptr i8, ptr %i.bk, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 2
  %wide.load181 = load <4 x i32>, ptr %i.by, align 2
  %i.bz = getelementptr i8, ptr %next.gep180, i64 16
  store <4 x i32> %wide.load, ptr %next.gep180, align 2
  store <4 x i32> %wide.load181, ptr %i.bz, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !2912

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit, label %.lr.ph132.preheader209

.lr.ph132.preheader209:                           ; preds = %.lr.ph132.preheader, %middle.block
  %.0110130.ph = phi ptr [ %4, %.lr.ph132.preheader ], [ %i.bv, %middle.block ]
  %.sroa.087.1129.ph = phi ptr [ %i.bk, %.lr.ph132.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph132

.lr.ph132:                                        ; preds = %.lr.ph132.preheader209, %.lr.ph132
  %.0110130 = phi ptr [ %i.cc, %.lr.ph132 ], [ %.0110130.ph, %.lr.ph132.preheader209 ] ; 2 uses
  %.sroa.087.1129 = phi ptr [ %i.cd, %.lr.ph132 ], [ %.sroa.087.1129.ph, %.lr.ph132.preheader209 ] ; 2 uses
  %i.cb = load i32, ptr %.0110130, align 2
  store i32 %i.cb, ptr %.sroa.087.1129, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %.0110130, i64 4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.087.1129, i64 4
  %i.ce = icmp ult ptr %i.cc, %.0.lcssa171
  br i1 %i.ce, label %.lr.ph132, label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit, !llvm.loop !2913

bb.k:                                             ; preds = %bb.f
  %i.cf = sdiv i64 %3, 2                          ; 6 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cf ; 17 uses
  %i.ch = ptrtoint ptr %i.cg to i64               ; 3 uses
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cg, i64 -2
  %.val58133 = load i16, ptr %i.cj, align 2, !tbaa !547 ; 2 uses
  %i.ck = icmp eq i16 %.val58133, 0
  br i1 %i.ck, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74.thread", label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.k, %bb.m
  %.val58135 = phi i16 [ %.val58, %bb.m ], [ %.val58133, %bb.k ]
  %i.cl = phi ptr [ %i.de, %bb.m ], [ %i.ci, %bb.k ] ; 5 uses
  %.050134 = phi i64 [ %i.dd, %bb.m ], [ %i.cf, %bb.k ] ; 3 uses
  %.val57 = load ptr, ptr %2, align 8             ; 2 uses
  %i.cm = zext i16 %.val58135 to i64              ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val57, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !463
  %i.cp = load ptr, ptr %.val57, align 8, !tbaa !462 ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 4
  %i.cu = icmp ult i64 %i.ct, %i.cm
  br i1 %i.cu, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74.thread", label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74"

"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74": ; preds = %.lr.ph137
  %i.cv = getelementptr [16 x i8], ptr %i.cp, i64 %i.cm
  %i.cw = getelementptr i8, ptr %i.cv, i64 -16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !103 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !27
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = tail call noundef zeroext i1 %i.da(ptr noundef nonnull align 8 dereferenceable(153) %i.cx), !inline_history !2910
  br i1 %i.db, label %bb.l, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74.thread"

bb.l:                                             ; preds = %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74"
  %i.dc = icmp eq ptr %i.cl, %0
  br i1 %i.dc, label %.loopexit116, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dd = add nsw i64 %.050134, -1                ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.cl, i64 -4 ; 2 uses
  %i.df = getelementptr i8, ptr %i.cl, i64 -2
  %.val58 = load i16, ptr %i.df, align 2, !tbaa !547 ; 2 uses
  %i.dg = icmp eq i16 %.val58, 0
  br i1 %i.dg, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74.thread", label %.lr.ph137, !llvm.loop !2914

"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74.thread": ; preds = %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74", %.lr.ph137, %bb.m, %bb.k
  %.050.lcssa = phi i64 [ %i.cf, %bb.k ], [ %i.dd, %bb.m ], [ %.050134, %.lr.ph137 ], [ %.050134, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74" ]
  %.lcssa = phi ptr [ %i.ci, %bb.k ], [ %i.de, %bb.m ], [ %i.cl, %.lr.ph137 ], [ %i.cl, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74" ]
  %i.dh = tail call fastcc ptr @"_ZNSt3__123__stable_partition_implINS_17_ClassicAlgPolicyERZN8Box_ipma15sort_propertiesERKNS_10shared_ptrI8Box_ipcoEEE3$_0NS_11__wrap_iterIPNS2_19PropertyAssociationEEElNS_4pairISC_lEEEET1_SG_SG_T0_T2_T3_NS_26bidirectional_iterator_tagE"(ptr %0, ptr nonnull %.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %.050.lcssa, ptr %4, i64 %5)
  br label %.loopexit116

.loopexit116:                                     ; preds = %bb.l, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74.thread"
  %.sroa.016.0 = phi ptr [ %i.dh, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit74.thread" ], [ %0, %bb.l ] ; 24 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dj = sub nsw i64 %3, %i.cf
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.loopexit116
  %.sroa.077.1 = phi ptr [ %i.cg, %.loopexit116 ], [ %i.ec, %bb.p ] ; 3 uses
  %.151 = phi i64 [ %i.dj, %.loopexit116 ], [ %i.ee, %bb.p ] ; 2 uses
  %i.dk = getelementptr i8, ptr %.sroa.077.1, i64 2
  %.val56 = load i16, ptr %i.dk, align 2, !tbaa !547 ; 2 uses
  %i.dl = icmp eq i16 %.val56, 0
  br i1 %i.dl, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76.thread", label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val = load ptr, ptr %2, align 8               ; 2 uses
  %i.dm = zext i16 %.val56 to i64                 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !463
  %i.dp = load ptr, ptr %.val, align 8, !tbaa !462 ; 2 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = ashr exact i64 %i.ds, 4
  %i.du = icmp ult i64 %i.dt, %i.dm
  br i1 %i.du, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76.thread", label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76"

"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76": ; preds = %bb.o
  %i.dv = getelementptr [16 x i8], ptr %i.dp, i64 %i.dm
  %i.dw = getelementptr i8, ptr %i.dv, i64 -16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !103 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !27
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 88
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = tail call noundef zeroext i1 %i.ea(ptr noundef nonnull align 8 dereferenceable(153) %i.dx), !inline_history !2910
  br i1 %i.eb, label %bb.q, label %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76.thread"

"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76.thread": ; preds = %bb.n, %bb.o, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76"
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.077.1, i64 4 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %1
  br i1 %i.ed, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76.thread"
  %i.ee = add nsw i64 %.151, -1
  br label %bb.n, !llvm.loop !2915

bb.q:                                             ; preds = %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76"
  %i.ef = tail call fastcc ptr @"_ZNSt3__123__stable_partition_implINS_17_ClassicAlgPolicyERZN8Box_ipma15sort_propertiesERKNS_10shared_ptrI8Box_ipcoEEE3$_0NS_11__wrap_iterIPNS2_19PropertyAssociationEEElNS_4pairISC_lEEEET1_SG_SG_T0_T2_T3_NS_26bidirectional_iterator_tagE"(ptr nonnull %.sroa.077.1, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %.151, ptr %4, i64 %5)
  br label %.loopexit

.loopexit:                                        ; preds = %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76.thread", %bb.q
  %.sroa.0.0 = phi ptr [ %i.ef, %bb.q ], [ %i.di, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit76.thread" ] ; 8 uses
  %i.eg = icmp eq ptr %.sroa.016.0, %i.cg
  br i1 %i.eg, label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.eh = icmp eq ptr %i.cg, %.sroa.0.0
  br i1 %i.eh, label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 4 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.cg
  br i1 %i.ej, label %_ZNSt3__113__rotate_leftB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEEEET0_S7_S7_.exit.i.i, label %bb.t

_ZNSt3__113__rotate_leftB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEEEET0_S7_S7_.exit.i.i: ; preds = %bb.s
  %i.ek = load i32, ptr %.sroa.016.0, align 2
  %i.el = ptrtoint ptr %.sroa.0.0 to i64
  %i.em = sub i64 %i.el, %i.ch                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.sroa.016.0, ptr nonnull align 2 %i.ei, i64 %i.em, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %i.em ; 2 uses
  store i32 %i.ek, ptr %i.en, align 2
  br label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit

bb.t:                                             ; preds = %bb.s
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ep = icmp eq ptr %i.eo, %.sroa.0.0
  br i1 %i.ep, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.eq = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -4 ; 3 uses
  %i.er = load i32, ptr %i.eq, align 2
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %.sroa.016.0 to i64
  %i.eu = sub i64 %i.es, %i.et                    ; 2 uses
  %i.ev = ashr exact i64 %i.eu, 2
  %i.ew = sub nsw i64 0, %i.ev
  %i.ex = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %i.ew ; 2 uses
  %.not.i.i.i.i.i.i.i9.i.i = icmp eq ptr %i.eq, %.sroa.016.0
  br i1 %.not.i.i.i.i.i.i.i9.i.i, label %_ZNSt3__114__rotate_rightB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEEEET0_S7_S7_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ex, ptr align 2 %.sroa.016.0, i64 %i.eu, i1 false)
  br label %_ZNSt3__114__rotate_rightB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEEEET0_S7_S7_.exit.i.i

_ZNSt3__114__rotate_rightB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEEEET0_S7_S7_.exit.i.i: ; preds = %bb.v, %bb.u
  store i32 %i.er, ptr %.sroa.016.0, align 2
  br label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit

bb.w:                                             ; preds = %bb.t
  %i.ey = ptrtoint ptr %.sroa.016.0 to i64        ; 4 uses
  %i.ez = sub i64 %i.ch, %i.ey                    ; 7 uses
  %i.fa = ashr exact i64 %i.ez, 2                 ; 8 uses
  %i.fb = ptrtoint ptr %.sroa.0.0 to i64          ; 6 uses
  %i.fc = sub i64 %i.fb, %i.ch                    ; 2 uses
  %i.fd = ashr exact i64 %i.fc, 2                 ; 2 uses
  %i.fe = icmp eq i64 %i.fa, %i.fd
  br i1 %i.fe, label %.lr.ph.i.i.i.i.preheader, label %.preheader.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.w
  %i.ff = shl nsw i64 %i.cf, 2                    ; 2 uses
  %i.fg = add i64 %i.fb, -4
  %6 = sub i64 %i.fg, %i.a                        ; 2 uses
  %i.fh = sub i64 %6, %i.ff
  %.fr = freeze i64 %i.fh
  %i.fi = lshr i64 %.fr, 2
  %i.fj = add i64 %i.ff, %i.a
  %i.fk = add i64 %i.fj, -4
  %i.fl = sub i64 %i.fk, %i.ey
  %i.fm = lshr i64 %i.fl, 2
  %i.fn = tail call i64 @llvm.umin.i64(i64 %i.fi, i64 %i.fm) ; 2 uses
  %i.fo = add nuw nsw i64 %i.fn, 1                ; 2 uses
  %min.iters.check187 = icmp samesign ult i64 %i.fn, 35
  br i1 %min.iters.check187, label %.lr.ph.i.i.i.i.preheader206, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i.preheader
  %i.fp = sub i64 %i.a, %i.ey
  %i.fq = sub i64 %i.fb, %i.a
  %i.fr = or i64 %i.fp, %i.fq
  %i.fs = and i64 %i.fr, 3
  %.not203 = icmp eq i64 %i.fs, 0
  br i1 %.not203, label %vector.memcheck184, label %.lr.ph.i.i.i.i.preheader206

vector.memcheck184:                               ; preds = %vector.scevcheck
  %i.ft = shl nsw i64 %i.cf, 2                    ; 3 uses
  %i.fu = sub i64 %6, %i.ft
  %.fr204 = freeze i64 %i.fu
  %i.fv = lshr i64 %.fr204, 2
  %i.fw = add i64 %i.ft, %i.a
  %i.fx = add i64 %i.fw, -4
  %i.fy = sub i64 %i.fx, %i.ey
  %i.fz = lshr i64 %i.fy, 2
  %umin = tail call i64 @llvm.umin.i64(i64 %i.fv, i64 %i.fz)
  %i.ga = shl nuw i64 %umin, 2                    ; 2 uses
  %i.gb = getelementptr i8, ptr %.sroa.016.0, i64 %i.ga
  %scevgep = getelementptr i8, ptr %i.gb, i64 4
  %i.gc = getelementptr i8, ptr %0, i64 %i.ft
  %i.gd = getelementptr i8, ptr %i.gc, i64 %i.ga
  %scevgep185 = getelementptr i8, ptr %i.gd, i64 4
  %bound0 = icmp ult ptr %.sroa.016.0, %scevgep185
  %bound1 = icmp ult ptr %i.cg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader206, label %vector.ph188

vector.ph188:                                     ; preds = %vector.memcheck184
  %n.vec189 = and i64 %i.fo, 9223372036854775800  ; 3 uses
  %i.ge = shl i64 %n.vec189, 2                    ; 2 uses
  %i.gf = getelementptr i8, ptr %.sroa.016.0, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.cg, i64 %i.ge
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph188
  %index191 = phi i64 [ 0, %vector.ph188 ], [ %index.next198, %vector.body190 ] ; 2 uses
  %i.gh = shl i64 %index191, 2                    ; 2 uses
  %next.gep192 = getelementptr i8, ptr %.sroa.016.0, i64 %i.gh ; 3 uses
  %next.gep193 = getelementptr i8, ptr %i.cg, i64 %i.gh ; 3 uses
  %i.gi = getelementptr i8, ptr %next.gep192, i64 16 ; 2 uses
  %wide.load194 = load <4 x i32>, ptr %next.gep192, align 2, !alias.scope !2924, !noalias !2925
  %wide.load195 = load <4 x i32>, ptr %i.gi, align 2, !alias.scope !2924, !noalias !2925
  %i.gj = getelementptr i8, ptr %next.gep193, i64 16 ; 2 uses
  %wide.load196 = load <4 x i32>, ptr %next.gep193, align 2, !alias.scope !2925
  %wide.load197 = load <4 x i32>, ptr %i.gj, align 2, !alias.scope !2925
  store <4 x i32> %wide.load196, ptr %next.gep192, align 2, !alias.scope !2924, !noalias !2925
  store <4 x i32> %wide.load197, ptr %i.gi, align 2, !alias.scope !2924, !noalias !2925
  store <4 x i32> %wide.load194, ptr %next.gep193, align 2, !alias.scope !2925
  store <4 x i32> %wide.load195, ptr %i.gj, align 2, !alias.scope !2925
  %index.next198 = add nuw i64 %index191, 8       ; 2 uses
  %i.gk = icmp eq i64 %index.next198, %n.vec189
  br i1 %i.gk, label %middle.block199, label %vector.body190, !llvm.loop !2919

middle.block199:                                  ; preds = %vector.body190
  %cmp.n200 = icmp eq i64 %i.fo, %n.vec189
  br i1 %cmp.n200, label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit, label %.lr.ph.i.i.i.i.preheader206

.lr.ph.i.i.i.i.preheader206:                      ; preds = %vector.memcheck184, %vector.scevcheck, %.lr.ph.i.i.i.i.preheader, %middle.block199
  %.sroa.04.09.i.i.i.i.ph = phi ptr [ %.sroa.016.0, %vector.memcheck184 ], [ %.sroa.016.0, %vector.scevcheck ], [ %.sroa.016.0, %.lr.ph.i.i.i.i.preheader ], [ %i.gf, %middle.block199 ]
  %.sroa.01.08.i.i.i.i.ph = phi ptr [ %i.cg, %vector.memcheck184 ], [ %i.cg, %vector.scevcheck ], [ %i.cg, %.lr.ph.i.i.i.i.preheader ], [ %i.gg, %middle.block199 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader206, %.lr.ph.i.i.i.i
  %.sroa.04.09.i.i.i.i = phi ptr [ %i.gn, %.lr.ph.i.i.i.i ], [ %.sroa.04.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader206 ] ; 3 uses
  %.sroa.01.08.i.i.i.i = phi ptr [ %i.go, %.lr.ph.i.i.i.i ], [ %.sroa.01.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader206 ] ; 3 uses
  %i.gl = load i32, ptr %.sroa.04.09.i.i.i.i, align 2
  %i.gm = load i32, ptr %.sroa.01.08.i.i.i.i, align 2
  store i32 %i.gm, ptr %.sroa.04.09.i.i.i.i, align 2
  store i32 %i.gl, ptr %.sroa.01.08.i.i.i.i, align 2
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i.i, i64 4 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i.i.i.i, i64 4 ; 2 uses
  %i.gp = icmp ne ptr %i.gn, %i.cg
  %i.gq = icmp ne ptr %i.go, %.sroa.0.0
  %or.cond.i.i.i.i = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %or.cond.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit, !llvm.loop !2920

.preheader.i.i.i:                                 ; preds = %bb.w, %.preheader.i.i.i
  %.06.i.i.i.i = phi i64 [ %i.gr, %.preheader.i.i.i ], [ %i.fd, %bb.w ] ; 3 uses
  %.0.i.i.i.i = phi i64 [ %.06.i.i.i.i, %.preheader.i.i.i ], [ %i.fa, %bb.w ]
  %i.gr = srem i64 %.0.i.i.i.i, %.06.i.i.i.i      ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.gr, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.preheader.i.i.i, label %.preheader.i.i.i, !llvm.loop !2921

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %.idx.i.i.i = shl i64 %.06.i.i.i.i, 2           ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %.sroa.016.0, i64 %.idx.i.i.i ; 2 uses
  %i.gt = add i64 %.idx.i.i.i, -4                 ; 2 uses
  %i.gu = and i64 %i.gt, 4
  %lcmp.mod.not.not = icmp eq i64 %i.gu, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.preheader.i.i.i
  %i.gv = getelementptr inbounds i8, ptr %i.gs, i64 -4 ; 5 uses
  %i.gw = load i32, ptr %i.gv, align 2
  %i.gx = getelementptr inbounds i8, ptr %i.gv, i64 %i.ez
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i.i.i.prol
  %.sroa.027.0.i.i.i.prol = phi ptr [ %i.gv, %.lr.ph.i.i.i.prol ], [ %.sroa.0.0.i.i.i.prol, %bb.x ]
  %.sroa.0.0.i.i.i.prol = phi ptr [ %i.gx, %.lr.ph.i.i.i.prol ], [ %.sroa.0.1.i.i.i.prol, %bb.x ] ; 5 uses
  %i.gy = load i32, ptr %.sroa.0.0.i.i.i.prol, align 2
  store i32 %i.gy, ptr %.sroa.027.0.i.i.i.prol, align 2
  %i.gz = ptrtoint ptr %.sroa.0.0.i.i.i.prol to i64
  %i.ha = sub i64 %i.fb, %i.gz
  %i.hb = ashr exact i64 %i.ha, 2                 ; 2 uses
  %i.hc = icmp slt i64 %i.fa, %i.hb
  %i.hd = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.prol, i64 %i.ez
  %i.he = sub nsw i64 %i.fa, %i.hb
  %i.hf = getelementptr inbounds [4 x i8], ptr %.sroa.016.0, i64 %i.he
  %.sroa.0.1.i.i.i.prol = select i1 %i.hc, ptr %i.hd, ptr %i.hf ; 2 uses
  %.not39.i.i.i.prol = icmp eq ptr %.sroa.0.1.i.i.i.prol, %i.gv
  br i1 %.not39.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit.unr-lcssa, label %bb.x, !llvm.loop !2922

.lr.ph.i.i.i.prol.loopexit.unr-lcssa:             ; preds = %bb.x
  store i32 %i.gw, ptr %.sroa.0.0.i.i.i.prol, align 2
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %.sroa.030.041.i.i.i.unr = phi ptr [ %i.gs, %.lr.ph.preheader.i.i.i ], [ %i.gv, %.lr.ph.i.i.i.prol.loopexit.unr-lcssa ]
  %i.hg = icmp eq i64 %i.gt, 0
  br i1 %i.hg, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.aa, %.lr.ph.i.i.i.prol.loopexit
  %i.hh = getelementptr inbounds i8, ptr %.sroa.016.0, i64 %i.fc
  br label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %bb.aa
  %.sroa.030.041.i.i.i = phi ptr [ %i.ht, %bb.aa ], [ %.sroa.030.041.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %.sroa.030.041.i.i.i, i64 -4 ; 4 uses
  %i.hj = load i32, ptr %i.hi, align 2
  %i.hk = getelementptr inbounds i8, ptr %i.hi, i64 %i.ez
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i.i
  %.sroa.027.0.i.i.i = phi ptr [ %i.hi, %.lr.ph.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.y ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.hk, %.lr.ph.i.i.i ], [ %.sroa.0.1.i.i.i, %bb.y ] ; 5 uses
  %i.hl = load i32, ptr %.sroa.0.0.i.i.i, align 2
  store i32 %i.hl, ptr %.sroa.027.0.i.i.i, align 2
  %i.hm = ptrtoint ptr %.sroa.0.0.i.i.i to i64
  %i.hn = sub i64 %i.fb, %i.hm
  %i.ho = ashr exact i64 %i.hn, 2                 ; 2 uses
  %i.hp = icmp slt i64 %i.fa, %i.ho
  %i.hq = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i, i64 %i.ez
  %i.hr = sub nsw i64 %i.fa, %i.ho
  %i.hs = getelementptr inbounds [4 x i8], ptr %.sroa.016.0, i64 %i.hr
  %.sroa.0.1.i.i.i = select i1 %i.hp, ptr %i.hq, ptr %i.hs ; 2 uses
  %.not39.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i, %i.hi
  br i1 %.not39.i.i.i, label %.lr.ph.i.i.i.1, label %bb.y, !llvm.loop !2922

.lr.ph.i.i.i.1:                                   ; preds = %bb.y
  store i32 %i.hj, ptr %.sroa.0.0.i.i.i, align 2
  %i.ht = getelementptr inbounds i8, ptr %.sroa.030.041.i.i.i, i64 -8 ; 6 uses
  %i.hu = load i32, ptr %i.ht, align 2
  %i.hv = getelementptr inbounds i8, ptr %i.ht, i64 %i.ez
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i.i.i.1
  %.sroa.027.0.i.i.i.1 = phi ptr [ %i.ht, %.lr.ph.i.i.i.1 ], [ %.sroa.0.0.i.i.i.1, %bb.z ]
  %.sroa.0.0.i.i.i.1 = phi ptr [ %i.hv, %.lr.ph.i.i.i.1 ], [ %.sroa.0.1.i.i.i.1, %bb.z ] ; 5 uses
  %i.hw = load i32, ptr %.sroa.0.0.i.i.i.1, align 2
  store i32 %i.hw, ptr %.sroa.027.0.i.i.i.1, align 2
  %i.hx = ptrtoint ptr %.sroa.0.0.i.i.i.1 to i64
  %i.hy = sub i64 %i.fb, %i.hx
  %i.hz = ashr exact i64 %i.hy, 2                 ; 2 uses
  %i.ia = icmp slt i64 %i.fa, %i.hz
  %i.ib = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.1, i64 %i.ez
  %i.ic = sub nsw i64 %i.fa, %i.hz
  %i.id = getelementptr inbounds [4 x i8], ptr %.sroa.016.0, i64 %i.ic
  %.sroa.0.1.i.i.i.1 = select i1 %i.ia, ptr %i.ib, ptr %i.id ; 2 uses
  %.not39.i.i.i.1 = icmp eq ptr %.sroa.0.1.i.i.i.1, %i.ht
  br i1 %.not39.i.i.i.1, label %bb.aa, label %bb.z, !llvm.loop !2922

bb.aa:                                            ; preds = %bb.z
  store i32 %i.hu, ptr %.sroa.0.0.i.i.i.1, align 2
  %.not.i.i.i.1 = icmp eq ptr %i.ht, %.sroa.016.0
  br i1 %.not.i.i.i.1, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2923

_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit: ; preds = %.lr.ph132, %.lr.ph.i.i.i.i, %middle.block, %middle.block199, %._crit_edge, %._crit_edge.i.i.i, %_ZNSt3__114__rotate_rightB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEEEET0_S7_S7_.exit.i.i, %_ZNSt3__113__rotate_leftB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEEEET0_S7_S7_.exit.i.i, %bb.r, %.loopexit, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit.thread", %bb.e, %bb.b
  %.sroa.042.1 = phi ptr [ %1, %bb.b ], [ %i.bi, %._crit_edge ], [ %i.e, %bb.e ], [ %1, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit.thread" ], [ %.sroa.016.0, %bb.r ], [ %.sroa.0.0, %.loopexit ], [ %i.en, %_ZNSt3__113__rotate_leftB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEEEET0_S7_S7_.exit.i.i ], [ %i.ex, %_ZNSt3__114__rotate_rightB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEEEET0_S7_S7_.exit.i.i ], [ %i.hh, %._crit_edge.i.i.i ], [ %i.cg, %middle.block199 ], [ %i.bk, %middle.block ], [ %i.cg, %.lr.ph.i.i.i.i ], [ %i.bk, %.lr.ph132 ]
  ret ptr %.sroa.042.1
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #35

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16__treeIjNS_4lessIjEENS_9allocatorIjEEE7destroyEPNS_11__tree_nodeIjPvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %common.ret8, label %bb.b

common.ret8:                                      ; preds = %bb.a, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !583
  tail call void @_ZNSt3__16__treeIjNS_4lessIjEENS_9allocatorIjEEE7destroyEPNS_11__tree_nodeIjPvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.a) #41
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !585
  tail call void @_ZNSt3__16__treeIjNS_4lessIjEENS_9allocatorIjEEE7destroyEPNS_11__tree_nodeIjPvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.c) #41
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 32) #40
  br label %common.ret8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #36
end_hunk_0
