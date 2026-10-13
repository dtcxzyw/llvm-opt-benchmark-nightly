Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types_row?download=true
inline.NumInlined: 10729
inline.NumDeleted: 3679
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 254
loop-unroll.NumUnrolled: 260
begin_hunk_0_@_ZNK6duckdb19TupleDataCollection12GetLayoutPtrEv:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb19TupleDataCollection9GetLayoutEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !266, !nonnull !107, !align !108
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6duckdb19TupleDataCollection14TuplesPerBlockEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !410, !nonnull !107, !align !108 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !266, !nonnull !107, !align !108
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.l = load i64, ptr %i.k, align 8, !tbaa !310
  %i.m = udiv i64 %i.h, %i.l
  ret i64 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK6duckdb19TupleDataCollection10ChunkCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !321  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !321  ; 2 uses
  %.not8 = icmp eq ptr %i.b, %i.d
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.n, %.lr.ph ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi i64 [ %i.n, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.05.09 = phi ptr [ %i.o, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.05.09, align 8, !tbaa !271 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !379
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !370
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %i.n = add i64 %i.m, %.010                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 -1152921504606846976, 1152921504606846976) i64 @_ZNK6duckdb16TupleDataSegment10ChunkCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !379
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !370
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  ret i64 %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16TupleDataSegment5UnpinEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !392  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !393  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorINS_12BufferHandleELb0ENS_19arena_stl_allocatorIS1_EEE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.d, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 2 uses
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.06.i.i.i.i) #31
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb12BufferHandleENS0_19arena_stl_allocatorIS1_EEEvT_S5_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !13

_ZSt8_DestroyIPN6duckdb12BufferHandleENS0_19arena_stl_allocatorIS1_EEEvT_S5_RT0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.d, ptr %i.e, align 8, !tbaa !393
  br label %_ZN6duckdb6vectorINS_12BufferHandleELb0ENS_19arena_stl_allocatorIS1_EEE5clearEv.exit

_ZN6duckdb6vectorINS_12BufferHandleELb0ENS_19arena_stl_allocatorIS1_EEE5clearEv.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZSt8_DestroyIPN6duckdb12BufferHandleENS0_19arena_stl_allocatorIS1_EEEvT_S5_RT0_.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !392  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !393  ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i.i1, label %_ZN6duckdb6vectorINS_12BufferHandleELb0ENS_19arena_stl_allocatorIS1_EEE5clearEv.exit6, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZN6duckdb6vectorINS_12BufferHandleELb0ENS_19arena_stl_allocatorIS1_EEE5clearEv.exit, %.lr.ph.i.i.i.i2
  %.06.i.i.i.i3 = phi ptr [ %i.l, %.lr.ph.i.i.i.i2 ], [ %i.i, %_ZN6duckdb6vectorINS_12BufferHandleELb0ENS_19arena_stl_allocatorIS1_EEE5clearEv.exit ] ; 2 uses
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.06.i.i.i.i3) #31
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i3, i64 24 ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.l, %i.k
  br i1 %.not.i.i.i.i4, label %_ZSt8_DestroyIPN6duckdb12BufferHandleENS0_19arena_stl_allocatorIS1_EEEvT_S5_RT0_.exit.i.i.i5, label %.lr.ph.i.i.i.i2, !llvm.loop !13

_ZSt8_DestroyIPN6duckdb12BufferHandleENS0_19arena_stl_allocatorIS1_EEEvT_S5_RT0_.exit.i.i.i5: ; preds = %.lr.ph.i.i.i.i2
  store ptr %i.i, ptr %i.j, align 8, !tbaa !393
  br label %_ZN6duckdb6vectorINS_12BufferHandleELb0ENS_19arena_stl_allocatorIS1_EEE5clearEv.exit6

_ZN6duckdb6vectorINS_12BufferHandleELb0ENS_19arena_stl_allocatorIS1_EEE5clearEv.exit6: ; preds = %_ZN6duckdb6vectorINS_12BufferHandleELb0ENS_19arena_stl_allocatorIS1_EEE5clearEv.exit, %_ZSt8_DestroyIPN6duckdb12BufferHandleENS0_19arena_stl_allocatorIS1_EEEvT_S5_RT0_.exit.i.i.i5
  %i.m = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #31 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19TupleDataCollection17SetPartitionIndexEm(ptr noundef nonnull align 8 dereferenceable(192) initializes((184, 192)) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %3 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load i64, ptr %3, align 8, !tbaa !128
  store i64 %i.b, ptr %i.a, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = call noundef ptr @_ZNK6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %1)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load i64, ptr %2, align 8, !tbaa !128
  store i64 %i.f, ptr %i.e, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb19TupleDataCollection19GetRowBlockPointersEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::vector.697") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !271  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !393  ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !392  ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 3 uses
  %i.l = icmp ugt i64 %i.k, 1152921504606846975
  br i1 %i.l, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #32
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not48 = icmp eq ptr %i.f, %i.g
  br i1 %.not48, label %_ZNSt6vectorIPhSaIS0_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPhSaIS0_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPhSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.n = shl nuw nsw i64 %i.k, 3
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #29 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %0, align 8, !tbaa !915
  store ptr %i.o, ptr %i.p, align 8, !tbaa !916
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.k ; 2 uses
  store ptr %i.q, ptr %i.m, align 8, !tbaa !917
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !918
  %.pre36 = load ptr, ptr %i.e, align 8, !tbaa !918
  br label %_ZNSt6vectorIPhSaIS0_EE7reserveEm.exit

_ZNSt6vectorIPhSaIS0_EE7reserveEm.exit:           ; preds = %_ZNSt12_Vector_baseIPhSaIS0_EE11_M_allocateEm.exit.i, %bb.b
  %.promoted21 = phi ptr [ %i.o, %_ZNSt12_Vector_baseIPhSaIS0_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 3 uses
  %.promoted = phi ptr [ %i.q, %_ZNSt12_Vector_baseIPhSaIS0_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %.pre36, %_ZNSt12_Vector_baseIPhSaIS0_EE11_M_allocateEm.exit.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %.pre, %_ZNSt12_Vector_baseIPhSaIS0_EE11_M_allocateEm.exit.i ], [ %i.g, %bb.b ] ; 2 uses
  %.not25 = icmp eq ptr %i.s, %i.r
  br i1 %.not25, label %._crit_edge.a, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPhSaIS0_EE7reserveEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIPhSaIS0_EE12emplace_backIJS0_EEEvDpOT_.exit
  store ptr %2, ptr %i.t, align 8
  br label %._crit_edge.a

._crit_edge.a:                                    ; preds = %._crit_edge, %_ZNSt6vectorIPhSaIS0_EE7reserveEm.exit
  %.lcssa22 = phi ptr [ %i.aq, %._crit_edge ], [ %.promoted21, %_ZNSt6vectorIPhSaIS0_EE7reserveEm.exit ]
  %.lcssa = phi ptr [ %i.ar, %._crit_edge ], [ %.promoted, %_ZNSt6vectorIPhSaIS0_EE7reserveEm.exit ]
  store ptr %.lcssa, ptr %i.m, align 8
  store ptr %.lcssa22, ptr %0, align 8
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPhSaIS0_EE12emplace_backIJS0_EEEvDpOT_.exit
  %i.u = phi ptr [ %.promoted21, %.lr.ph ], [ %2, %_ZNSt6vectorIPhSaIS0_EE12emplace_backIJS0_EEEvDpOT_.exit ] ; 6 uses
  %.sroa.016.026 = phi ptr [ %i.s, %.lr.ph ], [ %i.as, %_ZNSt6vectorIPhSaIS0_EE12emplace_backIJS0_EEEvDpOT_.exit ] ; 2 uses
  %i.v = phi ptr [ %.promoted, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIPhSaIS0_EE12emplace_backIJS0_EEEvDpOT_.exit ] ; 4 uses
  %i.w = phi ptr [ %.promoted21, %.lr.ph ], [ %i.aq, %_ZNSt6vectorIPhSaIS0_EE12emplace_backIJS0_EEEvDpOT_.exit ] ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.016.026, i64 16 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.d unwind label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !445
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !449 ; 2 uses
  %.not.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !308
  br label %_ZNSt6vectorIPhSaIS0_EE12emplace_backIJS0_EEEvDpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = ptrtoint ptr %i.w to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.g, label %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.u, ptr %i.t, align 8
  store ptr %i.v, ptr %i.m, align 8
  store ptr %i.w, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #29
          to label %.noexc13 unwind label %.loopexit ; 4 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %i.aa, ptr %i.am, align 8, !tbaa !308
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.h, label %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.h:                                             ; preds = %.noexc13
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.w, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.h, %.noexc13
  %.not.i17.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #30
  br label %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  br label %_ZNSt6vectorIPhSaIS0_EE12emplace_backIJS0_EEEvDpOT_.exit

_ZNSt6vectorIPhSaIS0_EE12emplace_backIJS0_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.e
  %i.ap = phi ptr [ %i.am, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.u, %bb.e ]
  %i.aq = phi ptr [ %i.al, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.w, %bb.e ] ; 2 uses
  %i.ar = phi ptr [ %i.ao, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.v, %bb.e ] ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.016.026, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.as, %i.r
  br i1 %.not, label %._crit_edge, label %bb.c

.loopexit:                                        ; preds = %bb.c, %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.u, ptr %i.t, align 8
  store ptr %i.v, ptr %i.m, align 8
  store ptr %i.w, ptr %0, align 8
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIPhSaIS0_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #30
  br label %_ZNSt6vectorIPhSaIS0_EED2Ev.exit

_ZNSt6vectorIPhSaIS0_EED2Ev.exit:                 ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19TupleDataCollection13DestroyChunksEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269  ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !271  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !370  ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !372  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !485  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !321  ; 2 uses
  %.not8.i = icmp eq ptr %i.b, %i.k
  br i1 %.not8.i, label %_ZNK6duckdb19TupleDataCollection10ChunkCountEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.010.i = phi i64 [ %i.u, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.05.09.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.05.09.i, align 8, !tbaa !271 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !379
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !370
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add i64 %i.t, %.010.i                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.v, %i.k
  br i1 %.not.i, label %_ZNK6duckdb19TupleDataCollection10ChunkCountEv.exit, label %.lr.ph.i

_ZNK6duckdb19TupleDataCollection10ChunkCountEv.exit: ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.w = icmp eq i64 %2, %.0.lcssa.i
  br i1 %i.w, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNK6duckdb19TupleDataCollection10ChunkCountEv.exit
  %i.x = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.y = zext i32 %i.i to i64                     ; 2 uses
  %i.z = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !421
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !420
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 5                 ; 2 uses
  %i.ai = icmp ugt i64 %i.ah, %i.y
  br i1 %i.ai, label %.lr.ph.i32, label %_ZN6duckdb18TupleDataAllocator16DestroyRowBlocksEmm.exit

.lr.ph.i32:                                       ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i32
  %.011.i = phi i64 [ %i.y, %.lr.ph.i32 ], [ %i.ar, %bb.e ] ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !420
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %.011.i ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !422
  %.not.i33 = icmp eq ptr %i.am, null
  br i1 %.not.i33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !434, !nonnull !107, !align !108
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  store atomic i8 2, ptr %i.aq seq_cst, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ar = add i64 %.011.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ar, %i.ah
  br i1 %exitcond.not.i, label %_ZN6duckdb18TupleDataAllocator16DestroyRowBlocksEmm.exit, label %bb.c, !llvm.loop !18

bb.f:                                             ; preds = %_ZNK6duckdb19TupleDataCollection10ChunkCountEv.exit
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %2
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !372
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !485 ; 2 uses
  %i.aw = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.ax = zext i32 %i.av to i64
  %i.ay = icmp ult i32 %i.i, %i.av
  br i1 %i.ay, label %.lr.ph.i34, label %_ZN6duckdb18TupleDataAllocator16DestroyRowBlocksEmm.exit

.lr.ph.i34:                                       ; preds = %bb.f
  %i.az = zext i32 %i.i to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i34
  %.011.i35 = phi i64 [ %i.az, %.lr.ph.i34 ], [ %i.bi, %bb.i ] ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !420
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %.011.i35 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !422
  %.not.i36 = icmp eq ptr %i.bd, null
  br i1 %.not.i36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !434, !nonnull !107, !align !108
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  store atomic i8 2, ptr %i.bh seq_cst, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bi = add i64 %.011.i35, 1                    ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %i.bi, %i.ax
  br i1 %exitcond.not.i37, label %_ZN6duckdb18TupleDataAllocator16DestroyRowBlocksEmm.exit, label %bb.g, !llvm.loop !18

_ZN6duckdb18TupleDataAllocator16DestroyRowBlocksEmm.exit: ; preds = %bb.i, %bb.e, %bb.f, %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !266, !nonnull !107, !align !108
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !209, !range !210, !noundef !107
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb18TupleDataAllocator16DestroyRowBlocksEmm.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !485 ; 4 uses
  %i.bq = icmp eq i32 %i.bp, -1
  br i1 %i.bq, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !321 ; 2 uses
  %i.bs = load ptr, ptr %i.j, align 8, !tbaa !321 ; 2 uses
  %.not8.i39 = icmp eq ptr %i.br, %i.bs
  br i1 %.not8.i39, label %_ZNK6duckdb19TupleDataCollection10ChunkCountEv.exit45, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.k, %.lr.ph.i40
  %.010.i41 = phi i64 [ %i.cc, %.lr.ph.i40 ], [ 0, %bb.k ]
  %.sroa.05.09.i42 = phi ptr [ %i.cd, %.lr.ph.i40 ], [ %i.br, %bb.k ] ; 2 uses
  %i.bt = load ptr, ptr %.sroa.05.09.i42, align 8, !tbaa !271 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !379
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !370
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 3
  %i.cc = add i64 %i.cb, %.010.i41                ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i42, i64 8 ; 2 uses
  %.not.i43 = icmp eq ptr %i.cd, %i.bs
  br i1 %.not.i43, label %_ZNK6duckdb19TupleDataCollection10ChunkCountEv.exit45, label %.lr.ph.i40

_ZNK6duckdb19TupleDataCollection10ChunkCountEv.exit45: ; preds = %.lr.ph.i40, %bb.k
  %.0.lcssa.i44 = phi i64 [ 0, %bb.k ], [ %i.cc, %.lr.ph.i40 ]
  %i.ce = icmp eq i64 %2, %.0.lcssa.i44
  br i1 %i.ce, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZNK6duckdb19TupleDataCollection10ChunkCountEv.exit45
  %i.cf = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.cg = zext i32 %i.bp to i64                   ; 2 uses
  %i.ch = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 104
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 112
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !421
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !420
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 5                 ; 2 uses
  %i.cq = icmp ugt i64 %i.cp, %i.cg
  br i1 %i.cq, label %.lr.ph.i46, label %.critedge

.lr.ph.i46:                                       ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 104
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i46
  %.011.i47 = phi i64 [ %i.cg, %.lr.ph.i46 ], [ %i.cz, %bb.o ] ; 2 uses
end_hunk_0
