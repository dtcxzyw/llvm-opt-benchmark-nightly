inline.NumInlined: 925
inline.NumDeleted: 531
begin_hunk_0
%"struct.std::array.36" = type { [256 x i8] }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"class.std::exception" = type { ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
end_hunk_0
begin_hunk_1

$_ZN5folly3f146detail16F14VectorMapImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_SC_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_ = comdat any

$_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any
end_hunk_1
begin_hunk_2_@pthread_mutex_unlock
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail16F14VectorMapImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_SC_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !72     ; 4 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !3      ; 3 uses
  %4 = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -4
  %5 = getelementptr inbounds i8, ptr %4, i64 %.neg.i.i.i ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 14 ; 2 uses
  %7 = load i8, ptr %6, align 2, !tbaa !151
  %.not.i20 = icmp ult i8 %7, 16
  br i1 %.not.i20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.a, label %8

8:                                                ; preds = %bb.a
  %9 = zext i32 %i.b to i64
  %10 = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %9
  %11 = tail call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %10) ; 2 uses
  %12 = lshr i64 %11, 55
  %13 = or i64 %12, 257
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.a: ; preds = %8, %bb.a
  %.sroa.5.0.i = phi i64 [ 1, %bb.a ], [ %13, %8 ]
  %.sroa.04.0.i = phi i64 [ 0, %bb.a ], [ %11, %8 ] ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load i64, ptr %14, align 8, !tbaa !78
  %i.d = add i64 %i.c, -256
  store i64 %i.d, ptr %14, align 8, !tbaa !78
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 %2 ; 2 uses
  %16 = load i8, ptr %15, align 1, !tbaa !17
  %.not.i.i.i.i = icmp sgt i8 %16, -1
  br i1 %.not.i.i.i.i, label %17, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i

17:                                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.a
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.9) #39
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.a
  store i8 0, ptr %15, align 1, !tbaa !17
  %18 = load i8, ptr %6, align 2, !tbaa !151
  %.not.i.i.i = icmp ult i8 %18, 16
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISG_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKS9_SD_EE_EEvST_SV_.exit, label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit.a

_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit.a: ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load ptr, ptr %i.e, align 8, !tbaa !80    ; 4 uses
  %i.f = load i64, ptr %14, align 8, !tbaa !78
  %20 = and i64 %i.f, 255                         ; 2 uses
  %21 = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.sroa.04.0.i, i64 range(i64 0, 256) %20) ; 3 uses
  %22 = getelementptr inbounds nuw [64 x i8], ptr %19, i64 %21
  %.not.a = icmp eq ptr %22, %5
  br i1 %.not.a, label %.thread.i.i.i, label %.lr.ph.i.i.i

.thread.i.i.i:                                    ; preds = %34, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit.a
  %.011.lcssa.i.i.i = phi i8 [ 0, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit.a ], [ -16, %34 ]
  %23 = phi i64 [ %21, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit.a ], [ %36, %34 ]
  %24 = getelementptr inbounds nuw [64 x i8], ptr %19, i64 %23
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 14 ; 2 uses
  %26 = load i8, ptr %25, align 2, !tbaa !151
  %27 = add i8 %26, %.011.lcssa.i.i.i
  store i8 %27, ptr %25, align 2, !tbaa !151
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISG_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKS9_SD_EE_EEvST_SV_.exit

.lr.ph.i.i.i:                                     ; preds = %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit.a, %34
  %28 = phi i64 [ %36, %34 ], [ %21, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit.a ]
  %.01026.i.i.i = phi i64 [ %35, %34 ], [ %.sroa.04.0.i, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit.a ]
  %29 = getelementptr inbounds nuw [64 x i8], ptr %19, i64 %28
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 15 ; 2 uses
  %31 = load i8, ptr %30, align 1, !tbaa !146     ; 2 uses
  %.not.i17.i.i.i = icmp eq i8 %31, -2
  br i1 %.not.i17.i.i.i, label %34, label %32

32:                                               ; preds = %.lr.ph.i.i.i
  %33 = add i8 %31, -1
  store i8 %33, ptr %30, align 1, !tbaa !146
  br label %34

34:                                               ; preds = %32, %.lr.ph.i.i.i
  %35 = add i64 %.01026.i.i.i, %.sroa.5.0.i       ; 2 uses
  %36 = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %35, i64 range(i64 0, 256) %20) ; 3 uses
  %37 = getelementptr inbounds nuw [64 x i8], ptr %19, i64 %36
  %38 = icmp eq ptr %37, %5
  br i1 %38, label %.thread.i.i.i, label %.lr.ph.i.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISG_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKS9_SD_EE_EEvST_SV_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i, %.thread.i.i.i
  %39 = zext i32 %i.b to i64                      ; 2 uses
  %40 = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %39 ; 6 uses
  %41 = load ptr, ptr %40, align 8, !tbaa !32     ; 2 uses
  %42 = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 5 uses
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISG_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKS9_SD_EE_EEvST_SV_.exit
  %44 = load i64, ptr %42, align 8, !tbaa !17
  %45 = add i64 %44, 1
  tail call void @_ZdlPvm(ptr noundef %41, i64 noundef %45) #36
  br label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit

_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISG_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKS9_SD_EE_EEvST_SV_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %46 = load i64, ptr %14, align 8, !tbaa !78
  %47 = lshr i64 %46, 8                           ; 5 uses
  %.not = icmp eq i64 %47, %39
  br i1 %.not, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS8_SC_EEPSI_SL_m.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit
  %i.g = trunc i64 %47 to i32
  %i.h = icmp ne i64 %47, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load ptr, ptr %0, align 8, !tbaa !72
  %i.j = and i64 %47, 4294967295
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %i.j
  %48 = tail call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k) ; 2 uses
  %i.l = lshr i64 %48, 56
  %i.m = or i64 %i.l, 128                         ; 2 uses
  %i.n = shl nuw nsw i64 %i.m, 1
  %i.o = or disjoint i64 %i.n, 1
  %i.p = trunc nuw i64 %i.m to i8
  %i.q = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.s = load i64, ptr %14, align 8, !tbaa !78
  %i.t = and i64 %i.s, 255
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !80
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.0.i = phi i64 [ %48, %bb.b ], [ %i.ak, %bb.e ] ; 2 uses
  %49 = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i, i64 range(i64 0, 256) %i.t)
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %49 ; 3 uses
  %i.x = load <16 x i8>, ptr %i.w, align 16
  %i.y = icmp eq <16 x i8> %i.x, %i.r
  %i.z = bitcast <16 x i1> %i.y to i16
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail16F14VectorMapImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_SC_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_:bb.a
  br i1 %.not45, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %50 = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.025.0, i1 true)
  %i.ae = add nsw i32 %.sroa.025.0, -1
  %i.af = and i32 %i.ae, %.sroa.025.0
  %i.ag = zext nneg i32 %50 to i64                ; 2 uses
  tail call void @llvm.assume(i1 %i.ac)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = icmp eq i32 %i.ai, %i.g
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail16F14VectorMapImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_SC_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_:bb.a
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ag
  store i32 %i.b, ptr %i.al, align 4, !tbaa !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %47 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %42, ptr %40, align 8, !tbaa !29
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 5 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail16F14VectorMapImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_SC_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !35 ; 2 uses
  %i.at = icmp ult i64 %i.as, 16
  tail call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %42, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.au, i1 false)
  br label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20: ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSH_8PrefetchE.exit
  store ptr %i.ao, ptr %40, align 8, !tbaa !32
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !17
  store i64 %i.av, ptr %42, align 8, !tbaa !17
  br label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit.i

_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20, %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !35
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !32
  store i64 0, ptr %i.aw, align 8, !tbaa !35
  store i8 0, ptr %i.ap, align 8, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %40, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false), !tbaa.struct !158
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS8_SC_EEPSI_SL_m.exit

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS8_SC_EEPSI_SL_m.exit: ; preds = %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit.i, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit
  ret void
}

end_hunk_5
begin_hunk_6_@_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
_ZSt10destroy_atISt10unique_ptrIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_9TraceDataENS5_23HeterogeneousAccessHashISC_vEENS5_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEEE5EntryESt14default_deleteISO_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEE5EntryEEclEPSN_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i, i64 noundef 24) #36
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i.i.i, label %_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS5_9TraceDataENS7_23HeterogeneousAccessHashISE_vEENS7_26HeterogeneousAccessEqualToISE_vEESaISt4pairIKSE_SF_EEEEEEEEvRS0_PT_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !202

_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS5_9TraceDataENS7_23HeterogeneousAccessHashISE_vEENS7_26HeterogeneousAccessEqualToISE_vEESaISt4pairIKSE_SF_EEEEEEEEvRS0_PT_.exit: ; preds = %_ZSt10destroy_atISt10unique_ptrIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_9TraceDataENS5_23HeterogeneousAccessHashISC_vEENS5_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEEE5EntryESt14default_deleteISO_EEEvPT_.exit.i.i.i.i.i, %bb.a
  ret void
end_hunk_6
begin_hunk_7_@_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !203  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

end_hunk_7
begin_hunk_8_@_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEE9ReferenceESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !203  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

end_hunk_8
begin_hunk_9_@_ZN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_9TraceDataENS3_23HeterogeneousAccessHashISA_vEENS3_26HeterogeneousAccessEqualToISA_vEESaISt4pairIKSA_SB_EEEEE9ReferenceC2ERKSt10shared_ptrISL_E:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.j = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #35
          to label %bb.e unwind label %bb.g       ; 5 uses

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEEEEC2ERKSN_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 0, i64 48, i1 false), !noalias !205
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.k, align 8, !tbaa !80, !noalias !205
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 0, ptr %i.l, align 8, !tbaa !78, !noalias !205
  store ptr %i.j, ptr %2, align 8, !tbaa !58, !alias.scope !205
  %i.m = load ptr, ptr %0, align 8, !tbaa !133
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %i.o = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #3 ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_9TraceDataENS3_23HeterogeneousAccessHashISA_vEENS3_26HeterogeneousAccessEqualToISA_vEESaISt4pairIKSA_SB_EEEEE9ReferenceC2ERKSt10shared_ptrISL_E:bb.a
  store i64 %i.r, ptr %i.s, align 8, !tbaa !58
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef %i.p) #3
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !208
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !208
  store ptr %i.q, ptr %i.i, align 8, !tbaa !212
  %i.w = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #3 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  ret void
end_hunk_10
begin_hunk_11_@_ZN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_9TraceDataENS3_23HeterogeneousAccessHashISA_vEENS3_26HeterogeneousAccessEqualToISA_vEESaISt4pairIKSA_SB_EEEEE9ReferenceD2Ev:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !208
  %i.i = add i64 %i.h, -1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !208
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #3
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58   ; 3 uses
end_hunk_11
begin_hunk_12_@_ZN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_9TraceDataENS3_23HeterogeneousAccessHashISA_vEENS3_26HeterogeneousAccessEqualToISA_vEESaISt4pairIKSA_SB_EEEEE9ReferenceD2Ev:bb.a
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #3, !inline_history !213
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #3, !inline_history !213
  br label %_ZNSt12__shared_ptrIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
end_hunk_12
begin_hunk_13_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_:bb.a
; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_TraceContext.cpp() #2 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #35, !noalias !217 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !11, !noalias !214
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !13, !noalias !214
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !14, !noalias !214
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !220, !noalias !214
  store ptr %i.d, ptr %i.d, align 8, !tbaa !136, !noalias !214
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false), !noalias !214
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox7process12_GLOBAL__N_18registryB5cxx11E, i64 8), align 8, !tbaa !7, !alias.scope !214
  store ptr %i.d, ptr @_ZN8facebook5velox7process12_GLOBAL__N_18registryB5cxx11E, align 8, !tbaa !221, !alias.scope !214
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt12__shared_ptrIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr nonnull @_ZN8facebook5velox7process12_GLOBAL__N_18registryB5cxx11E, ptr nonnull @__dso_handle) #3 ; 0 uses
  ret void
}
end_hunk_13
begin_hunk_14_@llvm.smin.i64
!199 = !{!190, !173, i64 80}
!200 = !{!190, !173, i64 72}
!201 = !{!190, !182, i64 64}
!202 = distinct !{!202, !85}
!203 = !{!204, !31, i64 8}
!204 = !{!"_ZTSSt9type_info", !31, i64 8}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZSt11make_uniqueIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEE5EntryEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!207 = distinct !{!207, !"_ZSt11make_uniqueIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEE5EntryEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!208 = !{!209, !34, i64 16}
!209 = !{!"_ZTSNSt7__cxx1110_List_baseISt10unique_ptrIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINS_12basic_stringIcSt11char_traitsIcESaIcEEENS4_9TraceDataENS6_23HeterogeneousAccessHashISC_vEENS6_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEEE5EntryESt14default_deleteISO_EESaISR_EEE", !210, i64 0}
!210 = !{!"_ZTSNSt7__cxx1110_List_baseISt10unique_ptrIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINS_12basic_stringIcSt11char_traitsIcESaIcEEENS4_9TraceDataENS6_23HeterogeneousAccessHashISC_vEENS6_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEEE5EntryESt14default_deleteISO_EESaISR_EE10_List_implE", !211, i64 0}
!211 = !{!"_ZTSNSt8__detail17_List_node_headerE", !137, i64 0, !34, i64 16}
!212 = !{!46, !46, i64 0}
!213 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZSt11make_sharedIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEEEJEESt10shared_ptrIT_EDpOT0_: argument 0"}
!216 = distinct !{!216, !"_ZSt11make_sharedIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEEEJEESt10shared_ptrIT_EDpOT0_"}
!217 = !{!218, !215}
!218 = distinct !{!218, !219, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_9TraceDataENS5_23HeterogeneousAccessHashISC_vEENS5_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSU_: argument 0"}
!219 = distinct !{!219, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_9TraceDataENS5_23HeterogeneousAccessHashISC_vEENS5_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSU_"}
!220 = !{!137, !46, i64 8}
!221 = !{!135, !135, i64 0}
end_hunk_14
