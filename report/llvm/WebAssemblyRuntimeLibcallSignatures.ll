Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WebAssemblyRuntimeLibcallSignatures?download=true
inline.NumInlined: 523
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm11WebAssembly19getLibcallSignatureERKNS_20WebAssemblySubtargetENS_9StringRefERNS_15SmallVectorImplINS_4wasm7ValTypeEEES9_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvm11WebAssembly19getLibcallSignatureERKNS_20WebAssemblySubtargetENS_9StringRefERNS_15SmallVectorImplINS_4wasm7ValTypeEEES9_E14LibcallNameMap) #11
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN4llvm9StringMapINS_5RTLIB7LibcallENS_15MallocAllocatorEE4findENS_9StringRefE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call fastcc void @_ZN12_GLOBAL__N_120StaticLibcallNameMapC2ERKN4llvm6TripleE(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN12_GLOBAL__N_120StaticLibcallNameMapD2Ev, ptr nonnull @_ZZN4llvm11WebAssembly19getLibcallSignatureERKNS_20WebAssemblySubtargetENS_9StringRefERNS_15SmallVectorImplINS_4wasm7ValTypeEEES9_E14LibcallNameMap, ptr nonnull @__dso_handle) #11 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvm11WebAssembly19getLibcallSignatureERKNS_20WebAssemblySubtargetENS_9StringRefERNS_15SmallVectorImplINS_4wasm7ValTypeEEES9_E14LibcallNameMap) #11
  br label %_ZN4llvm9StringMapINS_5RTLIB7LibcallENS_15MallocAllocatorEE4findENS_9StringRefE.exit

_ZN4llvm9StringMapINS_5RTLIB7LibcallENS_15MallocAllocatorEE4findENS_9StringRefE.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.f = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %1, i64 %2) #11
  %i.g = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) @_ZZN4llvm11WebAssembly19getLibcallSignatureERKNS_20WebAssemblySubtargetENS_9StringRefERNS_15SmallVectorImplINS_4wasm7ValTypeEEES9_E14LibcallNameMap, ptr %1, i64 %2, i32 noundef %i.f) #11 ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  %i.i = load ptr, ptr @_ZZN4llvm11WebAssembly19getLibcallSignatureERKNS_20WebAssemblySubtargetENS_9StringRefERNS_15SmallVectorImplINS_4wasm7ValTypeEEES9_E14LibcallNameMap, align 8, !tbaa !18
  %i.j = sext i32 %i.g to i64
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4llvm11WebAssembly19getLibcallSignatureERKNS_20WebAssemblySubtargetENS_9StringRefERNS_15SmallVectorImplINS_4wasm7ValTypeEEES9_E14LibcallNameMap, i64 8), align 8
  %i.l = zext i32 %i.k to i64
  %.sink.i.i = select i1 %i.h, i64 %i.l, i64 %i.j
  %i.m = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.sink.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i16, ptr %i.o, align 8, !tbaa !24
  tail call void @_ZN4llvm11WebAssembly19getLibcallSignatureERKNS_20WebAssemblySubtargetENS_5RTLIB7LibcallERNS_15SmallVectorImplINS_4wasm7ValTypeEEESA_(ptr noundef nonnull align 8 dereferenceable(519384) %0, i16 noundef zeroext %i.p, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120StaticLibcallNameMapC2ERKN4llvm6TripleE(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.llvm::RTLIB::RuntimeLibcallsInfo", align 8 ; 4 uses
  %2 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) @_ZZN4llvm11WebAssembly19getLibcallSignatureERKNS_20WebAssemblySubtargetENS_9StringRefERNS_15SmallVectorImplINS_4wasm7ValTypeEEES9_E14LibcallNameMap, i8 0, i64 16, i1 false)
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4llvm11WebAssembly19getLibcallSignatureERKNS_20WebAssemblySubtargetENS_9StringRefERNS_15SmallVectorImplINS_4wasm7ValTypeEEES9_E14LibcallNameMap, i64 16), align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store ptr @.str.1, ptr %2, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !33
  call void @_ZN4llvm5RTLIB19RuntimeLibcallsInfoC1ERKNS_6TripleENS_17ExceptionHandlingENS_8FloatABI7ABITypeENS_4EABIENS_9StringRefENS_13VectorLibraryE(ptr noundef nonnull align 8 dereferenceable(12408) %1, ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %2, i32 noundef 0) #11
  %i.b = load atomic i8, ptr @_ZGVZN12_GLOBAL__N_127getRuntimeLibcallSignaturesEvE24RuntimeLibcallSignatures acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN12_GLOBAL__N_127getRuntimeLibcallSignaturesEv.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN12_GLOBAL__N_127getRuntimeLibcallSignaturesEvE24RuntimeLibcallSignatures) #11
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN12_GLOBAL__N_127getRuntimeLibcallSignaturesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @_ZN12_GLOBAL__N_128RuntimeLibcallSignatureTableC2Ev()
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZN12_GLOBAL__N_128RuntimeLibcallSignatureTableD2Ev, ptr nonnull @_ZZN12_GLOBAL__N_127getRuntimeLibcallSignaturesEvE24RuntimeLibcallSignatures, ptr nonnull @__dso_handle) #11 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN12_GLOBAL__N_127getRuntimeLibcallSignaturesEvE24RuntimeLibcallSignatures) #11
  br label %_ZN12_GLOBAL__N_127getRuntimeLibcallSignaturesEv.exit

_ZN12_GLOBAL__N_127getRuntimeLibcallSignaturesEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load ptr, ptr @_ZZN12_GLOBAL__N_127getRuntimeLibcallSignaturesEvE24RuntimeLibcallSignatures, align 8, !tbaa !9
  br label %bb.e

bb.d:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret void

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_127getRuntimeLibcallSignaturesEv.exit, %bb.i
  %.sroa.02.013 = phi i64 [ 1, %_ZN12_GLOBAL__N_127getRuntimeLibcallSignaturesEv.exit ], [ %i.ao, %bb.i ] ; 6 uses
  %i.g = and i64 %.sroa.02.013, 63
  %i.h = shl nuw i64 1, %i.g
  %i.i = lshr i64 %.sroa.02.013, 6
  %i.j = and i64 %i.i, 1023
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !34
  %i.m = and i64 %i.l, %i.h
  %.not12 = icmp eq i64 %i.m, 0
  br i1 %.not12, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw [2 x i8], ptr @_ZN4llvm5RTLIB19RuntimeLibcallsInfo13ImplToLibcallE, i64 %.sroa.02.013
  %i.o = load i16, ptr %i.n, align 2, !tbaa !35   ; 2 uses
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !12
  %.not = icmp eq i32 %i.r, 61
  br i1 %.not, label %bb.i, label %_ZN4llvm5RTLIB19RuntimeLibcallsInfo18getLibcallImplNameENS0_11LibcallImplE.exit

_ZN4llvm5RTLIB19RuntimeLibcallsInfo18getLibcallImplNameENS0_11LibcallImplE.exit: ; preds = %bb.f
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZN4llvm5RTLIB19RuntimeLibcallsInfo29RuntimeLibcallNameOffsetTableE, i64 %.sroa.02.013
  %i.t = load i16, ptr %i.s, align 2, !tbaa !36
  %i.u = load ptr, ptr @_ZN4llvm5RTLIB19RuntimeLibcallsInfo27RuntimeLibcallImplNameTableE, align 8, !tbaa !30
  %i.v = zext i16 %i.t to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN4llvm5RTLIB19RuntimeLibcallsInfo27RuntimeLibcallNameSizeTableE, i64 %.sroa.02.013
  %i.y = load i8, ptr %i.x, align 1, !tbaa !12    ; 2 uses
  %i.z = zext i8 %i.y to i64                      ; 6 uses
  %i.aa = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.w, i64 %i.z) #11
  %i.ab = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) @_ZZN4llvm11WebAssembly19getLibcallSignatureERKNS_20WebAssemblySubtargetENS_9StringRefERNS_15SmallVectorImplINS_4wasm7ValTypeEEES9_E14LibcallNameMap, ptr %i.w, i64 %i.z, i32 noundef %i.aa) #11 ; 2 uses
  %i.ac = load ptr, ptr @_ZZN4llvm11WebAssembly19getLibcallSignatureERKNS_20WebAssemblySubtargetENS_9StringRefERNS_15SmallVectorImplINS_4wasm7ValTypeEEES9_E14LibcallNameMap, align 8, !tbaa !18
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  %.not.i.i = icmp eq ptr %i.af, null             ; 2 uses
  br i1 %.not.i.i, label %bb.g, label %_ZN4llvm9StringMapINS_5RTLIB7LibcallENS_15MallocAllocatorEE6insertESt4pairINS_9StringRefES2_E.exit

bb.g:                                             ; preds = %_ZN4llvm5RTLIB19RuntimeLibcallsInfo18getLibcallImplNameENS0_11LibcallImplE.exit
  %i.ag = add nuw nsw i64 %i.z, 17
  %i.ah = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.ag, i64 noundef 8) #11 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm14StringMapEntryINS_5RTLIB7LibcallEE6createINS_15MallocAllocatorEJS2_EEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr align 1 %i.w, i64 %i.z, i1 false)
  br label %_ZN4llvm14StringMapEntryINS_5RTLIB7LibcallEE6createINS_15MallocAllocatorEJS2_EEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i

_ZN4llvm14StringMapEntryINS_5RTLIB7LibcallEE6createINS_15MallocAllocatorEJS2_EEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i: ; preds = %bb.h, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.z
  store i8 0, ptr %i.aj, align 1, !tbaa !12
  store i64 %i.z, ptr %i.ah, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i16 %i.o, ptr %i.ak, align 8, !tbaa !24
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !22
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4llvm11WebAssembly19getLibcallSignatureERKNS_20WebAssemblySubtargetENS_9StringRefERNS_15SmallVectorImplINS_4wasm7ValTypeEEES9_E14LibcallNameMap, i64 12), align 4, !tbaa !39
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4llvm11WebAssembly19getLibcallSignatureERKNS_20WebAssemblySubtargetENS_9StringRefERNS_15SmallVectorImplINS_4wasm7ValTypeEEES9_E14LibcallNameMap, i64 12), align 4, !tbaa !39
  %i.an = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) @_ZZN4llvm11WebAssembly19getLibcallSignatureERKNS_20WebAssemblySubtargetENS_9StringRefERNS_15SmallVectorImplINS_4wasm7ValTypeEEES9_E14LibcallNameMap, i32 noundef %i.ab) #11 ; 0 uses
  br label %_ZN4llvm9StringMapINS_5RTLIB7LibcallENS_15MallocAllocatorEE6insertESt4pairINS_9StringRefES2_E.exit

_ZN4llvm9StringMapINS_5RTLIB7LibcallENS_15MallocAllocatorEE6insertESt4pairINS_9StringRefES2_E.exit: ; preds = %_ZN4llvm5RTLIB19RuntimeLibcallsInfo18getLibcallImplNameENS0_11LibcallImplE.exit, %_ZN4llvm14StringMapEntryINS_5RTLIB7LibcallEE6createINS_15MallocAllocatorEJS2_EEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i
  call void @llvm.assume(i1 %.not.i.i)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %_ZN4llvm9StringMapINS_5RTLIB7LibcallENS_15MallocAllocatorEE6insertESt4pairINS_9StringRefES2_E.exit, %bb.e
  %i.ao = add nuw nsw i64 %.sroa.02.013, 1        ; 2 uses
  %.not11 = icmp eq i64 %i.ao, 3008
  br i1 %.not11, label %bb.d, label %bb.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120StaticLibcallNameMapD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %i.c = icmp eq i32 %i.b, 0
  %.pre13.i = load ptr, ptr %0, align 8, !tbaa !18 ; 4 uses
  br i1 %i.c, label %_ZN4llvm9StringMapINS_5RTLIB7LibcallENS_15MallocAllocatorEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !40   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx.i = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %.pre13.i, i64 %.idx.i
  %.not11.i = icmp eq i32 %i.e, 0
  br i1 %.not11.i, label %_ZN4llvm9StringMapINS_5RTLIB7LibcallENS_15MallocAllocatorEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.012.i = phi ptr [ %i.k, %bb.d ], [ %.pre13.i, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.012.i, align 8, !tbaa !22 ; 3 uses
  %.not10.i = icmp eq ptr %i.h, null
  br i1 %.not10.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = load i64, ptr %i.h, align 8, !tbaa !38
  %i.j = add i64 %i.i, 17
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef %i.j, i64 noundef 8) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i, label %.loopexit.loopexit.i, label %.lr.ph.i

.loopexit.loopexit.i:                             ; preds = %bb.d
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !18
  br label %_ZN4llvm9StringMapINS_5RTLIB7LibcallENS_15MallocAllocatorEED2Ev.exit

_ZN4llvm9StringMapINS_5RTLIB7LibcallENS_15MallocAllocatorEED2Ev.exit: ; preds = %bb.a, %bb.b, %.loopexit.loopexit.i
  %i.l = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %.pre13.i, %bb.b ], [ %.pre13.i, %bb.a ]
  tail call void @free(ptr noundef %i.l) #11
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef zeroext i1 @_ZNK4llvm6Triple11isArch64BitEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_128RuntimeLibcallSignatureTableC2Ev() unnamed_addr #0 align 2 {
vector.ph:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN12_GLOBAL__N_127getRuntimeLibcallSignaturesEvE24RuntimeLibcallSignatures, i8 0, i64 24, i1 false)
  %i.a = tail call noalias noundef nonnull dereferenceable(6652) ptr @_Znwm(i64 noundef 6652) #12 ; 75 uses
  store ptr %i.a, ptr @_ZZN12_GLOBAL__N_127getRuntimeLibcallSignaturesEvE24RuntimeLibcallSignatures, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 6652 ; 2 uses
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_127getRuntimeLibcallSignaturesEvE24RuntimeLibcallSignatures, i64 16), align 8, !tbaa !41
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.2, %vector.body ] ; 4 uses
  %i.c = shl nuw nsw i64 %index, 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> splat (i32 61), ptr %i.d, align 4, !tbaa !12
  store <4 x i32> splat (i32 61), ptr %i.e, align 4, !tbaa !12
  %index.next = shl i64 %index, 2
  %i.f = getelementptr i8, ptr %i.a, i64 %index.next ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %i.h = getelementptr i8, ptr %i.f, i64 48
  store <4 x i32> splat (i32 61), ptr %i.g, align 4, !tbaa !12
  store <4 x i32> splat (i32 61), ptr %i.h, align 4, !tbaa !12
  %index.next.1 = shl i64 %index, 2
  %i.i = getelementptr i8, ptr %i.a, i64 %index.next.1 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 64
  %i.k = getelementptr i8, ptr %i.i, i64 80
  store <4 x i32> splat (i32 61), ptr %i.j, align 4, !tbaa !12
  store <4 x i32> splat (i32 61), ptr %i.k, align 4, !tbaa !12
  %index.next.2 = add nuw nsw i64 %index, 24      ; 2 uses
  %i.l = icmp eq i64 %index.next.2, 1656
  br i1 %i.l, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %vector.body, !llvm.loop !42

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %vector.body
  %.06.i.i.i.ptr.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 6624
  store i32 61, ptr %.06.i.i.i.ptr.i.i.i.i.i.i, align 4, !tbaa !12
  %.06.i.i.i.ptr.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 6628
  store i32 61, ptr %.06.i.i.i.ptr.i.i.i.i.i.i.1, align 4, !tbaa !12
  %.06.i.i.i.ptr.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 6632
  store i32 61, ptr %.06.i.i.i.ptr.i.i.i.i.i.i.2, align 4, !tbaa !12
  %.06.i.i.i.ptr.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 6636
  store i32 61, ptr %.06.i.i.i.ptr.i.i.i.i.i.i.3, align 4, !tbaa !12
  %.06.i.i.i.ptr.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 6640
  store i32 61, ptr %.06.i.i.i.ptr.i.i.i.i.i.i.4, align 4, !tbaa !12
  %.06.i.i.i.ptr.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 6644
  store i32 61, ptr %.06.i.i.i.ptr.i.i.i.i.i.i.5, align 4, !tbaa !12
  %.06.i.i.i.ptr.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 6648
  store i32 61, ptr %.06.i.i.i.ptr.i.i.i.i.i.i.6, align 4, !tbaa !12
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_127getRuntimeLibcallSignaturesEvE24RuntimeLibcallSignatures, i64 8), align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4988
  store <4 x i32> <i32 30, i32 33, i32 35, i32 48>, ptr %i.m, align 4, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 5532
  store i32 48, ptr %i.n, align 4, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 5484
  store <4 x i32> <i32 30, i32 33, i32 35, i32 48>, ptr %i.o, align 4, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 3648
  store i32 35, ptr %i.p, align 4, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 3652
  store i32 45, ptr %i.q, align 4, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 3608
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4964
  store i32 35, ptr %i.s, align 4, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4968
  store i32 45, ptr %i.t, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 6244
  store i32 35, ptr %i.u, align 4, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 6248
  store i32 45, ptr %i.v, align 4, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 5500
  store <4 x i32> <i32 27, i32 30, i32 33, i32 35>, ptr %i.w, align 4, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 5516
  store <4 x i32> <i32 45, i32 30, i32 33, i32 35>, ptr %i.x, align 4, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 6400
  store <4 x i32> <i32 27, i32 30, i32 33, i32 35>, ptr %i.y, align 4, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 6416
  store i32 45, ptr %i.z, align 4, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 4932
  store <4 x i32> <i32 27, i32 41, i32 42, i32 35>, ptr %i.aa, align 4, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 4948
  store <4 x i32> <i32 47, i32 27, i32 30, i32 33>, ptr %i.ab, align 4, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 6212
  store <4 x i32> <i32 27, i32 41, i32 42, i32 43>, ptr %i.ac, align 4, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 6228
  store <4 x i32> <i32 47, i32 27, i32 30, i32 33>, ptr %i.ad, align 4, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 3700
  store i32 12, ptr %i.ae, align 4, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 3704
  store i32 15, ptr %i.af, align 4, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i32 16, ptr %i.ag, align 4, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  store i32 20, ptr %i.ah, align 4, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  store i32 45, ptr %i.ai, align 4, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 5740
  store i32 16, ptr %i.aj, align 4, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 5744
  store i32 20, ptr %i.ak, align 4, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 5752
  store i32 45, ptr %i.al, align 4, !tbaa !12
  store <4 x i32> <i32 34, i32 36, i32 46, i32 16>, ptr %i.r, align 4, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 3624
  store i32 20, ptr %i.am, align 4, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 3632
  store <4 x i32> <i32 45, i32 27, i32 30, i32 33>, ptr %i.an, align 4, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 1164
  store i32 16, ptr %i.ao, align 4, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 1168
  store i32 20, ptr %i.ap, align 4, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 1176
  store i32 45, ptr %i.aq, align 4, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 4692
  store i32 16, ptr %i.ar, align 4, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 4696
  store i32 20, ptr %i.as, align 4, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 4704
  store i32 45, ptr %i.at, align 4, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 2120
  store i32 53, ptr %i.au, align 4, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 2124
  store i32 54, ptr %i.av, align 4, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 2132
  store i32 49, ptr %i.aw, align 4, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 4464
  store i32 17, ptr %i.ax, align 4, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 4468
  store i32 21, ptr %i.ay, align 4, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 4476
  store i32 48, ptr %i.az, align 4, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  store i32 1, ptr %i.ba, align 4, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 5432
  store i32 7, ptr %i.bb, align 4, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 5440
  store i32 43, ptr %i.bc, align 4, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 692
  store i32 1, ptr %i.bd, align 4, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  store i32 7, ptr %i.be, align 4, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  store i32 43, ptr %i.bf, align 4, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 3172
  store i32 1, ptr %i.bg, align 4, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 3176
  store i32 7, ptr %i.bh, align 4, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 3184
  store i32 43, ptr %i.bi, align 4, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 2984
  store i32 1, ptr %i.bj, align 4, !tbaa !12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 2988
  store i32 7, ptr %i.bk, align 4, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 2996
  store i32 43, ptr %i.bl, align 4, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 3060
  store i32 1, ptr %i.bm, align 4, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 3064
  store i32 7, ptr %i.bn, align 4, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 3072
  store i32 43, ptr %i.bo, align 4, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 1572
  store i32 1, ptr %i.bp, align 4, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 1576
  store i32 7, ptr %i.bq, align 4, !tbaa !12
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 1584
  store i32 43, ptr %i.br, align 4, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 1384
  store i32 1, ptr %i.bs, align 4, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 1388
  store i32 7, ptr %i.bt, align 4, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 1396
  store i32 43, ptr %i.bu, align 4, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 1460
  store i32 1, ptr %i.bv, align 4, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 1464
  store i32 7, ptr %i.bw, align 4, !tbaa !12
  %i.bx = load ptr, ptr @_ZZN12_GLOBAL__N_127getRuntimeLibcallSignaturesEvE24RuntimeLibcallSignatures, align 8, !tbaa !9 ; 100 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1472
  store i32 43, ptr %i.by, align 4, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 5292
  store i32 1, ptr %i.bz, align 4, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 5296
  store i32 7, ptr %i.ca, align 4, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 5304
  store i32 43, ptr %i.cb, align 4, !tbaa !12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 1052
  store i32 1, ptr %i.cc, align 4, !tbaa !12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 1056
  store i32 7, ptr %i.cd, align 4, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 1064
  store i32 43, ptr %i.ce, align 4, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 6060
  store i32 1, ptr %i.cf, align 4, !tbaa !12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 6064
  store i32 7, ptr %i.cg, align 4, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 6072
  store i32 43, ptr %i.ch, align 4, !tbaa !12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 216
  store i32 1, ptr %i.ci, align 4, !tbaa !12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 220
  store i32 7, ptr %i.cj, align 4, !tbaa !12
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 228
  store i32 43, ptr %i.ck, align 4, !tbaa !12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  store i32 1, ptr %i.cl, align 4, !tbaa !12
end_hunk_0
