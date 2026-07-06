inline.NumInlined: 13443
inline.NumDeleted: 3890
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_RINvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session21resolve_session_stateNCNvMs2_NtB4_4exprNtB1v_20DeltaContextProvider7try_new0EB6_:bb.a
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !4, !nonnull !4
  %i.m = tail call { ptr, ptr } %i.l(ptr noundef nonnull %1) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 3 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !4, !nonnull !4
  call void %i.q(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noundef %i.n)
  %i.r = load i128, ptr %i.g, align 16, !noundef !4
  %i.s = icmp eq i128 %i.r, 159359153030091824001325401890025345981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.s, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10448
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 960
  store i64 -9223372036854775808, ptr %i.t, align 8, !noalias !10448
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 984
  store i64 -9223372036854775808, ptr %i.u, align 8, !noalias !10448
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1032
  store i64 -9223372036854775808, ptr %i.v, align 8, !noalias !10448
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 1056
  store i64 -9223372036854775808, ptr %i.w, align 8, !noalias !10448
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1296
  store ptr null, ptr %i.x, align 8, !noalias !10448
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1080
  store i64 -9223372036854775808, ptr %i.y, align 8, !noalias !10448
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 1104
  store i64 -9223372036854775808, ptr %i.z, align 8, !noalias !10448
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 1312
  store ptr null, ptr %i.aa, align 8, !noalias !10448
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 1328
  store ptr null, ptr %i.ab, align 8, !noalias !10448
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 1344
  store ptr null, ptr %i.ac, align 8, !noalias !10448
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 1128
  store i64 -9223372036854775808, ptr %i.ad, align 8, !noalias !10448
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 1152
  store i64 -9223372036854775808, ptr %i.ae, align 8, !noalias !10448
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 1176
  store i64 -9223372036854775808, ptr %i.af, align 8, !noalias !10448
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 1392
  store ptr null, ptr %i.ag, align 8, !noalias !10448
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 1200
  store i64 -9223372036854775808, ptr %i.ah, align 8, !noalias !10448
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 1408
  store ptr null, ptr %i.ai, align 8, !noalias !10448
  store i64 2, ptr %i.c, align 8, !noalias !10448
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 1448
  store ptr null, ptr %i.aj, align 8, !noalias !10448
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 1520
  store ptr null, ptr %i.ak, align 8, !noalias !10448
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 1568
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 1592
  store ptr null, ptr %i.am, align 8, !noalias !10448
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 1224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !noalias !10448
  store i64 -9223372036854775808, ptr %i.an, align 8, !noalias !10448
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 1248
  store i64 -9223372036854775808, ptr %i.ao, align 8, !noalias !10448
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 1272
  store i64 -9223372036854775808, ptr %i.ap, align 8, !noalias !10448
  call void @_RNvMs0_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_19SessionStateBuilder21with_default_features(ptr noalias noundef nonnull sret([1608 x i8]) align 8 captures(none) dereferenceable(1608) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1608) %i.c), !noalias !10448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10448
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMs0_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_19SessionStateBuilder5build(ptr noalias noundef nonnull sret([1680 x i8]) align 8 captures(none) dereferenceable(1680) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(1608) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10448
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1688
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  switch i8 %3, label %default.unreachable29 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.e:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_RNvXsb_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1680) %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.n)
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1688
  store i8 1, ptr %.sroa.46.0..sroa_idx, align 8
  br label %bb.i

default.unreachable29:                            ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  %i.as = getelementptr i8, ptr %2, i64 24
  %.val = load ptr, ptr %i.as, align 8
  call fastcc void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session25warn_incompatible_session(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull %1, ptr %.val)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10451
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  store i64 -9223372036854775808, ptr %i.at, align 8, !noalias !10451
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 984
  store i64 -9223372036854775808, ptr %i.au, align 8, !noalias !10451
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 1032
  store i64 -9223372036854775808, ptr %i.av, align 8, !noalias !10451
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  store i64 -9223372036854775808, ptr %i.aw, align 8, !noalias !10451
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 1296
  store ptr null, ptr %i.ax, align 8, !noalias !10451
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 1080
  store i64 -9223372036854775808, ptr %i.ay, align 8, !noalias !10451
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  store i64 -9223372036854775808, ptr %i.az, align 8, !noalias !10451
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  store ptr null, ptr %i.ba, align 8, !noalias !10451
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 1328
  store ptr null, ptr %i.bb, align 8, !noalias !10451
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 1344
  store ptr null, ptr %i.bc, align 8, !noalias !10451
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 1128
  store i64 -9223372036854775808, ptr %i.bd, align 8, !noalias !10451
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 1152
  store i64 -9223372036854775808, ptr %i.be, align 8, !noalias !10451
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 1176
  store i64 -9223372036854775808, ptr %i.bf, align 8, !noalias !10451
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 1392
  store ptr null, ptr %i.bg, align 8, !noalias !10451
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 1200
  store i64 -9223372036854775808, ptr %i.bh, align 8, !noalias !10451
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 1408
  store ptr null, ptr %i.bi, align 8, !noalias !10451
  store i64 2, ptr %i.a, align 8, !noalias !10451
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 1448
  store ptr null, ptr %i.bj, align 8, !noalias !10451
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 1520
  store ptr null, ptr %i.bk, align 8, !noalias !10451
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 1568
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 1592
  store ptr null, ptr %i.bm, align 8, !noalias !10451
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 1224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false), !noalias !10451
  store i64 -9223372036854775808, ptr %i.bn, align 8, !noalias !10451
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 1248
  store i64 -9223372036854775808, ptr %i.bo, align 8, !noalias !10451
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 1272
  store i64 -9223372036854775808, ptr %i.bp, align 8, !noalias !10451
  call void @_RNvMs0_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_19SessionStateBuilder21with_default_features(ptr noalias noundef nonnull sret([1608 x i8]) align 8 captures(none) dereferenceable(1608) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1608) %i.a), !noalias !10451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10451
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMs0_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_19SessionStateBuilder5build(ptr noalias noundef nonnull sret([1680 x i8]) align 8 captures(none) dereferenceable(1680) %i.bq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(1608) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10451
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1688
  store i8 3, ptr %.sroa.49.0..sroa_idx, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session31derive_session_state_from_trait(ptr noalias noundef align 8 captures(address) dereferenceable(1680) %i.br, ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1688
  store i8 2, ptr %.sroa.412.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !4, !nonnull !4
  %i.bu = call { ptr, i64 } %i.bt(ptr noundef nonnull %1) ; 2 uses
  %i.bv = extractvalue { ptr, i64 } %i.bu, 0
  %i.bw = extractvalue { ptr, i64 } %i.bu, 1
  store ptr %i.bv, ptr %i.i, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.bw, ptr %i.bx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %4, ptr %i.h, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.418.0..sroa_idx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.by, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.422.0..sroa_idx, align 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @23, ptr noundef nonnull %i.h), !noalias !10454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RINvMs0_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB6_15DeltaTableError7genericNtNtCs6Po7BT7Nknu_5alloc6string6StringEB8_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.c, %bb.e, %bb.f
  %.sink = phi i64 [ 0, %bb.g ], [ 1, %bb.h ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.f ]
  store i64 %.sink, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1s_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEENCNvMs9_B10_BX_3new0ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #6 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc4zero5InnerENCNvMs9_B10_BX_3new0ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #6 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc5waker5WakerENCNvMs9_B10_BX_3new0ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #6 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtNtCsbvkFyIu7lgC_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs14kWLkQVSKO_14deltalake_core(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ugt i64 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c, !prof !52

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @723) #50, !noalias !10457
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %0, %1
  br i1 %i.b, label %bb.d, label %_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16into_slice_range.exit, !prof !52

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @724) #50, !noalias !10457
  unreachable

_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16into_slice_range.exit: ; preds = %bb.c
  %i.c = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %1, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RINvNtNtCsbvkFyIu7lgC_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs14kWLkQVSKO_14deltalake_core(i64 noundef %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16into_slice_range.exit:
  %i.a = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions12new_metadataNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1g_3vec3VecB1c_EB1c_B1c_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1c_B1c_EEB8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(256) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [256 x i8], align 8               ; 7 uses
  %i.y = alloca [12 x i8], align 4                ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 6 uses
  %i.ab = alloca [32 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 5 uses
  %i.ae = alloca [64 x i8], align 8               ; 4 uses
  %i.af = alloca [64 x i8], align 8               ; 4 uses
  %i.ag = alloca [48 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 6 uses
  %i.ai = alloca [32 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 8 uses
  %i.ak = alloca [32 x i8], align 8               ; 5 uses
  %i.al = alloca [32 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 8 uses
  %i.an = alloca [32 x i8], align 8               ; 6 uses
  %i.ao = alloca [32 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 8 uses
  %i.aq = alloca [32 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 11 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [32 x i8], align 8               ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 12 uses
  %i.av = alloca [32 x i8], align 8               ; 6 uses
  %i.aw = alloca [32 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [32 x i8], align 8               ; 5 uses
  %i.az = alloca [32 x i8], align 8               ; 6 uses
  %i.ba = alloca [32 x i8], align 8               ; 4 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [32 x i8], align 8               ; 5 uses
  %i.bd = alloca [24 x i8], align 8               ; 8 uses
  %i.be = alloca [32 x i8], align 8               ; 5 uses
  %i.bf = alloca [24 x i8], align 8               ; 7 uses
  %i.bg = alloca [32 x i8], align 8               ; 5 uses
  %i.bh = alloca [32 x i8], align 8               ; 6 uses
  %i.bi = alloca [32 x i8], align 8               ; 4 uses
  %i.bj = alloca [24 x i8], align 8               ; 7 uses
  %i.bk = alloca [32 x i8], align 8               ; 5 uses
  %i.bl = alloca [32 x i8], align 8               ; 6 uses
  %i.bm = alloca [32 x i8], align 8               ; 4 uses
  %i.bn = alloca [24 x i8], align 8               ; 7 uses
  %i.bo = alloca [32 x i8], align 8               ; 5 uses
  %i.bp = alloca [16 x i8], align 1               ; 4 uses
  %i.bq = alloca [24 x i8], align 8               ; 8 uses
  %i.br = alloca [32 x i8], align 8               ; 6 uses
  %i.bs = alloca [32 x i8], align 8               ; 4 uses
  %i.bt = alloca [24 x i8], align 8               ; 8 uses
  %i.bu = alloca [32 x i8], align 8               ; 5 uses
  %i.bv = alloca [24 x i8], align 8               ; 16 uses
  %i.bw = alloca [32 x i8], align 8               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store ptr null, ptr %i.bv, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 0, ptr %.sroa.542.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, i64 noundef 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.c unwind label %bb.b

.body136:                                         ; preds = %.body, %bb.ds, %bb.db, %bb.ck, %bb.bx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json3map3MapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtBL_5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit144, %.body125, %.body128, %bb.w, %bb.b, %.body128.thread, %.body125.thread, %bb.er, %.body.thread, %bb.dh, %bb.cz, %bb.co, %bb.ci, %bb.bu, %bb.u, %.body134
  %.sroa.024.0 = phi i8 [ 1, %.body134 ], [ 1, %bb.er ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json3map3MapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtBL_5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit144 ], [ 0, %.body.thread ], [ 0, %.body ], [ 0, %bb.db ], [ 0, %bb.dh ], [ 0, %bb.cz ], [ 0, %bb.co ], [ 1, %bb.ci ], [ 1, %bb.bu ], [ 1, %.body125.thread ], [ 1, %.body125 ], [ 1, %.body128.thread ], [ 1, %.body128 ], [ 1, %bb.u ], [ 1, %bb.ck ], [ 1, %bb.w ], [ 1, %bb.bx ], [ %.sroa.024.1, %bb.b ], [ 0, %bb.ds ]
  %.sroa.023.0 = phi i8 [ 1, %.body134 ], [ 1, %bb.er ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json3map3MapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtBL_5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit144 ], [ 0, %.body.thread ], [ 0, %.body ], [ 1, %bb.db ], [ 0, %bb.dh ], [ 1, %bb.cz ], [ 1, %bb.co ], [ 1, %bb.ci ], [ 1, %bb.bu ], [ 1, %.body125.thread ], [ 1, %.body125 ], [ 1, %.body128.thread ], [ 1, %.body128 ], [ 1, %bb.u ], [ 1, %bb.ck ], [ 1, %bb.w ], [ 1, %bb.bx ], [ %.sroa.023.1, %bb.b ], [ 0, %bb.ds ]
  %.pn109 = phi { ptr, i32 } [ %eh.lpad-body135, %.body134 ], [ %.pn106, %bb.er ], [ %i.fy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json3map3MapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtBL_5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit144 ], [ %eh.lpad-body238, %.body.thread ], [ %lpad.thr_comm.split-lp, %.body ], [ %i.ic, %bb.db ], [ %i.im, %bb.dh ], [ %.pn102, %bb.cz ], [ %i.hm, %bb.co ], [ %.pn100, %bb.ci ], [ %i.gj, %bb.bu ], [ %eh.lpad-body126210, %.body125.thread ], [ %i.ea, %.body125 ], [ %eh.lpad-body129205, %.body128.thread ], [ %i.di, %.body128 ], [ %.pn, %bb.u ], [ %i.hc, %bb.ck ], [ %i.cx, %bb.w ], [ %i.gp, %bb.bx ], [ %i.bx, %bb.b ], [ %.pn104, %bb.ds ]
  invoke void @_RNvXNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json3map3MapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtBL_5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.en

bb.b:                                             ; preds = %.invoke, %bb.eh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit178, %bb.dc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i162, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i152, %bb.bq, %bb.at, %bb.ai, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.dv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit181, %bb.df, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit168, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit150, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit142, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit140, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  %.sroa.024.1 = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit140 ], [ 1, %bb.ai ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 1, %bb.a ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i152 ], [ 1, %.invoke ], [ 0, %bb.df ], [ 0, %bb.dv ], [ 0, %bb.eh ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit181 ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit178 ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit ], [ 0, %bb.dc ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit168 ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i162 ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit150 ], [ 1, %bb.bq ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit142 ], [ 1, %bb.at ]
  %.sroa.023.1 = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit140 ], [ 1, %bb.ai ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 1, %bb.a ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i152 ], [ 1, %.invoke ], [ 1, %bb.df ], [ 0, %bb.dv ], [ 0, %bb.eh ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit181 ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit178 ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit ], [ 1, %bb.dc ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit168 ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i162 ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit150 ], [ 1, %bb.bq ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit142 ], [ 1, %bb.at ]
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body136

bb.c:                                             ; preds = %bb.a
  %i.by = load i64, ptr %i.w, align 8, !range !58, !noundef !4
  %i.bz = trunc nuw i64 %i.by to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !range !17, !noundef !4 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  br i1 %i.bz, label %bb.d, label %bb.e, !prof !52

bb.d:                                             ; preds = %bb.c
  %i.cd = load i64, ptr %i.cc, align 8
  br label %.invoke

bb.e:                                             ; preds = %bb.c
  %i.ce = load ptr, ptr %i.cc, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cf = icmp samesign ugt i64 %i.cb, 1
  tail call void @llvm.assume(i1 %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i16 25705, ptr %i.ce, align 1
  store i64 %i.cb, ptr %i.bt, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.ce, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 2, ptr %.sroa.652.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  invoke void @_RNvMNtCs3LITIwzqf1g_4uuid2v4NtB4_4Uuid6new_v4(ptr noalias noundef nonnull sret([16 x i8]) align 1 captures(none) dereferenceable(16) %i.bp)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body134

.body134:                                         ; preds = %bb.h, %bb.f
  %eh.lpad-body135 = phi { ptr, i32 } [ %i.cg, %bb.f ], [ %i.ck, %bb.h ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt) #46
          to label %.body136 unwind label %bb.en

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10460
  store i64 0, ptr %i.d, align 8, !noalias !10460
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !10460
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !10460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10460
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 1610612768, ptr %i.ch, align 8, !noalias !10460
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !10460
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !10460
  store ptr %i.d, ptr %i.c, align 8, !noalias !10460
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @1254, ptr %i.ci, align 8, !noalias !10460
  %i.cj = invoke noundef zeroext i1 @_RNvXs_NtCs3LITIwzqf1g_4uuid3fmtNtB6_4UuidNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.i unwind label %bb.h, !noalias !10464

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.ck = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6delete7execute00B9_:bb.a

bb.mm:                                            ; preds = %bb.mk
  %.sroa.0662.320..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0662, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0662.320..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %.sroa.0662, ptr noundef nonnull align 16 dereferenceable(320) %i.db, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !14823
  store i64 1, ptr %i.w, align 16, !noalias !14823
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 1, ptr %i.aeb, align 8, !noalias !14823
  %i.aec = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(344) %i.aec, ptr noundef nonnull align 16 dereferenceable(344) %.sroa.0662, i64 344, i1 false)
  %.sroa.7663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 360
  store i8 0, ptr %.sroa.7663.0..sroa_idx, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !14826
  %i.aed = call noundef align 16 dereferenceable_or_null(368) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 368, i64 noundef range(i64 8, 17) 16) #40, !noalias !14826 ; 3 uses
  %i.aee = icmp eq ptr %i.aed, null
  br i1 %i.aee, label %bb.mn, label %bb.mq, !prof !52

bb.mn:                                            ; preds = %bb.mm
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 368) #48
          to label %.noexc.i331 unwind label %bb.mo, !noalias !14823

.noexc.i331:                                      ; preds = %bb.mn
  unreachable

bb.mo:                                            ; preds = %bb.mn
  %i.aef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logical14MetricObserverEEB1p_(ptr noalias noundef nonnull align 16 dereferenceable(368) %i.w) #46
          to label %.body332 unwind label %bb.mp, !noalias !14823

bb.mp:                                            ; preds = %bb.mo
  %i.aeg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !14823
  unreachable

.body332:                                         ; preds = %bb.mo, %bb.qa
  %.pn62 = phi { ptr, i32 } [ %i.aea, %bb.qa ], [ %i.aef, %bb.mo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0662)
  br label %bb.qb

bb.mq:                                            ; preds = %bb.mm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.aed, ptr noundef nonnull align 16 dereferenceable(368) %i.w, i64 368, i1 false), !noalias !14823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !14823
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0662)
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.aed, ptr %i.aeh, align 8
  %i.aei = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr @248, ptr %i.aei, align 16
  store i64 28, ptr %i.dd, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8667)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  %i.aej = invoke { ptr, i1 } @_RNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanNtB5_14LogicalPlanExt12into_builder(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(320) %i.dd)
          to label %bb.ms unwind label %bb.mr     ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit369: ; preds = %bb.px, %bb.py, %bb.mx, %bb.mr
  %.pn66.pn = phi { ptr, i32 } [ %i.aek, %bb.mr ], [ %i.aev, %bb.mx ], [ %.pn64, %bb.py ], [ %.pn64, %bb.px ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %bb.pp

bb.mr:                                            ; preds = %bb.mq
  %i.aek = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit369

bb.ms:                                            ; preds = %bb.mq
  %i.ael = extractvalue { ptr, i1 } %i.aej, 0
  %i.aem = extractvalue { ptr, i1 } %i.aej, 1
  store ptr %i.ael, ptr %i.cx, align 8
  %i.aen = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.aeo = zext i1 %i.aem to i8
  store i8 %i.aeo, ptr %i.aen, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  %i.aep = getelementptr inbounds nuw i8, ptr %1, i64 1472 ; 2 uses
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.cv, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.aep)
          to label %bb.mu unwind label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  br label %bb.px

bb.mu:                                            ; preds = %bb.ms
  invoke void @_RNvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4Expr11is_not_true(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.cw, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.cv)
          to label %bb.mw unwind label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.aer = landingpad { ptr, i32 }
          cleanup
  br label %bb.px

bb.mw:                                            ; preds = %bb.mu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  %i.aes = load ptr, ptr %i.cx, align 8, !nonnull !4, !noundef !4
  %i.aet = load i8, ptr %i.aen, align 8, !range !178, !noundef !4
  %i.aeu = trunc nuw i8 %i.aet to i1
  invoke void @_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder6filterNtNtB9_4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cy, ptr noundef nonnull %i.aes, i1 noundef zeroext %i.aeu, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.cw)
          to label %bb.my unwind label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.aev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit369

bb.my:                                            ; preds = %bb.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @llvm.experimental.noalias.scope.decl(metadata !14829)
  %i.aew = load i64, ptr %i.cy, align 8, !range !181, !alias.scope !14832, !noalias !14829, !noundef !4 ; 2 uses
  %.not.i334 = icmp eq i64 %i.aew, 20
  %i.aex = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.aey = load ptr, ptr %i.aex, align 8, !alias.scope !14834 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.afa = load i8, ptr %i.aez, align 8, !alias.scope !14834 ; 2 uses
  br i1 %.not.i334, label %bb.na, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %.sroa.12679.0..sroa_idx680 = getelementptr inbounds nuw i8, ptr %i.cy, i64 17
  %.sroa.4684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4684.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.12679.0..sroa_idx680, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  store i64 %i.aew, ptr %i.v, align 8, !noalias !14835
  %.sroa.2682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.aey, ptr %.sroa.2682.0..sroa_idx, align 8, !noalias !14835
  %.sroa.3683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i8 %i.afa, ptr %.sroa.3683.0..sroa_idx, align 8, !noalias !14835
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.v)
          to label %bb.ps unwind label %bb.nb

bb.na:                                            ; preds = %bb.my
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  %i.afb = trunc nuw i8 %i.afa to i1
  invoke void @_RNvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder5build(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(none) dereferenceable(320) %i.cz, ptr noundef nonnull %i.aey, i1 noundef zeroext %i.afb)
          to label %bb.nc unwind label %bb.nb

bb.nb:                                            ; preds = %bb.mz, %bb.na
  %i.afc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %bb.pp

bb.nc:                                            ; preds = %bb.na
  call void @llvm.experimental.noalias.scope.decl(metadata !14838)
  %i.afd = load i64, ptr %i.cz, align 16, !range !5941, !alias.scope !14841, !noalias !14838, !noundef !4 ; 2 uses
  %i.afe = icmp eq i64 %i.afd, 36
  %i.aff = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8667, ptr noundef nonnull align 8 dereferenceable(40) %i.aff, i64 40, i1 false), !alias.scope !14843
  br i1 %i.afe, label %bb.nd, label %bb.ne

bb.nd:                                            ; preds = %bb.nc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8667, i64 40, i1 false)
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.u)
          to label %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtB1o_10operations6delete13DeleteMetricsENtNtB1o_6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualB1o_.exit338 unwind label %bb.pq

_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtB1o_10operations6delete13DeleteMetricsENtNtB1o_6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualB1o_.exit338: ; preds = %bb.nd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.pr

bb.ne:                                            ; preds = %bb.nc
  %.sroa.10669.0..sroa_idx670 = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %.sroa.5687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5687.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.10669.0..sroa_idx670, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  %.sroa.4686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4686.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8667, i64 40, i1 false)
  %i.afg = getelementptr inbounds nuw i8, ptr %1, i64 2083 ; 3 uses
  store i8 1, ptr %i.afg, align 1
  store i64 %i.afd, ptr %i.da, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8667)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  %i.afh = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations3cdc16should_write_cdc(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.cu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.afh)
          to label %bb.ng unwind label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.afi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %bb.pl

bb.ng:                                            ; preds = %bb.ne
  call void @llvm.experimental.noalias.scope.decl(metadata !14844)
  %i.afj = load i64, ptr %i.cu, align 16, !range !1449, !alias.scope !14847, !noalias !14844, !noundef !4 ; 2 uses
  %.not.i339 = icmp eq i64 %i.afj, -9223372036854775711
  %i.afk = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.afl = load i8, ptr %i.afk, align 8, !alias.scope !14849 ; 2 uses
  br i1 %.not.i339, label %bb.nh, label %bb.pm

bb.nh:                                            ; preds = %bb.ng
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  %i.afm = trunc nuw i8 %i.afl to i1
  br i1 %i.afm, label %bb.nk, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  store i8 0, ptr %i.afg, align 1
  %.sroa.0775.0.copyload = load i64, ptr %i.da, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.06.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4686.0..sroa_idx, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.06.sroa.8, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5687.0..sroa_idx, i64 272, i1 false)
  br label %bb.nj

bb.nj:                                            ; preds = %bb.op, %bb.ni
  %.sroa.06.sroa.0.0 = phi i64 [ %i.ahu, %bb.op ], [ %.sroa.0775.0.copyload, %bb.ni ]
  %.sroa.7.0 = phi i8 [ 1, %bb.op ], [ 0, %bb.ni ]
  %i.afn = getelementptr inbounds nuw i8, ptr %1, i64 1616 ; 2 uses
  store i64 %.sroa.06.sroa.0.0, ptr %i.afn, align 16
  %.sroa.06.sroa.7.0..sroa_idx773 = getelementptr inbounds nuw i8, ptr %1, i64 1624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.06.sroa.7.0..sroa_idx773, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.06.sroa.7, i64 40, i1 false)
  %.sroa.06.sroa.8.0..sroa_idx774 = getelementptr inbounds nuw i8, ptr %1, i64 1664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.06.sroa.8.0..sroa_idx774, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.06.sroa.8, i64 272, i1 false)
  %i.afo = getelementptr inbounds nuw i8, ptr %1, i64 2081
  store i8 %.sroa.7.0, ptr %i.afo, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.sroa.8)
  %i.afp = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.afq = load ptr, ptr %i.afp, align 16, !nonnull !4, !noundef !4
  %i.afr = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.afs = load ptr, ptr %i.afr, align 8, !nonnull !4, !align !18, !noundef !4
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 48
  %i.afu = load ptr, ptr %i.aft, align 8, !invariant.load !4, !nonnull !4
  %i.afv = invoke { ptr, ptr } %i.afu(ptr noundef nonnull %i.afq, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.afn)
          to label %bb.or unwind label %bb.oq     ; 2 uses

bb.nk:                                            ; preds = %bb.nh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8700)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  invoke fastcc void @_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(320) %i.co, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.adz)
          to label %bb.nm unwind label %bb.nl

bb.nl:                                            ; preds = %bb.nm, %bb.nk
  %i.afw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.nq

bb.nm:                                            ; preds = %bb.nk
  %i.afx = invoke { ptr, i1 } @_RNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanNtB5_14LogicalPlanExt12into_builder(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(320) %i.co)
          to label %bb.nn unwind label %bb.nl     ; 2 uses

bb.nn:                                            ; preds = %bb.nm
  %i.afy = extractvalue { ptr, i1 } %i.afx, 0
  %i.afz = extractvalue { ptr, i1 } %i.afx, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  %i.aga = getelementptr inbounds nuw i8, ptr %1, i64 2082
  store i8 0, ptr %i.aga, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.cn, ptr noundef nonnull align 16 dereferenceable(112) %i.aep, i64 112, i1 false)
  invoke void @_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder6filterNtNtB9_4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cp, ptr noundef nonnull %i.afy, i1 noundef zeroext %i.afz, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.cn)
          to label %bb.np unwind label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.agb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %bb.nq

bb.np:                                            ; preds = %bb.nn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.experimental.noalias.scope.decl(metadata !14850)
  %i.agc = load i64, ptr %i.cp, align 8, !range !181, !alias.scope !14853, !noalias !14850, !noundef !4 ; 2 uses
  %.not.i340 = icmp eq i64 %i.agc, 20
  %i.agd = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.age = load ptr, ptr %i.agd, align 8, !alias.scope !14855 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.agg = load i8, ptr %i.agf, align 8, !alias.scope !14855 ; 2 uses
  br i1 %.not.i340, label %bb.ns, label %bb.nr

bb.nq:                                            ; preds = %bb.nl, %bb.no
  %.pn75 = phi { ptr, i32 } [ %i.afw, %bb.nl ], [ %i.agb, %bb.no ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.pc

bb.nr:                                            ; preds = %bb.np
  %.sroa.12722.0..sroa_idx723 = getelementptr inbounds nuw i8, ptr %i.cp, i64 17
  %.sroa.4727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4727.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.12722.0..sroa_idx723, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  store i64 %i.agc, ptr %i.t, align 8, !noalias !14856
  %.sroa.2725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.age, ptr %.sroa.2725.0..sroa_idx, align 8, !noalias !14856
  %.sroa.3726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i8 %i.agg, ptr %.sroa.3726.0..sroa_idx, align 8, !noalias !14856
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.t)
          to label %bb.pj unwind label %bb.pi

bb.ns:                                            ; preds = %bb.np
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  store ptr %i.age, ptr %i.cq, align 8
  %i.agh = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  store i8 %i.agg, ptr %i.agh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.cm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @264, i64 noundef 6)
          to label %bb.nu unwind label %bb.pg

bb.nt:                                            ; preds = %bb.nu
  %i.agi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit364

bb.nu:                                            ; preds = %bb.ns
  %i.agj = load ptr, ptr %i.cq, align 8, !nonnull !4, !noundef !4
  %i.agk = load i8, ptr %i.agh, align 8, !range !178, !noundef !4
  %i.agl = trunc nuw i8 %i.agk to i1
  invoke void @_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderNtB5_21LogicalPlanBuilderExt11with_column(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cr, ptr noundef nonnull %i.agj, i1 noundef zeroext %i.agl, ptr noalias noundef nonnull readonly captures(address, read_provenance) @256, i64 noundef 12, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.cm)
          to label %bb.nv unwind label %bb.nt

bb.nv:                                            ; preds = %bb.nu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.experimental.noalias.scope.decl(metadata !14859)
  %i.agm = load i64, ptr %i.cr, align 8, !range !181, !alias.scope !14862, !noalias !14859, !noundef !4 ; 2 uses
  %.not.i344 = icmp eq i64 %i.agm, 20
  %i.agn = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ago = load ptr, ptr %i.agn, align 8, !alias.scope !14864 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.agq = load i8, ptr %i.agp, align 8, !alias.scope !14864 ; 2 uses
  br i1 %.not.i344, label %bb.nx, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %.sroa.12712.0..sroa_idx713 = getelementptr inbounds nuw i8, ptr %i.cr, i64 17
  %.sroa.4731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4731.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.12712.0..sroa_idx713, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  store i64 %i.agm, ptr %i.s, align 8, !noalias !14865
  %.sroa.2729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.ago, ptr %.sroa.2729.0..sroa_idx, align 8, !noalias !14865
  %.sroa.3730.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i8 %i.agq, ptr %.sroa.3730.0..sroa_idx, align 8, !noalias !14865
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.s)
          to label %bb.pf unwind label %bb.ny

bb.nx:                                            ; preds = %bb.nv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  %i.agr = trunc nuw i8 %i.agq to i1
  invoke void @_RNvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder5build(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(none) dereferenceable(320) %i.cs, ptr noundef nonnull %i.ago, i1 noundef zeroext %i.agr)
          to label %bb.nz unwind label %bb.ny

bb.ny:                                            ; preds = %bb.nw, %bb.nx
  %i.ags = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.pc

bb.nz:                                            ; preds = %bb.nx
  call void @llvm.experimental.noalias.scope.decl(metadata !14868)
  %i.agt = load i64, ptr %i.cs, align 16, !range !5941, !alias.scope !14871, !noalias !14868, !noundef !4 ; 2 uses
  %i.agu = icmp eq i64 %i.agt, 36
  %i.agv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8700, ptr noundef nonnull align 8 dereferenceable(40) %i.agv, i64 40, i1 false), !alias.scope !14873
  br i1 %i.agu, label %bb.oa, label %bb.ob

bb.oa:                                            ; preds = %bb.nz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8700, i64 40, i1 false)
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.r)
          to label %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtB1o_10operations6delete13DeleteMetricsENtNtB1o_6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualB1o_.exit350 unwind label %bb.pd

_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtB1o_10operations6delete13DeleteMetricsENtNtB1o_6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualB1o_.exit350: ; preds = %bb.oa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.pe

bb.ob:                                            ; preds = %bb.nz
  %.sroa.10702.0..sroa_idx703 = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %.sroa.5734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5734.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.10702.0..sroa_idx703, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  %.sroa.4733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4733.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8700, i64 40, i1 false)
  store i64 %i.agt, ptr %i.ct, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8700)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8737)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  store i8 0, ptr %i.afg, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.ch, ptr noundef nonnull align 16 dereferenceable(320) %i.da, i64 320, i1 false)
  %i.agw = invoke { ptr, i1 } @_RNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanNtB5_14LogicalPlanExt12into_builder(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(320) %i.ch)
          to label %bb.od unwind label %bb.oc     ; 2 uses

bb.oc:                                            ; preds = %bb.ob
  %i.agx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  br label %.thread947

bb.od:                                            ; preds = %bb.ob
  %i.agy = extractvalue { ptr, i1 } %i.agw, 0
  %i.agz = extractvalue { ptr, i1 } %i.agw, 1
  store ptr %i.agy, ptr %i.ci, align 8
  %i.aha = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.ahb = zext i1 %i.agz to i8
  store i8 %i.ahb, ptr %i.aha, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.cg, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.of unwind label %bb.oz

bb.oe:                                            ; preds = %bb.of
end_hunk_1
begin_hunk_2_@_RNCNvXsf_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB7_10PostCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a

bb.v:                                             ; preds = %bb.rh
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.w:                                             ; preds = %bb.q
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 600
  store ptr %i.fc, ptr %i.fn, align 8, !alias.scope !26088, !noalias !26101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false), !noalias !26101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !26093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !26093
  store i8 1, ptr %i.ek, align 2, !noalias !26083
  %i.fo = load ptr, ptr %i.el, align 8, !noalias !26083, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 520
  %i.fq = load i64, ptr %i.fp, align 8, !noalias !26087, !noundef !4 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fc, i64 88
  %i.fs = load ptr, ptr %i.fr, align 8, !noalias !26087, !nonnull !4, !noundef !4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 1224
  %i.fu = load i64, ptr %i.ft, align 8, !noalias !26087, !noundef !4
  %.not14.i = icmp eq i64 %i.fq, %i.fu
  br i1 %.not14.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.am, %bb.w
  %i.fv = phi ptr [ %i.ei, %bb.w ], [ %i.gn, %bb.am ] ; 3 uses
  %i.fw = phi ptr [ %i.ej, %bb.w ], [ %i.go, %bb.am ] ; 4 uses
  %i.fx = phi ptr [ %i.fo, %bb.w ], [ %.pre.i, %bb.am ] ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 682
  store i8 0, ptr %i.fy, align 2, !noalias !26083
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fz, ptr noundef nonnull align 8 dereferenceable(32) %i.fw, i64 32, i1 false), !noalias !26083
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 569
  %i.gb = load i8, ptr %i.ga, align 1, !range !102, !noalias !26087, !noundef !4 ; 2 uses
  %.not18.i = icmp eq i8 %i.gb, 2
  br i1 %.not18.i, label %bb.ao, label %bb.an

bb.y:                                             ; preds = %bb.w
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fo, i64 504
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 688
  store i64 1, ptr %i.gd, align 8, !noalias !26083
  %.sroa.8128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 696
  store i64 %i.fq, ptr %.sroa.8128.0..sroa_idx.i, align 8, !noalias !26083
  %.sroa.9129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 704
  store ptr %i.ej, ptr %.sroa.9129.0..sroa_idx.i, align 8, !noalias !26083
  %.sroa.10130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 712
  store ptr %i.gc, ptr %.sroa.10130.0..sroa_idx.i, align 8, !noalias !26083
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 720
  store ptr @310, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !26083
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 776
  store i8 0, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !26083
  br label %bb.af

bb.z:                                             ; preds = %bb.k
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !26083
  br label %bb.ab

bb.aa:                                            ; preds = %bb.k
  %i.gf = getelementptr inbounds nuw i8, ptr %i.en, i64 504
  %i.gg = load ptr, ptr %i.el, align 8, !noalias !26083, !nonnull !4, !align !18, !noundef !4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 520
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !26087, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9285.i, ptr noundef nonnull align 8 dereferenceable(72) %i.dt, i64 72, i1 false), !noalias !26083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !26083
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 688
  store i64 1, ptr %i.gj, align 8, !noalias !26083
  %.sroa.8284.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 696
  store i64 %i.gi, ptr %.sroa.8284.0..sroa_idx.i, align 8, !noalias !26083
  %.sroa.9285.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9285.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9285.i, i64 72, i1 false), !noalias !26083
  %.sroa.10286.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 776
  store ptr %i.gf, ptr %.sroa.10286.0..sroa_idx.i, align 8, !noalias !26083
  %.sroa.11287.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 784
  store ptr @310, ptr %.sroa.11287.0..sroa_idx.i, align 8, !noalias !26083
  %.sroa.13289.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 824
  store i8 0, ptr %.sroa.13289.0..sroa_idx.i, align 8, !noalias !26083
  br label %bb.rk

bb.ab:                                            ; preds = %bb.ro, %bb.rj, %bb.z
  %i.gk = phi ptr [ %i.ayd, %bb.ro ], [ %i.ayd, %bb.rj ], [ %i.ei, %bb.z ]
  %i.gl = phi ptr [ %i.aye, %bb.ro ], [ %i.aye, %bb.rj ], [ %i.ej, %bb.z ]
  %.pn12.i = phi { ptr, i32 } [ %i.ayj, %bb.ro ], [ %i.ayc, %bb.rj ], [ %i.ge, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9285.i)
  br label %bb.l

bb.ac:                                            ; preds = %bb.f
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @453) #50
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.f
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @453) #50
          to label %.noexc28 unwind label %bb.e

.noexc28:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.af
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !26083
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot6update0EBR_(ptr noundef nonnull align 8 %i.gp) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEBM_.exit.i unwind label %bb.aw, !noalias !26087

bb.af:                                            ; preds = %bb.f, %bb.y
  %i.gn = phi ptr [ %i.eh, %bb.f ], [ %i.ei, %bb.y ] ; 5 uses
  %i.go = phi ptr [ %i.eg, %bb.f ], [ %i.ej, %bb.y ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !26083
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  invoke fastcc void @_RNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_13EagerSnapshot6update0Ba_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.dz, ptr noundef nonnull align 8 %i.gp, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ag unwind label %bb.ae, !noalias !26087

bb.ag:                                            ; preds = %bb.af
  %i.gq = load i64, ptr %i.dz, align 16, !range !1116, !noalias !26083, !noundef !4 ; 3 uses
  %i.gr = icmp eq i64 %i.gq, -9223372036854775710
  br i1 %i.gr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !26083
  br label %bb.rs

bb.ai:                                            ; preds = %bb.ag
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.sroa.3.sroa.0.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !26083 ; 2 uses
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %.sroa.3.sroa.2.0.copyload.i = load i64, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i, align 16, !noalias !26083
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !26083
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %.sroa.3.sroa.4.0.copyload.i = load i64, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !26083
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %.sroa.3.sroa.5.0.copyload.i = load i8, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i, align 16, !noalias !26083
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 49
  %.sroa.3.sroa.6.i.sroa.0.0.copyload = load i56, ptr %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i, align 1, !noalias !26083
  %.sroa.3.sroa.6.i.sroa.4.0..sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 56
  %.sroa.3.sroa.6.i.sroa.4.0.copyload = load i8, ptr %.sroa.3.sroa.6.i.sroa.4.0..sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i.sroa_idx, align 8, !noalias !26083
  %.sroa.3.sroa.6.i.sroa.5.0..sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.6.i.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.6.i.sroa.5.0..sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i.sroa_idx, i64 7, i1 false), !noalias !26083
  %.sroa.3.sroa.6.i.sroa.6.0..sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 64
  %i.gs = load <2 x i64>, ptr %.sroa.3.sroa.6.i.sroa.6.0..sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i.sroa_idx, align 16, !noalias !26083
  %.sroa.3.sroa.6.i.sroa.8.0..sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.3.sroa.6.i.sroa.8, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.3.sroa.6.i.sroa.8.0..sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !26083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !26083
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.gu = load i8, ptr %i.gt, align 8, !range !1779, !noalias !26083, !noundef !4
  switch i8 %i.gu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot6update0EBR_.exit.i [
    i8 4, label %bb.ak
    i8 3, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 784
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBL_8Snapshot6update0EBP_(ptr noundef nonnull align 8 %i.gv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot6update0EBR_.exit.i unwind label %bb.al, !noalias !26087

bb.ak:                                            ; preds = %bb.ai
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 784
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEEB51_(ptr noalias noundef align 8 dereferenceable(40) %i.gw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot6update0EBR_.exit.i unwind label %bb.al, !noalias !26087

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEBM_.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot6update0EBR_.exit.i: ; preds = %bb.ak, %bb.aj, %bb.ai
  %.not.i.i = icmp eq i64 %i.gq, -9223372036854775711
  br i1 %.not.i.i, label %bb.am, label %bb.av

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot6update0EBR_.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 656
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !26083
  br label %bb.x

bb.an:                                            ; preds = %bb.ao, %bb.x
  %i.gy = phi i8 [ %i.hj, %bb.ao ], [ %i.gb, %bb.x ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 680
  store i8 %i.gy, ptr %i.gz, align 8, !noalias !26083
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fx, i64 544
  %i.hb = load ptr, ptr %i.ha, align 8, !noalias !26087, !noundef !4 ; 2 uses
  %.not19.i = icmp eq ptr %i.hb, null
  br i1 %.not19.i, label %bb.ap, label %bb.aq

.body75.i:                                        ; preds = %bb.qr, %bb.qu, %bb.rc, %bb.rd, %.body97.i, %bb.fm, %bb.fi, %.body82.i, %bb.at, %bb.ax, %bb.bf, %bb.bg, %bb.qc
  %i.hc = phi ptr [ %i.jt, %bb.fi ], [ %i.fv, %bb.at ], [ %i.kk, %.body82.i ], [ %i.avp, %bb.qc ], [ %i.ja, %bb.bf ], [ %i.ja, %bb.ax ], [ %i.ja, %bb.bg ], [ %i.wg, %.body97.i ], [ %i.jt, %bb.fm ], [ %i.axi, %bb.rc ], [ %i.axi, %bb.qu ], [ %i.axi, %bb.rd ], [ %i.ts, %bb.qr ]
  %i.hd = phi ptr [ %i.ju, %bb.fi ], [ %i.fw, %bb.at ], [ %i.kl, %.body82.i ], [ %i.avq, %bb.qc ], [ %i.jb, %bb.bf ], [ %i.jb, %bb.ax ], [ %i.jb, %bb.bg ], [ %i.wh, %.body97.i ], [ %i.ju, %bb.fm ], [ %i.axj, %bb.rc ], [ %i.axj, %bb.qu ], [ %i.axj, %bb.rd ], [ %i.tt, %bb.qr ]
  %.pn43.pn.i = phi { ptr, i32 } [ %i.ul, %bb.fi ], [ %i.ih, %bb.at ], [ %eh.lpad-body83.i, %.body82.i ], [ %.pn37.i, %bb.qc ], [ %i.jn, %bb.bf ], [ %i.iy, %bb.ax ], [ %i.jn, %bb.bg ], [ %eh.lpad-body98.i, %.body97.i ], [ %i.ve, %bb.fm ], [ %i.axv, %bb.rc ], [ %i.axg, %bb.qu ], [ %i.axv, %bb.rd ], [ %i.axb, %bb.qr ]
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 608
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.he)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEBM_.exit.i unwind label %bb.aw, !noalias !26087

bb.ao:                                            ; preds = %bb.x
  %i.hf = getelementptr i8, ptr %1, i64 632
  %.val69.i = load ptr, ptr %i.hf, align 8, !noalias !26083, !nonnull !4, !noundef !4
  %i.hg = getelementptr inbounds nuw i8, ptr %.val69.i, i64 88
  %i.hh = load ptr, ptr %i.hg, align 8, !noalias !26087, !nonnull !4, !noundef !4
  %i.hi = getelementptr i8, ptr %i.hh, i64 1058
  %.val70.i = load i8, ptr %i.hi, align 2, !range !102, !noalias !26087, !noundef !4
  %.sroa.0.0.i.i = icmp ne i8 %.val70.i, 0
  %i.hj = zext i1 %.sroa.0.0.i.i to i8
  br label %bb.an

bb.ap:                                            ; preds = %bb.bh, %bb.an
  %i.hk = phi ptr [ %i.ja, %bb.bh ], [ %i.fv, %bb.an ] ; 2 uses
  %i.hl = phi ptr [ %i.jb, %bb.bh ], [ %i.fw, %bb.an ] ; 2 uses
  %i.hm = phi ptr [ %.pre470.i, %bb.bh ], [ %i.fx, %bb.an ] ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 681
  store i8 0, ptr %i.hn, align 1, !noalias !26083
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 568
  %i.hp = load i8, ptr %i.ho, align 8, !range !178, !noalias !26087, !noundef !4
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %.thread.i, label %bb.bi

bb.aq:                                            ; preds = %bb.an
  %i.hr = getelementptr i8, ptr %i.fx, i64 552
  %.val66.i = load ptr, ptr %i.hr, align 8, !noalias !26087, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.val66.i, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !range !3, !invariant.load !4, !noalias !26087
  %i.hu = add nsw i64 %i.ht, -1
  %i.hv = and i64 %i.hu, -16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = getelementptr inbounds nuw i8, ptr %i.fx, i64 504
  %i.hz = trunc nuw i8 %i.gy to i1
  br i1 %i.hz, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ia = getelementptr inbounds nuw i8, ptr %i.fx, i64 568
  %i.ib = load i8, ptr %i.ia, align 8, !range !178, !noalias !26087, !noundef !4
  %i.ic = trunc nuw i8 %i.ib to i1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.0.0.i = phi i1 [ %i.ic, %bb.ar ], [ true, %bb.aq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !26083
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.dy, ptr noundef nonnull align 8 dereferenceable(16) %i.id, i64 16, i1 false), !noalias !26083
  %i.ie = getelementptr inbounds nuw i8, ptr %.val66.i, i64 40
  %i.if = load ptr, ptr %i.ie, align 8, !invariant.load !4, !noalias !26087, !nonnull !4
  %i.ig = invoke { ptr, ptr } %i.if(ptr noundef nonnull %i.hx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hy, i1 noundef zeroext %.sroa.0.0.i, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(16) %i.dy)
          to label %bb.au unwind label %bb.at, !noalias !26087 ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !26083
  br label %.body75.i

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !26083
  %i.ii = extractvalue { ptr, ptr } %i.ig, 0
  %i.ij = extractvalue { ptr, ptr } %i.ig, 1
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 688
  store ptr %i.ii, ptr %i.ik, align 8, !noalias !26083
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 696
  store ptr %i.ij, ptr %i.il, align 8, !noalias !26083
  br label %bb.ay

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot6update0EBR_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.3.i, i64 16, i1 false), !noalias !26083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.968.i.sroa.8.i.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.6.i.sroa.5, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.968.i.sroa.8.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.3.sroa.6.i.sroa.8, i64 16, i1 false)
  %.sroa.10298.sroa.0.0.extract.trunc319.i = trunc i64 %.sroa.3.sroa.0.0.copyload.i to i8
  %.sroa.10298.sroa.10.0.extract.shift326.i = lshr i64 %.sroa.3.sroa.0.0.copyload.i, 8
  %.sroa.10298.sroa.10.0.extract.trunc327.i = trunc nuw i64 %.sroa.10298.sroa.10.0.extract.shift326.i to i56
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEBM_.exit80.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEBM_.exit80.i: ; preds = %bb.bk, %bb.av
  %i.im = phi ptr [ %i.kf, %bb.bk ], [ %i.gn, %bb.av ] ; 2 uses
  %i.in = phi ptr [ %i.kg, %bb.bk ], [ %i.go, %bb.av ] ; 3 uses
  %.sroa.29.i.sroa.10.2 = phi i8 [ %.sroa.29.i.sroa.10.1, %bb.bk ], [ %.sroa.3.sroa.6.i.sroa.4.0.copyload, %bb.av ]
  %.sroa.29.i.sroa.0.2 = phi i56 [ %.sroa.29.i.sroa.0.1, %bb.bk ], [ %.sroa.3.sroa.6.i.sroa.0.0.copyload, %bb.av ]
  %.sroa.0297.0.i = phi i64 [ %.sroa.0297.1.i, %bb.bk ], [ %i.gq, %bb.av ]
  %.sroa.20.0.i = phi i64 [ %.sroa.20.1.i, %bb.bk ], [ %.sroa.3.sroa.2.0.copyload.i, %bb.av ]
  %.sroa.22.0.i = phi i64 [ %.sroa.22.1.i, %bb.bk ], [ %.sroa.3.sroa.4.0.copyload.i, %bb.av ]
  %.sroa.27.0.i = phi i8 [ %.sroa.27.1.i, %bb.bk ], [ %.sroa.3.sroa.5.0.copyload.i, %bb.av ]
  %.sroa.10298.sroa.0.0.i = phi i8 [ %.sroa.10298.sroa.0.1.i, %bb.bk ], [ %.sroa.10298.sroa.0.0.extract.trunc319.i, %bb.av ]
  %.sroa.10298.sroa.10.sroa.0.0.i = phi i56 [ %.sroa.10298.sroa.10.sroa.0.1.i, %bb.bk ], [ %.sroa.10298.sroa.10.0.extract.trunc327.i, %bb.av ]
  %i.io = phi <2 x i64> [ %i.kh, %bb.bk ], [ %i.gs, %bb.av ]
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 682 ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 2, !range !178, !noalias !26083, !noundef !4
  %i.ir = trunc nuw i8 %i.iq to i1
  br i1 %i.ir, label %bb.rh, label %bb.rg

bb.aw:                                            ; preds = %bb.rj, %bb.ri, %bb.qu, %bb.qe, %.body97.i, %.body82.i, %bb.ax, %.body75.i, %bb.ae
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !26087
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEBM_.exit.i: ; preds = %bb.ae, %bb.al, %bb.rf, %.body75.i
  %i.it = phi ptr [ %i.hc, %.body75.i ], [ %i.kf, %bb.rf ], [ %i.gn, %bb.al ], [ %i.gn, %bb.ae ] ; 2 uses
  %i.iu = phi ptr [ %i.hd, %.body75.i ], [ %i.kg, %bb.rf ], [ %i.go, %bb.al ], [ %i.go, %bb.ae ] ; 3 uses
  %.pn46.pn.i = phi { ptr, i32 } [ %.pn43.pn.i, %.body75.i ], [ %i.ayb, %bb.rf ], [ %i.gx, %bb.al ], [ %i.gm, %bb.ae ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 682
  %i.iw = load i8, ptr %i.iv, align 2, !range !178, !noalias !26083, !noundef !4
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %bb.ri, label %.body.i

bb.ax:                                            ; preds = %bb.ay
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !26083
  %.val61.i = load ptr, ptr %i.jc, align 8, !noalias !26083
  %i.iz = getelementptr i8, ptr %1, i64 696
  %.val62.i = load ptr, ptr %i.iz, align 8, !noalias !26083, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_(ptr %.val61.i, ptr nonnull %.val62.i) #46
          to label %.body75.i unwind label %bb.aw, !noalias !26087

bb.ay:                                            ; preds = %bb.f, %bb.au
  %i.ja = phi ptr [ %i.eh, %bb.f ], [ %i.fv, %bb.au ] ; 6 uses
  %i.jb = phi ptr [ %i.eg, %bb.f ], [ %i.fw, %bb.au ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !26083
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2g_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.dx, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.jc, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.az unwind label %bb.ax, !noalias !26087

bb.az:                                            ; preds = %bb.ay
  %i.jd = load i64, ptr %i.dx, align 16, !range !1116, !noalias !26083, !noundef !4 ; 3 uses
  %i.je = icmp eq i64 %i.jd, -9223372036854775710
  br i1 %i.je, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !26083
  br label %bb.rs

bb.bb:                                            ; preds = %bb.az
  %.sroa.3138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.sroa.3138.sroa.0.0.copyload.i = load i64, ptr %.sroa.3138.0..sroa_idx.i, align 8, !noalias !26083 ; 2 uses
  %.sroa.3138.sroa.2.0..sroa.3138.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %.sroa.3138.sroa.2.0.copyload.i = load i64, ptr %.sroa.3138.sroa.2.0..sroa.3138.0..sroa_idx.sroa_idx.i, align 16, !noalias !26083
  %.sroa.3138.sroa.3.0..sroa.3138.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3138.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3138.sroa.3.0..sroa.3138.0..sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !26083
  %.sroa.3138.sroa.4.0..sroa.3138.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %.sroa.3138.sroa.4.0.copyload.i = load i64, ptr %.sroa.3138.sroa.4.0..sroa.3138.0..sroa_idx.sroa_idx.i, align 8, !noalias !26083
  %.sroa.3138.sroa.5.0..sroa.3138.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %.sroa.3138.sroa.5.0.copyload.i = load i8, ptr %.sroa.3138.sroa.5.0..sroa.3138.0..sroa_idx.sroa_idx.i, align 16, !noalias !26083
  %.sroa.3138.sroa.6.0..sroa.3138.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 49
  %.sroa.3138.sroa.6.i.sroa.0.0.copyload = load i56, ptr %.sroa.3138.sroa.6.0..sroa.3138.0..sroa_idx.sroa_idx.i, align 1, !noalias !26083
  %.sroa.3138.sroa.6.i.sroa.4.0..sroa.3138.sroa.6.0..sroa.3138.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  %.sroa.3138.sroa.6.i.sroa.4.0.copyload = load i8, ptr %.sroa.3138.sroa.6.i.sroa.4.0..sroa.3138.sroa.6.0..sroa.3138.0..sroa_idx.sroa_idx.i.sroa_idx, align 8, !noalias !26083
  %.sroa.3138.sroa.6.i.sroa.5.0..sroa.3138.sroa.6.0..sroa.3138.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3138.sroa.6.i.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3138.sroa.6.i.sroa.5.0..sroa.3138.sroa.6.0..sroa.3138.0..sroa_idx.sroa_idx.i.sroa_idx, i64 7, i1 false), !noalias !26083
  %.sroa.3138.sroa.6.i.sroa.6.0..sroa.3138.sroa.6.0..sroa.3138.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  %i.jf = load <2 x i64>, ptr %.sroa.3138.sroa.6.i.sroa.6.0..sroa.3138.sroa.6.0..sroa.3138.0..sroa_idx.sroa_idx.i.sroa_idx, align 16, !noalias !26083
  %.sroa.3138.sroa.6.i.sroa.8.0..sroa.3138.sroa.6.0..sroa.3138.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.3138.sroa.6.i.sroa.8, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.3138.sroa.6.i.sroa.8.0..sroa.3138.sroa.6.0..sroa.3138.0..sroa_idx.sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !26083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !26083
  %.val59.i = load ptr, ptr %i.jc, align 8, !noalias !26083 ; 5 uses
  %i.jg = getelementptr i8, ptr %1, i64 696
  %.val60.i = load ptr, ptr %i.jg, align 8, !noalias !26083, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.jh = load ptr, ptr %.val60.i, align 8, !invariant.load !4, !noalias !26087 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val59.i) ]
  invoke void %i.jh(ptr noundef nonnull %.val59.i)
          to label %bb.bd unwind label %bb.bf, !noalias !26087

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ji = getelementptr inbounds nuw i8, ptr %.val60.i, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !range !16, !invariant.load !4, !noalias !26087 ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jl = getelementptr inbounds nuw i8, ptr %.val60.i, i64 16
  %i.jm = load i64, ptr %i.jl, align 8, !range !3, !invariant.load !4, !noalias !26087
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val59.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val59.i, i64 noundef range(i64 1, 0) %i.jj, i64 noundef range(i64 1, 536870913) %i.jm) #40, !noalias !26087
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i

bb.bf:                                            ; preds = %bb.bc
  %i.jn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.val60.i, i64 8
  %i.jp = load i64, ptr %i.jo, align 8, !range !16, !invariant.load !4, !noalias !26087 ; 2 uses
  %i.jq = icmp eq i64 %i.jp, 0
  br i1 %i.jq, label %.body75.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jr = getelementptr inbounds nuw i8, ptr %.val60.i, i64 16
  %i.js = load i64, ptr %i.jr, align 8, !range !3, !invariant.load !4, !noalias !26087
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val59.i, i64 noundef range(i64 1, 0) %i.jp, i64 noundef range(i64 1, 536870913) %i.js) #40, !noalias !26087
  br label %.body75.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i: ; preds = %bb.be, %bb.bd
  %.not.i77.i = icmp eq i64 %i.jd, -9223372036854775711
  br i1 %.not.i77.i, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i
  %.phi.trans.insert469.i = getelementptr inbounds nuw i8, ptr %1, i64 656
  %.pre470.i = load ptr, ptr %.phi.trans.insert469.i, align 8, !noalias !26083
  br label %bb.ap

bb.bi:                                            ; preds = %bb.ff, %bb.ap
  %i.jt = phi ptr [ %i.tp, %bb.ff ], [ %i.hk, %bb.ap ] ; 4 uses
  %i.ju = phi ptr [ %i.tq, %bb.ff ], [ %i.hl, %bb.ap ] ; 4 uses
end_hunk_2
begin_hunk_3_@_RNCNvXsf_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB7_10PostCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
  %.val5.i.i.i = load ptr, ptr %i.ava, align 8, !alias.scope !26512, !noalias !26513, !nonnull !4, !noundef !4 ; 2 uses
  %i.avb = trunc nuw i64 %.val.i.i.i to i1
  %i.avc = atomicrmw add ptr %.val5.i.i.i, i64 1 monotonic, align 8, !noalias !26515
  %i.avd = icmp slt i64 %i.avc, 0                 ; 2 uses
  br i1 %i.avb, label %bb.pu, label %bb.pv

bb.pu:                                            ; preds = %bb.pt
  br i1 %i.avd, label %bb.px, label %_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i

bb.pv:                                            ; preds = %bb.pt
  br i1 %i.avd, label %bb.pw, label %_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i

bb.pw:                                            ; preds = %bb.pv
  call void @llvm.trap()
  unreachable

bb.px:                                            ; preds = %bb.pu
  call void @llvm.trap()
  unreachable

_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.pv, %bb.pu
  %.sroa.0.0.i.i.i107.i = phi i64 [ 0, %bb.pv ], [ 1, %bb.pu ]
  %i.ave = ptrtoint ptr %.val5.i.i.i to i64
  br label %bb.qb

bb.py:                                            ; preds = %bb.ps
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aux)
          to label %.noexc108.i unwind label %bb.qa, !noalias !26087

.noexc108.i:                                      ; preds = %bb.py
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !noalias !26516
  br label %bb.pz

bb.pz:                                            ; preds = %.noexc108.i, %bb.ps
  %.sroa.01.0.i.i.i = phi i64 [ %.sroa.01.0.copyload.i.i.i, %.noexc108.i ], [ -9223372036854775808, %bb.ps ]
  %i.avf = getelementptr inbounds nuw i8, ptr %.val71.i, i64 57
  %i.avg = load i8, ptr %i.avf, align 1, !range !102, !alias.scope !26512, !noalias !26513, !noundef !4
  %i.avh = getelementptr inbounds nuw i8, ptr %.val71.i, i64 58
  %i.avi = load i8, ptr %i.avh, align 2, !range !102, !alias.scope !26512, !noalias !26513, !noundef !4
  br label %bb.qb

bb.qa:                                            ; preds = %bb.py
  %i.avj = landingpad { ptr, i32 }
          cleanup
  br label %bb.qc

bb.qb:                                            ; preds = %bb.pz, %_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i, %bb.pq
  %.sroa.5.sroa.8.0.i.i = phi i8 [ undef, %bb.pq ], [ undef, %_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %i.avi, %bb.pz ]
  %.sroa.5.sroa.7.0.i.i = phi i8 [ undef, %bb.pq ], [ undef, %_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %i.avg, %bb.pz ]
  %.sroa.5.sroa.6.0.i.i = phi i8 [ undef, %bb.pq ], [ undef, %_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %i.auu, %bb.pz ]
  %.sroa.5.sroa.4.0.i.i = phi i64 [ undef, %bb.pq ], [ %i.ave, %_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.0.i.i.i, %bb.pz ]
  %.sroa.5.sroa.0.0.i.i = phi i64 [ undef, %bb.pq ], [ %.sroa.0.0.i.i.i107.i, %_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %i.auw, %bb.pz ]
  %i.avk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9237.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(16) %i.avk, i64 16, i1 false), !noalias !26083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26083
  %i.avl = load ptr, ptr %i.auj, align 8, !noalias !26083, !nonnull !4, !align !18, !noundef !4
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 520
  %i.avn = load i64, ptr %i.avm, align 8, !noalias !26087, !noundef !4
  %i.avo = getelementptr inbounds nuw i8, ptr %1, i64 688
  store i64 1, ptr %i.avo, align 8, !noalias !26083
  %.sroa.8236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 696
  store i64 %i.avn, ptr %.sroa.8236.0..sroa_idx.i, align 8, !noalias !26083
  %.sroa.9237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 704
  store i64 %i.aus, ptr %.sroa.9237.0..sroa_idx.i, align 8, !noalias !26083
  %.sroa.9237.sroa.8.0..sroa.9237.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 712
  store i64 %.sroa.5.sroa.0.0.i.i, ptr %.sroa.9237.sroa.8.0..sroa.9237.0..sroa_idx.sroa_idx.i, align 8, !noalias !26083
  store i64 %.sroa.5.sroa.4.0.i.i, ptr %i.auh, align 8, !noalias !26083
  %.sroa.9237.sroa.10.0..sroa.9237.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9237.sroa.10.0..sroa.9237.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9237.sroa.10.i, i64 16, i1 false), !noalias !26083
  %.sroa.9237.sroa.11.0..sroa.9237.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 744
  store i8 %.sroa.5.sroa.6.0.i.i, ptr %.sroa.9237.sroa.11.0..sroa.9237.0..sroa_idx.sroa_idx.i, align 8, !noalias !26083
  %.sroa.9237.sroa.12.0..sroa.9237.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 745
  store i8 %.sroa.5.sroa.7.0.i.i, ptr %.sroa.9237.sroa.12.0..sroa.9237.0..sroa_idx.sroa_idx.i, align 1, !noalias !26083
  %.sroa.9237.sroa.13.0..sroa.9237.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 746
  store i8 %.sroa.5.sroa.8.0.i.i, ptr %.sroa.9237.sroa.13.0..sroa.9237.0..sroa_idx.sroa_idx.i, align 2, !noalias !26083
  %.sroa.9237.sroa.15.0..sroa.9237.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 752
  store <2 x i64> %i.aur, ptr %.sroa.9237.sroa.15.0..sroa.9237.0..sroa_idx.sroa_idx.i, align 8, !noalias !26083
  %.sroa.9237.sroa.17.0..sroa.9237.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 768
  store i8 %i.aup, ptr %.sroa.9237.sroa.17.0..sroa.9237.0..sroa_idx.sroa_idx.i, align 8, !noalias !26083
  %.sroa.10238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 776
  store ptr %i.aul, ptr %.sroa.10238.0..sroa_idx.i, align 8, !noalias !26083
  %.sroa.11239.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 784
  store ptr @310, ptr %.sroa.11239.0..sroa_idx.i, align 8, !noalias !26083
  %.sroa.13241.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 824
  store i8 0, ptr %.sroa.13241.0..sroa_idx.i, align 8, !noalias !26083
  br label %bb.qf

bb.qc:                                            ; preds = %bb.qm, %bb.qj, %bb.qe, %bb.qa
  %i.avp = phi ptr [ %i.avs, %bb.qj ], [ %i.avs, %bb.qm ], [ %i.avs, %bb.qe ], [ %i.auf, %bb.qa ]
  %i.avq = phi ptr [ %i.avt, %bb.qj ], [ %i.avt, %bb.qm ], [ %i.avt, %bb.qe ], [ %i.aug, %bb.qa ]
  %.pn37.i = phi { ptr, i32 } [ %i.avy, %bb.qj ], [ %i.awa, %bb.qm ], [ %i.avr, %bb.qe ], [ %i.avj, %bb.qa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9237.sroa.10.i)
  br label %.body75.i

bb.qd:                                            ; preds = %bb.po
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11204.i, i64 16, i1 false), !noalias !26083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.968.i.sroa.8.i.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12205.sroa.7.i.sroa.5, i64 7, i1 false)
  %.sroa.10298.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.4406.0.i.i to i8
  %.sroa.10298.sroa.10.0.extract.shift.i = lshr i64 %.sroa.4406.0.i.i, 8
  %.sroa.10298.sroa.10.0.extract.trunc.i = trunc nuw i64 %.sroa.10298.sroa.10.0.extract.shift.i to i56
  br label %bb.bk

bb.qe:                                            ; preds = %bb.qf
  %i.avr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !26083
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtBL_15DeltaTableState7try_new0EBP_(ptr noundef nonnull align 8 %i.avu) #46
          to label %bb.qc unwind label %bb.aw, !noalias !26087

bb.qf:                                            ; preds = %bb.qb, %bb.h
  %i.avs = phi ptr [ %i.auf, %bb.qb ], [ %i.eh, %bb.h ] ; 6 uses
  %i.avt = phi ptr [ %i.aug, %bb.qb ], [ %i.eg, %bb.h ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !noalias !26083
  %i.avu = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtB4_15DeltaTableState7try_new0B8_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.dw, ptr noundef nonnull align 8 %i.avu, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.qg unwind label %bb.qe, !noalias !26087

bb.qg:                                            ; preds = %bb.qf
  %i.avv = load i64, ptr %i.dw, align 16, !range !1116, !noalias !26083, !noundef !4 ; 3 uses
  %i.avw = icmp eq i64 %i.avv, -9223372036854775710
  br i1 %i.avw, label %bb.qh, label %bb.qi

bb.qh:                                            ; preds = %bb.qg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !26083
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9237.sroa.10.i)
  br label %bb.rs

bb.qi:                                            ; preds = %bb.qg
  %.sroa.3256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.sroa.3256.sroa.0.0.copyload.i = load i64, ptr %.sroa.3256.0..sroa_idx.i, align 8, !noalias !26083 ; 4 uses
  %.sroa.3256.sroa.3.0..sroa.3256.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %.sroa.3256.sroa.3.0.copyload.i = load i64, ptr %.sroa.3256.sroa.3.0..sroa.3256.0..sroa_idx.sroa_idx.i, align 16, !noalias !26083 ; 3 uses
  %.sroa.3256.sroa.5.0..sroa.3256.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3256.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3256.sroa.5.0..sroa.3256.0..sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !26083
  %.sroa.5257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %.sroa.5257.sroa.0.0.copyload.i = load i64, ptr %.sroa.5257.0..sroa_idx.i, align 8, !noalias !26083
  %.sroa.5257.sroa.2.0..sroa.5257.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %.sroa.5257.sroa.2.0.copyload.i = load i8, ptr %.sroa.5257.sroa.2.0..sroa.5257.0..sroa_idx.sroa_idx.i, align 16, !noalias !26083
  %.sroa.5257.sroa.3.0..sroa.5257.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 49
  %.sroa.5257.sroa.3.i.sroa.0.0.copyload = load i56, ptr %.sroa.5257.sroa.3.0..sroa.5257.0..sroa_idx.sroa_idx.i, align 1, !noalias !26083
  %.sroa.5257.sroa.3.i.sroa.4.0..sroa.5257.sroa.3.0..sroa.5257.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 56
  %.sroa.5257.sroa.3.i.sroa.4.0.copyload = load i8, ptr %.sroa.5257.sroa.3.i.sroa.4.0..sroa.5257.sroa.3.0..sroa.5257.0..sroa_idx.sroa_idx.i.sroa_idx, align 8, !noalias !26083
  %.sroa.5257.sroa.3.i.sroa.5.0..sroa.5257.sroa.3.0..sroa.5257.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5257.sroa.3.i.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5257.sroa.3.i.sroa.5.0..sroa.5257.sroa.3.0..sroa.5257.0..sroa_idx.sroa_idx.i.sroa_idx, i64 7, i1 false), !noalias !26083
  %.sroa.5257.sroa.3.i.sroa.6.0..sroa.5257.sroa.3.0..sroa.5257.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.avx = load <2 x i64>, ptr %.sroa.5257.sroa.3.i.sroa.6.0..sroa.5257.sroa.3.0..sroa.5257.0..sroa_idx.sroa_idx.i.sroa_idx, align 16, !noalias !26083
  %.sroa.5257.sroa.3.i.sroa.8.0..sroa.5257.sroa.3.0..sroa.5257.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.5257.sroa.3.i.sroa.8, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5257.sroa.3.i.sroa.8.0..sroa.5257.sroa.3.0..sroa.5257.0..sroa_idx.sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !26083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !26083
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtBL_15DeltaTableState7try_new0EBP_(ptr noundef nonnull align 8 %i.avu)
          to label %bb.qk unwind label %bb.qj, !noalias !26087

bb.qj:                                            ; preds = %bb.qi
  %i.avy = landingpad { ptr, i32 }
          cleanup
  br label %bb.qc

bb.qk:                                            ; preds = %bb.qi
  %.not.i109.i = icmp eq i64 %i.avv, -9223372036854775711
  br i1 %.not.i109.i, label %bb.ql, label %bb.qt

bb.ql:                                            ; preds = %bb.qk
  %i.avz = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.avz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEBM_.exit111.i unwind label %bb.qm, !noalias !26087

bb.qm:                                            ; preds = %bb.ql
  %i.awa = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.3256.sroa.0.0.copyload.i, ptr %i.avz, align 8, !noalias !26083
  %.sroa.3357.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 616
  store i64 %.sroa.3256.sroa.3.0.copyload.i, ptr %.sroa.3357.0..sroa_idx.i, align 8, !noalias !26083
  %.sroa.4360.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4360.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3256.sroa.5.i, i64 16, i1 false), !noalias !26083
  br label %bb.qc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEBM_.exit111.i: ; preds = %bb.ql
  store i64 %.sroa.3256.sroa.0.0.copyload.i, ptr %i.avz, align 8, !noalias !26083
  %.sroa.3357.0..sroa_idx358.i = getelementptr inbounds nuw i8, ptr %1, i64 616
  store i64 %.sroa.3256.sroa.3.0.copyload.i, ptr %.sroa.3357.0..sroa_idx358.i, align 8, !noalias !26083
  %.sroa.4360.0..sroa_idx361.i = getelementptr inbounds nuw i8, ptr %1, i64 624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4360.0..sroa_idx361.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3256.sroa.5.i, i64 16, i1 false), !noalias !26083
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9237.sroa.10.i)
  br label %bb.fg

bb.qn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit116.i, %bb.fg
  %i.awb = phi ptr [ %i.axi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit116.i ], [ %i.ts, %bb.fg ]
  %i.awc = phi ptr [ %i.axj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit116.i ], [ %i.tt, %bb.fg ]
  %i.awd = getelementptr inbounds nuw i8, ptr %1, i64 608
  %.sroa.0362.0.copyload.i = load i64, ptr %i.awd, align 8, !noalias !26083 ; 2 uses
  %.sroa.4363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 616
  %.sroa.4363.0.copyload.i = load i64, ptr %.sroa.4363.0..sroa_idx.i, align 8, !noalias !26083
  %.sroa.5364.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5364.0..sroa_idx.i, i64 16, i1 false), !noalias !26083
  %i.awe = getelementptr inbounds nuw i8, ptr %1, i64 681
  %i.awf = load i8, ptr %i.awe, align 1, !range !178, !noalias !26083, !noundef !4
  %i.awg = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.awh = load i64, ptr %i.awg, align 8, !noalias !26083, !noundef !4
  %.sroa.10298.sroa.0.0.extract.trunc322.i = trunc i64 %.sroa.0362.0.copyload.i to i8
  %.sroa.10298.sroa.10.0.extract.shift332.i = lshr i64 %.sroa.0362.0.copyload.i, 8
  %i.awi = getelementptr inbounds nuw i8, ptr %1, i64 682
  store i8 0, ptr %i.awi, align 2, !noalias !26083
  br label %bb.rt

bb.qo:                                            ; preds = %bb.fg
  %i.awj = getelementptr i8, ptr %i.tv, i64 552
  %.val64.i = load ptr, ptr %i.awj, align 8, !noalias !26087, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.awk = getelementptr inbounds nuw i8, ptr %.val64.i, i64 16
  %i.awl = load i64, ptr %i.awk, align 8, !range !3, !invariant.load !4, !noalias !26087
  %i.awm = add nsw i64 %i.awl, -1
  %i.awn = and i64 %i.awm, -16
  %i.awo = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.awn
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 16
  %i.awq = getelementptr inbounds nuw i8, ptr %i.tv, i64 504
  %i.awr = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.aws = load i8, ptr %i.awr, align 8, !range !178, !noalias !26083, !noundef !4
  %i.awt = trunc nuw i8 %i.aws to i1
  br i1 %i.awt, label %bb.qq, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  %i.awu = getelementptr inbounds nuw i8, ptr %i.tv, i64 568
  %i.awv = load i8, ptr %i.awu, align 8, !range !178, !noalias !26087, !noundef !4
  %i.aww = trunc nuw i8 %i.awv to i1
  br label %bb.qq

bb.qq:                                            ; preds = %bb.qp, %bb.qo
  %.sroa.01.0.i = phi i1 [ %i.aww, %bb.qp ], [ true, %bb.qo ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv), !noalias !26083
  %i.awx = getelementptr inbounds nuw i8, ptr %1, i64 640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %i.awx, i64 16, i1 false), !noalias !26083
  %i.awy = getelementptr inbounds nuw i8, ptr %.val64.i, i64 48
  %i.awz = load ptr, ptr %i.awy, align 8, !invariant.load !4, !noalias !26087, !nonnull !4
  %i.axa = invoke { ptr, ptr } %i.awz(ptr noundef nonnull %i.awp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.awq, i1 noundef zeroext %.sroa.01.0.i, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(16) %i.dv)
          to label %bb.qs unwind label %bb.qr, !noalias !26087 ; 2 uses

bb.qr:                                            ; preds = %bb.qq
  %i.axb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !26083
  br label %.body75.i

bb.qs:                                            ; preds = %bb.qq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !26083
  %i.axc = extractvalue { ptr, ptr } %i.axa, 0
  %i.axd = extractvalue { ptr, ptr } %i.axa, 1
  %i.axe = getelementptr inbounds nuw i8, ptr %1, i64 688
  store ptr %i.axc, ptr %i.axe, align 8, !noalias !26083
  %i.axf = getelementptr inbounds nuw i8, ptr %1, i64 696
  store ptr %i.axd, ptr %i.axf, align 8, !noalias !26083
  br label %bb.qv

bb.qt:                                            ; preds = %bb.qk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.968.i.sroa.8.i.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5257.sroa.3.i.sroa.5, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.968.i.sroa.8.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.5257.sroa.3.i.sroa.8, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3256.sroa.5.i, i64 16, i1 false), !noalias !26083
  %.sroa.10298.sroa.0.0.extract.trunc324.i = trunc i64 %.sroa.3256.sroa.0.0.copyload.i to i8
  %.sroa.10298.sroa.10.0.extract.shift336.i = lshr i64 %.sroa.3256.sroa.0.0.copyload.i, 8
  %.sroa.10298.sroa.10.0.extract.trunc337.i = trunc nuw i64 %.sroa.10298.sroa.10.0.extract.shift336.i to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9237.sroa.10.i)
  br label %bb.bk

bb.qu:                                            ; preds = %bb.qv
  %i.axg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !26083
  %.val57.i = load ptr, ptr %i.axk, align 8, !noalias !26083
  %i.axh = getelementptr i8, ptr %1, i64 696
  %.val58.i = load ptr, ptr %i.axh, align 8, !noalias !26083, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_(ptr %.val57.i, ptr nonnull %.val58.i) #46
          to label %.body75.i unwind label %bb.aw, !noalias !26087

bb.qv:                                            ; preds = %bb.f, %bb.qs
  %i.axi = phi ptr [ %i.eh, %bb.f ], [ %i.ts, %bb.qs ] ; 6 uses
  %i.axj = phi ptr [ %i.eg, %bb.f ], [ %i.tt, %bb.qs ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du), !noalias !26083
  %i.axk = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2g_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.du, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.axk, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.qw unwind label %bb.qu, !noalias !26087

bb.qw:                                            ; preds = %bb.qv
  %i.axl = load i64, ptr %i.du, align 16, !range !1116, !noalias !26083, !noundef !4 ; 3 uses
  %i.axm = icmp eq i64 %i.axl, -9223372036854775710
  br i1 %i.axm, label %bb.qx, label %bb.qy

bb.qx:                                            ; preds = %bb.qw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !26083
  br label %bb.rs

bb.qy:                                            ; preds = %bb.qw
  %.sroa.3266.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %.sroa.3266.sroa.0.0.copyload.i = load i64, ptr %.sroa.3266.0..sroa_idx.i, align 8, !noalias !26083 ; 2 uses
  %.sroa.3266.sroa.2.0..sroa.3266.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %.sroa.3266.sroa.2.0.copyload.i = load i64, ptr %.sroa.3266.sroa.2.0..sroa.3266.0..sroa_idx.sroa_idx.i, align 16, !noalias !26083
  %.sroa.3266.sroa.3.0..sroa.3266.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3266.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3266.sroa.3.0..sroa.3266.0..sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !26083
  %.sroa.3266.sroa.4.0..sroa.3266.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %.sroa.3266.sroa.4.0.copyload.i = load i64, ptr %.sroa.3266.sroa.4.0..sroa.3266.0..sroa_idx.sroa_idx.i, align 8, !noalias !26083
  %.sroa.3266.sroa.5.0..sroa.3266.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  %.sroa.3266.sroa.5.0.copyload.i = load i8, ptr %.sroa.3266.sroa.5.0..sroa.3266.0..sroa_idx.sroa_idx.i, align 16, !noalias !26083
  %.sroa.3266.sroa.6.0..sroa.3266.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.du, i64 49
  %.sroa.3266.sroa.6.i.sroa.0.0.copyload = load i56, ptr %.sroa.3266.sroa.6.0..sroa.3266.0..sroa_idx.sroa_idx.i, align 1, !noalias !26083
  %.sroa.3266.sroa.6.i.sroa.4.0..sroa.3266.sroa.6.0..sroa.3266.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %.sroa.3266.sroa.6.i.sroa.4.0.copyload = load i8, ptr %.sroa.3266.sroa.6.i.sroa.4.0..sroa.3266.sroa.6.0..sroa.3266.0..sroa_idx.sroa_idx.i.sroa_idx, align 8, !noalias !26083
  %.sroa.3266.sroa.6.i.sroa.5.0..sroa.3266.sroa.6.0..sroa.3266.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3266.sroa.6.i.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3266.sroa.6.i.sroa.5.0..sroa.3266.sroa.6.0..sroa.3266.0..sroa_idx.sroa_idx.i.sroa_idx, i64 7, i1 false), !noalias !26083
  %.sroa.3266.sroa.6.i.sroa.6.0..sroa.3266.sroa.6.0..sroa.3266.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  %i.axn = load <2 x i64>, ptr %.sroa.3266.sroa.6.i.sroa.6.0..sroa.3266.sroa.6.0..sroa.3266.0..sroa_idx.sroa_idx.i.sroa_idx, align 16, !noalias !26083
  %.sroa.3266.sroa.6.i.sroa.8.0..sroa.3266.sroa.6.0..sroa.3266.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.3266.sroa.6.i.sroa.8, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.3266.sroa.6.i.sroa.8.0..sroa.3266.sroa.6.0..sroa.3266.0..sroa_idx.sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !26083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !26083
  %.val55.i = load ptr, ptr %i.axk, align 8, !noalias !26083 ; 5 uses
  %i.axo = getelementptr i8, ptr %1, i64 696
  %.val56.i = load ptr, ptr %i.axo, align 8, !noalias !26083, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.axp = load ptr, ptr %.val56.i, align 8, !invariant.load !4, !noalias !26087 ; 2 uses
  %.not.i.i112.i = icmp eq ptr %i.axp, null
  br i1 %.not.i.i112.i, label %bb.ra, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val55.i) ]
  invoke void %i.axp(ptr noundef nonnull %.val55.i)
          to label %bb.ra unwind label %bb.rc, !noalias !26087

bb.ra:                                            ; preds = %bb.qz, %bb.qy
  %i.axq = getelementptr inbounds nuw i8, ptr %.val56.i, i64 8
  %i.axr = load i64, ptr %i.axq, align 8, !range !16, !invariant.load !4, !noalias !26087 ; 2 uses
  %i.axs = icmp eq i64 %i.axr, 0
  br i1 %i.axs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit116.i, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %i.axt = getelementptr inbounds nuw i8, ptr %.val56.i, i64 16
  %i.axu = load i64, ptr %i.axt, align 8, !range !3, !invariant.load !4, !noalias !26087
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val55.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val55.i, i64 noundef range(i64 1, 0) %i.axr, i64 noundef range(i64 1, 536870913) %i.axu) #40, !noalias !26087
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit116.i

bb.rc:                                            ; preds = %bb.qz
  %i.axv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %.val56.i, i64 8
  %i.axx = load i64, ptr %i.axw, align 8, !range !16, !invariant.load !4, !noalias !26087 ; 2 uses
  %i.axy = icmp eq i64 %i.axx, 0
  br i1 %i.axy, label %.body75.i, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  %i.axz = getelementptr inbounds nuw i8, ptr %.val56.i, i64 16
  %i.aya = load i64, ptr %i.axz, align 8, !range !3, !invariant.load !4, !noalias !26087
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val55.i, i64 noundef range(i64 1, 0) %i.axx, i64 noundef range(i64 1, 536870913) %i.aya) #40, !noalias !26087
  br label %.body75.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit116.i: ; preds = %bb.rb, %bb.ra
  %.not.i117.i = icmp eq i64 %i.axl, -9223372036854775711
  br i1 %.not.i117.i, label %bb.qn, label %bb.re

bb.re:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit116.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3266.sroa.3.i, i64 16, i1 false), !noalias !26083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.968.i.sroa.8.i.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3266.sroa.6.i.sroa.5, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.968.i.sroa.8.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.3266.sroa.6.i.sroa.8, i64 16, i1 false)
  %.sroa.10298.sroa.0.0.extract.trunc321.i = trunc i64 %.sroa.3266.sroa.0.0.copyload.i to i8
  %.sroa.10298.sroa.10.0.extract.shift330.i = lshr i64 %.sroa.3266.sroa.0.0.copyload.i, 8
  %.sroa.10298.sroa.10.0.extract.trunc331.i = trunc nuw i64 %.sroa.10298.sroa.10.0.extract.shift330.i to i56
  br label %bb.bk

bb.rf:                                            ; preds = %bb.bk
  %i.ayb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEBM_.exit.i

bb.rg:                                            ; preds = %bb.rh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEBM_.exit80.i
  store i8 0, ptr %i.ip, align 2, !noalias !26083
  %3 = zext i56 %.sroa.10298.sroa.10.sroa.0.0.i to i64
  br label %bb.rt

bb.rh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEBM_.exit80.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.in)
          to label %bb.rg unwind label %bb.v, !noalias !26087

bb.ri:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEBM_.exit.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.iu) #46
          to label %.body.i unwind label %bb.aw, !noalias !26087

bb.rj:                                            ; preds = %bb.rk
  %i.ayc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !26083
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtBL_15DeltaTableState7try_new0EBP_(ptr noundef nonnull align 8 %i.ayf) #46
          to label %bb.ab unwind label %bb.aw, !noalias !26087

bb.rk:                                            ; preds = %bb.aa, %bb.i
  %i.ayd = phi ptr [ %i.ei, %bb.aa ], [ %i.eh, %bb.i ] ; 5 uses
  %i.aye = phi ptr [ %i.ej, %bb.aa ], [ %i.eg, %bb.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !noalias !26083
  %i.ayf = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtB4_15DeltaTableState7try_new0B8_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.ds, ptr noundef nonnull align 8 %i.ayf, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.rl unwind label %bb.rj, !noalias !26087

bb.rl:                                            ; preds = %bb.rk
  %i.ayg = load i64, ptr %i.ds, align 16, !range !1116, !noalias !26083, !noundef !4 ; 3 uses
  %i.ayh = icmp eq i64 %i.ayg, -9223372036854775710
  br i1 %i.ayh, label %bb.rm, label %bb.rn

bb.rm:                                            ; preds = %bb.rl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !26083
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9285.i)
  br label %bb.rs

bb.rn:                                            ; preds = %bb.rl
  %.sroa.3292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.3292.sroa.0.0.copyload.i = load i64, ptr %.sroa.3292.0..sroa_idx.i, align 8, !noalias !26083 ; 4 uses
  %.sroa.3292.sroa.3.0..sroa.3292.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %.sroa.3292.sroa.3.0.copyload.i = load i64, ptr %.sroa.3292.sroa.3.0..sroa.3292.0..sroa_idx.sroa_idx.i, align 16, !noalias !26083 ; 2 uses
  %.sroa.3292.sroa.5.0..sroa.3292.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3292.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3292.sroa.5.0..sroa.3292.0..sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !26083
  %.sroa.5293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %.sroa.5293.sroa.0.0.copyload.i = load i64, ptr %.sroa.5293.0..sroa_idx.i, align 8, !noalias !26083
  %.sroa.5293.sroa.2.0..sroa.5293.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %.sroa.5293.sroa.2.0.copyload.i = load i8, ptr %.sroa.5293.sroa.2.0..sroa.5293.0..sroa_idx.sroa_idx.i, align 16, !noalias !26083
  %.sroa.5293.sroa.3.0..sroa.5293.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 49
  %.sroa.5293.sroa.3.i.sroa.0.0.copyload = load i56, ptr %.sroa.5293.sroa.3.0..sroa.5293.0..sroa_idx.sroa_idx.i, align 1, !noalias !26083
  %.sroa.5293.sroa.3.i.sroa.4.0..sroa.5293.sroa.3.0..sroa.5293.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  %.sroa.5293.sroa.3.i.sroa.4.0.copyload = load i8, ptr %.sroa.5293.sroa.3.i.sroa.4.0..sroa.5293.sroa.3.0..sroa.5293.0..sroa_idx.sroa_idx.i.sroa_idx, align 8, !noalias !26083
  %.sroa.5293.sroa.3.i.sroa.5.0..sroa.5293.sroa.3.0..sroa.5293.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5293.sroa.3.i.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5293.sroa.3.i.sroa.5.0..sroa.5293.sroa.3.0..sroa.5293.0..sroa_idx.sroa_idx.i.sroa_idx, i64 7, i1 false), !noalias !26083
  %.sroa.5293.sroa.3.i.sroa.6.0..sroa.5293.sroa.3.0..sroa.5293.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.ayi = load <2 x i64>, ptr %.sroa.5293.sroa.3.i.sroa.6.0..sroa.5293.sroa.3.0..sroa.5293.0..sroa_idx.sroa_idx.i.sroa_idx, align 16, !noalias !26083
  %.sroa.5293.sroa.3.i.sroa.8.0..sroa.5293.sroa.3.0..sroa.5293.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.5293.sroa.3.i.sroa.8, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5293.sroa.3.i.sroa.8.0..sroa.5293.sroa.3.0..sroa.5293.0..sroa_idx.sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !26083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !26083
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtBL_15DeltaTableState7try_new0EBP_(ptr noundef nonnull align 8 %i.ayf)
          to label %bb.rp unwind label %bb.ro, !noalias !26087

bb.ro:                                            ; preds = %bb.rn
  %i.ayj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.rp:                                            ; preds = %bb.rn
  %.not.i119.i = icmp eq i64 %i.ayg, -9223372036854775711
  br i1 %.not.i119.i, label %bb.rq, label %bb.rr

bb.rq:                                            ; preds = %bb.rp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3292.sroa.5.i, i64 16, i1 false), !noalias !26083
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9285.i)
  %.sroa.10298.sroa.0.0.extract.trunc323.i = trunc i64 %.sroa.3292.sroa.0.0.copyload.i to i8
  %.sroa.10298.sroa.10.0.extract.shift334.i = lshr i64 %.sroa.3292.sroa.0.0.copyload.i, 8
  br label %bb.rt

bb.rr:                                            ; preds = %bb.rp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.968.i.sroa.8.i.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5293.sroa.3.i.sroa.5, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.968.i.sroa.8.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.5293.sroa.3.i.sroa.8, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3292.sroa.5.i, i64 16, i1 false), !noalias !26083
  %.sroa.10298.sroa.0.0.extract.trunc325.i = trunc i64 %.sroa.3292.sroa.0.0.copyload.i to i8
  %.sroa.10298.sroa.10.0.extract.shift338.i = lshr i64 %.sroa.3292.sroa.0.0.copyload.i, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9285.i)
  br label %bb.rt

common.ret:                                       ; preds = %bb.sb, %bb.rs
  %storemerge = phi i8 [ 1, %bb.sb ], [ 3, %bb.rs ]
  store i8 %storemerge, ptr %i.ea, align 8
  ret void

bb.rs:                                            ; preds = %bb.rm, %bb.fe, %bb.pn, %bb.qx, %bb.qh, %bb.ba, %bb.ah
  %i.ayk = phi ptr [ %i.gn, %bb.ah ], [ %i.ja, %bb.ba ], [ %i.tm, %bb.fe ], [ %i.aud, %bb.pn ], [ %i.avs, %bb.qh ], [ %i.axi, %bb.qx ], [ %i.ayd, %bb.rm ]
  %.sink.i.ph = phi i8 [ 3, %bb.ah ], [ 4, %bb.ba ], [ 5, %bb.fe ], [ 6, %bb.pn ], [ 7, %bb.qh ], [ 8, %bb.qx ], [ 9, %bb.rm ]
  store i8 %.sink.i.ph, ptr %i.ayk, align 1, !noalias !26083
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.968.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3292.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5293.sroa.3.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5293.sroa.3.i.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3266.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3266.sroa.6.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3266.sroa.6.i.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3256.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5257.sroa.3.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5257.sroa.3.i.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11204.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12205.sroa.7.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3138.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3138.sroa.6.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3138.sroa.6.i.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.6.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.6.i.sroa.8)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.rt:                                            ; preds = %bb.rr, %bb.rq, %bb.rg, %bb.qn
  %i.ayl = phi ptr [ %i.ayd, %bb.rq ], [ %i.ayd, %bb.rr ], [ %i.awb, %bb.qn ], [ %i.im, %bb.rg ]
  %i.aym = phi ptr [ %i.aye, %bb.rq ], [ %i.aye, %bb.rr ], [ %i.awc, %bb.qn ], [ %i.in, %bb.rg ]
  %.sroa.29.i.sroa.10.0 = phi i8 [ undef, %bb.rq ], [ %.sroa.5293.sroa.3.i.sroa.4.0.copyload, %bb.rr ], [ undef, %bb.qn ], [ %.sroa.29.i.sroa.10.2, %bb.rg ]
  %.sroa.29.i.sroa.0.0 = phi i56 [ undef, %bb.rq ], [ %.sroa.5293.sroa.3.i.sroa.0.0.copyload, %bb.rr ], [ undef, %bb.qn ], [ %.sroa.29.i.sroa.0.2, %bb.rg ]
  %.sroa.0297.2.i = phi i64 [ -9223372036854775711, %bb.rq ], [ %i.ayg, %bb.rr ], [ -9223372036854775711, %bb.qn ], [ %.sroa.0297.0.i, %bb.rg ] ; 2 uses
  %.sroa.20.2.i = phi i64 [ %.sroa.3292.sroa.3.0.copyload.i, %bb.rq ], [ %.sroa.3292.sroa.3.0.copyload.i, %bb.rr ], [ %.sroa.4363.0.copyload.i, %bb.qn ], [ %.sroa.20.0.i, %bb.rg ]
  %.sroa.22.2.i = phi i64 [ 0, %bb.rq ], [ %.sroa.5293.sroa.0.0.copyload.i, %bb.rr ], [ %i.awh, %bb.qn ], [ %.sroa.22.0.i, %bb.rg ] ; 3 uses
  %.sroa.27.2.i = phi i8 [ 0, %bb.rq ], [ %.sroa.5293.sroa.2.0.copyload.i, %bb.rr ], [ %i.awf, %bb.qn ], [ %.sroa.27.0.i, %bb.rg ] ; 2 uses
  %.sroa.10298.sroa.0.2.i = phi i8 [ %.sroa.10298.sroa.0.0.extract.trunc323.i, %bb.rq ], [ %.sroa.10298.sroa.0.0.extract.trunc325.i, %bb.rr ], [ %.sroa.10298.sroa.0.0.extract.trunc322.i, %bb.qn ], [ %.sroa.10298.sroa.0.0.i, %bb.rg ]
  %.sroa.10297.sroa.10.sroa.0.2.i = phi i64 [ %.sroa.10298.sroa.10.0.extract.shift334.i, %bb.rq ], [ %.sroa.10298.sroa.10.0.extract.shift338.i, %bb.rr ], [ %.sroa.10298.sroa.10.0.extract.shift332.i, %bb.qn ], [ %3, %bb.rg ]
  %i.ayn = phi <2 x i64> [ undef, %bb.rq ], [ %i.ayi, %bb.rr ], [ undef, %bb.qn ], [ %i.io, %bb.rg ]
  %.sroa.10298.sroa.10.0.insert.shift.i = shl nuw i64 %.sroa.10297.sroa.10.sroa.0.2.i, 8
  %.sroa.10298.sroa.0.0.insert.ext.i = zext i8 %.sroa.10298.sroa.0.2.i to i64
  %.sroa.10298.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.10298.sroa.10.0.insert.shift.i, %.sroa.10298.sroa.0.0.insert.ext.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.21.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.24, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.968.i.sroa.8.i.sroa.5, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.26.sroa.6, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.968.i.sroa.8.i.sroa.8, i64 16, i1 false)
  store i8 1, ptr %i.ayl, align 1, !noalias !26083
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.968.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3292.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5293.sroa.3.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5293.sroa.3.i.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3266.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3266.sroa.6.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3266.sroa.6.i.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3256.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5257.sroa.3.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5257.sroa.3.i.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11204.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12205.sroa.7.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3138.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3138.sroa.6.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3138.sroa.6.i.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.6.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.6.i.sroa.8)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsc_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBO_10PostCommit20run_post_commit_hook0EBS_(ptr noundef nonnull align 8 %i.aym)
          to label %bb.rv unwind label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  %i.ayo = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.rv:                                            ; preds = %bb.rt
  %.not = icmp eq i64 %.sroa.0297.2.i, -9223372036854775711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.319.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, i64 16, i1 false)
  br i1 %.not, label %bb.rx, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.24, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.sroa.2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.26.sroa.6, i64 16, i1 false)
  %4 = zext i56 %.sroa.29.i.sroa.0.0 to i64
  br label %bb.ry

bb.rx:                                            ; preds = %bb.rv
  %i.ayp = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.ayq = load i64, ptr %i.ayp, align 8, !noundef !4
  %i.ayr = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.ays = load i64, ptr %i.ayr, align 8, !noundef !4
  %.sroa.7.sroa.0.0.extract.trunc = trunc i64 %.sroa.22.2.i to i8
  %.sroa.7.sroa.3.0.extract.shift = lshr i64 %.sroa.22.2.i, 8
  %i.ayt = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.ayq, i64 0
  br label %bb.ry

bb.ry:                                            ; preds = %bb.rw, %bb.rx
  %.sroa.520.0 = phi i64 [ %i.ays, %bb.rx ], [ %.sroa.22.2.i, %bb.rw ]
  %.sroa.10.0 = phi i8 [ %.sroa.27.2.i, %bb.rx ], [ %.sroa.29.i.sroa.10.0, %bb.rw ]
  %.sroa.7.sroa.0.0 = phi i8 [ %.sroa.7.sroa.0.0.extract.trunc, %bb.rx ], [ %.sroa.27.2.i, %bb.rw ]
  %.sroa.7.sroa.3.sroa.0.0 = phi i64 [ %.sroa.7.sroa.3.0.extract.shift, %bb.rx ], [ %4, %bb.rw ]
  %i.ayu = phi <2 x i64> [ %i.ayt, %bb.rx ], [ %i.ayn, %bb.rw ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction10PostCommitEBM_(ptr noalias noundef align 8 dereferenceable(576) %1)
          to label %bb.sb unwind label %bb.sa

bb.rz:                                            ; preds = %bb.sa, %bb.b
  %.pn26 = phi { ptr, i32 } [ %i.ayv, %bb.sa ], [ %.pn24, %bb.b ]
  store i8 2, ptr %i.ea, align 8
  resume { ptr, i32 } %.pn26

bb.sa:                                            ; preds = %bb.ry
  %i.ayv = landingpad { ptr, i32 }
          cleanup
  br label %bb.rz

bb.sb:                                            ; preds = %bb.ry
  store i64 %.sroa.0297.2.i, ptr %0, align 16
  %.sroa.319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10298.sroa.0.0.insert.insert.i, ptr %.sroa.319.0..sroa_idx, align 8
  %.sroa.319.sroa.3.0..sroa.319.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.20.2.i, ptr %.sroa.319.sroa.3.0..sroa.319.0..sroa_idx.sroa_idx, align 16
  %.sroa.319.sroa.5.0..sroa.319.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.319.sroa.5.0..sroa.319.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.319.sroa.5, i64 16, i1 false)
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.520.0, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.7.sroa.3.0.insert.shift = shl nuw i64 %.sroa.7.sroa.3.sroa.0.0, 8
  %.sroa.7.sroa.0.0.insert.ext = zext i8 %.sroa.7.sroa.0.0 to i64
  %.sroa.7.sroa.0.0.insert.insert = or disjoint i64 %.sroa.7.sroa.3.0.insert.shift, %.sroa.7.sroa.0.0.insert.ext
  store i64 %.sroa.7.sroa.0.0.insert.insert, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11, i64 7, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.ayu, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.13.sroa.2.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.13.sroa.2.0..sroa.13.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.sroa.2, i64 16, i1 false)
  br label %common.ret

bb.sc:                                            ; preds = %.body, %bb.b
  %i.ayw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXsi_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB7_27MergeMetricExtensionPlannerNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlanner14plan_extension0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 9 uses
  %i.k = alloca [16 x i8], align 8                ; 14 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [24 x i8], align 8                ; 11 uses
  %i.p = alloca [24 x i8], align 16               ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [40 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [40 x i8], align 8                ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.x = load i8, ptr %i.w, align 8, !range !102, !noundef !4
  switch i8 %i.x, label %default.unreachable280 [
    i8 0, label %bb.b
    i8 1, label %bb.cb
    i8 2, label %bb.cc
  ]

default.unreachable280:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !align !18, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !4, !nonnull !4
  %i.ae = invoke { ptr, ptr } %i.ad(ptr noundef nonnull %i.z)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.d:                                             ; preds = %bb.b
  %i.ag = extractvalue { ptr, ptr } %i.ae, 0      ; 3 uses
  %i.ah = extractvalue { ptr, ptr } %i.ae, 1
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %.val58 = load ptr, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void %.val58(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noundef nonnull %i.ag) #49
          to label %bb.e unwind label %bb.c, !inline_history !22470

bb.e:                                             ; preds = %bb.d
  %i.aj = load i128, ptr %i.h, align 16, !noundef !4
  %.not = icmp eq i128 %i.aj, 46620861835323040589062409856541809135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %.not, label %bb.f, label %_RNvXs1r_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqeE2eq.exit75.thread

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr i8, ptr %i.ag, i64 328
  %.val63 = load ptr, ptr %i.ak, align 8          ; 7 uses
  %i.al = getelementptr i8, ptr %i.ag, i64 336
  %.val64 = load i64, ptr %i.al, align 8, !noundef !4
  %i.am = icmp eq i64 %.val64, 18
  br i1 %i.am, label %_RNvXs1r_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqeE2eq.exit, label %_RNvXs1r_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqeE2eq.exit75.thread

_RNvXs1r_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqeE2eq.exit: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val63) ]
  %i.an = load i128, ptr %.val63, align 1
  %i.ao = xor i128 %i.an, 156098035974736933531173024752630654317
  %i.ap = getelementptr i8, ptr %.val63, i64 16
  %i.aq = load i16, ptr %i.ap, align 1
  %i.ar = zext i16 %i.aq to i128
  %i.as = xor i128 %i.ar, 29806
  %i.at = or i128 %i.ao, %i.as
  %i.au = icmp ne i128 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.g, label %_RNvXs1r_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqeE2eq.exit70

bb.g:                                             ; preds = %_RNvXs1r_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqeE2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !26517)
  call void @llvm.experimental.noalias.scope.decl(metadata !26520)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !26523
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef range(i64 5, 26) 18, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc71 unwind label %bb.ab

.noexc71:                                         ; preds = %bb.g
  %i.ax = load i64, ptr %i.g, align 8, !range !58, !noalias !26523, !noundef !4
  %i.ay = trunc nuw i64 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !17, !noalias !26523, !noundef !4 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.ay, label %bb.h, label %bb.ac, !prof !52

bb.h:                                             ; preds = %.noexc71
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !26523
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ba, i64 %i.bc) #48
          to label %.noexc72 unwind label %bb.ab

.noexc72:                                         ; preds = %bb.h
  unreachable

_RNvXs1r_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqeE2eq.exit70: ; preds = %_RNvXs1r_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqeE2eq.exit
  %i.bd = load i128, ptr %.val63, align 1
  %i.be = xor i128 %i.bd, 156098035979381574527752361413071496557
  %i.bf = getelementptr i8, ptr %.val63, i64 16
  %i.bg = load i16, ptr %i.bf, align 1
  %i.bh = zext i16 %i.bg to i128
  %i.bi = xor i128 %i.bh, 29806
  %i.bj = or i128 %i.be, %i.bi
  %i.bk = icmp ne i128 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.i, label %_RNvXs1r_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqeE2eq.exit75

bb.i:                                             ; preds = %_RNvXs1r_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqeE2eq.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !26529)
  call void @llvm.experimental.noalias.scope.decl(metadata !26532)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !26535
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef range(i64 5, 26) 18, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc78 unwind label %bb.u

.noexc78:                                         ; preds = %bb.i
  %i.bn = load i64, ptr %i.f, align 8, !range !58, !noalias !26535, !noundef !4
  %i.bo = trunc nuw i64 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !17, !noalias !26535, !noundef !4 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.bo, label %bb.j, label %bb.v, !prof !52

bb.j:                                             ; preds = %.noexc78
  %i.bs = load i64, ptr %i.br, align 8, !noalias !26535
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bq, i64 %i.bs) #48
          to label %.noexc79 unwind label %bb.u

.noexc79:                                         ; preds = %bb.j
  unreachable

_RNvXs1r_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqeE2eq.exit75: ; preds = %_RNvXs1r_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqeE2eq.exit70
  %i.bt = load i128, ptr %.val63, align 1
  %i.bu = xor i128 %i.bt, 156098035979400959880497773959967827309
  %i.bv = getelementptr i8, ptr %.val63, i64 16
  %i.bw = load i16, ptr %i.bv, align 1
  %i.bx = zext i16 %i.bw to i128
  %i.by = xor i128 %i.bx, 29806
  %i.bz = or i128 %i.bu, %i.by
  %i.ca = icmp ne i128 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.k, label %_RNvXs1r_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqeE2eq.exit75.thread

bb.k:                                             ; preds = %_RNvXs1r_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqeE2eq.exit75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !26541)
  call void @llvm.experimental.noalias.scope.decl(metadata !26544)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26547
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 5, 26) 18, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc83 unwind label %bb.n

.noexc83:                                         ; preds = %bb.k
  %i.cd = load i64, ptr %i.e, align 8, !range !58, !noalias !26547, !noundef !4
  %i.ce = trunc nuw i64 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !range !17, !noalias !26547, !noundef !4 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.ce, label %bb.l, label %bb.o, !prof !52
end_hunk_3
