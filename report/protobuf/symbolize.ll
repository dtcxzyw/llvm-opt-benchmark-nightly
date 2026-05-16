inline.NumInlined: 131
inline.NumDeleted: 67
begin_hunk_0_@_ZN4absl12lts_2025051218debugging_internal23RegisterFileMappingHintEPKvS3_mPKc:bb.a
  store i64 %2, ptr %i.x, align 16, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.r, ptr %i.y, align 8, !tbaa !40
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j
  %i.z = load atomic i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4
  %i.aa = and i32 %i.z, 2
  %i.ab = atomicrmw xchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.aa release, align 4 ; 2 uses
  %.not4.i = icmp ult i32 %i.ab, 8
  br i1 %.not4.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 noundef %i.ab) #27
  br label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit

_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116InitSigSafeArenaEv.exit, %bb.l, %bb.k, %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit
  %.0 = phi i1 [ %i.n, %bb.l ], [ false, %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit ], [ %i.n, %bb.k ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116InitSigSafeArenaEv.exit ]
  ret i1 %.0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef, ptr noundef) local_unnamed_addr #1 section "malloc_hook"

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4 ; 3 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit

_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit: ; preds = %bb.a
  %i.c = or disjoint i32 %i.a, 1
  %i.d = cmpxchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.a, i32 %i.c acquire monotonic, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 0
  %.pre.i.i = and i32 %i.e, 1
  %i.f = icmp eq i32 %.pre.i.i, 0
  br i1 %i.f, label %.preheader, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit

.preheader:                                       ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit
  %i.g = load i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_124g_num_file_mapping_hintsE, align 4, !tbaa !3 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.i = load ptr, ptr %0, align 8, !tbaa !32
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_120g_file_mapping_hintsE, i64 %indvars.iv ; 4 uses
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !36  ; 2 uses
  %.not = icmp ugt ptr %i.k, %i.i
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %.not18 = icmp ugt ptr %i.l, %i.n
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.k, ptr %0, align 8, !tbaa !32
  store ptr %i.n, ptr %1, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load i64, ptr %i.o, align 16, !tbaa !39
  store i64 %i.p, ptr %2, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40
  store ptr %i.r, ptr %3, align 8, !tbaa !7
  br label %.loopexit

bb.e:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !42

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.d
  %i.s = phi i1 [ true, %bb.d ], [ false, %.preheader ], [ false, %bb.e ] ; 2 uses
  %i.t = load atomic i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4
  %i.u = and i32 %i.t, 2
  %i.v = atomicrmw xchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.u release, align 4 ; 2 uses
  %.not4.i = icmp ult i32 %i.v, 8
  br i1 %.not4.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  tail call void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 noundef %i.v) #27
  br label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit

_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit: ; preds = %bb.a, %bb.f, %.loopexit, %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit
  %.016 = phi i1 [ %i.s, %bb.f ], [ false, %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit ], [ %i.s, %.loopexit ], [ false, %bb.a ]
  ret i1 %.016
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_202505129SymbolizeEPKvPci(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.Elf64_Shdr, align 8         ; 8 uses
  %4 = alloca %struct.Elf64_Shdr, align 8         ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::debugging_internal::(anonymous namespace)::CachingFile", align 8 ; 14 uses
  %6 = alloca %struct.Elf64_Ehdr, align 8         ; 5 uses
  %i.a = alloca [1024 x i8], align 16             ; 17 uses
  %i.b = alloca [100 x i8], align 16              ; 9 uses
  %7 = alloca %struct.Elf64_Phdr, align 8         ; 8 uses
  %8 = alloca %"class.absl::lts_20250512::debugging_internal::VDSOSupport", align 8 ; 5 uses
  %9 = alloca %"struct.absl::lts_20250512::debugging_internal::ElfMemImage::SymbolInfo", align 8 ; 4 uses
  %10 = alloca %"struct.absl::lts_20250512::debugging_internal::SymbolDecoratorArgs", align 8 ; 11 uses
  %i.c = icmp sgt i32 %2, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load atomic ptr, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116g_sig_safe_arenaE acquire, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116InitSigSafeArenaEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc8NewArenaEj(i32 noundef 2) ; 2 uses
  %i.g = cmpxchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116g_sig_safe_arenaE, ptr null, ptr %i.f release monotonic, align 8
  %i.h = extractvalue { ptr, i1 } %i.g, 1
  br i1 %i.h, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116InitSigSafeArenaEv.exit.i, label %_ZNSt6atomicIPN4absl12lts_2025051213base_internal13LowLevelAlloc5ArenaEE23compare_exchange_strongERS5_S5_St12memory_orderS8_.exit.i.i

_ZNSt6atomicIPN4absl12lts_2025051213base_internal13LowLevelAlloc5ArenaEE23compare_exchange_strongERS5_S5_St12memory_orderS8_.exit.i.i: ; preds = %bb.d
  %i.i = tail call noundef zeroext i1 @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc11DeleteArenaEPNS2_5ArenaE(ptr noundef %i.f) ; 0 uses
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116InitSigSafeArenaEv.exit.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116InitSigSafeArenaEv.exit.i: ; preds = %_ZNSt6atomicIPN4absl12lts_2025051213base_internal13LowLevelAlloc5ArenaEE23compare_exchange_strongERS5_S5_St12memory_orderS8_.exit.i.i, %bb.d, %bb.c
  %i.j = atomicrmw xchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_119g_cached_symbolizerE, ptr null acquire, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110SymbolizerC2Ev.exit.loopexit.i, label %_ZN4absl12lts_2025051218debugging_internalL18AllocateSymbolizerEv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110SymbolizerC2Ev.exit.loopexit.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116InitSigSafeArenaEv.exit.i
  %i.k = tail call i64 @sysconf(i32 noundef 30) #23 ; 2 uses
  %i.l = udiv i64 22559, %i.k
  %i.m = add nuw nsw i64 %i.l, 1
  %i.n = mul i64 %i.m, %i.k
  %i.o = load atomic ptr, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116g_sig_safe_arenaE acquire, align 8
  %i.p = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %i.n, ptr noundef %i.o) ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(22560) %i.p, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i8 1, ptr %i.q, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 25
  store i8 0, ptr %i.r, align 1, !tbaa !48
  %.014.ptr17.i.i = getelementptr i8, ptr %i.p, i64 12320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10240) %.014.ptr17.i.i, i8 0, i64 10240, i1 false)
  br label %_ZN4absl12lts_2025051218debugging_internalL18AllocateSymbolizerEv.exit

_ZN4absl12lts_2025051218debugging_internalL18AllocateSymbolizerEv.exit: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116InitSigSafeArenaEv.exit.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110SymbolizerC2Ev.exit.loopexit.i
  %.0.i = phi ptr [ %i.j, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116InitSigSafeArenaEv.exit.i ], [ %i.p, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110SymbolizerC2Ev.exit.loopexit.i ] ; 17 uses
  %i.s = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.s, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL18AllocateSymbolizerEv.exit
  %i.t = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = lshr i64 %i.t, 9
  %i.w = lshr i64 %i.t, 15
  %i.x = xor i64 %i.v, %i.w
  %i.y = lshr i64 %i.t, 21
  %i.z = xor i64 %i.x, %i.y
  %i.aa = xor i64 %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 12320
  %i.ac = and i64 %i.aa, 127
  %i.ad = getelementptr inbounds nuw [80 x i8], ptr %i.ab, i64 %i.ac ; 6 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !32
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !32
  %i.ai = icmp eq ptr %i.ah, %0
  br i1 %i.ai, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !32
  %i.al = icmp eq ptr %i.ak, %0
  br i1 %i.al, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !32
  %i.ao = icmp eq ptr %i.an, %0
  br i1 %i.ao, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.thread.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.01418.lcssa.i.i = phi i64 [ 0, %bb.e ], [ 1, %bb.f ], [ 2, %bb.g ], [ 3, %bb.h ] ; 2 uses
  %.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 3 uses
  %i.ap = load <4 x i32>, ptr %.0.ptr.i.i.i, align 4, !tbaa !3
  %i.aq = add <4 x i32> %i.ap, splat (i32 1)
  store <4 x i32> %i.aq, ptr %.0.ptr.i.i.i, align 4, !tbaa !3
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.0.ptr.i.i.i, i64 %.01418.lcssa.i.i
  store i32 0, ptr %i.ar, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.01418.lcssa.i.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !7  ; 2 uses
  %.not.i22 = icmp eq ptr %i.au, null
  br i1 %.not.i22, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.thread.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.thread.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i, %bb.h, %_ZN4absl12lts_2025051218debugging_internalL18AllocateSymbolizerEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 26 ; 11 uses
  store i8 0, ptr %i.av, align 2, !tbaa !10
  %i.aw = tail call fastcc noundef ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer11FindObjFileEPKvm(ptr noundef nonnull align 16 dereferenceable(22560) %.0.i, ptr noundef %0) ; 35 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %bb.bm, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.thread.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 6 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !49
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.j, label %bb.ar

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !52
  %i.bb = tail call fastcc noundef i32 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKc(ptr noundef %i.ba) ; 3 uses
  store i32 %i.bb, ptr %i.ax, align 8, !tbaa !49
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.k, label %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.thread.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !52
  %i.be = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bd, ptr noundef nonnull dereferenceable(15) @.str.21) #25
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bg = load ptr, ptr @_ZN4absl12lts_20250512L11argv0_valueE, align 8, !tbaa !7 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exitthread-pre-split.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = tail call fastcc noundef i32 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKc(ptr noundef nonnull %i.bg) ; 2 uses
  store i32 %i.bh, ptr %i.ax, align 8, !tbaa !49
  br label %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i.i

bb.n:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !53
  %i.bk = load i32, ptr %i.bj, align 1
  %i.bl = icmp ne i32 %i.bk, 1179403647
  %i.bm = zext i1 %i.bl to i32
  %.not.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exitthread-pre-split.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bn = tail call fastcc noundef i32 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKc(ptr noundef nonnull @.str.21) ; 8 uses
  %i.bo = icmp eq i32 %i.bn, -1
  br i1 %i.bo, label %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exitthread-pre-split.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bq = call i64 @read(i32 noundef %i.bn, ptr noundef nonnull %i.a, i64 noundef 1024)
  %.not18.i.i.i.i = icmp eq i64 %i.bq, 1024
  br i1 %.not18.i.i.i.i, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %bcmp19.i.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1024) %i.a, ptr noundef nonnull dereferenceable(1024) %i.bp, i64 1024)
  %.not20.i.i.i.i = icmp eq i32 %bcmp19.i.i.i.i, 0
  br i1 %.not20.i.i.i.i, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.br = call i64 @read(i32 noundef %i.bn, ptr noundef nonnull %i.a, i64 noundef 1024)
  %.not18.1.i.i.i.i = icmp eq i64 %i.br, 1024
  br i1 %.not18.1.i.i.i.i, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 1024
  %bcmp19.1.i.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1024) %i.a, ptr noundef nonnull dereferenceable(1024) %i.bs, i64 1024)
  %.not20.1.i.i.i.i = icmp eq i32 %bcmp19.1.i.i.i.i, 0
  br i1 %.not20.1.i.i.i.i, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bt = call i64 @read(i32 noundef %i.bn, ptr noundef nonnull %i.a, i64 noundef 1024)
  %.not18.2.i.i.i.i = icmp eq i64 %i.bt, 1024
  br i1 %.not18.2.i.i.i.i, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 2048
  %bcmp19.2.i.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1024) %i.a, ptr noundef nonnull dereferenceable(1024) %i.bu, i64 1024)
  %.not20.2.i.i.i.i = icmp eq i32 %bcmp19.2.i.i.i.i, 0
  br i1 %.not20.2.i.i.i.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bv = call i64 @read(i32 noundef %i.bn, ptr noundef nonnull %i.a, i64 noundef 1024)
  %.not18.3.i.i.i.i = icmp eq i64 %i.bv, 1024
  br i1 %.not18.3.i.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 3072
  %bcmp19.3.i.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1024) %i.a, ptr noundef nonnull dereferenceable(1024) %i.bw, i64 1024)
  %.not20.3.i.i.i.i = icmp eq i32 %bcmp19.3.i.i.i.i, 0
  br i1 %.not20.3.i.i.i.i, label %.critedge.i.i.i.i, label %bb.x

.critedge.i.i.i.i:                                ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  store i32 %i.bn, ptr %i.ax, align 8, !tbaa !49
  br label %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i.i

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %i.bx = tail call i32 @close(i32 noundef %i.bn) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exitthread-pre-split.i.i.i

_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exitthread-pre-split.i.i.i: ; preds = %bb.x, %bb.o, %bb.n, %bb.l
  %.pr.i.i.i = load i32, ptr %i.ax, align 8, !tbaa !49
  br label %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i.i

_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i.i: ; preds = %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exitthread-pre-split.i.i.i, %.critedge.i.i.i.i, %bb.m
  %i.by = phi i32 [ %.pr.i.i.i, %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exitthread-pre-split.i.i.i ], [ %i.bn, %.critedge.i.i.i.i ], [ %i.bh, %bb.m ] ; 2 uses
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %bb.y, label %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.thread.i.i.i

bb.y:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i.i
  %i.ca = load ptr, ptr %i.aw, align 8, !tbaa !52
  %i.cb = tail call ptr @__errno_location() #24
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 1430, ptr noundef nonnull @.str.22, ptr noundef %i.ca, i32 noundef %i.cc)
  br label %_ZN4absl12lts_2025051218debugging_internalL22MaybeInitializeObjFileEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i

_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.thread.i.i.i: ; preds = %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i.i, %bb.j
  %i.cd = phi i32 [ %i.by, %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i.i ], [ %i.bb, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  br label %.lr.ph.split.us.preheader.i.i77.i.i.i

.lr.ph.split.us.preheader.i.i77.i.i.i:            ; preds = %.outer.i.i87.i.i.i, %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.thread.i.i.i
  %.sroa.30.9.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.thread.i.i.i ], [ %.sroa.30.11.i.i.i, %.outer.i.i87.i.i.i ] ; 2 uses
  %.sroa.17.9.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.thread.i.i.i ], [ %.sroa.17.11.i.i.i, %.outer.i.i87.i.i.i ] ; 2 uses
  %.028.ph72.i.i78.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.thread.i.i.i ], [ %i.ct, %.outer.i.i87.i.i.i ] ; 10 uses
  %.029.ph71.i.i79.i.i.i = phi ptr [ %6, %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.thread.i.i.i ], [ %i.cr, %.outer.i.i87.i.i.i ] ; 2 uses
  %.030.ph70.i.i80.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.thread.i.i.i ], [ %i.cs, %.outer.i.i87.i.i.i ] ; 3 uses
  %.not.us.i16.i81.i.i.i = icmp sge i64 %.028.ph72.i.i78.i.i.i, %.sroa.17.9.i.i.i
  %i.ce = icmp slt i64 %.028.ph72.i.i78.i.i.i, %.sroa.30.9.i.i.i
  %or.cond.i17.i82.i.i.i = and i1 %.not.us.i16.i81.i.i.i, %i.ce
  br i1 %or.cond.i17.i82.i.i.i, label %.outer.i.i87.i.i.i, label %.lr.ph.i83.i.i.i

.lr.ph.i83.i.i.i:                                 ; preds = %.lr.ph.split.us.preheader.i.i77.i.i.i, %.lr.ph.split.us.i.i84.i.i.i
  %i.cf = call i64 @pread(i32 noundef %i.cd, ptr noundef nonnull %i.b, i64 noundef 100, i64 noundef %.028.ph72.i.i78.i.i.i) ; 3 uses
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i83.i.i.i
  %i.ch = icmp eq i64 %i.cf, 0
  br i1 %i.ch, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit96.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ci = add nuw nsw i64 %i.cf, %.028.ph72.i.i78.i.i.i
  br label %.lr.ph.split.us.i.i84.i.i.i

bb.ab:                                            ; preds = %.lr.ph.i83.i.i.i
  %i.cj = tail call ptr @__errno_location() #24
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3  ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 4
  br i1 %i.cl, label %..lr.ph.split.us.i_crit_edge.i93.i.i.i, label %.thread39.i.i92.i.i.i, !llvm.loop !11

..lr.ph.split.us.i_crit_edge.i93.i.i.i:           ; preds = %bb.ab
  br label %.lr.ph.split.us.i.i84.i.i.i, !llvm.loop !11

.lr.ph.split.us.i.i84.i.i.i:                      ; preds = %..lr.ph.split.us.i_crit_edge.i93.i.i.i, %bb.aa
  %.sroa.30.10.i.i.i = phi i64 [ 0, %..lr.ph.split.us.i_crit_edge.i93.i.i.i ], [ %i.ci, %bb.aa ] ; 2 uses
  %.sroa.17.10.i.i.i = phi i64 [ 0, %..lr.ph.split.us.i_crit_edge.i93.i.i.i ], [ %.028.ph72.i.i78.i.i.i, %bb.aa ] ; 2 uses
  %.not.us.i.i85.i.i.i = icmp samesign uge i64 %.028.ph72.i.i78.i.i.i, %.sroa.17.10.i.i.i
  %i.cm = icmp slt i64 %.028.ph72.i.i78.i.i.i, %.sroa.30.10.i.i.i
  %or.cond.i.i86.i.i.i = select i1 %.not.us.i.i85.i.i.i, i1 %i.cm, i1 false
  br i1 %or.cond.i.i86.i.i.i, label %.outer.i.i87.i.i.i, label %.lr.ph.i83.i.i.i

.outer.i.i87.i.i.i:                               ; preds = %.lr.ph.split.us.i.i84.i.i.i, %.lr.ph.split.us.preheader.i.i77.i.i.i
  %.sroa.30.11.i.i.i = phi i64 [ %.sroa.30.9.i.i.i, %.lr.ph.split.us.preheader.i.i77.i.i.i ], [ %.sroa.30.10.i.i.i, %.lr.ph.split.us.i.i84.i.i.i ] ; 3 uses
  %.sroa.17.11.i.i.i = phi i64 [ %.sroa.17.9.i.i.i, %.lr.ph.split.us.preheader.i.i77.i.i.i ], [ %.sroa.17.10.i.i.i, %.lr.ph.split.us.i.i84.i.i.i ] ; 3 uses
  %i.cn = sub nsw i64 %.028.ph72.i.i78.i.i.i, %.sroa.17.11.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cn
  %i.cp = sub nuw nsw i64 64, %.030.ph70.i.i80.i.i.i
  %i.cq = sub nsw i64 %.sroa.30.11.i.i.i, %.028.ph72.i.i78.i.i.i
  %.sroa.speculated.i.i90.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 %i.cp) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i.i79.i.i.i, ptr nonnull align 1 %i.co, i64 %.sroa.speculated.i.i90.i.i.i, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %.029.ph71.i.i79.i.i.i, i64 %.sroa.speculated.i.i90.i.i.i
  %i.cs = add nuw nsw i64 %.sroa.speculated.i.i90.i.i.i, %.030.ph70.i.i80.i.i.i ; 3 uses
  %i.ct = add nuw nsw i64 %.sroa.speculated.i.i90.i.i.i, %.028.ph72.i.i78.i.i.i
  %i.cu = icmp samesign ult i64 %i.cs, 64
  br i1 %i.cu, label %.lr.ph.split.us.preheader.i.i77.i.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit96.i.i.i

.thread39.i.i92.i.i.i:                            ; preds = %bb.ab
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 540, ptr noundef nonnull @.str.5, i32 noundef %i.ck)
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit96.i.i.i
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_202505129SymbolizeEPKvPci:bb.a
bb.bk:                                            ; preds = %.lr.ph.i.1.i.i.i
  %i.jt = tail call ptr @__errno_location() #24
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !3  ; 2 uses
  %i.jv = icmp eq i32 %i.ju, 4
  br i1 %i.jv, label %..lr.ph.split.us.i_crit_edge.i.1.i.i.i, label %.thread39.i.i.1.i.i.i, !llvm.loop !11

.thread39.i.i.1.i.i.i:                            ; preds = %bb.bk
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 540, ptr noundef nonnull @.str.5, i32 noundef %i.ju)
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.thread.i.i

..lr.ph.split.us.i_crit_edge.i.1.i.i.i:           ; preds = %bb.bk
  br label %.lr.ph.split.us.i.i.1.i.i.i, !llvm.loop !11

.lr.ph.split.us.i.i.1.i.i.i:                      ; preds = %..lr.ph.split.us.i_crit_edge.i.1.i.i.i, %bb.bj
  %i.jw = phi i64 [ 0, %..lr.ph.split.us.i_crit_edge.i.1.i.i.i ], [ %i.js, %bb.bj ] ; 2 uses
  %i.jx = phi i64 [ 0, %..lr.ph.split.us.i_crit_edge.i.1.i.i.i ], [ %.028.ph72.i.i.1.i.i.i, %bb.bj ] ; 2 uses
  %.not.us.i.i.1.i.i.i = icmp sge i64 %.028.ph72.i.i.1.i.i.i, %i.jx
  %i.jy = icmp slt i64 %.028.ph72.i.i.1.i.i.i, %i.jw
  %or.cond.i.i.1.i.i.i = select i1 %.not.us.i.i.1.i.i.i, i1 %i.jy, i1 false
  br i1 %or.cond.i.i.1.i.i.i, label %.outer.i.i.1.i.i.i, label %.lr.ph.i.1.i.i.i

.outer.i.i.1.i.i.i:                               ; preds = %.lr.ph.split.us.i.i.1.i.i.i, %.lr.ph.split.us.preheader.i.i.1.i.i.i
  %i.jz = phi i64 [ %i.jm, %.lr.ph.split.us.preheader.i.i.1.i.i.i ], [ %i.jw, %.lr.ph.split.us.i.i.1.i.i.i ] ; 2 uses
  %i.ka = phi i64 [ %i.jn, %.lr.ph.split.us.preheader.i.i.1.i.i.i ], [ %i.jx, %.lr.ph.split.us.i.i.1.i.i.i ] ; 2 uses
  %i.kb = sub nsw i64 %.028.ph72.i.i.1.i.i.i, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.kb
  %i.kd = sub nuw nsw i64 64, %.030.ph70.i.i.1.i.i.i
  %i.ke = sub nsw i64 %i.jz, %.028.ph72.i.i.1.i.i.i
  %.sroa.speculated.i.i.1.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ke, i64 %i.kd) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i.i.1.i.i.i, ptr align 1 %i.kc, i64 %.sroa.speculated.i.i.1.i.i.i, i1 false)
  %i.kf = getelementptr inbounds nuw i8, ptr %.029.ph71.i.i.1.i.i.i, i64 %.sroa.speculated.i.i.1.i.i.i
  %i.kg = add nuw nsw i64 %.sroa.speculated.i.i.1.i.i.i, %.030.ph70.i.i.1.i.i.i ; 2 uses
  %i.kh = add nsw i64 %.sroa.speculated.i.i.1.i.i.i, %.028.ph72.i.i.1.i.i.i
  %i.ki = icmp samesign ult i64 %i.kg, 64
  br i1 %i.ki, label %.lr.ph.split.us.preheader.i.i.1.i.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.1.i.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.1.i.i.i: ; preds = %.outer.i.i.1.i.i.i
  %.val.1.i.i.i = load i64, ptr %i.hn, align 8
  %i.kj = call fastcc noundef i32 @_ZN4absl12lts_2025051218debugging_internalL10FindSymbolEPKvPNS1_12_GLOBAL__N_111CachingFileEPcmlPK10Elf64_ShdrSA_SA_S7_m(ptr noundef readnone %0, ptr noundef %5, ptr noundef nonnull %i.av, i64 noundef %.1.i.i, i64 %.val.1.i.i.i, ptr noundef %3, ptr noundef nonnull %i.hi) ; 2 uses
  %.not32.1.i.i.i = icmp eq i32 %i.kj, 1
  br i1 %.not32.1.i.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.thread.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.thread.i.i: ; preds = %bb.bi, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.1.i.i.i, %.thread39.i.i.1.i.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i60.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN4absl12lts_2025051218debugging_internalL22MaybeInitializeObjFileEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.i.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.1.i.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i73.i.i
  %spec.select.i.i.i = phi i32 [ %i.kj, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.1.i.i.i ], [ %i.ja, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i73.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.kk = icmp eq i32 %spec.select.i.i.i, 3
  br i1 %i.kk, label %bb.bl, label %_ZN4absl12lts_2025051218debugging_internalL22MaybeInitializeObjFileEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i

bb.bl:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.i.i
  tail call fastcc void @_ZN4absl12lts_2025051218debugging_internalL15DemangleInplaceEPcmS2_m(ptr noundef %i.av, ptr noundef %i.hi)
  br label %_ZN4absl12lts_2025051218debugging_internalL22MaybeInitializeObjFileEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i

bb.bm:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN4absl12lts_2025051218debugging_internal11VDSOSupportC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %8)
  %i.kl = load ptr, ptr %8, align 8, !tbaa !76
  %.not85.i.i = icmp eq ptr %i.kl, null
  br i1 %.not85.i.i, label %bb.bs, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.km = call noundef zeroext i1 @_ZNK4absl12lts_2025051218debugging_internal11VDSOSupport21LookupSymbolByAddressEPKvPNS1_11ElfMemImage10SymbolInfoE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef %0, ptr noundef nonnull %9)
  br i1 %i.km, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.kn = load ptr, ptr %9, align 8, !tbaa !79    ; 2 uses
  %i.ko = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kn) #25
  %i.kp = add i64 %i.ko, 1                        ; 2 uses
  %i.kq = icmp ugt i64 %i.kp, 3071
  br i1 %i.kq, label %bb.bp, label %bb.bq, !prof !35

bb.bp:                                            ; preds = %bb.bo
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 1565, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12)
  unreachable

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.av, ptr nonnull align 1 %i.kn, i64 %i.kp, i1 false)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZN4absl12lts_2025051218debugging_internalL22MaybeInitializeObjFileEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i

_ZN4absl12lts_2025051218debugging_internalL22MaybeInitializeObjFileEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i: ; preds = %bb.bs, %bb.bl, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.thread.i.i, %.thread152.i.i.i, %bb.y
  %.047.i.i = phi i32 [ -1, %bb.bs ], [ %i.hh, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.i.i ], [ %i.hh, %bb.bl ], [ -1, %bb.y ], [ -1, %.thread152.i.i.i ], [ %i.hh, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.thread.i.i ]
  %.2.i7.i = phi i64 [ 0, %bb.bs ], [ %.1.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.i.i ], [ %.1.i.i, %bb.bl ], [ 0, %bb.y ], [ 0, %.thread152.i.i.i ], [ %.1.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.thread.i.i ]
  %i.kr = load atomic i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE monotonic, align 4 ; 3 uses
  %i.ks = and i32 %i.kr, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.ks, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i.i: ; preds = %_ZN4absl12lts_2025051218debugging_internalL22MaybeInitializeObjFileEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i
  %i.kt = or disjoint i32 %i.kr, 1
  %i.ku = cmpxchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 %i.kr, i32 %i.kt acquire monotonic, align 4
  %i.kv = extractvalue { i32, i1 } %i.ku, 0
  %.pre.i.i.i.i = and i32 %i.kv, 1
  %i.kw = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %i.kw, label %bb.bt, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i.i

bb.bt:                                            ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i.i
  %i.kx = load i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116g_num_decoratorsE, align 4, !tbaa !3
  %i.ky = icmp sgt i32 %i.kx, 0
  br i1 %i.ky, label %.lr.ph.preheader.i.i, label %bb.bu

.lr.ph.preheader.i.i:                             ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %0, ptr %10, align 8, !tbaa !81
  %i.kz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %.2.i7.i, ptr %i.kz, align 8, !tbaa !83
  %i.la = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %.047.i.i, ptr %i.la, align 8, !tbaa !84
  %i.lb = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.av, ptr %i.lb, align 8, !tbaa !85
  %i.lc = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 3072, ptr %i.lc, align 8, !tbaa !86
  %i.ld = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.le = getelementptr inbounds nuw i8, ptr %.0.i, i64 11296
  store ptr %i.le, ptr %i.ld, align 8, !tbaa !87
  %i.lf = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i64 1024, ptr %i.lf, align 8, !tbaa !88
  %i.lg = getelementptr inbounds nuw i8, ptr %10, i64 56
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.bu

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.lh = getelementptr inbounds nuw [24 x i8], ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_112g_decoratorsE, i64 %indvars.iv.i.i ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !89
  store ptr %i.lj, ptr %i.lg, align 8, !tbaa !90
  %i.lk = load ptr, ptr %i.lh, align 8, !tbaa !91
  call void %i.lk(ptr noundef nonnull %10), !inline_history !92
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ll = load i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116g_num_decoratorsE, align 4, !tbaa !3
  %i.lm = sext i32 %i.ll to i64
  %i.ln = icmp slt i64 %indvars.iv.next.i.i, %i.lm
  br i1 %i.ln, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !93

bb.bu:                                            ; preds = %._crit_edge.i.i, %bb.bt
  %i.lo = load atomic i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE monotonic, align 4
  %i.lp = and i32 %i.lo, 2
  %i.lq = atomicrmw xchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 %i.lp release, align 4 ; 2 uses
  %.not4.i.i.i = icmp ult i32 %i.lq, 8
  br i1 %.not4.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 noundef %i.lq) #27
  br label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i.i: ; preds = %bb.bv, %bb.bu, %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i.i, %_ZN4absl12lts_2025051218debugging_internalL22MaybeInitializeObjFileEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i
  %i.lr = load i8, ptr %i.av, align 2, !tbaa !10
  %i.ls = icmp eq i8 %i.lr, 0
  br i1 %i.ls, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread, label %bb.bw

bb.bw:                                            ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i.i
  %i.lt = getelementptr inbounds nuw i8, ptr %.0.i, i64 3097
  store i8 0, ptr %i.lt, align 1, !tbaa !10
  br i1 %i.s, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @abort() #28
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.lu = ptrtoint ptr %0 to i64                  ; 4 uses
  %i.lv = lshr i64 %i.lu, 3
  %i.lw = lshr i64 %i.lu, 9
  %i.lx = lshr i64 %i.lu, 15
  %i.ly = xor i64 %i.lw, %i.lx
  %i.lz = lshr i64 %i.lu, 21
  %i.ma = xor i64 %i.ly, %i.lz
  %i.mb = xor i64 %i.ma, %i.lv
  %i.mc = getelementptr inbounds nuw i8, ptr %.0.i, i64 12320
  %i.md = and i64 %i.mb, 127
  %i.me = getelementptr inbounds nuw [80 x i8], ptr %i.mc, i64 %i.md ; 14 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 64 ; 4 uses
  %i.mg = load ptr, ptr %i.me, align 8, !tbaa !32
  %i.mh = icmp eq ptr %i.mg, null
  %.pre.i77.i.i = load i32, ptr %i.mf, align 8, !tbaa !3 ; 4 uses
  br i1 %i.mh, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.by
  %.04063.lcssa.i.i.i = phi i64 [ 0, %bb.by ], [ 1, %bb.cb ], [ 2, %bb.cc ], [ 3, %bb.cd ] ; 3 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %.04063.lcssa.i.i.i
  %i.mj = add i32 %.pre.i77.i.i, 1
  store i32 %i.mj, ptr %i.mf, align 4, !tbaa !3
  %.0.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.me, i64 68 ; 2 uses
  %i.mk = load <2 x i32>, ptr %.0.ptr.1.i.i.i.i, align 4, !tbaa !3
  %i.ml = add <2 x i32> %i.mk, splat (i32 1)
  store <2 x i32> %i.ml, ptr %.0.ptr.1.i.i.i.i, align 4, !tbaa !3
  %.0.ptr.3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.me, i64 76 ; 2 uses
  %i.mm = load i32, ptr %.0.ptr.3.i.i.i.i, align 4, !tbaa !3
  %i.mn = add i32 %i.mm, 1
  store i32 %i.mn, ptr %.0.ptr.3.i.i.i.i, align 4, !tbaa !3
  store ptr %0, ptr %i.mi, align 8, !tbaa !32
  %i.mo = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.av) #25
  %i.mp = add i64 %i.mo, 1                        ; 2 uses
  %i.mq = load atomic ptr, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116g_sig_safe_arenaE acquire, align 8
  %i.mr = call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %i.mp, ptr noundef %i.mq) ; 4 uses
  %.not.i.i78.i.i = icmp eq ptr %i.mr, null
  br i1 %.not.i.i78.i.i, label %bb.ca, label %bb.ce, !prof !35

bb.ca:                                            ; preds = %bb.bz
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 340, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4)
  unreachable

bb.cb:                                            ; preds = %bb.by
  %i.ms = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !32
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %bb.bz, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mv = getelementptr inbounds nuw i8, ptr %i.me, i64 68 ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !3  ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !32
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %bb.bz, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.na = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !32
  %i.nc = icmp eq ptr %i.nb, null
  br i1 %i.nc, label %bb.bz, label %bb.cf

bb.ce:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mr, ptr nonnull readonly align 2 %i.av, i64 %i.mp, i1 false)
  %i.nd = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %.04063.lcssa.i.i.i
  store ptr %i.mr, ptr %i.ne, align 8, !tbaa !7
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer19InsertSymbolInCacheEPKvPKc.exit.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.me, i64 72 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !3  ; 3 uses
  %.146.1.i.i.i = call i32 @llvm.umax.i32(i32 %i.mw, i32 %.pre.i77.i.i) ; 2 uses
  %.not49.2.not.i.i.i = icmp ult i32 %i.ng, %.146.1.i.i.i
  %.not49.1.not.i.i.i = icmp uge i32 %i.mw, %.pre.i77.i.i
  %.144.1.i.i.i = zext i1 %.not49.1.not.i.i.i to i64
  %.144.2.i.i.i = select i1 %.not49.2.not.i.i.i, i64 %.144.1.i.i.i, i64 2
  %.146.2.i.i.i = call i32 @llvm.umax.i32(i32 %i.ng, i32 %.146.1.i.i.i)
  %i.nh = getelementptr inbounds nuw i8, ptr %i.me, i64 76 ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !3  ; 2 uses
  %.not49.3.not.i.i.i = icmp ult i32 %i.ni, %.146.2.i.i.i
  %.144.3.i.i.i = select i1 %.not49.3.not.i.i.i, i64 %.144.2.i.i.i, i64 3 ; 3 uses
  %i.nj = add i32 %.pre.i77.i.i, 1
  store i32 %i.nj, ptr %i.mf, align 4, !tbaa !3
  %i.nk = add i32 %i.mw, 1
  store i32 %i.nk, ptr %i.mv, align 4, !tbaa !3
  %i.nl = add i32 %i.ng, 1
  store i32 %i.nl, ptr %i.nf, align 4, !tbaa !3
  %i.nm = add i32 %i.ni, 1
  store i32 %i.nm, ptr %i.nh, align 4, !tbaa !3
  %i.nn = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %.144.3.i.i.i ; 2 uses
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !7
  call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.np)
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %.144.3.i.i.i
  store ptr %0, ptr %i.nq, align 8, !tbaa !32
  %i.nr = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.av) #25
  %i.ns = add i64 %i.nr, 1                        ; 2 uses
  %i.nt = load atomic ptr, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116g_sig_safe_arenaE acquire, align 8
  %i.nu = call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %i.ns, ptr noundef %i.nt) ; 4 uses
  %.not.i54.i.i.i = icmp eq ptr %i.nu, null
  br i1 %.not.i54.i.i.i, label %bb.cg, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit55.i.i.i, !prof !35

bb.cg:                                            ; preds = %bb.cf
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 340, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4)
  unreachable

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit55.i.i.i: ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nu, ptr nonnull readonly align 2 %i.av, i64 %i.ns, i1 false)
  store ptr %i.nu, ptr %i.no, align 8, !tbaa !7
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer19InsertSymbolInCacheEPKvPKc.exit.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer19InsertSymbolInCacheEPKvPKc.exit.i.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit55.i.i.i, %bb.ce
  %.04063.lcssa.sink.i.i.i = phi i64 [ %.04063.lcssa.i.i.i, %bb.ce ], [ %.144.3.i.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit55.i.i.i ]
  %.1.i.i.i = phi ptr [ %i.mr, %bb.ce ], [ %i.nu, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit55.i.i.i ]
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %.04063.lcssa.sink.i.i.i
  store i32 0, ptr %i.nv, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer19InsertSymbolInCacheEPKvPKc.exit.i.i
  %.0.i21 = phi ptr [ %i.au, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i ], [ %.1.i.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer19InsertSymbolInCacheEPKvPKc.exit.i.i ]
  %.not33 = icmp eq i32 %2, 0
  br i1 %.not33, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread, label %bb.ch

bb.ch:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit
  %i.nw = zext nneg i32 %2 to i64                 ; 3 uses
  %i.nx = call ptr @strncpy(ptr noundef %1, ptr noundef nonnull %.0.i21, i64 noundef %i.nw) #23 ; 0 uses
  %i.ny = add nsw i64 %i.nw, -1                   ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 %i.ny ; 2 uses
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !10
  %.not = icmp eq i8 %i.oa, 0
  br i1 %.not, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.ny, i64 3) ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 %i.nw
  %i.oc = sub nsw i64 0, %.sroa.speculated
  %i.od = getelementptr inbounds i8, ptr %i.ob, i64 %i.oc
  %i.oe = getelementptr inbounds i8, ptr %i.od, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.oe, ptr nonnull align 1 @_ZZN4absl12lts_202505129SymbolizeEPKvPciE9kEllipsis, i64 %.sroa.speculated, i1 false)
  store i8 0, ptr %i.nz, align 1, !tbaa !10
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i.i, %bb.ch, %bb.ci, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit
  %or.cond32 = phi i1 [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit ], [ true, %bb.ch ], [ true, %bb.ci ], [ false, %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i.i ]
  %i.of = cmpxchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_119g_cached_symbolizerE, ptr null, ptr %.0.i release monotonic, align 8
  %i.og = extractvalue { ptr, i1 } %i.of, 1
  br i1 %i.og, label %_ZN4absl12lts_2025051218debugging_internalL14FreeSymbolizerEPNS1_12_GLOBAL__N_110SymbolizerE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread, %bb.cp
  %.0.idx23.i.i = phi i64 [ %.0.add.i.i, %bb.cp ], [ 12320, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread ] ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0.idx23.i.i ; 4 uses
  %.015.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  %i.oi = load ptr, ptr %.015.ptr.i.i, align 8, !tbaa !7
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.oi)
          to label %bb.cm unwind label %.loopexit.split-lp.i.i

bb.cj:                                            ; preds = %bb.cp
  %.val8.i.i.i = load i64, ptr %.0.i, align 8, !tbaa !94
  %.not9.i.i.i = icmp eq i64 %.val8.i.i.i, 0
  br i1 %.not9.i.i.i, label %.loopexit20.i.i, label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %bb.cj
  %i.oj = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  br label %bb.ck

bb.ck:                                            ; preds = %.noexc19.i.i, %.lr.ph.i.i.i24
  %.010.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i24 ], [ %i.oq, %.noexc19.i.i ] ; 2 uses
  %.val7.i.i.i = load ptr, ptr %i.oj, align 8, !tbaa !95
  %i.ok = getelementptr inbounds nuw [328 x i8], ptr %.val7.i.i.i, i64 %.010.i.i.i ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !52
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.ol)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.ck
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 32
  %i.on = load i32, ptr %i.om, align 8, !tbaa !49 ; 2 uses
  %i.oo = icmp sgt i32 %i.on, -1
  br i1 %i.oo, label %bb.cl, label %.noexc19.i.i

bb.cl:                                            ; preds = %.noexc.i.i
  %i.op = invoke i32 @close(i32 noundef %i.on)
          to label %.noexc19.i.i unwind label %.loopexit.i.i ; 0 uses

.noexc19.i.i:                                     ; preds = %bb.cl, %.noexc.i.i
  %i.oq = add i64 %.010.i.i.i, 1                  ; 2 uses
  %.val.i.i.i25 = load i64, ptr %.0.i, align 8, !tbaa !94
  %.not.i.i.i26 = icmp eq i64 %i.oq, %.val.i.i.i25
  br i1 %.not.i.i.i26, label %.loopexit20.i.i, label %bb.ck, !llvm.loop !96

bb.cm:                                            ; preds = %.preheader.i.i
  %.015.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 40
  %i.or = load ptr, ptr %.015.ptr.1.i.i, align 8, !tbaa !7
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.or)
          to label %bb.cn unwind label %.loopexit.split-lp.i.i

bb.cn:                                            ; preds = %bb.cm
  %.015.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 48
  %i.os = load ptr, ptr %.015.ptr.2.i.i, align 8, !tbaa !7
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.os)
          to label %bb.co unwind label %.loopexit.split-lp.i.i

bb.co:                                            ; preds = %bb.cn
  %.015.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 56
  %i.ot = load ptr, ptr %.015.ptr.3.i.i, align 8, !tbaa !7
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.ot)
          to label %bb.cp unwind label %.loopexit.split-lp.i.i

bb.cp:                                            ; preds = %bb.co
  %.0.add.i.i = add nuw nsw i64 %.0.idx23.i.i, 80 ; 2 uses
  %.not.i.i23 = icmp eq i64 %.0.add.i.i, 22560
  br i1 %.not.i.i23, label %bb.cj, label %.preheader.i.i

.loopexit20.i.i:                                  ; preds = %.noexc19.i.i, %bb.cj
  store i64 0, ptr %.0.i, align 8, !tbaa !94
  %i.ou = getelementptr inbounds nuw i8, ptr %.0.i, i64 25
  store i8 0, ptr %i.ou, align 1, !tbaa !48
  %i.ov = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %.val.i.i = load ptr, ptr %i.ov, align 8, !tbaa !95
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %.val.i.i)
          to label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110SymbolizerD2Ev.exit.i unwind label %bb.cq

bb.cq:                                            ; preds = %.loopexit20.i.i
  %i.ow = landingpad { ptr, i32 }
          catch ptr null
  %i.ox = extractvalue { ptr, i32 } %i.ow, 0
  call void @__clang_call_terminate(ptr %i.ox) #28
  unreachable

.loopexit.i.i:                                    ; preds = %bb.cl, %bb.ck
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cr

.loopexit.split-lp.i.i:                           ; preds = %bb.co, %bb.cn, %bb.cm, %.preheader.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cr

bb.cr:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  %i.oy = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.oy) #28
  unreachable

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110SymbolizerD2Ev.exit.i: ; preds = %.loopexit20.i.i
  call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef nonnull %.0.i)
  br label %_ZN4absl12lts_2025051218debugging_internalL14FreeSymbolizerEPNS1_12_GLOBAL__N_110SymbolizerE.exit

_ZN4absl12lts_2025051218debugging_internalL14FreeSymbolizerEPNS1_12_GLOBAL__N_110SymbolizerE.exit: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110SymbolizerD2Ev.exit.i
  ret i1 %or.cond32
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @AbslInternalGetFileMappingHint(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4 ; 3 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i, label %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit

_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i: ; preds = %bb.a
  %i.c = or disjoint i32 %i.a, 1
  %i.d = cmpxchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.a, i32 %i.c acquire monotonic, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 0
  %.pre.i.i.i = and i32 %i.e, 1
  %i.f = icmp eq i32 %.pre.i.i.i, 0
  br i1 %i.f, label %.preheader.i, label %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit

.preheader.i:                                     ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i
  %i.g = load i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_124g_num_file_mapping_hintsE, align 4, !tbaa !3 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.i = load ptr, ptr %0, align 8, !tbaa !32
  %wide.trip.count.i = zext nneg i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_120g_file_mapping_hintsE, i64 %indvars.iv.i ; 4 uses
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !36  ; 2 uses
  %.not.i = icmp ugt ptr %i.k, %i.i
  br i1 %.not.i, label %bb.e, label %bb.c
end_hunk_1
