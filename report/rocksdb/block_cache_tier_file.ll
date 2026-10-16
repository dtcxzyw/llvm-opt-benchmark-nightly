Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/block_cache_tier_file?download=true
inline.NumInlined: 1139
inline.NumDeleted: 600
begin_hunk_0_@_ZN7rocksdb14BlockCacheFileD0Ev:bb.a

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i.i, align 8, !tbaa !193 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #21, !inline_history !240
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb9BlockInfoESaIS3_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZNSt7__cxx1110_List_baseIPN7rocksdb9BlockInfoESaIS3_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN7rocksdb14BlockCacheFileD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIPN7rocksdb9BlockInfoESaIS3_EED2Ev.exit.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !58
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21, !inline_history !240
  br label %_ZN7rocksdb14BlockCacheFileD2Ev.exit

_ZN7rocksdb14BlockCacheFileD2Ev.exit:             ; preds = %_ZNSt7__cxx1110_List_baseIPN7rocksdb9BlockInfoESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN7rocksdb4port7RWMutexD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.j) #20, !inline_history !240
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb14BlockCacheFile6AppendERKNS_5SliceES3_PNS_19LogicalBlockAddressE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb14BlockCacheFile4ReadERKNS_19LogicalBlockAddressEPNS_5SliceES5_Pc(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb14BlockCacheFile3AddEPNS_9BlockInfoE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  tail call void @_ZN7rocksdb4port7RWMutex9WriteLockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
  %i.b = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !347
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !348
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !348
  invoke void @_ZN7rocksdb4port7RWMutex11WriteUnlockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_ZN7rocksdb9WriteLockD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #23
  unreachable

_ZN7rocksdb9WriteLockD2Ev.exit:                   ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7rocksdb4port7RWMutex11WriteUnlockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_ZN7rocksdb9WriteLockD2Ev.exit2 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #23
  unreachable

_ZN7rocksdb9WriteLockD2Ev.exit2:                  ; preds = %bb.d
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb21RandomAccessCacheFileD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7rocksdb21RandomAccessCacheFileE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7rocksdb6LoggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !139
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !140
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !349
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !349
  br label %_ZNSt12__shared_ptrIN7rocksdb6LoggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !98
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN7rocksdb6LoggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !141

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt12__shared_ptrIN7rocksdb6LoggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb6LoggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !132  ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7rocksdb22RandomAccessFileReaderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb22RandomAccessFileReaderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb22RandomAccessFileReaderEEclEPS1_.exit.i: ; preds = %_ZNSt12__shared_ptrIN7rocksdb6LoggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  tail call void @_ZN7rocksdb22RandomAccessFileReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(202) dereferenceable(202) %i.s) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 208) #21
  br label %_ZNSt10unique_ptrIN7rocksdb22RandomAccessFileReaderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb22RandomAccessFileReaderESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7rocksdb6LoggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN7rocksdb22RandomAccessFileReaderEEclEPS1_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7rocksdb14BlockCacheFileE, i64 16), ptr %0, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !193  ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.u, %i.t
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb9BlockInfoESaIS3_EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN7rocksdb22RandomAccessFileReaderESt14default_deleteIS1_EED2Ev.exit, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.u, %_ZNSt10unique_ptrIN7rocksdb22RandomAccessFileReaderESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.v = load ptr, ptr %.09.i.i.i, align 8, !tbaa !193 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #21, !inline_history !240
  %.not.i.i.i1 = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i.i1, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb9BlockInfoESaIS3_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZNSt7__cxx1110_List_baseIPN7rocksdb9BlockInfoESaIS3_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %_ZNSt10unique_ptrIN7rocksdb22RandomAccessFileReaderESt14default_deleteIS1_EED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !78   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN7rocksdb14BlockCacheFileD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIPN7rocksdb9BlockInfoESaIS3_EED2Ev.exit.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !58
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #21, !inline_history !240
  br label %_ZN7rocksdb14BlockCacheFileD2Ev.exit

_ZN7rocksdb14BlockCacheFileD2Ev.exit:             ; preds = %_ZNSt7__cxx1110_List_baseIPN7rocksdb9BlockInfoESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN7rocksdb4port7RWMutexD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ac) #20, !inline_history !240
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb21RandomAccessCacheFileD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7rocksdb21RandomAccessCacheFileD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb18WriteableCacheFile4ReadERKNS_19LogicalBlockAddressEPNS_5SliceES5_Pc(ptr noundef nonnull align 8 dereferenceable(273) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  tail call void @_ZN7rocksdb4port7RWMutex8ReadLockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = load i8, ptr %i.b, align 8, !tbaa !186, !range !64, !noundef !65
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !350
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !350
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef zeroext i1 @_ZN7rocksdb21RandomAccessCacheFile4ReadERKNS_19LogicalBlockAddressEPNS_5SliceES5_Pc(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
          to label %_ZN7rocksdb18WriteableCacheFile10ReadBufferERKNS_19LogicalBlockAddressEPNS_5SliceES5_Pc.exit unwind label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %_ZN7rocksdb18WriteableCacheFile10ReadBufferERKNS_19LogicalBlockAddressEPc.exit.i, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7rocksdb4port7RWMutex10ReadUnlockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_ZN7rocksdb8ReadLockD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #23
  unreachable

_ZN7rocksdb8ReadLockD2Ev.exit:                    ; preds = %bb.d
  resume { ptr, i32 } %i.k

.critedge:                                        ; preds = %bb.a, %bb.b
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i32, ptr %5, align 4, !tbaa !162      ; 2 uses
  %7 = zext i32 %6 to i64                         ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %9 = load i32, ptr %8, align 4, !tbaa !161      ; 2 uses
  %10 = zext i32 %9 to i64                        ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %12 = load ptr, ptr %11, align 8, !tbaa !188
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 104
  %14 = load i64, ptr %13, align 8, !tbaa !205    ; 2 uses
  %15 = udiv i64 %10, %14                         ; 3 uses
  %16 = urem i64 %10, %14                         ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %.not29.i.i = icmp eq i32 %6, 0
  br i1 %.not29.i.i, label %.loopexit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.critedge
  %19 = load ptr, ptr %18, align 8, !tbaa !108
  %20 = load ptr, ptr %17, align 8, !tbaa !109    ; 2 uses
  %21 = ptrtoint ptr %19 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = ashr exact i64 %23, 3
  %25 = icmp ult i64 %15, %24
  br i1 %25, label %26, label %_ZN7rocksdb18WriteableCacheFile10ReadBufferERKNS_19LogicalBlockAddressEPc.exit.i

26:                                               ; preds = %.lr.ph.preheader.i.i
  %27 = getelementptr inbounds nuw [8 x i8], ptr %20, i64 %15
  %28 = load ptr, ptr %27, align 8, !tbaa !111    ; 2 uses
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 24
  %30 = load i64, ptr %29, align 8, !tbaa !120
  %31 = sub i64 %30, %16
  %spec.select.peel.i.i = tail call i64 @llvm.umin.i64(i64 %7, i64 %31) ; 3 uses
  %32 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %33 = load ptr, ptr %32, align 8, !tbaa !77
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %34, i64 %spec.select.peel.i.i, i1 false)
  %35 = sub nuw nsw i64 %7, %spec.select.peel.i.i ; 2 uses
  %.not.peel.i.i = icmp eq i64 %35, 0
  br i1 %.not.peel.i.i, label %.loopexit.i, label %.lr.ph.peel.next.i.i

.lr.ph.peel.next.i.i:                             ; preds = %26
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 %spec.select.peel.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %44, %.lr.ph.peel.next.i.i
  %.033.in.i.i = phi i64 [ %.033.i.i, %44 ], [ %15, %.lr.ph.peel.next.i.i ]
  %.02631.i.i = phi i64 [ %51, %44 ], [ %35, %.lr.ph.peel.next.i.i ] ; 2 uses
  %.02730.i.i = phi ptr [ %52, %44 ], [ %36, %.lr.ph.peel.next.i.i ] ; 2 uses
  %.033.i.i = add nuw i64 %.033.in.i.i, 1         ; 3 uses
  %37 = load ptr, ptr %18, align 8, !tbaa !108
  %38 = load ptr, ptr %17, align 8, !tbaa !109    ; 2 uses
  %39 = ptrtoint ptr %37 to i64
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %39, %40
  %42 = ashr exact i64 %41, 3
  %43 = icmp ult i64 %.033.i.i, %42
  br i1 %43, label %44, label %_ZN7rocksdb18WriteableCacheFile10ReadBufferERKNS_19LogicalBlockAddressEPc.exit.loopexit.i

44:                                               ; preds = %.lr.ph.i.i
  %45 = getelementptr inbounds nuw [8 x i8], ptr %38, i64 %.033.i.i
  %46 = load ptr, ptr %45, align 8, !tbaa !111    ; 2 uses
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 24
  %48 = load i64, ptr %47, align 8, !tbaa !120
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %.02631.i.i, i64 %48) ; 3 uses
  %49 = getelementptr inbounds nuw i8, ptr %46, i64 8
  %50 = load ptr, ptr %49, align 8, !tbaa !77
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02730.i.i, ptr align 1 %50, i64 %spec.select.i.i, i1 false)
  %51 = sub nuw nsw i64 %.02631.i.i, %spec.select.i.i ; 2 uses
  %52 = getelementptr inbounds nuw i8, ptr %.02730.i.i, i64 %spec.select.i.i
  %.not.i.i = icmp eq i64 %51, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !7

_ZN7rocksdb18WriteableCacheFile10ReadBufferERKNS_19LogicalBlockAddressEPc.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load i32, ptr %8, align 4, !tbaa !161
  br label %_ZN7rocksdb18WriteableCacheFile10ReadBufferERKNS_19LogicalBlockAddressEPc.exit.i

_ZN7rocksdb18WriteableCacheFile10ReadBufferERKNS_19LogicalBlockAddressEPc.exit.i: ; preds = %_ZN7rocksdb18WriteableCacheFile10ReadBufferERKNS_19LogicalBlockAddressEPc.exit.loopexit.i, %.lr.ph.preheader.i.i
  %53 = phi i32 [ %.pre.i, %_ZN7rocksdb18WriteableCacheFile10ReadBufferERKNS_19LogicalBlockAddressEPc.exit.loopexit.i ], [ %9, %.lr.ph.preheader.i.i ]
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %56 = load i32, ptr %55, align 8, !tbaa !97
  invoke void (ptr, ptr, ...) @_ZN7rocksdb5ErrorERKSt10shared_ptrINS_6LoggerEEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull @.str.17, i32 noundef %56, i32 noundef %53)
          to label %_ZN7rocksdb18WriteableCacheFile10ReadBufferERKNS_19LogicalBlockAddressEPNS_5SliceES5_Pc.exit unwind label %bb.d

.loopexit.i:                                      ; preds = %44, %26, %.critedge
  %i.n = invoke noundef zeroext i1 @_ZN7rocksdb21RandomAccessCacheFile8ParseRecERKNS_19LogicalBlockAddressEPNS_5SliceES5_Pc(ptr noundef nonnull align 8 dereferenceable(273) %0, ptr noundef nonnull readonly align 4 dereferenceable(12) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
          to label %_ZN7rocksdb18WriteableCacheFile10ReadBufferERKNS_19LogicalBlockAddressEPNS_5SliceES5_Pc.exit unwind label %bb.d

_ZN7rocksdb18WriteableCacheFile10ReadBufferERKNS_19LogicalBlockAddressEPNS_5SliceES5_Pc.exit: ; preds = %_ZN7rocksdb18WriteableCacheFile10ReadBufferERKNS_19LogicalBlockAddressEPc.exit.i, %.loopexit.i, %bb.c
  %.0 = phi i1 [ %i.j, %bb.c ], [ false, %_ZN7rocksdb18WriteableCacheFile10ReadBufferERKNS_19LogicalBlockAddressEPc.exit.i ], [ %i.n, %.loopexit.i ]
  invoke void @_ZN7rocksdb4port7RWMutex10ReadUnlockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_ZN7rocksdb8ReadLockD2Ev.exit13 unwind label %bb.f

bb.f:                                             ; preds = %_ZN7rocksdb18WriteableCacheFile10ReadBufferERKNS_19LogicalBlockAddressEPNS_5SliceES5_Pc.exit
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #23
  unreachable

_ZN7rocksdb8ReadLockD2Ev.exit13:                  ; preds = %_ZN7rocksdb18WriteableCacheFile10ReadBufferERKNS_19LogicalBlockAddressEPNS_5SliceES5_Pc.exit
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb14ThreadedWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7rocksdb14ThreadedWriterE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !231  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i

bb.b:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, !llvm.loop !8

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i:          ; preds = %bb.a, %bb.b
  %.05.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !105
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %bb.b, %bb.a
  %.not.i.i1.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !232
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.j) #21
  br label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit

_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7rocksdb12BoundedQueueINS_14ThreadedWriter2IOEEE, i64 16), ptr %i.k, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !193  ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not8.i.i.i, label %_ZN7rocksdb12BoundedQueueINS_14ThreadedWriter2IOEED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit, %_ZSt10destroy_atIN7rocksdb14ThreadedWriter2IOEEvPT_.exit.i.i.i
  %.09.i.i.i = phi ptr [ %i.n, %_ZSt10destroy_atIN7rocksdb14ThreadedWriter2IOEEvPT_.exit.i.i.i ], [ %i.m, %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit ] ; 4 uses
  %i.n = load ptr, ptr %.09.i.i.i, align 8, !tbaa !193 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !213  ; 2 uses
  %.not.i.i.i.i.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i1, label %_ZSt10destroy_atIN7rocksdb14ThreadedWriter2IOEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 48 ; 2 uses
  %i.r = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i32 noundef 3)
          to label %_ZSt10destroy_atIN7rocksdb14ThreadedWriter2IOEEvPT_.exit.i.i.i unwind label %bb.f, !inline_history !241 ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #23, !inline_history !241
  unreachable

_ZSt10destroy_atIN7rocksdb14ThreadedWriter2IOEEvPT_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 80) #21, !inline_history !241
  %.not.i.i.i2 = icmp eq ptr %i.n, %i.l
  br i1 %.not.i.i.i2, label %_ZN7rocksdb12BoundedQueueINS_14ThreadedWriter2IOEED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !9

_ZN7rocksdb12BoundedQueueINS_14ThreadedWriter2IOEED2Ev.exit: ; preds = %_ZSt10destroy_atIN7rocksdb14ThreadedWriter2IOEEvPT_.exit.i.i.i, %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN7rocksdb4port7CondVarD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.u) #20, !inline_history !241
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN7rocksdb4port5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.v) #20, !inline_history !241
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb14ThreadedWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7rocksdb14ThreadedWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #21
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

declare void @_ZN7rocksdb10EnvOptionsC2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !57   ; 7 uses
  %i.e = add i64 %i.d, %i.b                       ; 5 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !78     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  %.pre = load ptr, ptr %2, align 8, !tbaa !78    ; 4 uses
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %.pre, %i.m
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.o = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.o)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.p = load i64, ptr %i.m, align 8, !tbaa !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.q = phi i64 [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.q
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !56
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !78   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !57   ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.t, ptr %0, align 8, !tbaa !78
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !58
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !57
  store ptr %i.u, ptr %i.r, align 8, !tbaa !78
  store i64 0, ptr %i.ab, align 8, !tbaa !57
  store i8 0, ptr %i.u, align 8, !tbaa !58
  br label %bb.l

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.ae = sub i64 9223372036854775807, %i.b
  %i.af = icmp ult i64 %i.ae, %i.d
  br i1 %i.af, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

end_hunk_0
