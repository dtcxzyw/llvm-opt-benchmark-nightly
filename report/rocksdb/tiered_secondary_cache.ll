Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/tiered_secondary_cache?download=true
inline.NumInlined: 421
inline.NumDeleted: 262
begin_hunk_0_@_ZN7rocksdb20TieredSecondaryCache20MaybeInsertAndCreateERKNS_5SliceENS_15CompressionTypeENS_9CacheTierEPNS_5Cache13CreateContextEPNS_15MemoryAllocatorEPPvPm:bb.a
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 176
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(33) %i.n, i32 noundef 33, i64 noundef 1), !inline_history !32
  br label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 3 uses
  %.not.i25 = icmp eq ptr %i.s, null
  br i1 %.not.i25, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(33) %i.s, i32 noundef 34, i64 noundef 1), !inline_history !32
  br label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit: ; preds = %bb.e, %bb.d, %bb.c, %_ZN7rocksdb6StatusD2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37
  call void %i.z(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %i.ab, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb20TieredSecondaryCache6LookupERKNS_5SliceEPKNS_5Cache15CacheItemHelperEPNS4_13CreateContextEbbPNS_10StatisticsERb(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.2") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) initializes((0, 1)) %8) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %9 = alloca %"class.std::unique_ptr.2", align 8 ; 10 uses
  %10 = alloca %"struct.rocksdb::TieredSecondaryCache::CreateContext", align 8 ; 13 uses
  %11 = alloca %"class.std::unique_ptr.2", align 8 ; 7 uses
  %i.b = zext i1 %6 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i8 0, ptr %i.a, align 1, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  store i8 1, ptr %8, align 1, !tbaa !38
  %i.h = load ptr, ptr %9, align 8                ; 2 uses
  %.not67 = icmp eq ptr %i.h, null
  br i1 %.not67, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.h to i64
  store i64 %i.i, ptr %0, align 8, !tbaa !41
  br label %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit50

bb.c:                                             ; preds = %bb.a
  %i.j = load atomic i8, ptr @_ZGVZN7rocksdb20TieredSecondaryCache9GetHelperEvE12basic_helper acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.f, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7rocksdb20TieredSecondaryCache9GetHelperEvE12basic_helper) #16
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @_ZN7rocksdb20TieredSecondaryCache10NoopDeleteEPvPNS_15MemoryAllocatorE, ptr @_ZZN7rocksdb20TieredSecondaryCache9GetHelperEvE12basic_helper, align 8, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN7rocksdb20TieredSecondaryCache9GetHelperEvE12basic_helper, i64 8), i8 0, i64 24, i1 false)
  store i32 13, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7rocksdb20TieredSecondaryCache9GetHelperEvE12basic_helper, i64 32), align 8, !tbaa !44
  store ptr @_ZZN7rocksdb20TieredSecondaryCache9GetHelperEvE12basic_helper, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7rocksdb20TieredSecondaryCache9GetHelperEvE12basic_helper, i64 40), align 8, !tbaa !45
  %i.m = call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZN7rocksdb20TieredSecondaryCache9GetHelperEvE12basic_helper) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7rocksdb20TieredSecondaryCache9GetHelperEvE12basic_helper) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.n = load atomic i8, ptr @_ZGVZN7rocksdb20TieredSecondaryCache9GetHelperEvE30maybe_insert_and_create_helper acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %_ZN7rocksdb20TieredSecondaryCache9GetHelperEv.exit, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7rocksdb20TieredSecondaryCache9GetHelperEvE30maybe_insert_and_create_helper) #16
  %.not1.i = icmp eq i32 %i.p, 0
  br i1 %.not1.i, label %_ZN7rocksdb20TieredSecondaryCache9GetHelperEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr @_ZN7rocksdb20TieredSecondaryCache10NoopDeleteEPvPNS_15MemoryAllocatorE, ptr @_ZZN7rocksdb20TieredSecondaryCache9GetHelperEvE30maybe_insert_and_create_helper, align 8, !tbaa !43
  store ptr @_ZN7rocksdb20TieredSecondaryCache8ZeroSizeEPv, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7rocksdb20TieredSecondaryCache9GetHelperEvE30maybe_insert_and_create_helper, i64 8), align 8, !tbaa !46
  store ptr @_ZN7rocksdb20TieredSecondaryCache10NoopSaveToEPvmmPc, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7rocksdb20TieredSecondaryCache9GetHelperEvE30maybe_insert_and_create_helper, i64 16), align 8, !tbaa !47
  store ptr @_ZN7rocksdb20TieredSecondaryCache20MaybeInsertAndCreateERKNS_5SliceENS_15CompressionTypeENS_9CacheTierEPNS_5Cache13CreateContextEPNS_15MemoryAllocatorEPPvPm, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7rocksdb20TieredSecondaryCache9GetHelperEvE30maybe_insert_and_create_helper, i64 24), align 8, !tbaa !34
  store i32 13, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7rocksdb20TieredSecondaryCache9GetHelperEvE30maybe_insert_and_create_helper, i64 32), align 8, !tbaa !44
  store ptr @_ZZN7rocksdb20TieredSecondaryCache9GetHelperEvE12basic_helper, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7rocksdb20TieredSecondaryCache9GetHelperEvE30maybe_insert_and_create_helper, i64 40), align 8, !tbaa !45
  %i.q = call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZN7rocksdb20TieredSecondaryCache9GetHelperEvE30maybe_insert_and_create_helper) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7rocksdb20TieredSecondaryCache9GetHelperEvE30maybe_insert_and_create_helper) #16
  br label %_ZN7rocksdb20TieredSecondaryCache9GetHelperEv.exit

_ZN7rocksdb20TieredSecondaryCache9GetHelperEv.exit: ; preds = %bb.h, %bb.g, %bb.f
  br i1 %5, label %bb.i, label %bb.r

bb.i:                                             ; preds = %_ZN7rocksdb20TieredSecondaryCache9GetHelperEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store ptr %2, ptr %10, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 %i.b, ptr %i.s, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %3, ptr %i.t, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %4, ptr %i.u, align 8, !tbaa !37
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr %7, ptr %i.x, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39   ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @_ZZN7rocksdb20TieredSecondaryCache9GetHelperEvE30maybe_insert_and_create_helper, ptr noundef nonnull %10, i1 noundef zeroext true, i1 noundef zeroext %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %bb.x, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.af, align 8, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !51
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #16, !inline_history !52
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #16, !inline_history !52
  br label %bb.x

bb.m:                                             ; preds = %bb.k
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !54
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i = phi i32 [ %i.ai, %bb.n ], [ %i.as, %bb.o ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.at, label %bb.p, label %bb.x, !prof !55

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #16
  br label %bb.x

bb.q:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb20TieredSecondaryCache13CreateContextD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.w

bb.r:                                             ; preds = %_ZN7rocksdb20TieredSecondaryCache9GetHelperEv.exit
  %i.av = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #18
          to label %bb.s unwind label %bb.u       ; 14 uses

bb.s:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.aw, i8 0, i64 88, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7rocksdb20TieredSecondaryCache12ResultHandleE, i64 16), ptr %i.av, align 8, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  store ptr %2, ptr %i.az, align 8, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i8 %i.b, ptr %i.ba, align 8, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr %3, ptr %i.bb, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store ptr %4, ptr %i.bc, align 8, !tbaa !37
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  store ptr %7, ptr %i.bf, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !39 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !27
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 168
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @_ZZN7rocksdb20TieredSecondaryCache9GetHelperEvE30maybe_insert_and_create_helper, ptr noundef nonnull %i.az, i1 noundef zeroext false, i1 noundef zeroext %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.t unwind label %_ZNSt10unique_ptrIN7rocksdb20TieredSecondaryCache12ResultHandleESt14default_deleteIS2_EED2Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr %11, align 8, !tbaa !41   ; 2 uses
  store ptr null, ptr %11, align 8, !tbaa !41
  %i.bm = load ptr, ptr %i.ax, align 8, !tbaa !41 ; 3 uses
  store ptr %i.bl, ptr %i.ax, align 8, !tbaa !41
  %.not.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit, label %_ZN7rocksdb20TieredSecondaryCache12ResultHandle14SetInnerHandleEOSt10unique_ptrINS_26SecondaryCacheResultHandleESt14default_deleteIS3_EE.exit

_ZN7rocksdb20TieredSecondaryCache12ResultHandle14SetInnerHandleEOSt10unique_ptrINS_26SecondaryCacheResultHandleESt14default_deleteIS3_EE.exit: ; preds = %bb.t
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !27
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bm) #16, !inline_history !58
  %.pr = load ptr, ptr %11, align 8, !tbaa !41    ; 3 uses
  %.not.i39 = icmp eq ptr %.pr, null
  br i1 %.not.i39, label %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exitthread-pre-split, label %_ZNKSt14default_deleteIN7rocksdb26SecondaryCacheResultHandleEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb26SecondaryCacheResultHandleEEclEPS1_.exit.i: ; preds = %_ZN7rocksdb20TieredSecondaryCache12ResultHandle14SetInnerHandleEOSt10unique_ptrINS_26SecondaryCacheResultHandleESt14default_deleteIS3_EE.exit
  %i.bq = load ptr, ptr %.pr, align 8, !tbaa !27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %.pr) #16, !inline_history !59
  br label %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exitthread-pre-split

_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exitthread-pre-split: ; preds = %_ZNKSt14default_deleteIN7rocksdb26SecondaryCacheResultHandleEEclEPS1_.exit.i, %_ZN7rocksdb20TieredSecondaryCache12ResultHandle14SetInnerHandleEOSt10unique_ptrINS_26SecondaryCacheResultHandleESt14default_deleteIS3_EE.exit
  %.pr64 = load ptr, ptr %i.ax, align 8, !tbaa !41
  br label %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.t, %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exitthread-pre-split
  %i.bt = phi ptr [ %.pr64, %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exitthread-pre-split ], [ %i.bl, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %_ZNSt10unique_ptrIN7rocksdb20TieredSecondaryCache12ResultHandleESt14default_deleteIS2_EED2Ev.exit44.sink.split, label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

_ZNSt10unique_ptrIN7rocksdb20TieredSecondaryCache12ResultHandleESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.s
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %i.bw = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(97) %i.av) #16, !inline_history !60
  br label %bb.w

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit
  %i.bz = load ptr, ptr %9, align 8, !tbaa !41    ; 2 uses
  store ptr %i.av, ptr %9, align 8, !tbaa !41
  %.not.i.i41 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i41, label %_ZNSt10unique_ptrIN7rocksdb20TieredSecondaryCache12ResultHandleESt14default_deleteIS2_EED2Ev.exit44, label %_ZNSt10unique_ptrIN7rocksdb20TieredSecondaryCache12ResultHandleESt14default_deleteIS2_EED2Ev.exit44.sink.split

_ZNSt10unique_ptrIN7rocksdb20TieredSecondaryCache12ResultHandleESt14default_deleteIS2_EED2Ev.exit44.sink.split: ; preds = %bb.v, %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit
  %.sink74 = phi ptr [ %i.av, %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit ], [ %i.bz, %bb.v ] ; 2 uses
  %i.ca = load ptr, ptr %.sink74, align 8, !tbaa !27
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %.sink74) #16
  br label %_ZNSt10unique_ptrIN7rocksdb20TieredSecondaryCache12ResultHandleESt14default_deleteIS2_EED2Ev.exit44

_ZNSt10unique_ptrIN7rocksdb20TieredSecondaryCache12ResultHandleESt14default_deleteIS2_EED2Ev.exit44: ; preds = %_ZNSt10unique_ptrIN7rocksdb20TieredSecondaryCache12ResultHandleESt14default_deleteIS2_EED2Ev.exit44.sink.split, %bb.v
  %i.cd = load i64, ptr %9, align 8, !tbaa !41
  store i64 %i.cd, ptr %0, align 8, !tbaa !41
  br label %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit50

bb.w:                                             ; preds = %bb.u, %_ZNSt10unique_ptrIN7rocksdb20TieredSecondaryCache12ResultHandleESt14default_deleteIS2_EED2Ev.exit, %bb.q
  %.pn37 = phi { ptr, i32 } [ %i.au, %bb.q ], [ %i.bu, %bb.u ], [ %i.bv, %_ZNSt10unique_ptrIN7rocksdb20TieredSecondaryCache12ResultHandleESt14default_deleteIS2_EED2Ev.exit ]
  %i.ce = load ptr, ptr %9, align 8, !tbaa !41    ; 3 uses
  %.not.i45 = icmp eq ptr %i.ce, null
  br i1 %.not.i45, label %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit47, label %_ZNKSt14default_deleteIN7rocksdb26SecondaryCacheResultHandleEEclEPS1_.exit.i46

_ZNKSt14default_deleteIN7rocksdb26SecondaryCacheResultHandleEEclEPS1_.exit.i46: ; preds = %bb.w
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !27
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.ce) #16, !inline_history !59
  br label %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit47

_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit47: ; preds = %bb.w, %_ZNKSt14default_deleteIN7rocksdb26SecondaryCacheResultHandleEEclEPS1_.exit.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  resume { ptr, i32 } %.pn37

bb.x:                                             ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %.pr65 = load ptr, ptr %9, align 8, !tbaa !41   ; 3 uses
  %.not.i48 = icmp eq ptr %.pr65, null
  br i1 %.not.i48, label %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit50, label %_ZNKSt14default_deleteIN7rocksdb26SecondaryCacheResultHandleEEclEPS1_.exit.i49

_ZNKSt14default_deleteIN7rocksdb26SecondaryCacheResultHandleEEclEPS1_.exit.i49: ; preds = %bb.x
  %i.ci = load ptr, ptr %.pr65, align 8, !tbaa !27
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %.pr65) #16, !inline_history !59
  br label %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit50

_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit50: ; preds = %bb.b, %_ZNSt10unique_ptrIN7rocksdb20TieredSecondaryCache12ResultHandleESt14default_deleteIS2_EED2Ev.exit44, %bb.x, %_ZNKSt14default_deleteIN7rocksdb26SecondaryCacheResultHandleEEclEPS1_.exit.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb20TieredSecondaryCache13CreateContextD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7rocksdb26SecondaryCacheResultHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !51
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !61
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !61
  br label %_ZNSt12__shared_ptrIN7rocksdb26SecondaryCacheResultHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !54
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN7rocksdb26SecondaryCacheResultHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt12__shared_ptrIN7rocksdb26SecondaryCacheResultHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb26SecondaryCacheResultHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb20TieredSecondaryCache7WaitAllESt6vectorIPNS_26SecondaryCacheResultHandleESaIS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef readonly align 8 captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.21", align 8    ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !66     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge.thread, label %_ZNSt12_Vector_baseIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE11_M_allocateEm.exit.i

._crit_edge.thread:                               ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39
  br label %.thread

_ZNSt12_Vector_baseIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18
          to label %.lr.ph.preheader unwind label %bb.h ; 3 uses

.lr.ph.preheader:                                 ; preds = %_ZNSt12_Vector_baseIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE11_M_allocateEm.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN7rocksdb20TieredSecondaryCache12ResultHandleESaIS3_EE9push_backERKS3_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 4 uses
  %i.n = ptrtoint ptr %.sroa.12.1 to i64
  %i.o = ptrtoint ptr %.sroa.053.2 to i64         ; 5 uses
  %i.p = sub i64 %i.n, %i.o                       ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %.sroa.12.1, %.sroa.053.2
  br i1 %.not.i.i.i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %._crit_edge.thread, %._crit_edge
  %i.q = phi i64 [ 0, %._crit_edge.thread ], [ %i.o, %._crit_edge ]
  %i.r = phi ptr [ %i.i, %._crit_edge.thread ], [ %i.m, %._crit_edge ]
  %.sroa.13.0.lcssa175 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.13.2, %._crit_edge ]
  %.sroa.9.0.lcssa173 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.9.1, %._crit_edge ]
  %.sroa.046.0.lcssa171 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.046.2, %._crit_edge ]
  %.sroa.19.0.lcssa169 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.19.2, %._crit_edge ]
  %.sroa.053.0.lcssa167 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.053.2, %._crit_edge ]
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.t, align 8, !tbaa !67
  br label %bb.v

bb.d:                                             ; preds = %._crit_edge
  %i.u = icmp ugt i64 %i.p, 9223372036854775800
  br i1 %i.u, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPN7rocksdb26SecondaryCacheResultHandleEE8allocateEmPKv.exit.i.i.i.i, !prof !55

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #19
          to label %.noexc16 unwind label %bb.h

.noexc16:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIPN7rocksdb26SecondaryCacheResultHandleEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #18
          to label %.noexc17 unwind label %bb.h   ; 5 uses

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorIPN7rocksdb26SecondaryCacheResultHandleEE8allocateEmPKv.exit.i.i.i.i
end_hunk_0
