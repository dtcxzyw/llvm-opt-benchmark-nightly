Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/heif_aux_images?download=true
inline.NumInlined: 553
inline.NumDeleted: 322
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE

declare { i64, ptr } @_ZNK5Error12error_structEP11ErrorBuffer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @heif_depth_representation_info_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden range(i32 0, 2) i32 @heif_image_handle_get_depth_image_representation_info(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::shared_ptr", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.c = load i8, ptr %i.b, align 8, !tbaa !131, !range !132, !noundef !133
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100ERKS2_.exit, label %_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100ERKS2_.exit.sink.split

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 3 uses
  %.not.i.i11 = icmp eq ptr %i.j, null
  br i1 %.not.i.i11, label %_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100ERKS2_.exit, label %_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100ERKS2_.exit.sink.split

_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100ERKS2_.exit.sink.split: ; preds = %bb.d, %bb.c
  %.sink27 = phi ptr [ %i.f, %bb.c ], [ %i.j, %bb.d ] ; 2 uses
  %.sink24.ph = phi ptr [ %i.a, %bb.c ], [ %i.h, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sink27, i64 8
  %i.l = atomicrmw add ptr %i.k, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100ERKS2_.exit

_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100ERKS2_.exit: ; preds = %_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100ERKS2_.exit.sink.split, %bb.d, %bb.c
  %.sink24 = phi ptr [ %i.a, %bb.c ], [ %i.h, %bb.d ], [ %.sink24.ph, %_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100ERKS2_.exit.sink.split ] ; 3 uses
  %.sink = phi ptr [ %i.f, %bb.c ], [ %i.j, %bb.d ], [ %.sink27, %_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100ERKS2_.exit.sink.split ] ; 6 uses
  store ptr %.sink24, ptr %3, align 8, !tbaa !126
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink, ptr %i.m, align 8, !tbaa !127
  %i.n = getelementptr inbounds nuw i8, ptr %.sink24, i64 504
  %i.o = load i8, ptr %i.n, align 8, !tbaa !147, !range !132, !noundef !133
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100ERKS2_.exit
  %i.q = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.sink24, i64 512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !tbaa.struct !150
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.s

bb.h:                                             ; preds = %_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100ERKS2_.exit, %bb.f
  %.sink25 = phi ptr [ %i.q, %bb.f ], [ null, %_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100ERKS2_.exit ]
  %.0 = phi i32 [ 1, %bb.f ], [ 0, %_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100ERKS2_.exit ] ; 3 uses
  store ptr %.sink25, ptr %2, align 8, !tbaa !152
  %.not.i = icmp eq ptr %.sink, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.u = atomicrmw add ptr %i.t, i64 -1 acq_rel, align 8
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.j, label %_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %.sink, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(24) %.sink) #23, !inline_history !0
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %.sink) #23
  br label %_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.h, %bb.i, %bb.j
  %.022 = phi i32 [ %.0, %bb.j ], [ %.0, %bb.h ], [ %.0, %bb.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 %.022
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @heif_image_handle_get_number_of_thumbnails(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !135
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 4
  %i.j = trunc i64 %i.i to i32
  ret i32 %i.j
}

; Function Attrs: mustprogress uwtable
define hidden i32 @heif_image_handle_get_list_of_thumbnail_IDs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__1::__exception_guard_exceptions", align 8 ; 7 uses
  %4 = alloca %"class.std::__1::vector.99", align 8 ; 9 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.b = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !135  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !134  ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %4, ptr %3, align 8, !tbaa !137, !alias.scope !156
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.l, align 8, !tbaa !140, !alias.scope !156
  %.not.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i, label %._crit_edge20.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp slt i64 %i.k, 0
  br i1 %i.m, label %bb.d, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI9ImageItemEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNKSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #26
          to label %.noexc.i.i unwind label %bb.g

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI9ImageItemEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i: ; preds = %bb.c
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #25
          to label %bb.e unwind label %bb.g       ; 10 uses

bb.e:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI9ImageItemEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i
  store ptr %i.n, ptr %4, align 8, !tbaa !135
  store ptr %i.n, ptr %i.d, align 8, !tbaa !134
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store ptr %i.o, ptr %i.e, align 8, !tbaa !141
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i.i.i, %bb.e
  %.010.i.i.i.i.i = phi ptr [ %i.u, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i.i.i ], [ %i.f, %bb.e ] ; 3 uses
  %storemerge9.i.i.i.i.i = phi ptr [ %i.v, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i.i.i ], [ %i.n, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20   ; 2 uses
  %i.r = load <2 x ptr>, ptr %.010.i.i.i.i.i, align 8, !tbaa !130
  store <2 x ptr> %i.r, ptr %storemerge9.i.i.i.i.i, align 8, !tbaa !130
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = atomicrmw add ptr %i.s, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i, i64 16 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.h
  br i1 %.not.i.i.i.i.i, label %._crit_edge20, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

bb.g:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI9ImageItemEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS4_EEE16__destroy_vectorEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.w

._crit_edge20:                                    ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i.i.i
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.n to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.n, i64 %i.z ; 2 uses
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %5 = ptrtoint ptr %i.v to i64
  %i.ab = ptrtoint ptr %i.n to i64
  %i.ac = sub i64 %5, %i.ab
  %i.ad = lshr exact i64 %i.ac, 4
  %i.ae = trunc i64 %i.ad to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %2, i32 %i.ae) ; 3 uses
  %i.af = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.af, label %.lr.ph.preheader, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph, %._crit_edge20
  br label %.lr.ph.i.i.i.i

._crit_edge20.thread:                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.sroa.speculated31 = call i32 @llvm.smin.i32(i32 %2, i32 0)
  br label %_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

.lr.ph.preheader:                                 ; preds = %._crit_edge20
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  br label %.lr.ph

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.ag, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i ], [ %i.aa, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -16 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !20 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = atomicrmw add ptr %i.aj, i64 -1 acq_rel, align 8
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #23, !inline_history !3
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #23
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i: ; preds = %bb.i, %bb.h, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.ag
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i
  %.pre1.i.i = load ptr, ptr %4, align 8, !tbaa !135 ; 2 uses
  %.pre = ptrtoint ptr %.pre1.i.i to i64
  store ptr %i.n, ptr %i.d, align 8, !tbaa !134
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !141
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %.pre
  call void @_ZdlPvm(ptr noundef %.pre1.i.i, i64 noundef %i.ar) #24
  br label %_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %._crit_edge20.thread, %_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  %.sroa.speculated33 = phi i32 [ %.sroa.speculated, %_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i ], [ %.sroa.speculated31, %._crit_edge20.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 416
  %i.av = load i32, ptr %i.au, align 8, !tbaa !120
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !121
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph.i.i.i.i.preheader, label %.lr.ph, !llvm.loop !155

bb.j:                                             ; preds = %bb.a, %_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %.011 = phi i32 [ %.sroa.speculated33, %_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEED2B8ne180100Ev.exit ], [ 0, %bb.a ]
  ret i32 %.011
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !135    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i64 -1 acq_rel, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #23, !inline_history !4
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #23
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !135
  br label %_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.m = phi ptr [ %.pre1.i, %_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !134
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !141
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.r) #24
  br label %_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { i64, ptr } @heif_image_handle_get_thumbnail(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__1::__exception_guard_exceptions", align 8 ; 7 uses
  %4 = alloca %"class.std::__1::vector.99", align 8 ; 12 uses
  %5 = alloca %class.Error, align 8               ; 9 uses
  %6 = alloca %"class.std::__1::basic_string", align 8 ; 12 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr @heif_error_null_pointer_argument, align 8
  %.sroa.4.0.copyload = load ptr, ptr getelementptr inbounds nuw (i8, ptr @heif_error_null_pointer_argument, i64 8), align 8, !tbaa !122
  %i.a = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload, 0
  %i.b = insertvalue { i64, ptr } %i.a, ptr %.sroa.4.0.copyload, 1
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.c = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !135  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134  ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %4, ptr %3, align 8, !tbaa !137, !alias.scope !159
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.m, align 8, !tbaa !140, !alias.scope !159
  %.not.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEEC2ERKS6_.exit.thread, label %bb.d

_ZNSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEEC2ERKS6_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.n = icmp slt i64 %i.l, 0
  br i1 %i.n, label %bb.e, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI9ImageItemEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNKSt3__16vectorINS_10shared_ptrI9ImageItemEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #26
          to label %.noexc.i.i unwind label %bb.h

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI9ImageItemEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i: ; preds = %bb.d
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #25
          to label %bb.f unwind label %bb.h       ; 7 uses

bb.f:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI9ImageItemEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i
  store ptr %i.o, ptr %4, align 8, !tbaa !135
  store ptr %i.o, ptr %i.e, align 8, !tbaa !134
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store ptr %i.p, ptr %i.f, align 8, !tbaa !141
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i.i.i, %bb.f
  %.010.i.i.i.i.i = phi ptr [ %i.v, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i.i.i ], [ %i.g, %bb.f ] ; 3 uses
  %storemerge9.i.i.i.i.i = phi ptr [ %i.w, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI9ImageItemEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i.i.i ], [ %i.o, %bb.f ] ; 3 uses
end_hunk_0
