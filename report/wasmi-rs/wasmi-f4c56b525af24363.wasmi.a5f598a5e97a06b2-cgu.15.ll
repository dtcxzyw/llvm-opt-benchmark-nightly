Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.15?download=true
inline.NumInlined: 1440
inline.NumDeleted: 651
begin_hunk_0_@_RINvNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func2op6binary24commutative_consteval_vtNtB2_8I32BitOrEBc_:bb.a
  store i64 %.sroa.21.0.insert.ext.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func2op6binary24commutative_consteval_vtNtB2_8I32NotEqEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val4 = load i64, ptr %1, align 8, !noundef !5
  %i.a = trunc i64 %.val4 to i32
  %.val = load i64, ptr %2, align 8, !noundef !5
  %i.b = trunc i64 %.val to i32
  %i.c = icmp ne i32 %i.a, %i.b
  %i.d = zext i1 %i.c to i64
  store i64 %i.d, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func2op6binary24commutative_consteval_vtNtB2_8I64BitOrEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val1 = load i64, ptr %1, align 8, !noundef !5
  %.val = load i64, ptr %2, align 8, !noundef !5
  %i.a = or i64 %.val, %.val1
  store i64 %i.a, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %.sroa.55.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func2op6binary24commutative_consteval_vtNtB2_8I64NotEqEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val4 = load i64, ptr %1, align 8, !noundef !5
  %.val = load i64, ptr %2, align 8, !noundef !5
  %i.a = icmp ne i64 %.val4, %.val
  %i.b = zext i1 %i.a to i64
  store i64 %i.b, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func2op6binary24commutative_consteval_vtNtB2_9I32BitAndEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %2, align 8, !noundef !5
  %.val6 = load i64, ptr %1, align 8, !noundef !5
  %i.a = and i64 %.val, 4294967295
  %.sroa.21.0.insert.ext.i = and i64 %i.a, %.val6
  store i64 %.sroa.21.0.insert.ext.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func2op6binary24commutative_consteval_vtNtB2_9I32BitXorEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %2, align 8, !noundef !5
  %.val6 = load i64, ptr %1, align 8, !noundef !5
  %i.a = xor i64 %.val6, %.val
  %.sroa.21.0.insert.ext.i = and i64 %i.a, 4294967295
  store i64 %.sroa.21.0.insert.ext.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func2op6binary24commutative_consteval_vtNtB2_9I64BitAndEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val1 = load i64, ptr %1, align 8, !noundef !5
  %.val = load i64, ptr %2, align 8, !noundef !5
  %i.a = and i64 %.val, %.val1
  store i64 %i.a, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %.sroa.55.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func2op6binary24commutative_consteval_vtNtB2_9I64BitXorEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val1 = load i64, ptr %1, align 8, !noundef !5
  %.val = load i64, ptr %2, align 8, !noundef !5
  %i.a = xor i64 %.val, %.val1
  store i64 %i.a, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %.sroa.55.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsc_NtCsg06799QCvd1_17wasmi_collections3mapINtB6_3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTBT_B1u_EE9from_iterINtNtB2q_8adapters12GenericShuntINtNtB3G_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB4t_4core7exports6ExportENCNvMNtB1y_6parserNtB61_12ModuleParser15process_exports0EINtNtB2s_6result6ResultzNtNtB1A_5error5ErrorEEEB1A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #2 {
bb.a:
  tail call void @_RINvXs1o_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB7_8BTreeMapINtNtBd_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTB19_B1t_EE9from_iterINtNtB2p_8adapters12GenericShuntINtNtB3G_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB4t_4core7exports6ExportENCNvMNtB1x_6parserNtB61_12ModuleParser15process_exports0EINtNtB2r_6result6ResultzNtNtB1z_5error5ErrorEEEB1z_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtNtNtCsefoF4u9kbII_5wasmi6engine8executor5inoutNtB2_11InOutParams3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 9)) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %4, i64 %3) ; 2 uses
  %i.a = icmp ult i64 %..i, %2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %..i, %2
  br i1 %i.b, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.c, align 8
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.d, align 8
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 7) i8 @_RNvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6localsNtB5_14LocalsRegistry2ty(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = icmp ugt i64 %i.e, %i.c
  br i1 %i.f, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val7 = load i64, ptr %i.h, align 8, !noundef !5
  %i.i = tail call fastcc noundef i8 @_RNvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6localsNtB5_14LocalsRegistry7ty_slow(ptr %.val, i64 %.val7, i32 noundef %1) ; 2 uses
  %.not = icmp eq i8 %i.i, -1
  br i1 %.not, label %bb.d, label %bb.e, !prof !11

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.c
  %i.m = load i8, ptr %i.l, align 1, !range !7, !noundef !5
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6localsNtB5_8LocalIdxNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0 = phi i8 [ %i.m, %bb.c ], [ %i.i, %bb.b ]
  ret i8 %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 7) i8 @_RNvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6localsNtB5_14LocalsRegistry7ty_slow(ptr nofree readonly captures(none) %.32.val, i64 %.40.val, i32 noundef %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %.40.val, 1152921504606846976
  tail call void @llvm.assume(i1 %i.a)
  switch i64 %.40.val, label %.lr.ph.i.i [
    i64 0, label %bb.e
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.i, %.lr.ph.i.i ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %.32.val, i64 %.sroa.05.0.lcssa.i.i
  %.val14.i.i = load i32, ptr %i.b, align 4, !alias.scope !1097, !noundef !5 ; 2 uses
  %i.c = icmp eq i32 %.val14.i.i, %0
  br i1 %i.c, label %_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6locals10LocalGroup20binary_search_by_keymNvMs2_Bx_Bv_9max_indexEBF_.exit, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.017.i.i = phi i64 [ %i.j, %.lr.ph.i.i ], [ %.40.val, %bb.a ] ; 2 uses
  %.sroa.05.016.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = lshr i64 %.sroa.01.017.i.i, 1            ; 2 uses
  %i.e = add nuw nsw i64 %i.d, %.sroa.05.016.i.i  ; 3 uses
  %i.f = icmp ult i64 %i.e, %.40.val
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.32.val, i64 %i.e
  %.val12.i.i = load i32, ptr %i.g, align 4, !alias.scope !1097, !noundef !5
  %i.h = icmp ugt i32 %.val12.i.i, %0
  %i.i = select i1 %i.h, i64 %.sroa.05.016.i.i, i64 %i.e, !unpredictable !5 ; 2 uses
  %i.j = sub nuw nsw i64 %.sroa.01.017.i.i, %i.d  ; 2 uses
  %i.k = icmp ugt i64 %i.j, 1
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = icmp ult i32 %.val14.i.i, %0
  %i.m = zext i1 %i.l to i64
  %i.n = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.m ; 3 uses
  %i.o = icmp ule i64 %i.n, %.40.val
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %i.n, %.40.val
  br i1 %i.p, label %bb.e, label %_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6locals10LocalGroup20binary_search_by_keymNvMs2_Bx_Bv_9max_indexEBF_.exit

_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6locals10LocalGroup20binary_search_by_keymNvMs2_Bx_Bv_9max_indexEBF_.exit: ; preds = %._crit_edge.i.i, %bb.b
  %.sroa.4.1.i.i3 = phi i64 [ %i.n, %bb.b ], [ %.sroa.05.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.q = icmp ult i64 %.sroa.4.1.i.i3, %.40.val
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6locals10LocalGroup20binary_search_by_keymNvMs2_Bx_Bv_9max_indexEBF_.exit
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.32.val, i64 %.sroa.4.1.i.i3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i8, ptr %i.s, align 4, !range !7, !noundef !5
  br label %bb.e

bb.d:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6locals10LocalGroup20binary_search_by_keymNvMs2_Bx_Bv_9max_indexEBF_.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.4.1.i.i3, i64 noundef %.40.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.1 = phi i8 [ -1, %bb.a ], [ %i.t, %bb.c ], [ -1, %bb.b ]
  ret i8 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6localsNtB5_14LocalsRegistry8register(ptr noalias nofree noundef align 8 dereferenceable(56) %0, i64 noundef %1, i8 noundef range(i8 0, 7) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call i64 @llvm.uadd.sat.i64(i64 %i.d, i64 %1)
  %i.f = icmp ugt i64 %i.e, 30000
  br i1 %i.f, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ null, %bb.f ], [ %i.l, %bb.e ], [ null, %bb.a ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 3 uses
  %i.i = icmp sgt i64 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = tail call i64 @llvm.usub.sat.i64(i64 100, i64 %i.h) ; 2 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.j)
  %.not = icmp samesign ugt i64 %i.h, 99
  %. = select i1 %.not, i8 -1, i8 %2
  tail call void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter7sources8repeat_n7RepeatNBG_EECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 %..i, i8 noundef %.)
  %.not7.not = icmp ugt i64 %1, %i.j
  br i1 %.not7.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i64 16, ptr %i.k, align 4
  store i8 21, ptr %i.a, align 8
  %i.l = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.f:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6locals10LocalGroupE8push_mutBP_.exit, %bb.d
  %i.m = load i64, ptr %i.c, align 8, !noundef !5
  %i.n = add i64 %i.m, %1
  store i64 %i.n, ptr %i.c, align 8
  br label %bb.c

bb.g:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.c, align 8, !noundef !5
  %i.p = add i64 %i.o, %1
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.q, -1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !1100, !noundef !5 ; 3 uses
  %i.v = load i64, ptr %i.s, align 8, !range !1101, !alias.scope !1100, !noundef !5
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.h, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6locals10LocalGroupE8push_mutBP_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6locals10LocalGroupE8grow_oneBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #22
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6locals10LocalGroupE8push_mutBP_.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6locals10LocalGroupE8push_mutBP_.exit: ; preds = %bb.g, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1100, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.u ; 2 uses
  store i32 %i.r, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i8 %2, ptr %i.aa, align 4
  %i.ab = add i64 %i.u, 1
  store i64 %i.ab, ptr %i.t, align 8, !alias.scope !1100
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand7resolve(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = load i8, ptr %i.b, align 4, !range !4, !noundef !5 ; 3 uses
  %i.d = add nsw i8 %i.c, -7
  %i.e = icmp samesign ugt i8 %i.c, 6
  %narrow = select i1 %i.e, i8 %i.d, i8 2
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.g = load i8, ptr %i.f, align 1, !range !6, !noundef !5
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.i, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.j = load i8, ptr %i.i, align 1, !range !6, !noundef !5
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.o, label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.l = load i64, ptr %1, align 8, !noundef !5   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  %.sroa.013.sroa.0.0.extract.trunc = trunc i64 %i.l to i32
  %.sroa.013.sroa.4.0.extract.shift = lshr i64 %i.l, 32
  %.sroa.013.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.013.sroa.4.0.extract.shift to i32
  %.sroa.0.sroa.0.0.extract.trunc8 = trunc i64 %i.l to i8
  %.sroa.0.sroa.6.0.extract.shift11 = and i32 %.sroa.013.sroa.0.0.extract.trunc, -256
  br label %bb.m

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val16 = load i64, ptr %i.p, align 8           ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val17 = load i32, ptr %i.q, align 4, !noundef !5 ; 2 uses
  %i.r = icmp ugt i32 %.val17, 65535
  br i1 %i.r, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = zext nneg i32 %.val17 to i64             ; 3 uses
  %i.t = icmp ugt i64 %.val16, %i.s
  br i1 %i.t, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %.val16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19, !noalias !1104
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i8, ptr %i.u, align 8, !range !7, !noundef !5
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1104
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i64 9, ptr %i.w, align 4, !noalias !1104
  store i8 21, ptr %i.a, align 8, !noalias !1104
  %i.x = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a), !noalias !1104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1104
  store ptr %i.x, ptr %0, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %.val, i64 %i.s
  %i.z = load i16, ptr %i.y, align 2, !noalias !1104, !noundef !5
  %i.aa = zext i16 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 3                ; 2 uses
  %.sroa.0.sroa.0.0.extract.trunc = trunc i32 %i.ab to i8
  %.sroa.0.sroa.6.0.extract.shift = and i32 %i.ab, 524032
  br label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.63.0.sink = phi i8 [ %.sroa.63.0, %bb.m ], [ -1, %bb.j ]
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.63.0.sink, ptr %.sroa.63.0..sroa_idx4, align 8
  ret void

bb.m:                                             ; preds = %bb.n, %bb.o, %bb.i, %bb.k, %bb.e
  %.sroa.6.sroa.0.0 = phi i32 [ undef, %bb.i ], [ undef, %bb.k ], [ undef, %bb.o ], [ undef, %bb.n ], [ %.sroa.013.sroa.4.0.extract.trunc, %bb.e ]
  %.sroa.6.sroa.2.0 = phi i64 [ undef, %bb.i ], [ undef, %bb.k ], [ undef, %bb.o ], [ undef, %bb.n ], [ %i.n, %bb.e ]
  %.sroa.0.sroa.6.sroa.0.0 = phi i32 [ 0, %bb.i ], [ %.sroa.0.sroa.6.0.extract.shift, %bb.k ], [ 0, %bb.o ], [ %.sroa.0.sroa.6.0.extract.shift9, %bb.n ], [ %.sroa.0.sroa.6.0.extract.shift11, %bb.e ]
  %.sroa.0.sroa.0.0 = phi i8 [ %i.v, %bb.i ], [ %.sroa.0.sroa.0.0.extract.trunc, %bb.k ], [ %i.af, %bb.o ], [ %.sroa.0.sroa.0.0.extract.trunc7, %bb.n ], [ %.sroa.0.sroa.0.0.extract.trunc8, %bb.e ]
  %.sroa.63.0 = phi i8 [ 7, %bb.i ], [ 8, %bb.k ], [ 7, %bb.o ], [ 8, %bb.n ], [ %i.c, %bb.e ]
  %.sroa.0.sroa.0.0.insert.ext = zext i8 %.sroa.0.sroa.0.0 to i32
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i32 %.sroa.0.sroa.6.sroa.0.0, %.sroa.0.sroa.0.0.insert.ext
  store i32 %.sroa.0.sroa.0.0.insert.insert, ptr %0, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.6.sroa.0.0, ptr %.sroa.6.0..sroa_idx2, align 4
  %.sroa.6.sroa.2.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.sroa.2.0, ptr %.sroa.6.sroa.2.0..sroa.6.0..sroa_idx2.sroa_idx, align 8
  br label %bb.l

bb.n:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !noundef !5 ; 2 uses
  %.sroa.0.sroa.0.0.extract.trunc7 = trunc i32 %i.ad to i8
  %.sroa.0.sroa.6.0.extract.shift9 = and i32 %i.ad, -256
  br label %bb.m

bb.o:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.af = load i8, ptr %i.ae, align 4, !range !7, !noundef !5
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs3_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_11RegisterMap12dealloc_temp(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i8 noundef range(i8 0, 7) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
end_hunk_0
