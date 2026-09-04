Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/heif_regions?download=true
inline.NumInlined: 1437
inline.NumDeleted: 801
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@heif_region_item_release:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #20, !inline_history !166
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #20
  br label %_ZNSt3__110shared_ptrI10RegionItemED2B8ne180100Ev.exit.i

_ZNSt3__110shared_ptrI10RegionItemED2B8ne180100Ev.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58   ; 5 uses
  %.not.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i1.i, label %_ZN16heif_region_itemD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__110shared_ptrI10RegionItemED2B8ne180100Ev.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = atomicrmw add ptr %i.l, i64 -1 acq_rel, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %_ZN16heif_region_itemD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !65
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #20, !inline_history !167
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #20
  br label %_ZN16heif_region_itemD2Ev.exit

_ZN16heif_region_itemD2Ev.exit:                   ; preds = %_ZNSt3__110shared_ptrI10RegionItemED2B8ne180100Ev.exit.i, %bb.e, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  br label %bb.g

bb.g:                                             ; preds = %_ZN16heif_region_itemD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @heif_region_item_get_reference_size(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46, !noalias !170 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47, !noalias !170 ; 2 uses
  %.not1113.i = icmp eq ptr %i.f, %i.h
  br i1 %.not1113.i, label %_ZNK11HeifContext15get_region_itemEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.critedge.i
  %.sroa.07.014.i = phi ptr [ %i.o, %.critedge.i ], [ %i.f, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %.sroa.07.014.i, align 8, !tbaa !50, !noalias !170 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56, !noalias !170
  %.not.i = icmp eq i32 %i.j, %i.d
  br i1 %.not.i, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.07.014.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57, !noalias !170 ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNK11HeifContext15get_region_itemEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !170 ; 0 uses
  br label %_ZNK11HeifContext15get_region_itemEj.exit

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.07.014.i, i64 16 ; 2 uses
  %.not11.i = icmp eq ptr %i.o, %i.h
  br i1 %.not11.i, label %_ZNK11HeifContext15get_region_itemEj.exit, label %.lr.ph.i

_ZNK11HeifContext15get_region_itemEj.exit:        ; preds = %.critedge.i, %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi ptr [ %i.i, %bb.c ], [ %i.i, %bb.b ], [ null, %bb.a ], [ null, %.critedge.i ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.l, %bb.c ], [ null, %bb.b ], [ null, %bb.a ], [ null, %.critedge.i ] ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK11HeifContext15get_region_itemEj.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !66
  store i32 %i.q, ptr %1, align 4, !tbaa !67
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK11HeifContext15get_region_itemEj.exit
  %.not7 = icmp eq ptr %2, null
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !68
  store i32 %i.s, ptr %2, align 4, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not.i8 = icmp eq ptr %.sroa.6.0, null
  br i1 %.not.i8, label %_ZNSt3__110shared_ptrI10RegionItemED2B8ne180100Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 8
  %i.u = atomicrmw add ptr %i.t, i64 -1 acq_rel, align 8
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.i, label %_ZNSt3__110shared_ptrI10RegionItemED2B8ne180100Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %.sroa.6.0, align 8, !tbaa !65
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0) #20, !inline_history !1
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0) #20
  br label %_ZNSt3__110shared_ptrI10RegionItemED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI10RegionItemED2B8ne180100Ev.exit: ; preds = %bb.g, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @heif_region_item_get_number_of_regions(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 4
  %i.k = trunc i64 %i.j to i32
  ret i32 %i.k
}

; Function Attrs: mustprogress uwtable
define hidden i32 @heif_region_item_get_list_of_regions(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__1::__exception_guard_exceptions.201", align 8 ; 6 uses
  %4 = alloca %"class.std::__1::vector.162", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !alias.scope !181
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !70, !noalias !181 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69, !noalias !181 ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !181
  store ptr %4, ptr %3, align 8, !tbaa !182, !alias.scope !183, !noalias !181
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.l, align 8, !tbaa !75, !alias.scope !183, !noalias !181
  %.not.i.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i.i, label %._crit_edge30, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp slt i64 %i.k, 0
  br i1 %i.m, label %bb.c, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNKSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #21
          to label %.noexc.i.i.i unwind label %bb.f

.noexc.i.i.i:                                     ; preds = %bb.c
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.i: ; preds = %bb.b
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22
          to label %bb.d unwind label %bb.f       ; 7 uses

bb.d:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.i
  store ptr %i.n, ptr %4, align 8, !tbaa !70, !alias.scope !181
  store ptr %i.n, ptr %i.d, align 8, !tbaa !69, !alias.scope !181
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store ptr %i.o, ptr %i.e, align 8, !tbaa !76, !alias.scope !181
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i.i.i.i, %bb.d
  %.010.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.f, %bb.d ] ; 3 uses
  %storemerge9.i.i.i.i.i.i = phi ptr [ %i.v, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !79   ; 2 uses
  %i.r = load <2 x ptr>, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !59
  store <2 x ptr> %i.r, ptr %storemerge9.i.i.i.i.i.i, align 8, !tbaa !59
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = atomicrmw add ptr %i.s, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 16 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE18__construct_at_endIPS3_S8_EEvT_T0_m.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !175

_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE18__construct_at_endIPS3_S8_EEvT_T0_m.exit.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE9constructB8ne180100IS4_JRS4_EvvEEvRS5_PT_DpOT0_.exit.i.i.i.i.i.i
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.n to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 %i.y
  store ptr %i.z, ptr %i.d, align 8, !tbaa !69, !alias.scope !181
  %5 = ptrtoint ptr %i.v to i64
  br label %._crit_edge30

common.resume:                                    ; preds = %bb.t, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.cr, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.i, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS4_EEE16__destroy_vectorEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !181
  br label %common.resume

._crit_edge30:                                    ; preds = %bb.a, %_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE18__construct_at_endIPS3_S8_EEvT_T0_m.exit.i.i.i
  %i.ab = phi ptr [ %i.n, %_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE18__construct_at_endIPS3_S8_EEvT_T0_m.exit.i.i.i ], [ null, %bb.a ] ; 2 uses
  %i.ac = phi i64 [ %5, %_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE18__construct_at_endIPS3_S8_EEvT_T0_m.exit.i.i.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !181
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = lshr exact i64 %i.ae, 4
  %i.ag = trunc i64 %i.af to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %2, i32 %i.ag) ; 3 uses
  %i.ah = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge30
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %_ZNSt3__110shared_ptrI14RegionGeometryEaSB8ne180100ERKS2_.exit
  %.pre29 = load ptr, ptr %4, align 8, !tbaa !70
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %._crit_edge30
  %i.ak = phi ptr [ %.pre29, %._crit_edge.loopexit ], [ %i.ab, %._crit_edge30 ] ; 5 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !69  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.am, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i ], [ %i.al, %bb.g ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -16 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !79 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = atomicrmw add ptr %i.ap, i64 -1 acq_rel, align 8
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !65
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(24) %i.ao) #20, !inline_history !176
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ao) #20
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i: ; preds = %bb.i, %bb.h, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i
  %.pre1.i.i = load ptr, ptr %4, align 8, !tbaa !70
  br label %_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, %bb.g
  %i.av = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.ak, %bb.g ] ; 2 uses
  store ptr %i.ak, ptr %i.d, align 8, !tbaa !69
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #23
  br label %_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %._crit_edge, %_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i32 %.sroa.speculated

bb.j:                                             ; preds = %.lr.ph, %_ZNSt3__110shared_ptrI14RegionGeometryEaSB8ne180100ERKS2_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt3__110shared_ptrI14RegionGeometryEaSB8ne180100ERKS2_.exit ] ; 3 uses
  %i.ba = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22
          to label %bb.k unwind label %bb.t       ; 11 uses

bb.k:                                             ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i8 0, i64 48, i1 false)
  %i.bb = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.bc = load ptr, ptr %i.ai, align 8, !tbaa !58 ; 4 uses
  %.not.i.i19 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i19, label %_ZNSt3__110shared_ptrI11HeifContextEC2B8ne180100ERKS2_.exit.i.thread, label %_ZNSt3__110shared_ptrI11HeifContextEC2B8ne180100ERKS2_.exit.i

_ZNSt3__110shared_ptrI11HeifContextEC2B8ne180100ERKS2_.exit.i.thread: ; preds = %bb.k
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !184
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !61
  br label %_ZNSt3__110shared_ptrI11HeifContextEaSB8ne180100ERKS2_.exit

_ZNSt3__110shared_ptrI11HeifContextEC2B8ne180100ERKS2_.exit.i: ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = atomicrmw add ptr %i.be, i64 1 monotonic, align 8 ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !61 ; 5 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !184
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bc, ptr %i.bg, align 8, !tbaa !61
  %.not.i2.i = icmp eq ptr %.pre, null
  br i1 %.not.i2.i, label %_ZNSt3__110shared_ptrI11HeifContextEaSB8ne180100ERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__110shared_ptrI11HeifContextEC2B8ne180100ERKS2_.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.bi = atomicrmw add ptr %i.bh, i64 -1 acq_rel, align 8
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.m, label %_ZNSt3__110shared_ptrI11HeifContextEaSB8ne180100ERKS2_.exit

bb.m:                                             ; preds = %bb.l
  %i.bk = load ptr, ptr %.pre, align 8, !tbaa !65
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(24) %.pre) #20, !inline_history !177
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre) #20
  br label %_ZNSt3__110shared_ptrI11HeifContextEaSB8ne180100ERKS2_.exit

_ZNSt3__110shared_ptrI11HeifContextEaSB8ne180100ERKS2_.exit: ; preds = %_ZNSt3__110shared_ptrI11HeifContextEC2B8ne180100ERKS2_.exit.i.thread, %_ZNSt3__110shared_ptrI11HeifContextEC2B8ne180100ERKS2_.exit.i, %bb.l, %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bo = load ptr, ptr %i.aj, align 8, !tbaa !57 ; 2 uses
  %i.bp = load <2 x ptr>, ptr %i.a, align 8, !tbaa !59
  %.not.i.i20 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i20, label %_ZNSt3__110shared_ptrI10RegionItemEC2B8ne180100ERKS2_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt3__110shared_ptrI11HeifContextEaSB8ne180100ERKS2_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = atomicrmw add ptr %i.bq, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrI10RegionItemEC2B8ne180100ERKS2_.exit.i

_ZNSt3__110shared_ptrI10RegionItemEC2B8ne180100ERKS2_.exit.i: ; preds = %bb.n, %_ZNSt3__110shared_ptrI11HeifContextEaSB8ne180100ERKS2_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !61 ; 5 uses
  store <2 x ptr> %i.bp, ptr %i.bn, align 8, !tbaa !59
  %.not.i2.i21 = icmp eq ptr %i.bt, null
  br i1 %.not.i2.i21, label %_ZNSt3__110shared_ptrI10RegionItemEaSB8ne180100ERKS2_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt3__110shared_ptrI10RegionItemEC2B8ne180100ERKS2_.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = atomicrmw add ptr %i.bu, i64 -1 acq_rel, align 8
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.p, label %_ZNSt3__110shared_ptrI10RegionItemEaSB8ne180100ERKS2_.exit

bb.p:                                             ; preds = %bb.o
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !65
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(24) %i.bt) #20, !inline_history !178
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bt) #20
  br label %_ZNSt3__110shared_ptrI10RegionItemEaSB8ne180100ERKS2_.exit

_ZNSt3__110shared_ptrI10RegionItemEaSB8ne180100ERKS2_.exit: ; preds = %_ZNSt3__110shared_ptrI10RegionItemEC2B8ne180100ERKS2_.exit.i, %bb.o, %bb.p
  %i.ca = load ptr, ptr %4, align 8, !tbaa !70
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %indvars.iv ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !79 ; 2 uses
  %i.cf = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !59
  %.not.i.i22 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i22, label %_ZNSt3__110shared_ptrI14RegionGeometryEC2B8ne180100ERKS2_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt3__110shared_ptrI10RegionItemEaSB8ne180100ERKS2_.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = atomicrmw add ptr %i.cg, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrI14RegionGeometryEC2B8ne180100ERKS2_.exit.i

_ZNSt3__110shared_ptrI14RegionGeometryEC2B8ne180100ERKS2_.exit.i: ; preds = %bb.q, %_ZNSt3__110shared_ptrI10RegionItemEaSB8ne180100ERKS2_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !61 ; 5 uses
  store <2 x ptr> %i.cf, ptr %i.cc, align 8, !tbaa !59
  %.not.i2.i23 = icmp eq ptr %i.cj, null
  br i1 %.not.i2.i23, label %_ZNSt3__110shared_ptrI14RegionGeometryEaSB8ne180100ERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt3__110shared_ptrI14RegionGeometryEC2B8ne180100ERKS2_.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = atomicrmw add ptr %i.ck, i64 -1 acq_rel, align 8
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.s, label %_ZNSt3__110shared_ptrI14RegionGeometryEaSB8ne180100ERKS2_.exit

bb.s:                                             ; preds = %bb.r
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !65
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(24) %i.cj) #20, !inline_history !179
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cj) #20
  br label %_ZNSt3__110shared_ptrI14RegionGeometryEaSB8ne180100ERKS2_.exit

_ZNSt3__110shared_ptrI14RegionGeometryEaSB8ne180100ERKS2_.exit: ; preds = %_ZNSt3__110shared_ptrI14RegionGeometryEC2B8ne180100ERKS2_.exit.i, %bb.r, %bb.s
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store ptr %i.ba, ptr %i.cq, align 8, !tbaa !82
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.j, !llvm.loop !180

bb.t:                                             ; preds = %bb.j
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %common.resume
}

end_hunk_0
