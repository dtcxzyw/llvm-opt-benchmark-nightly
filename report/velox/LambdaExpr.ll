inline.NumInlined: 2801
inline.NumDeleted: 1446
begin_hunk_0
%"struct.std::array.295" = type { [256 x i8] }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"class.std::exception" = type { ptr }
%class.anon.311 = type { ptr }

$_ZN8facebook5velox4exec11SpecialFormC2ENS1_15SpecialFormKindESt10shared_ptrIKNS0_4TypeEESt6vectorIS4_INS1_4ExprEESaISA_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb = comdat any

end_hunk_0
begin_hunk_1

$_ZN5folly3f146detail16F14VectorMapImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_iEESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_ = comdat any

$_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISC_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKS9_iEE_EEvSP_SR_ = comdat any

$_ZN8facebook5velox12error_source19kErrorSourceRuntimeE = comdat any

$_ZN8facebook5velox10error_code13kInvalidStateE = comdat any
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail16F14VectorMapImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_iEESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.311, align 8            ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !339    ; 3 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr %3, ptr %4, align 8, !tbaa !766
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISC_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKS9_iEE_EEvSP_SR_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %5 = zext i32 %i.b to i64                       ; 2 uses
  %6 = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %5 ; 6 uses
  %7 = load ptr, ptr %6, align 8, !tbaa !22       ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.a: ; preds = %bb.a
  %i.c = load i64, ptr %8, align 8, !tbaa !21
  %i.d = add i64 %i.c, 1
  call void @_ZdlPvm(ptr noundef %7, i64 noundef %i.d) #36
  br label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.a

_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.a: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !342
  %10 = lshr i64 %i.f, 8                          ; 5 uses
  %.not.a = icmp eq i64 %10, %5
  br i1 %.not.a, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS8_iEEPSE_SH_m.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.a
  %i.g = trunc i64 %10 to i32
  %i.h = icmp ne i64 %10, 0
  call void @llvm.assume(i1 %i.h)
  %i.i = load ptr, ptr %0, align 8, !tbaa !339
  %i.j = and i64 %10, 4294967295
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.j
  %11 = call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k) ; 2 uses
  %i.l = lshr i64 %11, 56
  %i.m = or i64 %i.l, 128                         ; 2 uses
  %i.n = shl nuw nsw i64 %i.m, 1
  %i.o = or disjoint i64 %i.n, 1
  %i.p = trunc nuw i64 %i.m to i8
  %i.q = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.s = load i64, ptr %i.e, align 8, !tbaa !342
  %i.t = and i64 %i.s, 255
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !344
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.0.i = phi i64 [ %11, %bb.b ], [ %i.ak, %bb.e ] ; 2 uses
  %12 = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i, i64 range(i64 0, 256) %i.t)
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %12 ; 3 uses
  %i.x = load <16 x i8>, ptr %i.w, align 16
  %i.y = icmp eq <16 x i8> %i.x, %i.r
  %i.z = bitcast <16 x i1> %i.y to i16
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail16F14VectorMapImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_iEESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_:bb.a
  br i1 %.not45, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %13 = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.025.0, i1 true)
  %i.ae = add nsw i32 %.sroa.025.0, -1
  %i.af = and i32 %i.ae, %.sroa.025.0
  %i.ag = zext nneg i32 %13 to i64                ; 2 uses
  call void @llvm.assume(i1 %i.ac)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = icmp eq i32 %i.ai, %i.g
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail16F14VectorMapImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_iEESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_:bb.a
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ag
  store i32 %i.b, ptr %i.al, align 4, !tbaa !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %10 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %8, ptr %6, align 8, !tbaa !15
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !22 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 5 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail16F14VectorMapImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_iEESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !18 ; 2 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.au, i1 false)
  br label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20: ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSD_8PrefetchE.exit
  store ptr %i.ao, ptr %6, align 8, !tbaa !22
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !21
  store i64 %i.av, ptr %8, align 8, !tbaa !21
  br label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i

_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20, %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !18
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !22
  store i64 0, ptr %i.aw, align 8, !tbaa !18
  store i8 0, ptr %i.ap, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ba = load i32, ptr %i.an, align 8, !tbaa !3
  store i32 %i.ba, ptr %i.az, align 8, !tbaa !351
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS8_iEEPSE_SH_m.exit

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS8_iEEPSE_SH_m.exit: ; preds = %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISC_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKS9_iEE_EEvSP_SR_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i = mul i64 %2, -4
  %6 = getelementptr inbounds i8, ptr %5, i64 %.neg.i.i ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 14 ; 2 uses
  %8 = load i8, ptr %7, align 2, !tbaa !723
  %.not = icmp ult i8 %8, 16
  br i1 %.not, label %17, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !339
  %11 = load i32, ptr %1, align 4, !tbaa !3
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds nuw [40 x i8], ptr %10, i64 %12
  %14 = tail call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 2 uses
  %15 = lshr i64 %14, 55
  %16 = or i64 %15, 257
  br label %17

17:                                               ; preds = %9, %4
  %.sroa.5.0 = phi i64 [ 1, %4 ], [ %16, %9 ]
  %.sroa.04.0 = phi i64 [ 0, %4 ], [ %14, %9 ]    ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %19 = load i64, ptr %18, align 8, !tbaa !342    ; 2 uses
  %20 = and i64 %19, -256
  %21 = and i64 %19, 255
  %22 = add i64 %20, -256
  %23 = or disjoint i64 %22, %21
  store i64 %23, ptr %18, align 8, !tbaa !342
  %24 = getelementptr inbounds nuw i8, ptr %6, i64 %2 ; 2 uses
  %25 = load i8, ptr %24, align 1, !tbaa !21
  %.not.i.i.i = icmp sgt i8 %25, -1
  br i1 %.not.i.i.i, label %26, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i

26:                                               ; preds = %17
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.10) #41
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i: ; preds = %17
  store i8 0, ptr %24, align 1, !tbaa !21
  %27 = load i8, ptr %7, align 2, !tbaa !723
  %.not.i.i = icmp ult i8 %27, 16
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit, label %28

28:                                               ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %30 = load ptr, ptr %29, align 8, !tbaa !344    ; 4 uses
  %31 = load i64, ptr %18, align 8, !tbaa !342
  %32 = and i64 %31, 255                          ; 2 uses
  %33 = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.sroa.04.0, i64 range(i64 0, 256) %32) ; 3 uses
  %34 = getelementptr inbounds nuw [64 x i8], ptr %30, i64 %33
  %35 = icmp eq ptr %34, %6
  br i1 %35, label %.thread.i.i, label %.lr.ph.i.i

.thread.i.i:                                      ; preds = %47, %28
  %.011.lcssa.i.i = phi i8 [ 0, %28 ], [ -16, %47 ]
  %36 = phi i64 [ %33, %28 ], [ %49, %47 ]
  %37 = getelementptr inbounds nuw [64 x i8], ptr %30, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 14 ; 2 uses
  %39 = load i8, ptr %38, align 2, !tbaa !723
  %40 = add i8 %39, %.011.lcssa.i.i
  store i8 %40, ptr %38, align 2, !tbaa !723
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit

.lr.ph.i.i:                                       ; preds = %28, %47
  %41 = phi i64 [ %49, %47 ], [ %33, %28 ]
  %.01026.i.i = phi i64 [ %48, %47 ], [ %.sroa.04.0, %28 ]
  %42 = getelementptr inbounds nuw [64 x i8], ptr %30, i64 %41
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 15 ; 2 uses
  %44 = load i8, ptr %43, align 1, !tbaa !718     ; 2 uses
  %.not.i17.i.i = icmp eq i8 %44, -2
  br i1 %.not.i17.i.i, label %47, label %45

45:                                               ; preds = %.lr.ph.i.i
  %46 = add i8 %44, -1
  store i8 %46, ptr %43, align 1, !tbaa !718
  br label %47

47:                                               ; preds = %45, %.lr.ph.i.i
  %48 = add i64 %.01026.i.i, %.sroa.5.0           ; 2 uses
  %49 = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %48, i64 range(i64 0, 256) %32) ; 3 uses
  %50 = getelementptr inbounds nuw [64 x i8], ptr %30, i64 %49
  %51 = icmp eq ptr %50, %6
  br i1 %51, label %.thread.i.i, label %.lr.ph.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i, %.thread.i.i
  ret void
}

end_hunk_5
begin_hunk_6_@llvm.smin.i32
!763 = !{!755, !97, i64 80}
!764 = !{!755, !97, i64 72}
!765 = !{!755, !747, i64 64}
!766 = !{!767, !767, i64 0}
!767 = !{!"p1 _ZTSN5folly16variadic_noop_fnE", !8, i64 0}
end_hunk_6
