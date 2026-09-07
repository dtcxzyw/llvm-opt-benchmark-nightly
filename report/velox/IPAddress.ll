Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/IPAddress?download=true
inline.NumInlined: 1119
inline.NumDeleted: 539
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@llvm.memset.p0.i64

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #3

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.bmi.bzhi.32(i32, i32) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #28

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE16makeSizeInternalILb1ELb0EZNS5_12emplace_backIJS3_lEEERS4_DpOT_EUlPvE_EEvmOT1_m(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.18) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !44
  %.not.i.i = icmp slt i64 %i.b, 0                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 3) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = select i1 %.not.i.i, i1 %i.f, i1 false
  br i1 %i.g, label %_ZN5folly11checked_mulImvEEbPT_S1_S1_.exit.i, label %_ZNK5folly12small_vectorINS_5RangeIPKcEELm2EvE14computeNewSizeEv.exit, !prof !26

_ZN5folly11checked_mulImvEEbPT_S1_S1_.exit.i:     ; preds = %bb.c
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.19) #7
  unreachable

_ZNK5folly12small_vectorINS_5RangeIPKcEELm2EvE14computeNewSizeEv.exit: ; preds = %bb.c
  %i.h = extractvalue { i64, i1 } %i.e, 0
  %i.i = lshr i64 %i.h, 1
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 4611686018427387902)
  %i.k = add nuw nsw i64 %i.j, 1
  %.sroa.speculated.i = select i1 %.not.i.i, i64 %i.k, i64 4
  %.sroa.speculated27 = tail call i64 @llvm.umax.i64(i64 %1, i64 %.sroa.speculated.i) ; 5 uses
  %i.l = icmp samesign ugt i64 %.sroa.speculated27, 1152921504606846975
  br i1 %i.l, label %_ZN5folly11checked_mulImvEEbPT_S1_S1_.exit, label %bb.d, !prof !26

_ZN5folly11checked_mulImvEEbPT_S1_S1_.exit:       ; preds = %_ZNK5folly12small_vectorINS_5RangeIPKcEELm2EvE14computeNewSizeEv.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.19) #7
  unreachable

bb.d:                                             ; preds = %_ZNK5folly12small_vectorINS_5RangeIPKcEELm2EvE14computeNewSizeEv.exit
  %i.m = shl nuw i64 %.sroa.speculated27, 4       ; 3 uses
  %i.n = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %.split.i, !prof !26

.split.i:                                         ; preds = %bb.d
  %i.o = icmp sgt i8 %i.n, 0
  br i1 %i.o, label %bb.e, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.d
  %i.p = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #40
  br i1 %i.p, label %bb.e, label %_ZN5folly14goodMallocSizeEm.exit

bb.e:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %.split.i
  %i.q = tail call i64 @nallocx(i64 noundef %i.m, i32 noundef 0) #35 ; 2 uses
  %.not.i = icmp eq i64 %i.q, 0
  %i.r = lshr i64 %i.q, 4
  %i.s = select i1 %.not.i, i64 %.sroa.speculated27, i64 %i.r ; 2 uses
  %.pre = shl nuw i64 %i.s, 4
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %.split.i, %_ZN5folly10canNallocxEv.exit.i, %bb.e
  %.pre-phi = phi i64 [ %i.m, %.split.i ], [ %i.m, %_ZN5folly10canNallocxEv.exit.i ], [ %.pre, %bb.e ]
  %.0.i12 = phi i64 [ %.sroa.speculated27, %.split.i ], [ %.sroa.speculated27, %_ZN5folly10canNallocxEv.exit.i ], [ %i.s, %bb.e ]
  %i.t = tail call noalias ptr @malloc(i64 noundef %.pre-phi) #41 ; 4 uses
  %.not.i14 = icmp eq ptr %i.t, null
  br i1 %.not.i14, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #7
  unreachable

bb.g:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  %i.u = load i64, ptr %0, align 8, !tbaa !44     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 4 uses
  %.not1.i.i = icmp slt i64 %i.u, 0
  %i.x = select i1 %.not1.i.i, ptr %i.w, ptr %i.v ; 3 uses
  %i.y = and i64 %i.u, 4611686018427387903        ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %3 ; 3 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !162, !nonnull !35, !align !163
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !164, !nonnull !35, !align !163
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !30
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !51
  %.not.i16 = icmp eq ptr %i.x, null
  br i1 %.not.i16, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.idx.i = shl nuw nsw i64 %3, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %i.x, i64 %.idx.i, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = icmp samesign ult i64 %3, %i.y
  br i1 %i.ah, label %bb.j, label %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorINS_5RangeIPKcEELm2EvE16makeSizeInternalILb1ELb0EZNS7_12emplace_backIJS5_lEEERS6_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %.idx38 = shl nuw nsw i64 %3, 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx38
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ak = sub nuw nsw i64 %i.y, %3
  %gepdiff = shl nuw nsw i64 %i.ak, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 1 %i.ai, i64 %gepdiff, i1 false)
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorINS_5RangeIPKcEELm2EvE16makeSizeInternalILb1ELb0EZNS7_12emplace_backIJS5_lEEERS6_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorINS_5RangeIPKcEELm2EvE16makeSizeInternalILb1ELb0EZNS7_12emplace_backIJS5_lEEERS6_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit: ; preds = %bb.i, %bb.j
  %.not.i19 = icmp sgt i64 %i.u, -1
  %.not6.i = icmp eq ptr %i.w, null
  %or.cond = select i1 %.not.i19, i1 true, i1 %.not6.i
  br i1 %or.cond, label %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE8freeHeapEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorINS_5RangeIPKcEELm2EvE16makeSizeInternalILb1ELb0EZNS7_12emplace_backIJS5_lEEERS6_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit
  %i.al = load i64, ptr %i.c, align 8, !tbaa !57
  %i.am = shl i64 %i.al, 4
  %i.an = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly11canSdallocxEv.exit.i.i, label %.split.i.i, !prof !26

.split.i.i:                                       ; preds = %bb.k
  %i.ao = icmp sgt i8 %i.an, 0
  br i1 %i.ao, label %bb.l, label %bb.m

_ZN5folly11canSdallocxEv.exit.i.i:                ; preds = %bb.k
  %i.ap = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #40
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i, %.split.i.i
  tail call void @sdallocx(ptr noundef nonnull %i.w, i64 noundef %i.am, i32 noundef 0) #35
  br label %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE8freeHeapEv.exit

bb.m:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i, %.split.i.i
  tail call void @free(ptr noundef nonnull %i.w) #35
  br label %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE8freeHeapEv.exit

_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE8freeHeapEv.exit: ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorINS_5RangeIPKcEELm2EvE16makeSizeInternalILb1ELb0EZNS7_12emplace_backIJS5_lEEERS6_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit, %bb.l, %bb.m
  store ptr %i.t, ptr %i.v, align 8, !tbaa !15
  %i.aq = load i64, ptr %0, align 8
  %i.ar = and i64 %i.aq, 4611686018427387903
  %storemerge.i21 = or disjoint i64 %i.ar, -9223372036854775808
  store i64 %storemerge.i21, ptr %0, align 8, !tbaa !44
  store i64 %.0.i12, ptr %i.c, align 8, !tbaa !57
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef %0) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::length_error", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0)
  invoke void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #7
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  resume { ptr, i32 } %i.a
}

; Function Attrs: nounwind
declare extern_weak void @sdallocx(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE15simdSplitByCharINS_12small_vectorINS_5RangeIPKcEELm2EvEEEEvcSC_RT_(i8 noundef signext %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #29 comdat align 2 {
bb.a:
  %4 = alloca %class.anon.35, align 8             ; 5 uses
  %5 = alloca %class.anon.35, align 8             ; 5 uses
  %6 = alloca %class.anon.35, align 8             ; 5 uses
  %7 = alloca %class.anon.35, align 8             ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %8 = ptrtoint ptr %2 to i64                     ; 3 uses
  %i.i = icmp eq ptr %1, %2
  br i1 %i.i, label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateINS_12small_vectorINS_5RangeIPKcEELm2EvEEEEEEviPT0_SI_RT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.k = and i64 %i.j, -32                        ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %i.m = and i64 %8, -32                          ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = and i64 %i.j, 31                         ; 2 uses
  %.not.i = icmp eq i64 %i.k, %i.m
  br i1 %.not.i, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre121.a = insertelement <32 x i8> poison, i8 %0, i64 0
  %.pre122 = shufflevector <32 x i8> %.pre121.a, <32 x i8> poison, <32 x i32> zeroinitializer
  br label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.p = load <32 x i8>, ptr %i.l, align 32, !tbaa !15
  %i.q = insertelement <32 x i8> poison, i8 %0, i64 0
  %i.r = shufflevector <32 x i8> %i.q, <32 x i8> poison, <32 x i32> zeroinitializer ; 3 uses
  %i.s = icmp eq <32 x i8> %i.p, %i.r
  %i.t = bitcast <32 x i1> %i.s to i32
  %i.u = shl nuw nsw i64 4294967295, %i.o
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.t, %i.v                       ; 2 uses
  %.not.i1393 = icmp eq i32 %i.w, 0
  br i1 %.not.i1393, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EENS_12small_vectorINS_5RangeIPKcEELm2EvEEEEvSt4pairIT_T0_EPKhRSL_RT1_.exit.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load i64, ptr %3, align 8, !tbaa !44
  br label %bb.d

_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EENS_12small_vectorINS_5RangeIPKcEELm2EvEEEEvSt4pairIT_T0_EPKhRSL_RT1_.exit.preheader: ; preds = %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit, %bb.c
  %.5.lcssa = phi ptr [ %1, %bb.c ], [ %i.aj, %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit ] ; 2 uses
  %.1103 = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %.not.i12.not104 = icmp eq ptr %.1103, %i.n
  br i1 %.not.i12.not104, label %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateINS_12small_vectorINS_5RangeIPKcEELm2EvEEEEEEbiRPT_SJ_RT0_St17integral_constantImLm1EE.exit, label %.lr.ph107

.lr.ph107:                                        ; preds = %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EENS_12small_vectorINS_5RangeIPKcEELm2EvEEEEvSt4pairIT_T0_EPKhRSL_RT1_.exit.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit
  %i.ad = phi i64 [ %.pre, %.lr.ph ], [ %storemerge, %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit ] ; 6 uses
  %.0.i96 = phi ptr [ %i.l, %.lr.ph ], [ %i.aj, %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit ]
  %.013.i95 = phi i32 [ %i.w, %.lr.ph ], [ %i.ag, %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit ] ; 2 uses
  %.594 = phi ptr [ %1, %.lr.ph ], [ %i.aj, %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit ] ; 6 uses
  %i.ae = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.013.i95, i1 true) ; 2 uses
  %i.af = lshr exact i32 %.013.i95, %i.ae
  %i.ag = lshr i32 %i.af, 1                       ; 2 uses
  %i.ah = zext nneg i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i96, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #35
  store ptr %.594, ptr %i.e, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #35
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %.594 to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  store i64 %i.am, ptr %i.f, align 8, !tbaa !30
  %i.an = icmp ult i64 %i.ad, 2
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.ad ; 2 uses
  store ptr %.594, ptr %i.ao, align 8, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.594, i64 %i.am
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !51
  br label %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ar = and i64 %i.ad, 4611686018427387903      ; 4 uses
  %.not.i.i18 = icmp sgt i64 %i.ad, -1
  %i.as = load i64, ptr %i.x, align 8
  %.0.i.i19 = select i1 %.not.i.i18, i64 2, i64 %i.as
  %i.at = icmp eq i64 %.0.i.i19, %i.ar
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.au = add nuw nsw i64 %i.ar, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  store ptr %i.e, ptr %7, align 8, !tbaa !167
  store ptr %i.f, ptr %i.z, align 8, !tbaa !168
  call void @_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE16makeSizeInternalILb1ELb0EZNS5_12emplace_backIJS3_lEEERS4_DpOT_EUlPvE_EEvmOT1_m(ptr noundef nonnull align 8 dereferenceable(40) %3, i64 noundef %i.au, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %.pre.i = load i64, ptr %3, align 8, !tbaa !44
  br label %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.y, align 8, !tbaa !15
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.ar ; 2 uses
  store ptr %.594, ptr %i.aw, align 8, !tbaa !50
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.594, i64 %i.am
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !51
  br label %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit

_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit: ; preds = %bb.g, %bb.h, %bb.e
  %storemerge.in = phi i64 [ %i.ad, %bb.e ], [ %i.ad, %bb.h ], [ %.pre.i, %bb.g ]
  %storemerge = add i64 %storemerge.in, 1         ; 2 uses
  store i64 %storemerge, ptr %3, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  %.not.i13 = icmp eq i32 %i.ag, 0
  br i1 %.not.i13, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EENS_12small_vectorINS_5RangeIPKcEELm2EvEEEEvSt4pairIT_T0_EPKhRSL_RT1_.exit.preheader, label %bb.d, !llvm.loop !165

_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EENS_12small_vectorINS_5RangeIPKcEELm2EvEEEEvSt4pairIT_T0_EPKhRSL_RT1_.exit.loopexit: ; preds = %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit25, %bb.i
  %.7.lcssa = phi ptr [ %.3105, %bb.i ], [ %i.bi, %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit25 ] ; 2 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.1106, i64 32 ; 3 uses
  %.not.i12.not = icmp eq ptr %.1, %i.n
  br i1 %.not.i12.not, label %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateINS_12small_vectorINS_5RangeIPKcEELm2EvEEEEEEbiRPT_SJ_RT0_St17integral_constantImLm1EE.exit, label %bb.i, !llvm.loop !166

bb.i:                                             ; preds = %.lr.ph107, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EENS_12small_vectorINS_5RangeIPKcEELm2EvEEEEvSt4pairIT_T0_EPKhRSL_RT1_.exit.loopexit
  %.1106 = phi ptr [ %.1103, %.lr.ph107 ], [ %.1, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EENS_12small_vectorINS_5RangeIPKcEELm2EvEEEEvSt4pairIT_T0_EPKhRSL_RT1_.exit.loopexit ] ; 3 uses
  %.3105 = phi ptr [ %.5.lcssa, %.lr.ph107 ], [ %.7.lcssa, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EENS_12small_vectorINS_5RangeIPKcEELm2EvEEEEvSt4pairIT_T0_EPKhRSL_RT1_.exit.loopexit ] ; 2 uses
  %i.az = load <32 x i8>, ptr %.1106, align 1, !tbaa !15
  %i.ba = icmp eq <32 x i8> %i.az, %i.r
  %i.bb = bitcast <32 x i1> %i.ba to i32          ; 2 uses
  %.not.i.i97 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i97, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EENS_12small_vectorINS_5RangeIPKcEELm2EvEEEEvSt4pairIT_T0_EPKhRSL_RT1_.exit.loopexit, label %.lr.ph101.preheader

.lr.ph101.preheader:                              ; preds = %bb.i
  %.pre119 = load i64, ptr %3, align 8, !tbaa !44
  br label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101.preheader, %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit25
  %i.bc = phi i64 [ %storemerge90, %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit25 ], [ %.pre119, %.lr.ph101.preheader ] ; 6 uses
  %.0.i.i100 = phi ptr [ %i.bi, %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit25 ], [ %.1106, %.lr.ph101.preheader ]
  %.013.i.i99 = phi i32 [ %i.bf, %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit25 ], [ %i.bb, %.lr.ph101.preheader ] ; 2 uses
  %.798 = phi ptr [ %i.bi, %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit25 ], [ %.3105, %.lr.ph101.preheader ] ; 6 uses
  %i.bd = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.013.i.i99, i1 true) ; 2 uses
  %i.be = lshr exact i32 %.013.i.i99, %i.bd
  %i.bf = lshr i32 %i.be, 1                       ; 2 uses
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i100, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store ptr %.798, ptr %i.a, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %.798 to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 3 uses
  store i64 %i.bl, ptr %i.b, align 8, !tbaa !30
  %i.bm = icmp ult i64 %i.bc, 2
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph101
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.bc ; 2 uses
  store ptr %.798, ptr %i.bn, align 8, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.798, i64 %i.bl
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !51
  br label %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit25

bb.k:                                             ; preds = %.lr.ph101
  %i.bq = and i64 %i.bc, 4611686018427387903      ; 4 uses
  %.not.i.i21 = icmp sgt i64 %i.bc, -1
  %i.br = load i64, ptr %i.aa, align 8
  %.0.i.i22 = select i1 %.not.i.i21, i64 2, i64 %i.br
  %i.bs = icmp eq i64 %.0.i.i22, %i.bq
  br i1 %i.bs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bt = add nuw nsw i64 %i.bq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  store ptr %i.a, ptr %6, align 8, !tbaa !167
  store ptr %i.b, ptr %i.ac, align 8, !tbaa !168
  call void @_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE16makeSizeInternalILb1ELb0EZNS5_12emplace_backIJS3_lEEERS4_DpOT_EUlPvE_EEvmOT1_m(ptr noundef nonnull align 8 dereferenceable(40) %3, i64 noundef %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %.pre.i24 = load i64, ptr %3, align 8, !tbaa !44
  br label %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit25

bb.m:                                             ; preds = %bb.k
  %i.bu = load ptr, ptr %i.ab, align 8, !tbaa !15
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bq ; 2 uses
  store ptr %.798, ptr %i.bv, align 8, !tbaa !50
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.798, i64 %i.bl
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !51
  br label %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit25

_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit25: ; preds = %bb.l, %bb.m, %bb.j
  %storemerge90.in = phi i64 [ %i.bc, %bb.j ], [ %i.bc, %bb.m ], [ %.pre.i24, %bb.l ]
  %storemerge90 = add i64 %storemerge90.in, 1     ; 2 uses
  store i64 %storemerge90, ptr %3, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %.not.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EENS_12small_vectorINS_5RangeIPKcEELm2EvEEEEvSt4pairIT_T0_EPKhRSL_RT1_.exit.loopexit, label %.lr.ph101, !llvm.loop !165

_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateINS_12small_vectorINS_5RangeIPKcEELm2EvEEEEEEbiRPT_SJ_RT0_St17integral_constantImLm1EE.exit: ; preds = %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EENS_12small_vectorINS_5RangeIPKcEELm2EvEEEEvSt4pairIT_T0_EPKhRSL_RT1_.exit.loopexit, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EENS_12small_vectorINS_5RangeIPKcEELm2EvEEEEvSt4pairIT_T0_EPKhRSL_RT1_.exit.preheader
  %.3.lcssa = phi ptr [ %.5.lcssa, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EENS_12small_vectorINS_5RangeIPKcEELm2EvEEEEvSt4pairIT_T0_EPKhRSL_RT1_.exit.preheader ], [ %.7.lcssa, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EENS_12small_vectorINS_5RangeIPKcEELm2EvEEEEvSt4pairIT_T0_EPKhRSL_RT1_.exit.loopexit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.1103, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EENS_12small_vectorINS_5RangeIPKcEELm2EvEEEEvSt4pairIT_T0_EPKhRSL_RT1_.exit.preheader ], [ %.1, %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EENS_12small_vectorINS_5RangeIPKcEELm2EvEEEEvSt4pairIT_T0_EPKhRSL_RT1_.exit.loopexit ] ; 2 uses
  %i.by = icmp eq ptr %.1.lcssa, %2
  br i1 %i.by, label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateINS_12small_vectorINS_5RangeIPKcEELm2EvEEEEEEviPT0_SI_RT1_.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateINS_12small_vectorINS_5RangeIPKcEELm2EvEEEEEEbiRPT_SJ_RT0_St17integral_constantImLm1EE.exit
  %.pre-phi123 = phi <32 x i8> [ %.pre122, %._crit_edge ], [ %i.r, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateINS_12small_vectorINS_5RangeIPKcEELm2EvEEEEEEbiRPT_SJ_RT0_St17integral_constantImLm1EE.exit ]
  %.088 = phi ptr [ %1, %._crit_edge ], [ %.3.lcssa, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateINS_12small_vectorINS_5RangeIPKcEELm2EvEEEEEEbiRPT_SJ_RT0_St17integral_constantImLm1EE.exit ] ; 2 uses
  %.0 = phi ptr [ %i.l, %._crit_edge ], [ %.1.lcssa, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateINS_12small_vectorINS_5RangeIPKcEELm2EvEEEEEEbiRPT_SJ_RT0_St17integral_constantImLm1EE.exit ] ; 3 uses
  %.sroa.02.0.i = phi i64 [ %i.o, %._crit_edge ], [ 0, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateINS_12small_vectorINS_5RangeIPKcEELm2EvEEEEEEbiRPT_SJ_RT0_St17integral_constantImLm1EE.exit ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %8
  %i.cc = load <32 x i8>, ptr %.0, align 1, !tbaa !15
  %i.cd = icmp eq <32 x i8> %i.cc, %.pre-phi123
  %.sroa.2.0.extract.trunc.i.i = trunc i64 %i.cb to i32 ; 2 uses
  %i.ce = bitcast <32 x i1> %i.cd to i32
  %i.cf = shl nuw nsw i64 4294967295, %.sroa.02.0.i
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = and i32 %i.ce, %i.cg
  %i.ci = icmp ult i32 %.sroa.2.0.extract.trunc.i.i, 33
  call void @llvm.assume(i1 %i.ci)
  %i.cj = sub nuw nsw i32 32, %.sroa.2.0.extract.trunc.i.i
  %i.ck = call noundef i32 @llvm.x86.bmi.bzhi.32(i32 %i.ch, i32 %i.cj) ; 2 uses
  %.not.i16110 = icmp eq i32 %i.ck, 0
  br i1 %.not.i16110, label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateINS_12small_vectorINS_5RangeIPKcEELm2EvEEEEEEviPT0_SI_RT1_.exit, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre120 = load i64, ptr %3, align 8, !tbaa !44
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph114, %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit30
  %i.co = phi i64 [ %.pre120, %.lr.ph114 ], [ %storemerge91, %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit30 ] ; 6 uses
  %.0.i15113 = phi ptr [ %.0, %.lr.ph114 ], [ %i.cu, %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit30 ]
  %.013.i14112 = phi i32 [ %i.ck, %.lr.ph114 ], [ %i.cr, %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit30 ] ; 2 uses
  %.6111 = phi ptr [ %.088, %.lr.ph114 ], [ %i.cu, %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit30 ] ; 6 uses
  %i.cp = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.013.i14112, i1 true) ; 2 uses
  %i.cq = lshr exact i32 %.013.i14112, %i.cp
  %i.cr = lshr i32 %i.cq, 1                       ; 2 uses
  %i.cs = zext nneg i32 %i.cp to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i15113, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  store ptr %.6111, ptr %i.c, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %.6111 to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 3 uses
  store i64 %i.cx, ptr %i.d, align 8, !tbaa !30
  %i.cy = icmp ult i64 %i.co, 2
  br i1 %i.cy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.co ; 2 uses
  store ptr %.6111, ptr %i.cz, align 8, !tbaa !50
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %.6111, i64 %i.cx
  store ptr %i.db, ptr %i.da, align 8, !tbaa !51
  br label %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit30

bb.q:                                             ; preds = %bb.o
  %i.dc = and i64 %i.co, 4611686018427387903      ; 4 uses
  %.not.i.i26 = icmp sgt i64 %i.co, -1
  %i.dd = load i64, ptr %i.cl, align 8
  %.0.i.i27 = select i1 %.not.i.i26, i64 2, i64 %i.dd
  %i.de = icmp eq i64 %.0.i.i27, %i.dc
  br i1 %i.de, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.df = add nuw nsw i64 %i.dc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %i.c, ptr %5, align 8, !tbaa !167
  store ptr %i.d, ptr %i.cn, align 8, !tbaa !168
  call void @_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE16makeSizeInternalILb1ELb0EZNS5_12emplace_backIJS3_lEEERS4_DpOT_EUlPvE_EEvmOT1_m(ptr noundef nonnull align 8 dereferenceable(40) %3, i64 noundef %i.df, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %.pre.i29 = load i64, ptr %3, align 8, !tbaa !44
  br label %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit30

bb.s:                                             ; preds = %bb.q
  %i.dg = load ptr, ptr %i.cm, align 8, !tbaa !15
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dc ; 2 uses
  store ptr %.6111, ptr %i.dh, align 8, !tbaa !50
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.6111, i64 %i.cx
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !51
  br label %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit30

_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit30: ; preds = %bb.r, %bb.s, %bb.p
  %storemerge91.in = phi i64 [ %i.co, %bb.p ], [ %i.co, %bb.s ], [ %.pre.i29, %bb.r ]
  %storemerge91 = add i64 %storemerge91.in, 1     ; 2 uses
  store i64 %storemerge91, ptr %3, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  %.not.i16 = icmp eq i32 %i.cr, 0
  br i1 %.not.i16, label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateINS_12small_vectorINS_5RangeIPKcEELm2EvEEEEEEviPT0_SI_RT1_.exit, label %bb.o, !llvm.loop !165

_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateINS_12small_vectorINS_5RangeIPKcEELm2EvEEEEEEviPT0_SI_RT1_.exit: ; preds = %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit30, %bb.n, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateINS_12small_vectorINS_5RangeIPKcEELm2EvEEEEEEbiRPT_SJ_RT0_St17integral_constantImLm1EE.exit, %bb.a
  %.2 = phi ptr [ %1, %bb.a ], [ %.3.lcssa, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateINS_12small_vectorINS_5RangeIPKcEELm2EvEEEEEEbiRPT_SJ_RT0_St17integral_constantImLm1EE.exit ], [ %.088, %bb.n ], [ %i.cu, %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit30 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #35
  store ptr %.2, ptr %i.g, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #35
  %i.dk = ptrtoint ptr %.2 to i64
  %i.dl = sub i64 %8, %i.dk                       ; 3 uses
  store i64 %i.dl, ptr %i.h, align 8, !tbaa !30
  %i.dm = load i64, ptr %3, align 8, !tbaa !44    ; 6 uses
  %i.dn = icmp ult i64 %i.dm, 2
  br i1 %i.dn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateINS_12small_vectorINS_5RangeIPKcEELm2EvEEEEEEviPT0_SI_RT1_.exit
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dm ; 2 uses
  store ptr %.2, ptr %i.dp, align 8, !tbaa !50
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.2, i64 %i.dl
  store ptr %i.dr, ptr %i.dq, align 8, !tbaa !51
  br label %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit35

bb.u:                                             ; preds = %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateINS_12small_vectorINS_5RangeIPKcEELm2EvEEEEEEviPT0_SI_RT1_.exit
  %i.ds = and i64 %i.dm, 4611686018427387903      ; 4 uses
  %.not.i.i31 = icmp sgt i64 %i.dm, -1
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.du = load i64, ptr %i.dt, align 8
  %.0.i.i32 = select i1 %.not.i.i31, i64 2, i64 %i.du
  %i.dv = icmp eq i64 %.0.i.i32, %i.ds
  br i1 %i.dv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dw = add nuw nsw i64 %i.ds, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr %i.g, ptr %4, align 8, !tbaa !167
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.h, ptr %i.dx, align 8, !tbaa !168
  call void @_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE16makeSizeInternalILb1ELb0EZNS5_12emplace_backIJS3_lEEERS4_DpOT_EUlPvE_EEvmOT1_m(ptr noundef nonnull align 8 dereferenceable(40) %3, i64 noundef %i.dw, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %.pre.i34 = load i64, ptr %3, align 8, !tbaa !44
  br label %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit35

bb.w:                                             ; preds = %bb.u
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !15
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.ds ; 2 uses
  store ptr %.2, ptr %i.ea, align 8, !tbaa !50
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %.2, i64 %i.dl
  store ptr %i.ec, ptr %i.eb, align 8, !tbaa !51
  br label %_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit35

_ZN5folly12small_vectorINS_5RangeIPKcEELm2EvE12emplace_backIJS3_lEEERS4_DpOT_.exit35: ; preds = %bb.v, %bb.w, %bb.t
  %storemerge92.in = phi i64 [ %i.dm, %bb.t ], [ %i.dm, %bb.w ], [ %.pre.i34, %bb.v ]
  %storemerge92 = add i64 %storemerge92.in, 1
  store i64 %storemerge92, ptr %3, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #35
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google17MakeCheckOpStringImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::base::CheckOpMessageBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !67
  %i.b = load i64, ptr %0, align 8, !tbaa !30
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.b)
          to label %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit: ; preds = %bb.a
  %i.d = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit
  %i.e = load i32, ptr %1, align 4, !tbaa !45
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %i.e)
          to label %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit: ; preds = %bb.b
  %i.g = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret ptr %i.g

bb.d:                                             ; preds = %bb.b, %bb.a, %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit, %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.h
}

declare void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef %0) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  call void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0)
  invoke void @_ZN5folly15throw_exceptionISt12out_of_rangeEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #7
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt12out_of_rangeEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 2 uses
  tail call void @_ZNSt12out_of_rangeC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #35
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #37
  unreachable
}

declare void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12out_of_rangeC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #20 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12out_of_range, i64 16), ptr %0, align 8, !tbaa !25
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINS_20IPAddressFormatErrorEEEJS3_EEEvDpT0_(i32 noundef %0) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::BadExpectedAccess.44", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINS_20IPAddressFormatErrorEEE, i64 16), ptr %1, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %0, ptr %i.a, align 8, !tbaa !71
  invoke void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessINS_20IPAddressFormatErrorEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(12) %1) #7
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %1) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  resume { ptr, i32 } %i.b
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessINS_20IPAddressFormatErrorEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINS_20IPAddressFormatErrorEEE, i64 16), ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !71
  store i32 %i.d, ptr %i.b, align 8, !tbaa !71
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly17BadExpectedAccessINS_20IPAddressFormatErrorEEE, ptr nonnull @_ZNSt9exceptionD2Ev) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly17BadExpectedAccessINS_20IPAddressFormatErrorEED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly11toAppendFitIJhPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !60
  %i.c = load i8, ptr %0, align 1, !tbaa !15
  %i.d = zext i8 %i.c to i64
  %i.e = tail call noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %i.d)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.e)
  %i.f = load i8, ptr %0, align 1, !tbaa !15
  %i.g = load ptr, ptr %1, align 8, !tbaa !60     ; 5 uses
  %i.h = zext i8 %i.f to i64
end_hunk_0
