Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Queue?download=true
inline.NumInlined: 1013
inline.NumDeleted: 577
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN7openvdb5v13_02io5QueueC2Ej:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store atomic i32 0, ptr %i.cb seq_cst, align 8
  store ptr %i.a, ptr %0, align 8, !tbaa !52
  store i32 %1, ptr %i.b, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7openvdb5v13_02io5QueueD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store i64 0, ptr %1, align 8, !tbaa !54
  store i64 500000000, ptr %i.e, align 8, !tbaa !55
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.f = invoke i32 @nanosleep(ptr noundef nonnull %1, ptr noundef nonnull %1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.h = tail call ptr @__errno_location() #29
  %i.i = load i32, ptr %i.h, align 4, !tbaa !56
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %bb.c, label %bb.e, !llvm.loop !0

bb.e:                                             ; preds = %bb.d, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.k = load ptr, ptr %0, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load atomic i32, ptr %i.l seq_cst, align 4
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %._crit_edge, !llvm.loop !131

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !52     ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7openvdb5v13_02io5Queue4ImplESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN7openvdb5v13_02io5Queue4ImplEEclEPS4_.exit.i

_ZNKSt14default_deleteIN7openvdb5v13_02io5Queue4ImplEEclEPS4_.exit.i: ; preds = %._crit_edge
  call void @_ZN7openvdb5v13_02io5Queue4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %i.o) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 688) #30
  br label %_ZNSt10unique_ptrIN7openvdb5v13_02io5Queue4ImplESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN7openvdb5v13_02io5Queue4ImplESt14default_deleteIS4_EED2Ev.exit: ; preds = %._crit_edge, %_ZNKSt14default_deleteIN7openvdb5v13_02io5Queue4ImplEEclEPS4_.exit.i
  ret void

bb.f:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #31
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef zeroext i1 @_ZNK7openvdb5v13_02io5Queue5emptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %i.d = icmp eq i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef range(i32 0, -2147483648) i32 @_ZNK7openvdb5v13_02io5Queue4sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  ret i32 %.sroa.speculated
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK7openvdb5v13_02io5Queue8capacityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !44
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7openvdb5v13_02io5Queue11setCapacityEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %i.a = load ptr, ptr %0, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.speculated, ptr %i.b, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK7openvdb5v13_02io5Queue7timeoutEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7openvdb5v13_02io5Queue10setTimeoutEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52
  store i32 %1, ptr %i.a, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK7openvdb5v13_02io5Queue6statusEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit.i:
  %i.a = alloca i32, align 4                      ; 2 uses
  %2 = alloca %"class.tbb::detail::d2::concurrent_hash_map<unsigned int, openvdb::v13_0::io::Queue::Status>::const_accessor", align 8 ; 12 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr null, ptr %2, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i8 0, ptr %i.b, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = load ptr, ptr %0, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE6lookupILb0EjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEEbRKT0_SS_PNSG_14const_accessorEbT1_SJ_(ptr noundef nonnull align 8 dereferenceable(570) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE20do_not_allocate_nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_, ptr noundef null)
          to label %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE4findERNSG_14const_accessorERSD_.exit unwind label %bb.c

_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE4findERNSG_14const_accessorERSD_.exit: ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit.i
  br i1 %i.f, label %bb.a, label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE5eraseERNSG_14const_accessorE.exit

bb.a:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE4findERNSG_14const_accessorERSD_.exit
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !68   ; 3 uses
  %i.j = and i32 %i.i, -2
  %or.cond = icmp eq i32 %i.j, 2
  br i1 %or.cond, label %bb.b, label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE5eraseERNSG_14const_accessorE.exit

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE7excludeERNSG_14const_accessorE(ptr noundef nonnull align 8 dereferenceable(570) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE5eraseERNSG_14const_accessorE.exit unwind label %bb.d ; 0 uses

bb.c:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE5eraseERNSG_14const_accessorE.exit: ; preds = %bb.b, %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE4findERNSG_14const_accessorERSD_.exit, %bb.a
  %.08 = phi i32 [ %i.i, %bb.a ], [ 0, %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE4findERNSG_14const_accessorERSD_.exit ], [ %i.i, %bb.b ]
  store ptr null, ptr %i.c, align 8, !tbaa !65
  %i.p = load ptr, ptr %2, align 8, !tbaa !61     ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.p, null
  br i1 %.not.i.i10, label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE5eraseERNSG_14const_accessorE.exit
  store ptr null, ptr %2, align 8, !tbaa !61
  %i.q = load i8, ptr %i.b, align 8, !tbaa !62, !range !69, !noundef !70
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = atomicrmw and ptr %i.p, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %3 = atomicrmw add ptr %i.p, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit

_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit: ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE5eraseERNSG_14const_accessorE.exit, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i32 %.08

bb.h:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.n, %bb.c ]
  store ptr null, ptr %i.c, align 8, !tbaa !65
  %i.t = load ptr, ptr %2, align 8, !tbaa !61     ; 3 uses
  %.not.i.i11 = icmp eq ptr %i.t, null
  br i1 %.not.i.i11, label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit12, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %2, align 8, !tbaa !61
  %i.u = load i8, ptr %i.b, align 8, !tbaa !62, !range !69, !noundef !70
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = atomicrmw and ptr %i.t, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit12

bb.k:                                             ; preds = %bb.i
  %4 = atomicrmw add ptr %i.t, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit12

_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit12: ; preds = %bb.h, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7openvdb5v13_02io5Queue11addNotifierESt8functionIFvjNS2_6StatusEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 16    ; 11 uses
  %3 = alloca %"class.std::tuple.70", align 8     ; 4 uses
  %4 = alloca %"class.std::tuple.73", align 1     ; 3 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 648 ; 3 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.e = load ptr, ptr %0, align 8, !tbaa !52     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 640 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !50   ; 4 uses
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !50
  store i32 %i.g, ptr %i.a, align 4, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 608
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 600 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.k, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.l, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !56
  %i.o = icmp ult i32 %i.n, %i.g                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.o, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !71 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEESt4lessIjESaISt4pairIKjS7_EEE11lower_boundERSB_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt3mapIjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEESt4lessIjESaISt4pairIKjS7_EEE11lower_boundERSB_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i.i, %i.l
  br i1 %i.p, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEESt4lessIjESaISt4pairIKjS7_EEE11lower_boundERSB_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.r = load i32, ptr %i.q, align 4, !tbaa !56
  %i.s = icmp ult i32 %i.g, %i.r
  br i1 %i.s, label %.critedge.i, label %bb.d

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapIjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEESt4lessIjESaISt4pairIKjS7_EEE11lower_boundERSB_.exit.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapIjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEESt4lessIjESaISt4pairIKjS7_EEE11lower_boundERSB_.exit.i ], [ %i.l, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.a, ptr %3, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.t = invoke ptr @_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.c
  %.sroa.06.0.i = phi ptr [ %i.t, %.noexc ], [ %.19.i.i.i.i, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !75   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEC2ERKS6_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = invoke noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !76
  br label %_ZNSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEC2ERKS6_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 16, !tbaa !75 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %.body unwind label %bb.i      ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #31
  unreachable

_ZNSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEC2ERKS6_.exit.i: ; preds = %bb.f, %bb.d
  %i.af = phi <2 x ptr> [ splat (ptr null), %bb.d ], [ %i.z, %bb.f ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 16, i1 false), !tbaa.struct !78
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.u, align 8, !tbaa !77
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56 ; 3 uses
  %i.ah = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !76
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !76 ; 2 uses
  store <2 x ptr> %i.ah, ptr %i.v, align 16, !tbaa !76
  store <2 x ptr> %i.af, ptr %i.ag, align 8, !tbaa !76
  %.not.i.i2 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i2, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEC2ERKS6_.exit.i
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.l unwind label %bb.k       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #31
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZNSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEC2ERKS6_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.am = load i32, ptr %i.a, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.an = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #24 ; 0 uses
  ret i32 %i.am

bb.m:                                             ; preds = %.critedge.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.m ], [ %i.aa, %bb.h ], [ %i.aa, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ap = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #24 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_02io5Queue14removeNotifierEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 648 ; 2 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !52     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 608
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 600 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEESt4lessIjESaISt4pairIKjS7_EEE4findERSB_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.f, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.g, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !56
  %i.j = icmp ult i32 %i.i, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.j, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.j, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !71 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.k = icmp eq ptr %.19.i.i.i, %i.g
  br i1 %i.k, label %_ZNSt3mapIjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEESt4lessIjESaISt4pairIKjS7_EEE4findERSB_.exit.thread, label %_ZNSt3mapIjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEESt4lessIjESaISt4pairIKjS7_EEE4findERSB_.exit

_ZNSt3mapIjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEESt4lessIjESaISt4pairIKjS7_EEE4findERSB_.exit: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEESt10_Select1stISA_ESt4lessIjESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.m = load i32, ptr %i.l, align 4, !tbaa !56
  %i.n = icmp ult i32 %1, %i.m
  br i1 %i.n, label %_ZNSt3mapIjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEESt4lessIjESaISt4pairIKjS7_EEE4findERSB_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIjSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEESt4lessIjESaISt4pairIKjS7_EEE4findERSB_.exit
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_02io5Queue12writeGridVecERKSt6vectorISt10shared_ptrIKNS0_8GridBaseEESaIS7_EERKNS1_7ArchiveERKNS0_7MetaMapE:bb.a
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.i unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.i: ; preds = %_ZNSolsEj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.i
  %i.bs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %10) #24 ; 0 uses
  %i.bt = load ptr, ptr %10, align 8, !tbaa !102  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !77
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.x

bb.s:                                             ; preds = %bb.p
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

bb.t:                                             ; preds = %_ZNSolsEj.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.q
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.i
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn14.i = phi { ptr, i32 } [ %i.ca, %bb.u ], [ %i.bz, %bb.t ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #24
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.pn14.pn.i = phi { ptr, i32 } [ %.pn14.i, %bb.v ], [ %i.by, %bb.s ]
  %.18.i = extractvalue { ptr, i32 } %.pn14.pn.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.cb = call ptr @__cxa_begin_catch(ptr %.18.i) #24 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cc = call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, ptr noundef nonnull @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %8) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_012RuntimeErrorE, i64 16), ptr %i.cc, align 8, !tbaa !91
  invoke void @__cxa_throw(ptr nonnull %i.cc, ptr nonnull @_ZTIN7openvdb5v13_012RuntimeErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #32
          to label %bb.bl unwind label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = load ptr, ptr %8, align 8, !tbaa !102   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bl
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i: ; preds = %bb.y
  %i.cg = load i64, ptr %i.bl, align 8, !tbaa !77
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.body

bb.z:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.cj = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.ad unwind label %bb.aa     ; 5 uses

bb.aa:                                            ; preds = %bb.z
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i, label %.body, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = invoke noundef zeroext i1 %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body unwind label %bb.ac     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #31
  unreachable

bb.ad:                                            ; preds = %bb.z
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 ptrtoint (ptr @_ZN7openvdb5v13_02io5Queue4Impl25setStatusWithNotificationEjNS2_6StatusE to i64), ptr %i.cj, align 8, !tbaa !143
  %.repack5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 0, ptr %.repack5.i.i.i.i.i, align 8, !tbaa !143
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cr = ptrtoint ptr %i.ao to i64
  store i64 %i.cr, ptr %i.cq, align 8, !tbaa !52
  store ptr %i.cj, ptr %11, align 8, !tbaa !104
  store ptr @_ZNSt17_Function_handlerIFvjN7openvdb5v13_02io5Queue6StatusEESt5_BindIFMNS3_4ImplEFvjS4_EPS7_St12_PlaceholderILi1EESB_ILi2EEEEE9_M_invokeERKSt9_Any_dataOjOS4_, ptr %i.cp, align 8, !tbaa !105
  store ptr @_ZNSt17_Function_handlerIFvjN7openvdb5v13_02io5Queue6StatusEESt5_BindIFMNS3_4ImplEFvjS4_EPS7_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.ci, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.ct = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %_ZNSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEC2ERKS6_.exit.i.i.i unwind label %bb.ae ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %i.cs, align 16, !tbaa !75 ; 2 uses
  %.not.i.i.i.i.i7 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i.i7, label %.body.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cw = invoke noundef zeroext i1 %i.cv(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %.body.i unwind label %bb.ag   ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #31
  unreachable

_ZNSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEC2ERKS6_.exit.i.i.i: ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false)
  store ptr %i.ct, ptr %6, align 16, !tbaa !104
  %.sroa.0.i.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 16, i1 false), !tbaa.struct !78
  store <2 x i64> %.sroa.0.i.i.i.i.i.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !77
  %i.cz = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.da = load <2 x ptr>, ptr %i.cz, align 8, !tbaa !76
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !76 ; 2 uses
  store <2 x ptr> %i.da, ptr %i.cs, align 16, !tbaa !76
  %i.dc = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !76
  store <2 x ptr> %i.dc, ptr %i.cz, align 8, !tbaa !76
  %.not.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEC2ERKS6_.exit.i.i.i
  %i.dd = invoke noundef zeroext i1 %i.db(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %bb.aj unwind label %bb.ai     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #31
  unreachable

bb.aj:                                            ; preds = %bb.ah, %_ZNSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEC2ERKS6_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.val.i = load i32, ptr %i.f, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.val.i, ptr %i.a, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !61
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i8 0, ptr %i.dg, align 8, !tbaa !62
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i8 0, i64 16, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.dj = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE6lookupILb1EjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEEbRKT0_SS_PNSG_14const_accessorEbT1_SJ_(ptr noundef nonnull align 8 dereferenceable(570) %i.di, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE31allocate_node_default_constructIjEEPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERKT_PKS7_, ptr noundef null)
          to label %bb.ak unwind label %bb.ao     ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !65
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  store i32 1, ptr %i.dl, align 4, !tbaa !68
  store ptr null, ptr %i.dh, align 8, !tbaa !65
  %i.dm = load ptr, ptr %5, align 8, !tbaa !61    ; 3 uses
  %.not.i.i3.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i3.i.i, label %bb.as, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %5, align 8, !tbaa !61
  %i.dn = load i8, ptr %i.dg, align 8, !tbaa !62, !range !69, !noundef !70
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dp = atomicrmw and ptr %i.dm, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.as

bb.an:                                            ; preds = %bb.al
  %15 = atomicrmw add ptr %i.dm, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.as

bb.ao:                                            ; preds = %bb.aj
  %i.dq = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.dh, align 8, !tbaa !65
  %i.dr = load ptr, ptr %5, align 8, !tbaa !61    ; 3 uses
  %.not.i.i4.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i4.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit5.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store ptr null, ptr %5, align 8, !tbaa !61
  %i.ds = load i8, ptr %i.dg, align 8, !tbaa !62, !range !69, !noundef !70
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.du = atomicrmw and ptr %i.dr, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit5.i.i

bb.ar:                                            ; preds = %bb.ap
  %16 = atomicrmw add ptr %i.dr, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit5.i.i

_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit5.i.i: ; preds = %bb.ar, %bb.aq, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.body.i

bb.as:                                            ; preds = %bb.an, %bb.am, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  store i64 1, ptr %12, align 8, !tbaa !151
  %i.dv = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 11 uses
  store i32 0, ptr %i.dv, align 8, !tbaa !152
  %i.dw = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr null, ptr %i.dw, align 8, !tbaa !153
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 24
  store <4 x i32> <i32 -1, i32 1, i32 1073741822, i32 -1>, ptr %i.dx, align 8, !tbaa !77
  %i.dy = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i32 -1, ptr %i.dy, align 8, !tbaa !154
  %i.dz = getelementptr inbounds nuw i8, ptr %12, i64 44
  store i32 -1, ptr %i.dz, align 4, !tbaa !155
  %i.ea = invoke noundef zeroext i1 @_ZN3tbb6detail2r16attachERNS0_2d115task_arena_baseE(ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %.noexc.i9 unwind label %bb.be

.noexc.i9:                                        ; preds = %bb.as
  br i1 %i.ea, label %bb.at, label %_ZN3tbb6detail2d110task_arenaC2ENS2_6attachE.exit.i

bb.at:                                            ; preds = %.noexc.i9
  store atomic i32 2, ptr %i.dv release, align 8
  br label %_ZN3tbb6detail2d110task_arenaC2ENS2_6attachE.exit.i

_ZN3tbb6detail2d110task_arenaC2ENS2_6attachE.exit.i: ; preds = %bb.at, %.noexc.i9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke fastcc void @_ZN7openvdb5v13_02io12_GLOBAL__N_110OutputTaskC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(144) %13, ptr noundef nonnull align 8 dereferenceable(144) %14)
          to label %bb.au unwind label %bb.bf

bb.au:                                            ; preds = %_ZN3tbb6detail2d110task_arenaC2ENS2_6attachE.exit.i
  %i.eb = load atomic i32, ptr %i.dv acquire, align 8
  %.not9.i.i.i.i = icmp eq i32 %i.eb, 2
  br i1 %.not9.i.i.i.i, label %_ZN3tbb6detail2d110task_arena10initializeEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.au, %_ZN3tbb6detail2d015spin_wait_whileINS1_13do_once_stateEZNS1_18spin_wait_while_eqIS3_S3_EET_RKSt6atomicIS5_ET0_St12memory_orderEUlS3_E_EES5_S9_SA_SB_.exit.i.i.i.i
  %i.ec = load atomic i32, ptr %i.dv monotonic, align 8
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.av, label %_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i.i.i.i

bb.av:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ee = cmpxchg ptr %i.dv, i32 0, i32 1 seq_cst seq_cst, align 4
  %i.ef = extractvalue { i32, i1 } %i.ee, 1
  br i1 %i.ef, label %bb.aw, label %_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN3tbb6detail2r110initializeERNS0_2d115task_arena_baseE(ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %.noexc24.i unwind label %bb.bg

.noexc24.i:                                       ; preds = %bb.aw
  store atomic i32 2, ptr %i.dv release, align 8
  br label %_ZN3tbb6detail2d110task_arena10initializeEv.exit.i.i

_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i.i.i.i: ; preds = %bb.av, %.lr.ph.i.i.i.i
  %i.eg = load atomic i32, ptr %i.dv acquire, align 8
  %i.eh = icmp eq i32 %i.eg, 1
  br i1 %i.eh, label %.lr.ph.i.i.i.i.i, label %_ZN3tbb6detail2d015spin_wait_whileINS1_13do_once_stateEZNS1_18spin_wait_while_eqIS3_S3_EET_RKSt6atomicIS5_ET0_St12memory_orderEUlS3_E_EES5_S9_SA_SB_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i.i.i
  %.sroa.0.09.us.i.i.i.i.i = phi i32 [ %.sroa.0.1.us.i.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i.i.i ], [ 1, %_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i.i.i.i ] ; 8 uses
  %i.ei = icmp slt i32 %.sroa.0.09.us.i.i.i.i.i, 17
  br i1 %i.ei, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ej = call noundef i32 @sched_yield() #24     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i.i.i

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ek = icmp sgt i32 %.sroa.0.09.us.i.i.i.i.i, 0
  br i1 %i.ek, label %.lr.ph.i.i.us.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.us.i.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i.preheader:                ; preds = %bb.ay
  %xtraiter = and i32 %.sroa.0.09.us.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.us.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.us.i.i.i.i.i.prol

.lr.ph.i.i.us.i.i.i.i.i.prol:                     ; preds = %.lr.ph.i.i.us.i.i.i.i.i.preheader, %.lr.ph.i.i.us.i.i.i.i.i.prol
  %.01.i.i.us.i.i.i.i.i.prol = phi i32 [ %i.el, %.lr.ph.i.i.us.i.i.i.i.i.prol ], [ %.sroa.0.09.us.i.i.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.us.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.us.i.i.i.i.i.preheader ]
  %i.el = add nsw i32 %.01.i.i.us.i.i.i.i.i.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.us.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.us.i.i.i.i.i.prol, !llvm.loop !136

.lr.ph.i.i.us.i.i.i.i.i.prol.loopexit:            ; preds = %.lr.ph.i.i.us.i.i.i.i.i.prol, %.lr.ph.i.i.us.i.i.i.i.i.preheader
  %.01.i.i.us.i.i.i.i.i.unr = phi i32 [ %.sroa.0.09.us.i.i.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.preheader ], [ %i.el, %.lr.ph.i.i.us.i.i.i.i.i.prol ]
  %i.em = icmp ult i32 %.sroa.0.09.us.i.i.i.i.i, 8
  br i1 %i.em, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.us.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.us.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.us.i.i.i.i.i
  %.01.i.i.us.i.i.i.i.i = phi i32 [ %i.en, %.lr.ph.i.i.us.i.i.i.i.i ], [ %.01.i.i.us.i.i.i.i.i.unr, %.lr.ph.i.i.us.i.i.i.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.en = add nsw i32 %.01.i.i.us.i.i.i.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.eo = icmp sgt i32 %.01.i.i.us.i.i.i.i.i, 8
  br i1 %i.eo, label %.lr.ph.i.i.us.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.us.i.i.i.i.i, !llvm.loop !5

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.us.i.i.i.i.i: ; preds = %.lr.ph.i.i.us.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.us.i.i.i.i.i, %bb.ay
  %i.ep = shl i32 %.sroa.0.09.us.i.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i.i.i: ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.us.i.i.i.i.i, %bb.ax
  %.sroa.0.1.us.i.i.i.i.i = phi i32 [ %i.ep, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.us.i.i.i.i.i ], [ %.sroa.0.09.us.i.i.i.i.i, %bb.ax ]
  %i.eq = load atomic i32, ptr %i.dv acquire, align 8
  %i.er = icmp eq i32 %i.eq, 1
  br i1 %i.er, label %.lr.ph.i.i.i.i.i, label %_ZN3tbb6detail2d015spin_wait_whileINS1_13do_once_stateEZNS1_18spin_wait_while_eqIS3_S3_EET_RKSt6atomicIS5_ET0_St12memory_orderEUlS3_E_EES5_S9_SA_SB_.exit.i.i.i.i, !llvm.loop !137

_ZN3tbb6detail2d015spin_wait_whileINS1_13do_once_stateEZNS1_18spin_wait_while_eqIS3_S3_EET_RKSt6atomicIS5_ET0_St12memory_orderEUlS3_E_EES5_S9_SA_SB_.exit.i.i.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i.i.i, %_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i.i.i.i
  %i.es = load atomic i32, ptr %i.dv acquire, align 8
  %.not.i.i.i23.i = icmp eq i32 %i.es, 2
  br i1 %.not.i.i.i23.i, label %_ZN3tbb6detail2d110task_arena10initializeEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !138

_ZN3tbb6detail2d110task_arena10initializeEv.exit.i.i: ; preds = %_ZN3tbb6detail2d015spin_wait_whileINS1_13do_once_stateEZNS1_18spin_wait_while_eqIS3_S3_EET_RKSt6atomicIS5_ET0_St12memory_orderEUlS3_E_EES5_S9_SA_SB_.exit.i.i.i.i, %.noexc24.i, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !157
  %i.et = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 256)
          to label %.noexc25.i unwind label %bb.bg ; 5 uses

.noexc25.i:                                       ; preds = %_ZN3tbb6detail2d110task_arena10initializeEv.exit.i.i
  %.val.i.i.i.i = load i64, ptr %4, align 8, !tbaa !108
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eu, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d112enqueue_taskIZN7openvdb5v13_02io5Queue4Impl7enqueueERNS5_12_GLOBAL__N_110OutputTaskEEUlvE_EE, i64 16), ptr %i.et, align 64, !tbaa !91
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  store i64 %.val.i.i.i.i, ptr %i.ev, align 64, !tbaa !108
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 72
  invoke fastcc void @_ZN7openvdb5v13_02io12_GLOBAL__N_110OutputTaskC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(144) %i.ew, ptr noundef nonnull align 8 dereferenceable(144) %13)
          to label %.noexc26.i unwind label %bb.bg

.noexc26.i:                                       ; preds = %.noexc25.i
  invoke void @_ZN3tbb6detail2r17enqueueERNS0_2d14taskEPNS2_15task_arena_baseE(ptr noundef nonnull align 64 dereferenceable(64) %i.et, ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %bb.az unwind label %bb.bg

bb.az:                                            ; preds = %.noexc26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @_ZN7openvdb5v13_02io12_GLOBAL__N_110OutputTaskD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.ex = atomicrmw add ptr %i.aq, i32 1 seq_cst, align 4 ; 0 uses
  %i.ey = load atomic i32, ptr %i.dv acquire, align 8
  %i.ez = icmp eq i32 %i.ey, 2
  br i1 %i.ez, label %bb.ba, label %_ZN3tbb6detail2d110task_arenaD2Ev.exit.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN3tbb6detail2r19terminateERNS0_2d115task_arena_baseE(ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %.noexc.i.i unwind label %bb.bb

.noexc.i.i:                                       ; preds = %bb.ba
  store atomic i32 0, ptr %i.dv monotonic, align 8
  br label %_ZN3tbb6detail2d110task_arenaD2Ev.exit.i

bb.bb:                                            ; preds = %bb.ba
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #31
  unreachable

_ZN3tbb6detail2d110task_arenaD2Ev.exit.i:         ; preds = %.noexc.i.i, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.fc = load ptr, ptr %i.ci, align 8, !tbaa !75 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i, label %bb.bm, label %bb.bc

bb.bc:                                            ; preds = %_ZN3tbb6detail2d110task_arenaD2Ev.exit.i
  %i.fd = invoke noundef zeroext i1 %i.fc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %bb.bm unwind label %bb.bd     ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.fe = landingpad { ptr, i32 }
          catch ptr null
  %i.ff = extractvalue { ptr, i32 } %i.fe, 0
  call void @__clang_call_terminate(ptr %i.ff) #31
  unreachable

bb.be:                                            ; preds = %bb.as
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bf:                                            ; preds = %_ZN3tbb6detail2d110task_arenaC2ENS2_6attachE.exit.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %.noexc26.i, %.noexc25.i, %_ZN3tbb6detail2d110task_arena10initializeEv.exit.i.i, %bb.aw
  %i.fi = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZNK7openvdb5v13_02io12_GLOBAL__N_110OutputTask7executeEv:bb.a
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.s, i64 noundef %i.u)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
          to label %.sink.split unwind label %bb.e, !inline_history !168 ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

.sink.split:                                      ; preds = %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.b
  tail call void @__cxa_end_catch()
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 2, %bb.a ], [ 3, %.sink.split ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !75
  %.not.i.i.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i, label %_ZNK7openvdb5v13_02io12_GLOBAL__N_14Task6notifyENS1_5Queue6StatusE.exit, label %_ZNKSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEclEjS4_.exit.i

_ZNKSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEclEjS4_.exit.i: ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i32, ptr %i.ab, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.val.i, ptr %i.a, align 4, !tbaa !56
  store i32 %.0, ptr %i.b, align 4, !tbaa !111
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !105
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNK7openvdb5v13_02io12_GLOBAL__N_14Task6notifyENS1_5Queue6StatusE.exit

_ZNK7openvdb5v13_02io12_GLOBAL__N_14Task6notifyENS1_5Queue6StatusE.exit: ; preds = %bb.f, %_ZNKSt8functionIFvjN7openvdb5v13_02io5Queue6StatusEEEclEjS4_.exit.i
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.x

bb.h:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #31
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7openvdb5v13_02io12_GLOBAL__N_14TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_02io12_GLOBAL__N_14TaskE, i64 16), ptr %0, align 8, !tbaa !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN7openvdb5v13_02io12_GLOBAL__N_14TaskD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #18 align 2 {
bb.a:
  tail call void @llvm.trap() #31
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #15

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #24, !inline_history !173
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !77
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !56   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !56
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !91
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #24, !inline_history !173
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #20

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #15

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_09ExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !77
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io5Queue4Impl25setStatusWithNotificationEjNS2_6StatusE(ptr noundef nonnull align 8 dereferenceable(688) %0, i32 noundef %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.tbb::detail::d2::concurrent_hash_map<unsigned int, openvdb::v13_0::io::Queue::Status>::accessor", align 8 ; 11 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %4 = alloca %"class.tbb::detail::d2::concurrent_hash_map<unsigned int, openvdb::v13_0::io::Queue::Status>::accessor", align 8 ; 12 uses
  store i32 %1, ptr %i.d, align 4, !tbaa !56
  %i.e = and i32 %2, -2
  %i.f = icmp eq i32 %i.e, 2                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %1, ptr %i.c, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i8 0, ptr %i.g, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE6lookupILb1EjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEEbRKT0_SS_PNSG_14const_accessorEbT1_SJ_(ptr noundef nonnull align 8 dereferenceable(570) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE31allocate_node_default_constructIjEEPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERKT_PKS7_, ptr noundef null)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store i32 %2, ptr %i.l, align 4, !tbaa !68
  store ptr null, ptr %i.h, align 8, !tbaa !65
  %i.m = load ptr, ptr %3, align 8, !tbaa !61     ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i3.i, label %_ZN7openvdb5v13_02io5Queue4Impl9setStatusEjNS2_6StatusE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %3, align 8, !tbaa !61
  %i.n = load i8, ptr %i.g, align 8, !tbaa !62, !range !69, !noundef !70
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = atomicrmw and ptr %i.m, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN7openvdb5v13_02io5Queue4Impl9setStatusEjNS2_6StatusE.exit

bb.e:                                             ; preds = %bb.c
  %5 = atomicrmw add ptr %i.m, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN7openvdb5v13_02io5Queue4Impl9setStatusEjNS2_6StatusE.exit

bb.f:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.h, align 8, !tbaa !65
  %i.r = load ptr, ptr %3, align 8, !tbaa !61     ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i4.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit5.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %3, align 8, !tbaa !61
  %i.s = load i8, ptr %i.g, align 8, !tbaa !62, !range !69, !noundef !70
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = atomicrmw and ptr %i.r, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit5.i

bb.i:                                             ; preds = %bb.g
  %6 = atomicrmw add ptr %i.r, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit5.i

common.resume:                                    ; preds = %bb.o, %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit, %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit5.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit5.i ], [ %i.aq, %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit ], [ %lpad.phi, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit5.i: ; preds = %bb.i, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume

_ZN7openvdb5v13_02io5Queue4Impl9setStatusEjNS2_6StatusE.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 4 uses
  %i.w = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN7openvdb5v13_02io5Queue4Impl9setStatusEjNS2_6StatusE.exit
  call void @_ZSt20__throw_system_errori(i32 noundef %i.w) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZN7openvdb5v13_02io5Queue4Impl9setStatusEjNS2_6StatusE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.y = load i64, ptr %i.x, align 8, !tbaa !49
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.thread, label %bb.k

bb.k:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %.not27 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not27, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %.pre = load i32, ptr %i.d, align 4, !tbaa !56
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %.sroa.021.028 = phi ptr [ %i.ai, %bb.n ], [ %i.ab, %.lr.ph.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.pre, ptr %i.a, align 4, !tbaa !56
  store i32 %2, ptr %i.b, align 4, !tbaa !111
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.021.028, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !75
  %.not.i.i11 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i11, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  invoke void @_ZSt25__throw_bad_function_callv() #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.021.028, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.021.028, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !105
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.n unwind label %.loopexit, !inline_history !174

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.021.028) #33 ; 2 uses
  %.not = icmp eq ptr %i.ai, %i.ac
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !175

.loopexit:                                        ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.aj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #24 ; 0 uses
  br label %common.resume

._crit_edge:                                      ; preds = %bb.n, %bb.k
  %i.ak = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #24 ; 0 uses
  br i1 %i.f, label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit.i, label %bb.x

.thread:                                          ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.al = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #24 ; 0 uses
  br i1 %i.f, label %.thread26, label %bb.x

_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit.i: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !61
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i8 0, ptr %i.am, align 8, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ao = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE6lookupILb0EjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEEbRKT0_SS_PNSG_14const_accessorEbT1_SJ_(ptr noundef nonnull align 8 dereferenceable(570) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE20do_not_allocate_nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_, ptr noundef null)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE4findERNSG_8accessorERSD_.exit unwind label %bb.q

_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE4findERNSG_8accessorERSD_.exit: ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit.i
  br i1 %i.ao, label %bb.p, label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE5eraseERNSG_8accessorE.exit

bb.p:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE4findERNSG_8accessorERSD_.exit
  %i.ap = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE7excludeERNSG_14const_accessorE(ptr noundef nonnull align 8 dereferenceable(570) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE5eraseERNSG_8accessorE.exit unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p, %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.an, align 8, !tbaa !65
  %i.ar = load ptr, ptr %4, align 8, !tbaa !61    ; 3 uses
  %.not.i.i16 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i16, label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr null, ptr %4, align 8, !tbaa !61
  %i.as = load i8, ptr %i.am, align 8, !tbaa !62, !range !69, !noundef !70
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.au = atomicrmw and ptr %i.ar, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit

bb.t:                                             ; preds = %bb.r
  %7 = atomicrmw add ptr %i.ar, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit

_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit: ; preds = %bb.q, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE5eraseERNSG_8accessorE.exit: ; preds = %bb.p, %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE4findERNSG_8accessorERSD_.exit
  store ptr null, ptr %i.an, align 8, !tbaa !65
  %i.av = load ptr, ptr %4, align 8, !tbaa !61    ; 3 uses
  %.not.i.i17 = icmp eq ptr %i.av, null
  br i1 %.not.i.i17, label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit18, label %bb.u

bb.u:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE5eraseERNSG_8accessorE.exit
  store ptr null, ptr %4, align 8, !tbaa !61
  %i.aw = load i8, ptr %i.am, align 8, !tbaa !62, !range !69, !noundef !70
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ay = atomicrmw and ptr %i.av, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit18

bb.w:                                             ; preds = %bb.u
  %8 = atomicrmw add ptr %i.av, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit18

_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit18: ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE5eraseERNSG_8accessorE.exit, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.thread26

.thread26:                                        ; preds = %.thread, %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessorD2Ev.exit18
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = atomicrmw add ptr %i.az, i32 -1 seq_cst, align 4 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %.thread, %.thread26, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN7openvdb5v13_02io12_GLOBAL__N_110OutputTaskC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(144) initializes((0, 12), (16, 48)) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_02io12_GLOBAL__N_14TaskE, i64 16), ptr %0, align 8, !tbaa !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !95
  store i32 %i.c, ptr %i.a, align 8, !tbaa !95
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.not.i.i, label %_ZN7openvdb5v13_02io12_GLOBAL__N_14TaskC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.j = load <2 x ptr>, ptr %i.f, align 8, !tbaa !76
  store <2 x ptr> %i.j, ptr %i.e, align 8, !tbaa !76
  br label %_ZN7openvdb5v13_02io12_GLOBAL__N_14TaskC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #31
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.e, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN7openvdb5v13_02io12_GLOBAL__N_14TaskC2ERKS3_.exit: ; preds = %bb.a, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_02io12_GLOBAL__N_110OutputTaskE, i64 16), ptr %0, align 8, !tbaa !91
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !82   ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !81   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %.noexc8, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_02io12_GLOBAL__N_14TaskC2ERKS3_.exit
  %i.x = icmp ugt i64 %i.w, 9223372036854775792
  br i1 %i.x, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIKN7openvdb5v13_08GridBaseEEE8allocateEmPKv.exit.i.i.i.i, !prof !92

.noexc.i.i:                                       ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIKN7openvdb5v13_08GridBaseEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #28
          to label %.noexc8 unwind label %bb.o

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIKN7openvdb5v13_08GridBaseEEE8allocateEmPKv.exit.i.i.i.i, %_ZN7openvdb5v13_02io12_GLOBAL__N_14TaskC2ERKS3_.exit
  %i.z = phi ptr [ null, %_ZN7openvdb5v13_02io12_GLOBAL__N_14TaskC2ERKS3_.exit ], [ %i.y, %_ZNSt15__new_allocatorISt10shared_ptrIKN7openvdb5v13_08GridBaseEEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.z, ptr %i.p, align 8, !tbaa !81
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !83
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !96  ; 2 uses
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !96  ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc8, %_ZSt10_ConstructISt10shared_ptrIKN7openvdb5v13_08GridBaseEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ao, %_ZSt10_ConstructISt10shared_ptrIKN7openvdb5v13_08GridBaseEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.z, %.noexc8 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.an, %_ZSt10_ConstructISt10shared_ptrIKN7openvdb5v13_08GridBaseEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.ad, %.noexc8 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !86 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !76
  store <2 x ptr> %i.ah, ptr %.09.i.i.i.i.i, align 8, !tbaa !76
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIKN7openvdb5v13_08GridBaseEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !77
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !56
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !56
  br label %_ZSt10_ConstructISt10shared_ptrIKN7openvdb5v13_08GridBaseEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.am = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIKN7openvdb5v13_08GridBaseEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIKN7openvdb5v13_08GridBaseEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %.lr.ph.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.ae
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

.loopexit:                                        ; preds = %_ZSt10_ConstructISt10shared_ptrIKN7openvdb5v13_08GridBaseEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc8
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %.noexc8 ], [ %i.ao, %_ZSt10_ConstructISt10shared_ptrIKN7openvdb5v13_08GridBaseEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.aa, align 8, !tbaa !82
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !86 ; 2 uses
  %i.at = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !76
  store <2 x ptr> %i.at, ptr %i.ap, align 8, !tbaa !76
  %.not.i.i.i9 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i9, label %_ZNSt10shared_ptrIN7openvdb5v13_02io7ArchiveEEC2ERKS4_.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !77
  %.not.i.i.i.i10 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !56
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !56
  br label %_ZNSt10shared_ptrIN7openvdb5v13_02io7ArchiveEEC2ERKS4_.exit

bb.m:                                             ; preds = %bb.k
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7openvdb5v13_02io7ArchiveEEC2ERKS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_02io7ArchiveEEC2ERKS4_.exit: ; preds = %.loopexit, %bb.l, %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 88
  invoke void @_ZN7openvdb5v13_07MetaMapC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.az, ptr noundef nonnull align 8 dereferenceable(56) %i.ba)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_02io7ArchiveEEC2ERKS4_.exit
  ret void

bb.o:                                             ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIKN7openvdb5v13_08GridBaseEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_02io7ArchiveEEC2ERKS4_.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN7openvdb5v13_02io7ArchiveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ap) #24
  tail call void @_ZNSt6vectorISt10shared_ptrIKN7openvdb5v13_08GridBaseEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.p ], [ %i.bb, %bb.o ]
  tail call void @_ZN7openvdb5v13_02io12_GLOBAL__N_14TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #24
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d110task_arenaD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic i32, ptr %i.a acquire, align 8
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %_ZN3tbb6detail2d110task_arena9terminateEv.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3tbb6detail2r19terminateERNS0_2d115task_arena_baseE(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  store atomic i32 0, ptr %i.a monotonic, align 8
  br label %_ZN3tbb6detail2d110task_arena9terminateEv.exit

_ZN3tbb6detail2d110task_arena9terminateEv.exit:   ; preds = %.noexc, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #31
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_012RuntimeErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7openvdb5v13_09ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !77
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30, !inline_history !110
  br label %_ZN7openvdb5v13_09ExceptionD2Ev.exit

_ZN7openvdb5v13_09ExceptionD2Ev.exit:             ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #24, !inline_history !110
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #30
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE6lookupILb0EjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEEbRKT0_SS_PNSG_14const_accessorEbT1_SJ_(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %7 = alloca %"class.tbb::detail::d2::concurrent_hash_map<unsigned int, openvdb::v13_0::io::Queue::Status>::bucket_accessor", align 8 ; 18 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !56
  %i.b = zext i32 %i.a to i64                     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.not34 = icmp eq ptr %3, null
  %i.g = zext i1 %4 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2
  %.050 = phi i64 [ %.3.jt2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ], [ %i.d, %.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.j = and i64 %.050, %i.b
  call void @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE15bucket_accessorC2EPSG_mb(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %0, i64 noundef %i.j, i1 noundef zeroext false)
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load atomic ptr, ptr %i.l monotonic, align 8 ; 3 uses
  %i.n = icmp ugt ptr %i.m, inttoptr (i64 63 to ptr)
  br i1 %i.n, label %.lr.ph.i, label %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.o = load i32, ptr %1, align 4, !tbaa !56
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.07.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.s, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  %i.q = load i32, ptr %i.p, align 4, !tbaa !56
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %.07.i, align 8, !tbaa !120 ; 3 uses
  %i.t = icmp ugt ptr %i.s, inttoptr (i64 63 to ptr)
  br i1 %i.t, label %bb.b, label %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit, !llvm.loop !6

_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit: ; preds = %bb.c, %bb.a
  %.0.lcssa.i = phi ptr [ %i.m, %bb.a ], [ %i.s, %bb.c ] ; 2 uses
  %.not.not = icmp eq ptr %.0.lcssa.i, null
  br i1 %.not.not, label %bb.d, label %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit.thread

bb.d:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit
  %i.u = load atomic i64, ptr %i.c acquire, align 8 ; 3 uses
  %.not.i = icmp eq i64 %.050, %i.u
  br i1 %.not.i, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = xor i64 %i.u, %.050
  %i.w = and i64 %i.v, %i.b
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt1, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add i64 %.050, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.012.i.i = phi i64 [ %i.x, %bb.f ], [ %i.z, %bb.g ] ; 2 uses
  %i.y = and i64 %.012.i.i, %i.b
  %.not13.i.i = icmp eq i64 %i.y, 0
  %i.z = shl i64 %.012.i.i, 1                     ; 2 uses
  br i1 %.not13.i.i, label %bb.g, label %bb.h, !llvm.loop !7

bb.h:                                             ; preds = %bb.g
  %i.aa = add i64 %i.z, 4294967295
  %i.ab = and i64 %i.aa, %i.b                     ; 2 uses
  %i.ac = or i64 %i.ab, 1
  %i.ad = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true) ; 2 uses
  %i.ae = xor i64 %i.ad, 63
  %i.af = lshr exact i64 -9223372036854775808, %i.ad
  %i.ag = and i64 %i.af, 9223372036854775806
  %i.ah = sub nsw i64 %i.ab, %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ae
  %i.aj = load atomic ptr, ptr %i.ai acquire, align 8
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load atomic ptr, ptr %i.al acquire, align 8
  %i.an = icmp eq ptr %i.am, inttoptr (i64 3 to ptr)
  br i1 %i.an, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt1, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit.thread: ; preds = %bb.b, %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit
  %.0.lcssa.i55 = phi ptr [ %.0.lcssa.i, %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit ], [ %.07.i, %bb.b ] ; 2 uses
  br i1 %.not34, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt4, label %bb.i

bb.i:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i55, i64 8 ; 10 uses
  %i.ap = load atomic i64, ptr %i.ao monotonic, align 8 ; 3 uses
  br i1 %4, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = and i64 %i.ap, -3
  %.not.i.i37 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i37, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, label %.split.us.preheader

bb.k:                                             ; preds = %bb.i
  %i.ar = and i64 %i.ap, 3
  %.not.i7.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i7.i, label %bb.l, label %.split.preheader

bb.l:                                             ; preds = %bb.k
  %i.as = atomicrmw add ptr %i.ao, i64 4 seq_cst, align 8
  %i.at = and i64 %i.as, 1
  %.not5.not.i.i = icmp eq i64 %i.at, 0
  br i1 %.not5.not.i.i, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.m

bb.m:                                             ; preds = %bb.l
  %8 = atomicrmw add ptr %i.ao, i64 -4 seq_cst, align 8 ; 0 uses
  br label %.split.preheader

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i: ; preds = %bb.j
  %i.au = cmpxchg ptr %i.ao, i64 %i.ap, i64 1 seq_cst seq_cst, align 8
  %i.av = extractvalue { i64, i1 } %i.au, 1
  br i1 %i.av, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %.split.us.preheader

.split.preheader:                                 ; preds = %bb.m, %bb.k
  call void @llvm.x86.sse2.pause()
  br label %.split

.split.us.preheader:                              ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.j
  call void @llvm.x86.sse2.pause()
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit.us
  %.sroa.0.0.us = phi i32 [ %i.bg, %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit.us ], [ 2, %.split.us.preheader ] ; 7 uses
  %i.aw = load atomic i64, ptr %i.ao monotonic, align 8 ; 2 uses
  %i.ax = and i64 %i.aw, -3
  %.not.i.i41.us = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i41.us, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i42.us, label %bb.n

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i42.us: ; preds = %.split.us
  %i.ay = cmpxchg ptr %i.ao, i64 %i.aw, i64 1 seq_cst seq_cst, align 8
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  br i1 %i.az, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.n

bb.n:                                             ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i42.us, %.split.us
  %i.ba = icmp sgt i32 %.sroa.0.0.us, 0
  br i1 %i.ba, label %.lr.ph.i.i.us.preheader, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit.us

.lr.ph.i.i.us.preheader:                          ; preds = %bb.n
  %xtraiter130 = and i32 %.sroa.0.0.us, 6         ; 2 uses
  %lcmp.mod131.not = icmp eq i32 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %.lr.ph.i.i.us.prol.loopexit, label %.lr.ph.i.i.us.prol

.lr.ph.i.i.us.prol:                               ; preds = %.lr.ph.i.i.us.preheader, %.lr.ph.i.i.us.prol
  %.01.i.i.us.prol = phi i32 [ %i.bb, %.lr.ph.i.i.us.prol ], [ %.sroa.0.0.us, %.lr.ph.i.i.us.preheader ]
  %prol.iter132 = phi i32 [ %prol.iter132.next, %.lr.ph.i.i.us.prol ], [ 0, %.lr.ph.i.i.us.preheader ]
  %i.bb = add nsw i32 %.01.i.i.us.prol, -1        ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter132.next = add i32 %prol.iter132, 1   ; 2 uses
  %prol.iter132.cmp.not = icmp eq i32 %prol.iter132.next, %xtraiter130
  br i1 %prol.iter132.cmp.not, label %.lr.ph.i.i.us.prol.loopexit, label %.lr.ph.i.i.us.prol, !llvm.loop !176

.lr.ph.i.i.us.prol.loopexit:                      ; preds = %.lr.ph.i.i.us.prol, %.lr.ph.i.i.us.preheader
  %.01.i.i.us.unr = phi i32 [ %.sroa.0.0.us, %.lr.ph.i.i.us.preheader ], [ %i.bb, %.lr.ph.i.i.us.prol ]
  %i.bc = icmp ult i32 %.sroa.0.0.us, 8
  br i1 %i.bc, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.us, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.prol.loopexit, %.lr.ph.i.i.us
  %.01.i.i.us = phi i32 [ %i.bd, %.lr.ph.i.i.us ], [ %.01.i.i.us.unr, %.lr.ph.i.i.us.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.bd = add nsw i32 %.01.i.i.us, -8
  call void @llvm.x86.sse2.pause()
  %i.be = icmp sgt i32 %.01.i.i.us, 8
  br i1 %i.be, label %.lr.ph.i.i.us, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.us, !llvm.loop !5

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.us:    ; preds = %.lr.ph.i.i.us, %.lr.ph.i.i.us.prol.loopexit
  %i.bf = icmp samesign ult i32 %.sroa.0.0.us, 16
  br i1 %i.bf, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit.us, label %.split74.us

_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit.us: ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.us, %bb.n
  %i.bg = shl i32 %.sroa.0.0.us, 1
  br label %.split.us, !llvm.loop !177

.split:                                           ; preds = %.split.preheader, %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit
  %.sroa.0.0 = phi i32 [ %i.br, %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit ], [ 2, %.split.preheader ] ; 7 uses
  %i.bh = load atomic i64, ptr %i.ao monotonic, align 8
  %i.bi = and i64 %i.bh, 3
  %.not.i7.i38 = icmp eq i64 %i.bi, 0
  br i1 %.not.i7.i38, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.split
  %i.bj = atomicrmw add ptr %i.ao, i64 4 seq_cst, align 8
  %i.bk = and i64 %i.bj, 1
  %.not5.not.i.i39 = icmp eq i64 %i.bk, 0
  br i1 %.not5.not.i.i39, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.p

bb.p:                                             ; preds = %bb.o
  %9 = atomicrmw add ptr %i.ao, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %.split, %bb.p
  %i.bl = icmp sgt i32 %.sroa.0.0, 0
  br i1 %i.bl, label %.lr.ph.i.i.preheader, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.q
  %xtraiter = and i32 %.sroa.0.0, 6               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.01.i.i.prol = phi i32 [ %i.bm, %.lr.ph.i.i.prol ], [ %.sroa.0.0, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bm = add nsw i32 %.01.i.i.prol, -1           ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !178

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.01.i.i.unr = phi i32 [ %.sroa.0.0, %.lr.ph.i.i.preheader ], [ %i.bm, %.lr.ph.i.i.prol ]
  %i.bn = icmp ult i32 %.sroa.0.0, 8
  br i1 %i.bn, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01.i.i = phi i32 [ %i.bo, %.lr.ph.i.i ], [ %.01.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.bo = add nsw i32 %.01.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.bp = icmp sgt i32 %.01.i.i, 8
  br i1 %i.bp, label %.lr.ph.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, !llvm.loop !5

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i:       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %i.bq = icmp samesign ult i32 %.sroa.0.0, 16
  br i1 %i.bq, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, label %.split74.us

_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit: ; preds = %bb.q, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.br = shl i32 %.sroa.0.0, 1
  br label %.split, !llvm.loop !177

.split74.us:                                      ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.us
  %i.bs = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !61
  %i.bt = load i8, ptr %i.h, align 8, !tbaa !62, !range !69, !noundef !70
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.split74.us
  %i.bv = atomicrmw and ptr %i.bs, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %.split74.us
  %10 = atomicrmw add ptr %i.bs, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bw = call noundef i32 @sched_yield() #24     ; 0 uses
  %i.bx = load atomic i64, ptr %i.c acquire, align 8
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt1: ; preds = %bb.e, %bb.d, %bb.h
  %i.by = load ptr, ptr %7, align 8, !tbaa !61    ; 3 uses
  %.not.i44.jt1 = icmp eq ptr %i.by, null
  br i1 %.not.i44.jt1, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt1, label %bb.u

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2: ; preds = %bb.h, %bb.t
  %.3.jt2 = phi i64 [ %i.bx, %bb.t ], [ %i.u, %bb.h ]
  %i.bz = load ptr, ptr %7, align 8, !tbaa !61    ; 3 uses
  %.not.i44.jt2 = icmp eq ptr %i.bz, null
  br i1 %.not.i44.jt2, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2, label %bb.v

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0: ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.l, %bb.o, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i42.us
  store ptr %i.ao, ptr %3, align 8, !tbaa !61
  store i8 %i.g, ptr %i.i, align 8, !tbaa !62
  %i.ca = load ptr, ptr %7, align 8, !tbaa !61    ; 3 uses
  %.not.i44.jt0 = icmp eq ptr %i.ca, null
  br i1 %.not.i44.jt0, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0, label %bb.w

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt4: ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit.thread
  %i.cb = load ptr, ptr %7, align 8, !tbaa !61    ; 3 uses
  %.not.i44.jt4 = icmp eq ptr %i.cb, null
  br i1 %.not.i44.jt4, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt4, label %bb.x

bb.u:                                             ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt1
  store ptr null, ptr %7, align 8, !tbaa !61
  %i.cc = load i8, ptr %i.h, align 8, !tbaa !62, !range !69, !noundef !70
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.y, label %bb.ac

bb.v:                                             ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  store ptr null, ptr %7, align 8, !tbaa !61
  %i.ce = load i8, ptr %i.h, align 8, !tbaa !62, !range !69, !noundef !70
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.z, label %bb.ad

bb.w:                                             ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0
  store ptr null, ptr %7, align 8, !tbaa !61
  %i.cg = load i8, ptr %i.h, align 8, !tbaa !62, !range !69, !noundef !70
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.aa, label %bb.ae

bb.x:                                             ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt4
  store ptr null, ptr %7, align 8, !tbaa !61
  %i.ci = load i8, ptr %i.h, align 8, !tbaa !62, !range !69, !noundef !70
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.ab, label %bb.af

bb.y:                                             ; preds = %bb.u
  %i.ck = atomicrmw and ptr %i.by, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt1

bb.z:                                             ; preds = %bb.v
  %i.cl = atomicrmw and ptr %i.bz, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2

bb.aa:                                            ; preds = %bb.w
  %i.cm = atomicrmw and ptr %i.ca, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0

bb.ab:                                            ; preds = %bb.x
  %i.cn = atomicrmw and ptr %i.cb, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt4

bb.ac:                                            ; preds = %bb.u
  %11 = atomicrmw add ptr %i.by, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt1

bb.ad:                                            ; preds = %bb.v
  %12 = atomicrmw add ptr %i.bz, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2

bb.ae:                                            ; preds = %bb.w
  %13 = atomicrmw add ptr %i.ca, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0

bb.af:                                            ; preds = %bb.x
  %14 = atomicrmw add ptr %i.cb, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt4

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt1: ; preds = %bb.ac, %bb.y, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.loopexit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2: ; preds = %bb.ad, %bb.z, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.a

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0: ; preds = %bb.ae, %bb.aa, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.0.lcssa.i55, ptr %i.co, align 8, !tbaa !65
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.b, ptr %i.cp, align 8, !tbaa !121
  br label %.loopexit65

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt4: ; preds = %bb.af, %bb.ab, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.loopexit65

.loopexit65:                                      ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt4, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0
  %.not36 = icmp eq ptr %6, null
  br i1 %.not36, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %.loopexit65
  call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %6)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt1, %.loopexit65, %bb.ag
  %.2 = phi i1 [ true, %.loopexit65 ], [ true, %bb.ag ], [ false, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt1 ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE20do_not_allocate_nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) #5 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE15bucket_accessorC2EPSG_mb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i8 0, ptr %i.a, align 8, !tbaa !62
  %i.b = or i64 %2, 1
  %i.c = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true) ; 2 uses
  %i.d = xor i64 %i.c, 63
  %i.e = lshr exact i64 -9223372036854775808, %i.c
  %i.f = and i64 %i.e, -2
  %i.g = sub i64 %2, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d
  %i.j = load atomic ptr, ptr %i.i acquire, align 8
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !114
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load atomic ptr, ptr %i.m acquire, align 8
  %i.o = icmp eq ptr %i.n, inttoptr (i64 3 to ptr)
  %.pre10 = load ptr, ptr %i.l, align 8, !tbaa !114 ; 5 uses
  br i1 %i.o, label %bb.b, label %.noexc.thread

bb.b:                                             ; preds = %bb.a
  %i.p = load atomic i64, ptr %.pre10 monotonic, align 8 ; 2 uses
  %i.q = and i64 %i.p, -3
  %.not.i.i7 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i7, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, label %.noexc.thread

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i: ; preds = %bb.b
  %i.r = cmpxchg ptr %.pre10, i64 %i.p, i64 1 seq_cst seq_cst, align 8
  %i.s = extractvalue { i64, i1 } %i.r, 1
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !114 ; 3 uses
  br i1 %i.s, label %bb.c, label %.noexc.thread

bb.c:                                             ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i
  store ptr %.pre10, ptr %0, align 8, !tbaa !61
  store i8 1, ptr %i.a, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.u = load atomic ptr, ptr %i.t monotonic, align 8
  %i.v = icmp eq ptr %i.u, inttoptr (i64 3 to ptr)
  br i1 %i.v, label %bb.d, label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE15bucket_accessor7acquireEPSG_mb.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13rehash_bucketEPNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEm(ptr noundef nonnull align 8 dereferenceable(570) %1, ptr noundef nonnull %.pre, i64 noundef %2)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE15bucket_accessor7acquireEPSG_mb.exit unwind label %bb.n, !inline_history !179

.noexc.thread:                                    ; preds = %bb.b, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.a
  %i.w = phi ptr [ %.pre10, %bb.b ], [ %.pre, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i ], [ %.pre10, %bb.a ] ; 7 uses
  %i.x = zext i1 %3 to i8
  store i8 %i.x, ptr %i.a, align 8, !tbaa !62
  store ptr %i.w, ptr %0, align 8, !tbaa !61
  br i1 %3, label %.preheader.i.outer, label %.preheader9.i.outer

.preheader.i.outer:                               ; preds = %.noexc.thread, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i
  %.sroa.0.0.i.i.ph = phi i32 [ %i.ai, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i ], [ 1, %.noexc.thread ] ; 4 uses
  %i.y = icmp slt i32 %.sroa.0.0.i.i.ph, 17
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.h
  %i.z = load atomic i64, ptr %i.w monotonic, align 8 ; 3 uses
  %i.aa = and i64 %i.z, -3
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader.i
  %i.ab = cmpxchg ptr %i.w, i64 %i.z, i64 1 seq_cst seq_cst, align 8
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE15bucket_accessor7acquireEPSG_mb.exit, label %.lr.ph.i.i.preheader.i.i

bb.f:                                             ; preds = %.preheader.i
  %i.ad = and i64 %i.z, 2
  %.not1.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not1.i.i, label %bb.g, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ae = atomicrmw or ptr %i.w, i64 2 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i: ; preds = %bb.g, %bb.f
  br i1 %i.y, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, label %bb.h

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.af = icmp sgt i32 %.sroa.0.0.i.i.ph, 0
  br i1 %i.af, label %.lr.ph.i.i.preheader.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, %bb.e
  %.sroa.0.1811.i.i = phi i32 [ %.sroa.0.0.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i ], [ 1, %bb.e ] ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.01.i.i.i.i = phi i32 [ %i.ag, %.lr.ph.i.i.i.i ], [ %.sroa.0.1811.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.ag = add nsw i32 %.01.i.i.i.i, -1
  tail call void @llvm.x86.sse2.pause()
  %i.ah = icmp samesign ugt i32 %.01.i.i.i.i, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, !llvm.loop !5

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i:   ; preds = %.lr.ph.i.i.i.i, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i
  %.sroa.0.1810.i.i = phi i32 [ %.sroa.0.0.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i ], [ %.sroa.0.1811.i.i, %.lr.ph.i.i.i.i ]
  %i.ai = shl nsw i32 %.sroa.0.1810.i.i, 1
  br label %.preheader.i.outer, !llvm.loop !8

bb.h:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.aj = tail call noundef i32 @sched_yield() #24 ; 0 uses
  br label %.preheader.i, !llvm.loop !8

.preheader9.i:                                    ; preds = %.preheader9.i.outer, %bb.m
  %i.ak = load atomic i64, ptr %i.w monotonic, align 8
  %i.al = and i64 %i.ak, 3
  %.not.i4.i = icmp eq i64 %i.al, 0
  br i1 %.not.i4.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.preheader9.i
  %i.am = atomicrmw add ptr %i.w, i64 4 seq_cst, align 8
  %i.an = and i64 %i.am, 1
  %.not5.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not5.not.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE15bucket_accessor7acquireEPSG_mb.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %4 = atomicrmw add ptr %i.w, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader9.i
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp sgt i32 %.sroa.0.0.i3.i.ph, 0
  br i1 %i.ao, label %.lr.ph.i.i.i7.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i6.i

.lr.ph.i.i.i7.i.preheader:                        ; preds = %bb.l
  %xtraiter = and i32 %.sroa.0.0.i3.i.ph, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i7.i.prol.loopexit, label %.lr.ph.i.i.i7.i.prol

.lr.ph.i.i.i7.i.prol:                             ; preds = %.lr.ph.i.i.i7.i.preheader, %.lr.ph.i.i.i7.i.prol
  %.01.i.i.i8.i.prol = phi i32 [ %i.ap, %.lr.ph.i.i.i7.i.prol ], [ %.sroa.0.0.i3.i.ph, %.lr.ph.i.i.i7.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i7.i.prol ], [ 0, %.lr.ph.i.i.i7.i.preheader ]
  %i.ap = add nsw i32 %.01.i.i.i8.i.prol, -1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i7.i.prol.loopexit, label %.lr.ph.i.i.i7.i.prol, !llvm.loop !180

.lr.ph.i.i.i7.i.prol.loopexit:                    ; preds = %.lr.ph.i.i.i7.i.prol, %.lr.ph.i.i.i7.i.preheader
  %.01.i.i.i8.i.unr = phi i32 [ %.sroa.0.0.i3.i.ph, %.lr.ph.i.i.i7.i.preheader ], [ %i.ap, %.lr.ph.i.i.i7.i.prol ]
  %i.aq = icmp ult i32 %.sroa.0.0.i3.i.ph, 8
  br i1 %i.aq, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i6.i, label %.lr.ph.i.i.i7.i

.lr.ph.i.i.i7.i:                                  ; preds = %.lr.ph.i.i.i7.i.prol.loopexit, %.lr.ph.i.i.i7.i
  %.01.i.i.i8.i = phi i32 [ %i.ar, %.lr.ph.i.i.i7.i ], [ %.01.i.i.i8.i.unr, %.lr.ph.i.i.i7.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.ar = add nsw i32 %.01.i.i.i8.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.as = icmp sgt i32 %.01.i.i.i8.i, 8
  br i1 %i.as, label %.lr.ph.i.i.i7.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i6.i, !llvm.loop !5

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i6.i:  ; preds = %.lr.ph.i.i.i7.i.prol.loopexit, %.lr.ph.i.i.i7.i, %bb.l
  %i.at = shl i32 %.sroa.0.0.i3.i.ph, 1
  br label %.preheader9.i.outer, !llvm.loop !181

.preheader9.i.outer:                              ; preds = %.noexc.thread, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i6.i
  %.sroa.0.0.i3.i.ph = phi i32 [ %i.at, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i6.i ], [ 1, %.noexc.thread ] ; 7 uses
  %i.au = icmp slt i32 %.sroa.0.0.i3.i.ph, 17
  br label %.preheader9.i

bb.m:                                             ; preds = %bb.k
  %i.av = tail call noundef i32 @sched_yield() #24 ; 0 uses
  br label %.preheader9.i, !llvm.loop !181

_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE15bucket_accessor7acquireEPSG_mb.exit: ; preds = %bb.i, %bb.e, %bb.c, %bb.d
  ret void

bb.n:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %0, align 8, !tbaa !61    ; 3 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %0, align 8, !tbaa !61
  %i.ay = load i8, ptr %i.a, align 8, !tbaa !62, !range !69, !noundef !70
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = atomicrmw and ptr %i.ax, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %5 = atomicrmw add ptr %i.ax, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit: ; preds = %bb.n, %bb.p, %bb.q
  resume { ptr, i32 } %i.aw
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13rehash_bucketEPNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEm(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d2::concurrent_hash_map<unsigned int, openvdb::v13_0::io::Queue::Status>::bucket_accessor", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store atomic ptr null, ptr %i.a release, align 8
  %i.b = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true) ; 2 uses
  %i.c = lshr i64 9223372036854775807, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.d = and i64 %i.c, %2
  call void @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE15bucket_accessorC2EPSG_mb(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 noundef %i.d, i1 noundef zeroext false)
  %i.e = lshr i64 -2, %i.b
  %i.f = or i64 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load atomic ptr, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp ugt ptr %i.j, inttoptr (i64 63 to ptr)
  br i1 %i.k, label %.lr.ph.lr.ph, label %._crit_edge

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph

.loopexit:                                        ; preds = %bb.f
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !114
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic ptr, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp ugt ptr %i.o, inttoptr (i64 63 to ptr)
  br i1 %i.p, label %.lr.ph.backedge, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.lr.ph
  %.02544 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.02544.be, %.lr.ph.backedge ] ; 3 uses
  %.02743 = phi ptr [ %i.j, %.lr.ph.lr.ph ], [ %.02743.be, %.lr.ph.backedge ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02743, i64 16
  %i.r = load i32, ptr %i.q, align 4, !tbaa !56
  %i.s = zext i32 %i.r to i64
  %i.t = and i64 %i.f, %i.s
  %i.u = icmp eq i64 %i.t, %2
  br i1 %i.u, label %bb.b, label %bb.n

bb.b:                                             ; preds = %.lr.ph
  %i.v = load i8, ptr %i.l, align 8, !tbaa !62, !range !69, !noundef !70
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.l, align 8, !tbaa !62
  %i.x = load ptr, ptr %3, align 8, !tbaa !61     ; 9 uses
  %i.y = load atomic i64, ptr %i.x monotonic, align 8 ; 3 uses
  %i.z = and i64 %i.y, -4
  %i.aa = icmp eq i64 %i.z, 4
  %i.ab = and i64 %i.y, 2
  %.not13.i = icmp eq i64 %i.ab, 0
  %or.cond14.i = or i1 %i.aa, %.not13.i
  br i1 %or.cond14.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i
  %.0815.i = phi i64 [ %i.ah, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i ], [ %i.y, %bb.c ] ; 2 uses
  %i.ac = or i64 %.0815.i, 3
  %i.ad = cmpxchg ptr %i.x, i64 %.0815.i, i64 %i.ac seq_cst seq_cst, align 8 ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %.preheader.i, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.af = load atomic i64, ptr %i.x monotonic, align 8
  %i.ag = and i64 %i.af, -4
  %.not217.i = icmp eq i64 %i.ag, 4
  br i1 %.not217.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread, label %.lr.ph19.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i: ; preds = %.lr.ph.i
  %i.ah = extractvalue { i64, i1 } %i.ad, 0       ; 3 uses
  %i.ai = and i64 %i.ah, -4
  %i.aj = icmp eq i64 %i.ai, 4
  %i.ak = and i64 %i.ah, 2
  %.not.i32 = icmp eq i64 %i.ak, 0
  %or.cond.i = or i1 %i.aj, %.not.i32
  br i1 %or.cond.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !9

.lr.ph19.i:                                       ; preds = %.preheader.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  %.sroa.0.018.i = phi i32 [ %.sroa.0.1.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i ], [ 1, %.preheader.i ] ; 8 uses
  %i.al = icmp slt i32 %.sroa.0.018.i, 17
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph19.i
  %i.am = icmp sgt i32 %.sroa.0.018.i, 0
  br i1 %i.am, label %.lr.ph.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %xtraiter = and i32 %.sroa.0.018.i, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.01.i.i.i.prol = phi i32 [ %i.an, %.lr.ph.i.i.i.prol ], [ %.sroa.0.018.i, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.an = add nsw i32 %.01.i.i.i.prol, -1         ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !182

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.01.i.i.i.unr = phi i32 [ %.sroa.0.018.i, %.lr.ph.i.i.i.preheader ], [ %i.an, %.lr.ph.i.i.i.prol ]
  %i.ao = icmp ult i32 %.sroa.0.018.i, 8
  br i1 %i.ao, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01.i.i.i = phi i32 [ %i.ap, %.lr.ph.i.i.i ], [ %.01.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.ap = add nsw i32 %.01.i.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.aq = icmp sgt i32 %.01.i.i.i, 8
  br i1 %i.aq, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i, !llvm.loop !5

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i:     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.d
  %i.ar = shl i32 %.sroa.0.018.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

bb.e:                                             ; preds = %.lr.ph19.i
  %i.as = call noundef i32 @sched_yield() #24     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i: ; preds = %bb.e, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i
  %.sroa.0.1.i = phi i32 [ %i.ar, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i ], [ %.sroa.0.018.i, %bb.e ]
  %i.at = load atomic i64, ptr %i.x monotonic, align 8
  %i.au = and i64 %i.at, -4
  %.not2.i = icmp eq i64 %i.au, 4
  br i1 %.not2.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread, label %.lr.ph19.i, !llvm.loop !10

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i, %.preheader.i
  %4 = atomicrmw add ptr %i.x, i64 -6 seq_cst, align 8 ; 0 uses
  br label %bb.j

._crit_edge.i:                                    ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i, %bb.c
  %5 = atomicrmw add ptr %i.x, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer: ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, %._crit_edge.i
  %.sroa.0.0.i.i.ph = phi i32 [ %i.bf, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i ], [ 1, %._crit_edge.i ] ; 4 uses
  %i.av = icmp slt i32 %.sroa.0.0.i.i.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer, %bb.i
  %i.aw = load atomic i64, ptr %i.x monotonic, align 8 ; 3 uses
  %i.ax = and i64 %i.aw, -3
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i
  %i.ay = cmpxchg ptr %i.x, i64 %i.aw, i64 1 seq_cst seq_cst, align 8
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  br i1 %i.az, label %.loopexit, label %.lr.ph.i.i.preheader.i.i

bb.g:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i
  %i.ba = and i64 %i.aw, 2
  %.not1.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not1.i.i, label %bb.h, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.bb = atomicrmw or ptr %i.x, i64 2 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i: ; preds = %bb.h, %bb.g
  br i1 %i.av, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, label %bb.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.bc = icmp sgt i32 %.sroa.0.0.i.i.ph, 0
  br i1 %i.bc, label %.lr.ph.i.i.preheader.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i, %bb.f
  %.sroa.0.1811.i.i = phi i32 [ %.sroa.0.0.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i ], [ 1, %bb.f ] ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.01.i.i.i.i = phi i32 [ %i.bd, %.lr.ph.i.i.i.i ], [ %.sroa.0.1811.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.bd = add nsw i32 %.01.i.i.i.i, -1
  call void @llvm.x86.sse2.pause()
  %i.be = icmp samesign ugt i32 %.01.i.i.i.i, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, !llvm.loop !5

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i:   ; preds = %.lr.ph.i.i.i.i, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i
  %.sroa.0.1810.i.i = phi i32 [ %.sroa.0.0.i.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i.i ], [ %.sroa.0.1811.i.i, %.lr.ph.i.i.i.i ]
  %i.bf = shl nsw i32 %.sroa.0.1810.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.outer, !llvm.loop !8

bb.i:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.bg = call noundef i32 @sched_yield() #24     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i, !llvm.loop !8

bb.j:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread, %bb.b
  %i.bh = load ptr, ptr %.02743, align 8, !tbaa !120 ; 3 uses
  %i.bi = icmp eq ptr %.02544, null
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !114
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store atomic ptr %i.bh, ptr %i.bk monotonic, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store ptr %i.bh, ptr %.02544, align 8, !tbaa !120
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bl = load atomic ptr, ptr %i.a monotonic, align 8
  store ptr %i.bl, ptr %.02743, align 8, !tbaa !120
  store atomic ptr %.02743, ptr %i.a monotonic, align 8
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bm = load ptr, ptr %.02743, align 8, !tbaa !120
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit: ; preds = %bb.m, %bb.n
  %.229 = phi ptr [ %i.bm, %bb.n ], [ %i.bh, %bb.m ] ; 2 uses
  %.2 = phi ptr [ %.02743, %bb.n ], [ %.02544, %bb.m ]
  %i.bn = icmp ugt ptr %.229, inttoptr (i64 63 to ptr)
  br i1 %i.bn, label %.lr.ph.backedge, label %._crit_edge

.lr.ph.backedge:                                  ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %.loopexit
  %.02544.be = phi ptr [ %.2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit ], [ null, %.loopexit ]
  %.02743.be = phi ptr [ %.229, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit ], [ %i.o, %.loopexit ]
  br label %.lr.ph, !llvm.loop !183

._crit_edge:                                      ; preds = %.loopexit, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %bb.a
  %i.bo = load ptr, ptr %3, align 8, !tbaa !61    ; 3 uses
  %.not.i30 = icmp eq ptr %i.bo, null
  br i1 %.not.i30, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit31, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  store ptr null, ptr %3, align 8, !tbaa !61
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !62, !range !69, !noundef !70
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bs = atomicrmw and ptr %i.bo, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit31

bb.q:                                             ; preds = %bb.o
  %6 = atomicrmw add ptr %i.bo, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit31

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit31: ; preds = %._crit_edge, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3tbb6detail2d113spin_rw_mutex7upgradeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8 ; 3 uses
  %i.b = and i64 %i.a, -4
  %i.c = icmp eq i64 %i.b, 4
  %i.d = and i64 %i.a, 2
  %.not13 = icmp eq i64 %i.d, 0
  %or.cond14 = or i1 %i.c, %.not13
  br i1 %or.cond14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit
  %.0815 = phi i64 [ %i.j, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = or i64 %.0815, 3
  %i.f = cmpxchg ptr %0, i64 %.0815, i64 %i.e seq_cst seq_cst, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %.preheader, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

.preheader:                                       ; preds = %.lr.ph
  %i.h = load atomic i64, ptr %0 monotonic, align 8
  %i.i = and i64 %i.h, -4
  %.not217 = icmp eq i64 %i.i, 4
  br i1 %.not217, label %._crit_edge20, label %.lr.ph19

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %.lr.ph
  %i.j = extractvalue { i64, i1 } %i.f, 0         ; 3 uses
  %i.k = and i64 %i.j, -4
  %i.l = icmp eq i64 %i.k, 4
  %i.m = and i64 %i.j, 2
  %.not = icmp eq i64 %i.m, 0
  %or.cond = or i1 %i.l, %.not
  br i1 %or.cond, label %.lr.ph, label %._crit_edge, !llvm.loop !9

.lr.ph19:                                         ; preds = %.preheader, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit
  %.sroa.0.018 = phi i32 [ %.sroa.0.1, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit ], [ 1, %.preheader ] ; 8 uses
  %i.n = icmp slt i32 %.sroa.0.018, 17
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph19
  %i.o = icmp sgt i32 %.sroa.0.018, 0
  br i1 %i.o, label %.lr.ph.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter = and i32 %.sroa.0.018, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.01.i.i.prol = phi i32 [ %i.p, %.lr.ph.i.i.prol ], [ %.sroa.0.018, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.p = add nsw i32 %.01.i.i.prol, -1            ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !184

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.01.i.i.unr = phi i32 [ %.sroa.0.018, %.lr.ph.i.i.preheader ], [ %i.p, %.lr.ph.i.i.prol ]
  %i.q = icmp ult i32 %.sroa.0.018, 8
  br i1 %i.q, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01.i.i = phi i32 [ %i.r, %.lr.ph.i.i ], [ %.01.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.r = add nsw i32 %.01.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.s = icmp sgt i32 %.01.i.i, 8
  br i1 %i.s, label %.lr.ph.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, !llvm.loop !5

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i:       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %i.t = shl i32 %.sroa.0.018, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit

bb.c:                                             ; preds = %.lr.ph19
  %i.u = tail call noundef i32 @sched_yield() #24 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit:   ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, %bb.c
  %.sroa.0.1 = phi i32 [ %i.t, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i ], [ %.sroa.0.018, %bb.c ]
  %i.v = load atomic i64, ptr %0 monotonic, align 8
  %i.w = and i64 %i.v, -4
  %.not2 = icmp eq i64 %i.w, 4
  br i1 %.not2, label %._crit_edge20, label %.lr.ph19, !llvm.loop !10

._crit_edge20:                                    ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit, %.preheader
  %1 = atomicrmw add ptr %0, i64 -6 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d113spin_rw_mutex4lockEv.exit

._crit_edge:                                      ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %bb.a
  %2 = atomicrmw add ptr %0, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer: ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i, %._crit_edge
  %.sroa.0.0.i.ph = phi i32 [ %i.ah, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i ], [ 1, %._crit_edge ] ; 4 uses
  %i.x = icmp slt i32 %.sroa.0.0.i.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer, %bb.g
  %i.y = load atomic i64, ptr %0 monotonic, align 8 ; 3 uses
  %i.z = and i64 %i.y, -3
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  %i.aa = cmpxchg ptr %0, i64 %i.y, i64 1 seq_cst seq_cst, align 8
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %_ZN3tbb6detail2d113spin_rw_mutex4lockEv.exit, label %.lr.ph.i.i.preheader.i

bb.e:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  %i.ac = and i64 %i.y, 2
  %.not1.i = icmp eq i64 %i.ac, 0
  br i1 %.not1.i, label %bb.f, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ad = atomicrmw or ptr %0, i64 2 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i: ; preds = %bb.f, %bb.e
  br i1 %i.x, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i, label %bb.g

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i
  %i.ae = icmp sgt i32 %.sroa.0.0.i.ph, 0
  br i1 %i.ae, label %.lr.ph.i.i.preheader.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i

.lr.ph.i.i.preheader.i:                           ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i, %bb.d
  %.sroa.0.1811.i = phi i32 [ %.sroa.0.0.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i ], [ 1, %bb.d ] ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.01.i.i.i = phi i32 [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.0.1811.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.af = add nsw i32 %.01.i.i.i, -1
  tail call void @llvm.x86.sse2.pause()
  %i.ag = icmp samesign ugt i32 %.01.i.i.i, 1
  br i1 %i.ag, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i, !llvm.loop !5

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i:     ; preds = %.lr.ph.i.i.i, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i
  %.sroa.0.1810.i = phi i32 [ %.sroa.0.0.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i ], [ %.sroa.0.1811.i, %.lr.ph.i.i.i ]
  %i.ah = shl nsw i32 %.sroa.0.1810.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer, !llvm.loop !8

bb.g:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i
  %i.ai = tail call noundef i32 @sched_yield() #24 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i, !llvm.loop !8

_ZN3tbb6detail2d113spin_rw_mutex4lockEv.exit:     ; preds = %bb.d, %._crit_edge20
  %or.cond12 = phi i1 [ true, %._crit_edge20 ], [ false, %bb.d ]
  ret i1 %or.cond12
}

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #24

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #16

declare noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef) local_unnamed_addr #13

declare void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE7excludeERNSG_14const_accessorE(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %2 = alloca %"class.tbb::detail::d2::concurrent_hash_map<unsigned int, openvdb::v13_0::io::Queue::Status>::bucket_accessor", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !121  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt3
  %.036 = phi i64 [ %i.y, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt3 ], [ %i.f, %.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.l = and i64 %.036, %i.d
  call void @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE15bucket_accessorC2EPSG_mb(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %0, i64 noundef %i.l, i1 noundef zeroext true)
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !114  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic ptr, ptr %i.n monotonic, align 8 ; 5 uses
  %i.p = icmp ne ptr %i.o, null
  %i.q = icmp ne ptr %i.o, %i.b
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02441 = phi ptr [ %i.s, %.lr.ph ], [ %i.o, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %.02441, align 8, !tbaa !120 ; 5 uses
  %i.t = icmp ne ptr %i.s, null
  %i.u = icmp ne ptr %i.s, %i.b
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !185

._crit_edge:                                      ; preds = %.lr.ph
  %i.w = icmp eq ptr %i.s, null
  br i1 %i.w, label %bb.b, label %bb.l

._crit_edge.thread:                               ; preds = %bb.a
  %i.x = icmp eq ptr %i.o, null
  br i1 %i.x, label %bb.b, label %bb.k

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 3 uses
  %.not.i = icmp eq i64 %.036, %i.y
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = xor i64 %i.y, %.036
  %i.aa = and i64 %i.z, %i.d
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = add i64 %.036, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.012.i.i = phi i64 [ %i.ab, %bb.d ], [ %i.ad, %bb.e ] ; 2 uses
  %i.ac = and i64 %.012.i.i, %i.d
  %.not13.i.i = icmp eq i64 %i.ac, 0
  %i.ad = shl i64 %.012.i.i, 1                    ; 2 uses
  br i1 %.not13.i.i, label %bb.e, label %bb.f, !llvm.loop !7

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %i.ad, -1
  %i.af = and i64 %i.ae, %i.d                     ; 2 uses
  %i.ag = or i64 %i.af, 1
  %i.ah = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true) ; 2 uses
  %i.ai = xor i64 %i.ah, 63
  %i.aj = lshr exact i64 -9223372036854775808, %i.ah
  %i.ak = and i64 %i.aj, -2
  %i.al = sub i64 %i.af, %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ai
  %i.an = load atomic ptr, ptr %i.am acquire, align 8
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load atomic ptr, ptr %i.ap acquire, align 8
  %i.ar = icmp eq ptr %i.aq, inttoptr (i64 3 to ptr)
  br i1 %i.ar, label %bb.g, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt3

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.b
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !65
  %.not.i27 = icmp eq ptr %i.as, null
  br i1 %.not.i27, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt1, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %1, align 8, !tbaa !61    ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !61
  %i.au = load i8, ptr %i.j, align 8, !tbaa !62, !range !69, !noundef !70
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = atomicrmw and ptr %i.at, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i

bb.j:                                             ; preds = %bb.h
  %3 = atomicrmw add ptr %i.at, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i: ; preds = %bb.j, %bb.i
  store ptr null, ptr %i.a, align 8, !tbaa !65
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt1

bb.k:                                             ; preds = %._crit_edge.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ay = load ptr, ptr %i.o, align 8, !tbaa !120
  store atomic ptr %i.ay, ptr %i.ax monotonic, align 8
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

bb.l:                                             ; preds = %._crit_edge
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !120
  store ptr %i.az, ptr %.02441, align 8, !tbaa !120
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt1: ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i, %bb.g
  %i.ba = load ptr, ptr %2, align 8, !tbaa !61    ; 3 uses
  %.not.i28.jt1 = icmp eq ptr %i.ba, null
  br i1 %.not.i28.jt1, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt1, label %bb.m

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt3: ; preds = %bb.f
  %i.bb = load ptr, ptr %2, align 8, !tbaa !61    ; 3 uses
  %.not.i28.jt3 = icmp eq ptr %i.bb, null
  br i1 %.not.i28.jt3, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt3, label %bb.n

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2: ; preds = %bb.k, %bb.l
  %4 = atomicrmw add ptr %i.h, i64 -1 seq_cst, align 8 ; 0 uses
  %i.bc = load ptr, ptr %2, align 8, !tbaa !61    ; 3 uses
  %.not.i28.jt2 = icmp eq ptr %i.bc, null
  br i1 %.not.i28.jt2, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt2, label %bb.o

bb.m:                                             ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt1
  store ptr null, ptr %2, align 8, !tbaa !61
  %i.bd = load i8, ptr %i.k, align 8, !tbaa !62, !range !69, !noundef !70
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.p, label %bb.s

bb.n:                                             ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt3
  store ptr null, ptr %2, align 8, !tbaa !61
  %i.bf = load i8, ptr %i.k, align 8, !tbaa !62, !range !69, !noundef !70
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.q, label %bb.t

bb.o:                                             ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  store ptr null, ptr %2, align 8, !tbaa !61
  %i.bh = load i8, ptr %i.k, align 8, !tbaa !62, !range !69, !noundef !70
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.r, label %bb.u

bb.p:                                             ; preds = %bb.m
  %i.bj = atomicrmw and ptr %i.ba, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt1

bb.q:                                             ; preds = %bb.n
  %i.bk = atomicrmw and ptr %i.bb, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt3

bb.r:                                             ; preds = %bb.o
  %i.bl = atomicrmw and ptr %i.bc, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt2

bb.s:                                             ; preds = %bb.m
  %5 = atomicrmw add ptr %i.ba, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt1

bb.t:                                             ; preds = %bb.n
  %6 = atomicrmw add ptr %i.bb, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt3

bb.u:                                             ; preds = %bb.o
  %7 = atomicrmw add ptr %i.bc, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt2

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt1: ; preds = %bb.s, %bb.p, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.loopexit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt3: ; preds = %bb.t, %bb.q, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.a

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt2: ; preds = %bb.u, %bb.r, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.bm = load i8, ptr %i.j, align 8, !tbaa !62, !range !69, !noundef !70
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.v, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit: ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt2
  store i8 1, ptr %i.j, align 8, !tbaa !62
  %i.bo = load ptr, ptr %1, align 8, !tbaa !61
  %i.bp = call noundef zeroext i1 @_ZN3tbb6detail2d113spin_rw_mutex7upgradeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt2
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !65
  %.not.i32 = icmp eq ptr %i.bq, null
  br i1 %.not.i32, label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit34, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = load ptr, ptr %1, align 8, !tbaa !61    ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !61
  %i.bs = load i8, ptr %i.j, align 8, !tbaa !62, !range !69, !noundef !70
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bu = atomicrmw and ptr %i.br, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i33

bb.y:                                             ; preds = %bb.w
  %8 = atomicrmw add ptr %i.br, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i33

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i33: ; preds = %bb.y, %bb.x
  store ptr null, ptr %i.a, align 8, !tbaa !65
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit34

_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit34: ; preds = %bb.v, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i33
  call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %i.b)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt1, %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit34
  %.2 = phi i1 [ true, %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit34 ], [ false, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt1 ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvjN7openvdb5v13_02io5Queue6StatusEESt5_BindIFMNS3_4ImplEFvjS4_EPS7_St12_PlaceholderILi1EESB_ILi2EEEEE9_M_invokeERKSt9_Any_dataOjOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !104    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %.unpack.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !77 ; 3 uses
  %.elt4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.unpack5.i.i.i.i.i.i = load i64, ptr %.elt4.i.i.i.i.i.i, align 8, !tbaa !77
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack5.i.i.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !70
  br label %_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS4_6StatusEEPS5_St12_PlaceholderILi1EESA_ILi2EEEEJjS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack.i.i.i.i.i.i to ptr
  br label %_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS4_6StatusEEPS5_St12_PlaceholderILi1EESA_ILi2EEEEJjS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit

_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS4_6StatusEEPS5_St12_PlaceholderILi1EESA_ILi2EEEEJjS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = load i32, ptr %1, align 4, !tbaa !56
  %i.m = load i32, ptr %2, align 4, !tbaa !111
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(688) %i.d, i32 noundef %i.l, i32 noundef %i.m), !inline_history !186
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvjN7openvdb5v13_02io5Queue6StatusEESt5_BindIFMNS3_4ImplEFvjS4_EPS7_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS3_6StatusEEPS4_St12_PlaceholderILi1EES9_ILi2EEEE, ptr %0, align 8, !tbaa !188
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !104
  store ptr %i.a, ptr %0, align 8, !tbaa !104
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !104
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store ptr %i.c, ptr %0, align 8, !tbaa !104
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #30
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE6lookupILb1EjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEEbRKT0_SS_PNSG_14const_accessorEbT1_SJ_(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %7 = alloca %"class.tbb::detail::d2::concurrent_hash_map<unsigned int, openvdb::v13_0::io::Queue::Status>::bucket_accessor", align 8 ; 20 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !56
  %i.b = zext i32 %i.a to i64                     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not52 = icmp eq ptr %3, null
  %i.i = zext i1 %4 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2
  %.080 = phi i64 [ %.4.jt2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ], [ %i.d, %.preheader ] ; 5 uses
  %.044 = phi ptr [ %.3.jt2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ], [ %6, %.preheader ] ; 4 uses
  %.039 = phi i64 [ %.241.jt2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ], [ 0, %.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.k = and i64 %.080, %i.b
  call void @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE15bucket_accessorC2EPSG_mb(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %0, i64 noundef %i.k, i1 noundef zeroext false)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8 ; 3 uses
  %i.o = icmp ugt ptr %i.n, inttoptr (i64 63 to ptr)
  br i1 %i.o, label %.lr.ph.i, label %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = load i32, ptr %1, align 4, !tbaa !56
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.07.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.t, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  %i.r = load i32, ptr %i.q, align 4, !tbaa !56
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %.07.i, align 8, !tbaa !120 ; 3 uses
  %i.u = icmp ugt ptr %i.t, inttoptr (i64 63 to ptr)
  br i1 %i.u, label %bb.b, label %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit, !llvm.loop !6

_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit: ; preds = %bb.c, %bb.a
  %.0.lcssa.i = phi ptr [ %i.n, %bb.a ], [ %i.t, %bb.c ] ; 2 uses
  %.not = icmp eq ptr %.0.lcssa.i, null
  br i1 %.not, label %bb.d, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.d:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit
  %.not51 = icmp eq ptr %.044, null
  br i1 %.not51, label %bb.e, label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE20allocate_node_helperIjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEESJ_RKT_SS_T0_St17integral_constantIbLb1EE.exit

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE20allocate_node_helperIjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEESJ_RKT_SS_T0_St17integral_constantIbLb1EE.exit unwind label %.loopexit.split-lp, !inline_history !189

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.w = load ptr, ptr %7, align 8, !tbaa !61     ; 3 uses
  %.not.i74 = icmp eq ptr %i.w, null
  br i1 %.not.i74, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75, label %bb.av

_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE20allocate_node_helperIjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEESJ_RKT_SS_T0_St17integral_constantIbLb1EE.exit: ; preds = %bb.e, %bb.d
  %.145 = phi ptr [ %.044, %bb.d ], [ %i.v, %bb.e ] ; 8 uses
  %i.x = load i8, ptr %i.f, align 8, !tbaa !62, !range !69, !noundef !70
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.critedge, label %.lr.ph

bb.g:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit59
  br i1 %i.an, label %.critedge, label %.lr.ph, !llvm.loop !190

.lr.ph:                                           ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE20allocate_node_helperIjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEESJ_RKT_SS_T0_St17integral_constantIbLb1EE.exit, %bb.g
  store i8 1, ptr %i.f, align 8, !tbaa !62
  %i.z = load ptr, ptr %7, align 8, !tbaa !61
  %i.aa = invoke noundef zeroext i1 @_ZN3tbb6detail2d113spin_rw_mutex7upgradeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit unwind label %.loopexit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit: ; preds = %.lr.ph
  br i1 %i.aa, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load atomic ptr, ptr %i.ac monotonic, align 8 ; 3 uses
  %i.ae = icmp ugt ptr %i.ad, inttoptr (i64 63 to ptr)
  br i1 %i.ae, label %.lr.ph.i57, label %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit59

.lr.ph.i57:                                       ; preds = %bb.h
  %i.af = load i32, ptr %1, align 4, !tbaa !56
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i57
  %.07.i58 = phi ptr [ %i.ad, %.lr.ph.i57 ], [ %i.aj, %bb.j ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i58, i64 16
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !56
  %i.ai = icmp eq i32 %i.af, %i.ah
  br i1 %i.ai, label %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit59, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %.07.i58, align 8, !tbaa !120 ; 3 uses
  %i.ak = icmp ugt ptr %i.aj, inttoptr (i64 63 to ptr)
  br i1 %i.ak, label %bb.i, label %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit59, !llvm.loop !6

_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit59: ; preds = %bb.j, %bb.i, %bb.h
  %.0.lcssa.i56 = phi ptr [ %i.ad, %bb.h ], [ %.07.i58, %bb.i ], [ %i.aj, %bb.j ] ; 3 uses
  %i.al = icmp ugt ptr %.0.lcssa.i56, inttoptr (i64 63 to ptr)
  %i.am = load i8, ptr %i.f, align 8, !tbaa !62, !range !69, !noundef !70
  %i.an = trunc nuw i8 %i.am to i1                ; 2 uses
  br i1 %i.al, label %bb.k, label %bb.g, !llvm.loop !190

bb.k:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit59
  br i1 %i.an, label %bb.l, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %7, align 8, !tbaa !61
  %i.ap = atomicrmw add ptr %i.ao, i64 3 seq_cst, align 8 ; 0 uses
  store i8 0, ptr %i.f, align 8, !tbaa !62
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

.critedge:                                        ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %bb.g, %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE20allocate_node_helperIjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEESJ_RKT_SS_T0_St17integral_constantIbLb1EE.exit
  %i.aq = load atomic i64, ptr %i.c acquire, align 8 ; 5 uses
  %.not.i = icmp eq i64 %.080, %i.aq
  br i1 %.not.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.ar = xor i64 %i.aq, %.080
  %i.as = and i64 %i.ar, %i.b
  %.not.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = add i64 %.080, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.012.i.i = phi i64 [ %i.at, %bb.n ], [ %i.av, %bb.o ] ; 2 uses
  %i.au = and i64 %.012.i.i, %i.b
  %.not13.i.i = icmp eq i64 %i.au, 0
  %i.av = shl i64 %.012.i.i, 1                    ; 2 uses
  br i1 %.not13.i.i, label %bb.o, label %bb.p, !llvm.loop !7

bb.p:                                             ; preds = %bb.o
  %i.aw = add i64 %i.av, 4294967295
  %i.ax = and i64 %i.aw, %i.b                     ; 2 uses
  %i.ay = or i64 %i.ax, 1
  %i.az = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 true) ; 2 uses
  %i.ba = xor i64 %i.az, 63
  %i.bb = lshr exact i64 -9223372036854775808, %i.az
  %i.bc = and i64 %i.bb, 9223372036854775806
  %i.bd = sub nsw i64 %i.ax, %i.bc
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ba
  %i.bf = load atomic ptr, ptr %i.be acquire, align 8
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load atomic ptr, ptr %i.bh acquire, align 8
  %i.bj = icmp eq ptr %i.bi, inttoptr (i64 3 to ptr)
  br i1 %i.bj, label %bb.q, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

bb.q:                                             ; preds = %bb.m, %bb.p, %.critedge
  %.5.ph = phi i64 [ %.080, %.critedge ], [ %i.aq, %bb.p ], [ %i.aq, %bb.m ] ; 2 uses
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.bl = atomicrmw add ptr %i.h, i64 1 seq_cst, align 8
  %i.bm = add i64 %i.bl, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bo = load atomic ptr, ptr %i.bn monotonic, align 8
  store ptr %i.bo, ptr %.145, align 8, !tbaa !120
  store atomic ptr %.145, ptr %i.bn monotonic, align 8
  %.not.i65 = icmp ult i64 %i.bm, %.5.ph
  br i1 %.not.i65, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = add i64 %.5.ph, 1
  %i.bq = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = xor i64 %i.bq, 63                       ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.br ; 2 uses
  %i.bt = load atomic ptr, ptr %i.bs acquire, align 8
  %.not12.i = icmp eq ptr %i.bt, null
  br i1 %.not12.i, label %bb.s, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.s:                                             ; preds = %bb.r
  %i.bu = cmpxchg ptr %i.bs, ptr null, ptr inttoptr (i64 2 to ptr) seq_cst seq_cst, align 8
  %i.bv = extractvalue { ptr, i1 } %i.bu, 1
  %spec.select.i = select i1 %i.bv, i64 %i.br, i64 0
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit: ; preds = %bb.b, %bb.s, %bb.r, %bb.q, %bb.k, %bb.l, %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit
  %.246 = phi ptr [ %.145, %bb.l ], [ null, %bb.s ], [ %.145, %bb.k ], [ %.044, %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit ], [ null, %bb.q ], [ null, %bb.r ], [ %.044, %bb.b ] ; 3 uses
  %.042 = phi i1 [ false, %bb.l ], [ true, %bb.s ], [ false, %bb.k ], [ false, %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit ], [ true, %bb.q ], [ true, %bb.r ], [ false, %bb.b ]
  %.140 = phi i64 [ %.039, %bb.l ], [ %spec.select.i, %bb.s ], [ %.039, %bb.k ], [ %.039, %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit ], [ 0, %bb.q ], [ 0, %bb.r ], [ %.039, %bb.b ] ; 8 uses
  %.138 = phi ptr [ %.0.lcssa.i56, %bb.l ], [ %.145, %bb.s ], [ %.0.lcssa.i56, %bb.k ], [ %.0.lcssa.i, %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit ], [ %.145, %bb.q ], [ %.145, %bb.r ], [ %.07.i, %bb.b ] ; 2 uses
  br i1 %.not52, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6, label %bb.t

bb.t:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 9 uses
  %i.bx = load atomic i64, ptr %i.bw monotonic, align 8 ; 3 uses
  br i1 %4, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.by = and i64 %i.bx, -3
  %.not.i.i66 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i66, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.bz = and i64 %i.bx, 3
  %.not.i7.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i7.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ca = atomicrmw add ptr %i.bw, i64 4 seq_cst, align 8
  %i.cb = and i64 %i.ca, 1
  %.not5.not.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not5.not.i.i, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.x

bb.x:                                             ; preds = %bb.w
  %8 = atomicrmw add ptr %i.bw, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.y

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i: ; preds = %bb.u
  %i.cc = cmpxchg ptr %i.bw, i64 %i.bx, i64 1 seq_cst seq_cst, align 8
  %i.cd = extractvalue { i64, i1 } %i.cc, 1
  br i1 %i.cd, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.y

bb.y:                                             ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.u, %bb.v, %bb.x
  call void @llvm.x86.sse2.pause()
  br label %bb.z

bb.z:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, %bb.y
  %.sroa.0.0 = phi i32 [ 2, %bb.y ], [ %i.cr, %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit ] ; 7 uses
  %i.ce = load atomic i64, ptr %i.bw monotonic, align 8 ; 3 uses
  br i1 %4, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cf = and i64 %i.ce, -3
  %.not.i.i70 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i70, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71, label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.cg = and i64 %i.ce, 3
  %.not.i7.i67 = icmp eq i64 %i.cg, 0
  br i1 %.not.i7.i67, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ch = atomicrmw add ptr %i.bw, i64 4 seq_cst, align 8
  %i.ci = and i64 %i.ch, 1
  %.not5.not.i.i68 = icmp eq i64 %i.ci, 0
  br i1 %.not5.not.i.i68, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %9 = atomicrmw add ptr %i.bw, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.ae

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71: ; preds = %bb.aa
  %i.cj = cmpxchg ptr %i.bw, i64 %i.ce, i64 1 seq_cst seq_cst, align 8
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  br i1 %i.ck, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.ae

bb.ae:                                            ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71, %bb.aa, %bb.ab, %bb.ad
  %i.cl = icmp sgt i32 %.sroa.0.0, 0
  br i1 %i.cl, label %.lr.ph.i.i.preheader, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.ae
  %xtraiter = and i32 %.sroa.0.0, 6               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.01.i.i.prol = phi i32 [ %i.cm, %.lr.ph.i.i.prol ], [ %.sroa.0.0, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cm = add nsw i32 %.01.i.i.prol, -1           ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !191

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.01.i.i.unr = phi i32 [ %.sroa.0.0, %.lr.ph.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.prol ]
  %i.cn = icmp ult i32 %.sroa.0.0, 8
  br i1 %i.cn, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01.i.i = phi i32 [ %i.co, %.lr.ph.i.i ], [ %.01.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.co = add nsw i32 %.01.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.cp = icmp sgt i32 %.01.i.i, 8
  br i1 %i.cp, label %.lr.ph.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, !llvm.loop !5

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i:       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %i.cq = icmp samesign ult i32 %.sroa.0.0, 16
  br i1 %i.cq, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, label %bb.af

_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit: ; preds = %bb.ae, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.cr = shl i32 %.sroa.0.0, 1
  br label %bb.z, !llvm.loop !192

bb.af:                                            ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.cs = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !61
  %i.ct = load i8, ptr %i.f, align 8, !tbaa !62, !range !69, !noundef !70
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cv = atomicrmw and ptr %i.cs, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %10 = atomicrmw add ptr %i.cs, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.cw = call noundef i32 @sched_yield() #24     ; 0 uses
  %i.cx = load atomic i64, ptr %i.c acquire, align 8
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0: ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.w, %bb.ac, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71
  store ptr %i.bw, ptr %3, align 8, !tbaa !61
  store i8 %i.i, ptr %i.j, align 8, !tbaa !62
  %i.cy = load ptr, ptr %7, align 8, !tbaa !61    ; 3 uses
  %.not.i73.jt0 = icmp eq ptr %i.cy, null
  br i1 %.not.i73.jt0, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0, label %bb.aj

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6: ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit
  %i.cz = load ptr, ptr %7, align 8, !tbaa !61    ; 3 uses
  %.not.i73.jt6 = icmp eq ptr %i.cz, null
  br i1 %.not.i73.jt6, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6, label %bb.ak

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2: ; preds = %bb.p, %bb.ai
  %.4.jt2 = phi i64 [ %i.cx, %bb.ai ], [ %i.aq, %bb.p ]
  %.3.jt2 = phi ptr [ %.246, %bb.ai ], [ %.145, %bb.p ]
  %.241.jt2 = phi i64 [ %.140, %bb.ai ], [ %.039, %bb.p ]
  %i.da = load ptr, ptr %7, align 8, !tbaa !61    ; 3 uses
  %.not.i73.jt2 = icmp eq ptr %i.da, null
  br i1 %.not.i73.jt2, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2, label %bb.al

bb.aj:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0
  store ptr null, ptr %7, align 8, !tbaa !61
  %i.db = load i8, ptr %i.f, align 8, !tbaa !62, !range !69, !noundef !70
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.am, label %bb.ap

bb.ak:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6
  store ptr null, ptr %7, align 8, !tbaa !61
  %i.dd = load i8, ptr %i.f, align 8, !tbaa !62, !range !69, !noundef !70
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.an, label %bb.aq

bb.al:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  store ptr null, ptr %7, align 8, !tbaa !61
  %i.df = load i8, ptr %i.f, align 8, !tbaa !62, !range !69, !noundef !70
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.ao, label %bb.ar

bb.am:                                            ; preds = %bb.aj
  %i.dh = atomicrmw and ptr %i.cy, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0

bb.an:                                            ; preds = %bb.ak
  %i.di = atomicrmw and ptr %i.cz, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6

bb.ao:                                            ; preds = %bb.al
  %i.dj = atomicrmw and ptr %i.da, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2

bb.ap:                                            ; preds = %bb.aj
  %11 = atomicrmw add ptr %i.cy, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0

bb.aq:                                            ; preds = %bb.ak
  %12 = atomicrmw add ptr %i.cz, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6

bb.ar:                                            ; preds = %bb.al
  %13 = atomicrmw add ptr %i.da, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0: ; preds = %bb.ap, %bb.am, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.138, ptr %i.dk, align 8, !tbaa !65
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.b, ptr %i.dl, align 8, !tbaa !121
  br label %.loopexit92

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6: ; preds = %bb.aq, %bb.an, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.loopexit92

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2: ; preds = %bb.ar, %bb.ao, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.a

.loopexit92:                                      ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt6, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt0
  %.not54 = icmp eq i64 %.140, 0
  br i1 %.not54, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %.loopexit92
  %i.dm = icmp ugt i64 %.140, 7
  br i1 %i.dm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dn = shl nuw i64 1, %.140
  %i.do = shl i64 16, %.140
  %i.dp = invoke noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef %i.do)
          to label %.lr.ph.i.i.i.preheader.new unwind label %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i ; 5 uses

.lr.ph.i.i.i.preheader.new:                       ; preds = %bb.at
  %unroll_iter = and i64 %i.dn, -4
  br label %.lr.ph.i.i.i

common.resume:                                    ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75, %common.resume.i
  %common.resume.op = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %lpad.phi, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75 ]
  resume { ptr, i32 } %common.resume.op

common.resume.i:                                  ; preds = %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i, %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.dr, %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i ], [ %i.ei, %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.140
  store atomic ptr null, ptr %i.dq monotonic, align 8
  br label %common.resume

_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE0_ED2Ev.exit4.i.i: ; preds = %bb.at
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.06.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.ed, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %.06.i.i.i ; 2 uses
  store i64 0, ptr %i.ds, align 8, !tbaa !122
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.dt, align 8, !tbaa !195
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %.06.i.i.i ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i64 0, ptr %i.dv, align 8, !tbaa !122
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store ptr inttoptr (i64 3 to ptr), ptr %i.dw, align 8, !tbaa !195
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %.06.i.i.i ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  store i64 0, ptr %i.dy, align 8, !tbaa !122
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  store ptr inttoptr (i64 3 to ptr), ptr %i.dz, align 8, !tbaa !195
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %.06.i.i.i ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  store i64 0, ptr %i.eb, align 8, !tbaa !122
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  store ptr inttoptr (i64 3 to ptr), ptr %i.ec, align 8, !tbaa !195
  %i.ed = add nuw i64 %.06.i.i.i, 4
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSF_6bucketEmb.exit.i, label %.lr.ph.i.i.i, !llvm.loop !193

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSF_6bucketEmb.exit.i: ; preds = %.lr.ph.i.i.i
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.140
  store atomic ptr %i.dp, ptr %i.ee release, align 8
  %i.ef = shl i64 2, %.140
  %i.eg = add i64 %i.ef, -1
  br label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit

bb.au:                                            ; preds = %bb.as
  %i.eh = invoke noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 4064)
          to label %.lr.ph.i.i10.i unwind label %_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i ; 9 uses

_ZN3tbb6detail2d010raii_guardIZNS0_2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS5_13spin_rw_mutexEE14enable_segmentEmbEUlvE2_ED2Ev.exit4.i.i: ; preds = %bb.au
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

.lr.ph.i.i10.i:                                   ; preds = %bb.au, %.lr.ph.i.i10.i
  %.06.i.i11.i = phi i64 [ %i.eo, %.lr.ph.i.i10.i ], [ 0, %bb.au ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %.06.i.i11.i ; 2 uses
  store i64 0, ptr %i.ej, align 8, !tbaa !122
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.ek, align 8, !tbaa !195
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %.06.i.i11.i ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i64 0, ptr %i.em, align 8, !tbaa !122
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store ptr inttoptr (i64 3 to ptr), ptr %i.en, align 8, !tbaa !195
  %i.eo = add nuw nsw i64 %.06.i.i11.i, 2         ; 2 uses
  %exitcond.not.i.i12.i.1 = icmp eq i64 %i.eo, 254
  br i1 %exitcond.not.i.i12.i.1, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSF_6bucketEmb.exit14.i, label %.lr.ph.i.i10.i, !llvm.loop !193

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSF_6bucketEmb.exit14.i: ; preds = %.lr.ph.i.i10.i
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 64
  store atomic ptr %i.eh, ptr %i.ep release, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.er = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  store atomic ptr %i.er, ptr %i.eq release, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.et = getelementptr inbounds nuw i8, ptr %i.eh, i64 96
  store atomic ptr %i.et, ptr %i.es release, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eh, i64 224
  store atomic ptr %i.ev, ptr %i.eu release, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eh, i64 480
  store atomic ptr %i.ex, ptr %i.ew release, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eh, i64 992
  store atomic ptr %i.ez, ptr %i.ey release, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eh, i64 2016
  store atomic ptr %i.fb, ptr %i.fa release, align 8
  br label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit: ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSF_6bucketEmb.exit.i, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSF_6bucketEmb.exit14.i
  %.039.i = phi i64 [ %i.eg, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSF_6bucketEmb.exit.i ], [ 255, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE12init_bucketsEPNSF_6bucketEmb.exit14.i ]
  store atomic i64 %.039.i, ptr %i.c release, align 8
  br label %bb.ay

bb.av:                                            ; preds = %bb.f
  store ptr null, ptr %7, align 8, !tbaa !61
  %i.fc = load i8, ptr %i.f, align 8, !tbaa !62, !range !69, !noundef !70
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fe = atomicrmw and ptr %i.w, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75

bb.ax:                                            ; preds = %bb.av
  %14 = atomicrmw add ptr %i.w, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75: ; preds = %bb.f, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

bb.ay:                                            ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE14enable_segmentEmb.exit, %.loopexit92
  %.not55 = icmp eq ptr %.246, null
  br i1 %.not55, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %.246)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  ret i1 %.042
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE31allocate_node_default_constructIjEEPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERKT_PKS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 24) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !122
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i32, ptr %1, align 4, !tbaa !56
  store i32 %i.d, ptr %i.c, align 8, !tbaa !196
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !68
  ret ptr %i.a
}

declare noundef zeroext i1 @_ZN3tbb6detail2r16attachERNS0_2d115task_arena_baseE(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #13

declare void @_ZN3tbb6detail2r110initializeERNS0_2d115task_arena_baseE(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #13

declare void @_ZN3tbb6detail2r17enqueueERNS0_2d14taskEPNS2_15task_arena_baseE(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef) local_unnamed_addr #13

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN3tbb6detail2d112enqueue_taskIZN7openvdb5v13_02io5Queue4Impl7enqueueERNS5_12_GLOBAL__N_110OutputTaskEEUlvE_ED2Ev(ptr noundef nonnull align 64 dead_on_return(216) dereferenceable(216) initializes((0, 8), (72, 80), (160, 168)) %0) unnamed_addr #21 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d112enqueue_taskIZN7openvdb5v13_02io5Queue4Impl7enqueueERNS5_12_GLOBAL__N_110OutputTaskEEUlvE_EE, i64 16), ptr %0, align 64, !tbaa !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN7openvdb5v13_02io12_GLOBAL__N_110OutputTaskD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.a) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN3tbb6detail2d112enqueue_taskIZN7openvdb5v13_02io5Queue4Impl7enqueueERNS5_12_GLOBAL__N_110OutputTaskEEUlvE_ED0Ev(ptr noundef nonnull align 64 dereferenceable(216) initializes((0, 8), (72, 80), (160, 168)) %0) unnamed_addr #21 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d112enqueue_taskIZN7openvdb5v13_02io5Queue4Impl7enqueueERNS5_12_GLOBAL__N_110OutputTaskEEUlvE_EE, i64 16), ptr %0, align 64, !tbaa !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN7openvdb5v13_02io12_GLOBAL__N_110OutputTaskD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.a) #24, !inline_history !197
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 64) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef ptr @_ZN3tbb6detail2d112enqueue_taskIZN7openvdb5v13_02io5Queue4Impl7enqueueERNS5_12_GLOBAL__N_110OutputTaskEEUlvE_E7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZNK7openvdb5v13_02io12_GLOBAL__N_110OutputTask7executeEv(ptr noundef nonnull align 8 dereferenceable(144) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i = load i64, ptr %i.b, align 64, !tbaa !108
  %i.c = inttoptr i64 %.val.i to ptr
  %i.d = load ptr, ptr %0, align 64, !tbaa !91
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 64 dead_on_return(216) dereferenceable(216) %0) #24, !inline_history !198
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 64 dereferenceable(216) %0, i64 noundef 256, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef ptr @_ZN3tbb6detail2d112enqueue_taskIZN7openvdb5v13_02io5Queue4Impl7enqueueERNS5_12_GLOBAL__N_110OutputTaskEEUlvE_E6cancelERNS1_14execution_dataE(ptr nofree nonnull readnone align 64 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN3tbb6detail2r117assertion_failureEPKciS3_S3_(ptr noundef nonnull @__func__._ZN3tbb6detail2d112enqueue_taskIZN7openvdb5v13_02io5Queue4Impl7enqueueERNS5_12_GLOBAL__N_110OutputTaskEEUlvE_E6cancelERNS1_14execution_dataE, i32 noundef 222, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17)
  ret ptr null
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #13

declare void @_ZN3tbb6detail2r117assertion_failureEPKciS3_S3_(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

declare void @_ZN3tbb6detail2r19terminateERNS0_2d115task_arena_baseE(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_07MetaMapD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7openvdb5v13_07MetaMapE, i64 16), ptr %0, align 8, !tbaa !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08MetadataEESt4lessIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #31
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08MetadataEESt4lessIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_07MetaMapD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7openvdb5v13_07MetaMapE, i64 16), ptr %0, align 8, !tbaa !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN7openvdb5v13_07MetaMapD2Ev.exit unwind label %bb.b, !inline_history !109

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #31, !inline_history !109
  unreachable

_ZN7openvdb5v13_07MetaMapD2Ev.exit:               ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit ], [ %1, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !88
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !89
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !91
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24, !inline_history !199
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !91
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24, !inline_history !199
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !77
  %.not.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !56
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZNSt12__shared_ptrIN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !92

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !102  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
end_hunk_2
