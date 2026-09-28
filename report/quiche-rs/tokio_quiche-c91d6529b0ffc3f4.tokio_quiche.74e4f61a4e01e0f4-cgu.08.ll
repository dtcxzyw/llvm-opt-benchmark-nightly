Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/tokio_quiche-c91d6529b0ffc3f4.tokio_quiche.74e4f61a4e01e0f4-cgu.08?download=true
inline.NumInlined: 543
inline.NumDeleted: 296
begin_hunk_0_@_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche:bb.a
    #dbg_value(ptr poison, !2343, !DIExpression(), !16984)
    #dbg_value(ptr poison, !2349, !DIExpression(), !16986)
    #dbg_value(ptr %.val1, !2346, !DIExpression(), !16984)
    #dbg_value(ptr %.val1, !2352, !DIExpression(), !16986)
    #dbg_value(ptr %.val1, !2355, !DIExpression(), !16988)
    #dbg_value(ptr %.val1, !2361, !DIExpression(), !16990)
    #dbg_value(i64 8, !2347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16984)
    #dbg_value(i64 8, !2353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16986)
    #dbg_value(i64 8, !2359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16988)
    #dbg_value(i64 8, !2362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16990)
    #dbg_value(i64 %i.c, !2347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16984)
    #dbg_value(i64 %i.c, !2353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16986)
    #dbg_value(i64 %i.c, !2359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16988)
    #dbg_value(i64 %i.c, !2362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16990)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !dbg !17004
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa2e0UnRrdBM_12tokio_quiche.exit, !dbg !17005

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa2e0UnRrdBM_12tokio_quiche.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !17006
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4taskINtB5_4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1r_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 !dbg !854 {
bb.a:
    #dbg_value(ptr %0, !4529, !DIExpression(), !17007)
    #dbg_value(ptr %0, !4533, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !17009)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17012
    #dbg_value(ptr %i.a, !4540, !DIExpression(), !17011)
  %i.b = load i64, ptr %i.a, align 8, !dbg !17013, !range !2625, !noundef !1521
  %.not = icmp eq i64 %i.b, -3, !dbg !17013
  br i1 %.not, label %bb.b, label %bb.c, !dbg !17014

bb.b:                                             ; preds = %bb.a
  ret void, !dbg !17015

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered5abort5abort(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 31) #29, !dbg !17016
  unreachable, !dbg !17016
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB2r_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 !dbg !859 {
bb.a:
    #dbg_value(ptr %0, !4548, !DIExpression(), !17027)
    #dbg_value(ptr %0, !4553, !DIExpression(), !17029)
    #dbg_value(i64 1, !4561, !DIExpression(), !17031)
    #dbg_value(i8 1, !4563, !DIExpression(), !17031)
    #dbg_value(i64 1, !4565, !DIExpression(), !17033)
    #dbg_value(i8 1, !4567, !DIExpression(), !17033)
  %i.a = load ptr, ptr %0, align 8, !dbg !17039, !nonnull !1521, !noundef !1521 ; 3 uses
    #dbg_value(ptr %i.a, !4559, !DIExpression(), !17034)
    #dbg_value(ptr %i.a, !4569, !DIExpression(), !17036)
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr), !dbg !17040
  br i1 %i.b, label %bb.d, label %bb.b, !dbg !17035

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17041
    #dbg_value(ptr %i.c, !4550, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17037)
    #dbg_value(ptr %i.c, !4551, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17038)
    #dbg_value(ptr %i.c, !4562, !DIExpression(), !17031)
    #dbg_value(ptr %i.a, !4550, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17037)
    #dbg_value(ptr %i.a, !4551, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17038)
    #dbg_value(ptr %i.c, !4566, !DIExpression(), !17033)
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !dbg !17042
  %i.e = icmp eq i64 %i.d, 1, !dbg !17043
  br i1 %i.e, label %bb.c, label %bb.d, !dbg !17043

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !2667, !DIExpression(), !17018)
  fence acquire, !dbg !17044
    #dbg_value(ptr poison, !2343, !DIExpression(), !17020)
    #dbg_value(ptr poison, !2349, !DIExpression(), !17022)
    #dbg_value(ptr %i.a, !2346, !DIExpression(), !17020)
    #dbg_value(ptr %i.a, !2352, !DIExpression(), !17022)
    #dbg_value(ptr %i.a, !2355, !DIExpression(), !17024)
    #dbg_value(ptr %i.a, !2361, !DIExpression(), !17026)
    #dbg_value(i64 8, !2347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17020)
    #dbg_value(i64 8, !2353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17022)
    #dbg_value(i64 8, !2359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17024)
    #dbg_value(i64 8, !2362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17026)
    #dbg_value(i64 64, !2347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17020)
    #dbg_value(i64 64, !2353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17022)
    #dbg_value(i64 64, !2359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17024)
    #dbg_value(i64 64, !2362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17026)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef 8) #22, !dbg !17045
  br label %bb.d, !dbg !17046

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void, !dbg !17047
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsW_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http35stats12H3AuditStatsENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtBM_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !17048 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 23 uses
    #dbg_value(ptr %0, !17068, !DIExpression(), !17071)
    #dbg_value(ptr %0, !17072, !DIExpression(), !17079)
    #dbg_value(ptr %0, !17080, !DIExpression(), !17087)
    #dbg_value(ptr %1, !17069, !DIExpression(), !17071)
  %i.c = load ptr, ptr %0, align 8, !dbg !17115, !nonnull !1521, !noundef !1521 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !17116
    #dbg_value(ptr %i.d, !17094, !DIExpression(), !17059)
    #dbg_value(ptr %1, !17098, !DIExpression(), !17059)
    #dbg_value(ptr @29, !17103, !DIExpression(), !17060)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17117, !noalias !17114
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !17118
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !17119
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !17120
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56, !dbg !17121
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !17122
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 72, !dbg !17123
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 80, !dbg !17124
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 88, !dbg !17125
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 89, !dbg !17126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17127, !noalias !17114
  store ptr %i.d, ptr %i.a, align 8, !dbg !17127, !noalias !17114
  store ptr %i.e, ptr %i.b, align 8, !dbg !17117, !noalias !17114
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !17117
  store ptr @30, ptr %i.n, align 8, !dbg !17117, !noalias !17114
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !17117
  store ptr %i.f, ptr %i.o, align 8, !dbg !17117, !noalias !17114
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !17117
  store ptr @31, ptr %i.p, align 8, !dbg !17117, !noalias !17114
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !17117
  store ptr %i.g, ptr %i.q, align 8, !dbg !17117, !noalias !17114
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !17117
  store ptr @31, ptr %i.r, align 8, !dbg !17117, !noalias !17114
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !17117
  store ptr %i.h, ptr %i.s, align 8, !dbg !17117, !noalias !17114
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !17117
  store ptr @32, ptr %i.t, align 8, !dbg !17117, !noalias !17114
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !17117
  store ptr %i.i, ptr %i.u, align 8, !dbg !17117, !noalias !17114
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !17117
  store ptr @32, ptr %i.v, align 8, !dbg !17117, !noalias !17114
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !17117
  store ptr %i.j, ptr %i.w, align 8, !dbg !17117, !noalias !17114
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !17117
  store ptr @32, ptr %i.x, align 8, !dbg !17117, !noalias !17114
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !17117
  store ptr %i.k, ptr %i.y, align 8, !dbg !17117, !noalias !17114
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !17117
  store ptr @32, ptr %i.z, align 8, !dbg !17117, !noalias !17114
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !17117
  store ptr %i.l, ptr %i.aa, align 8, !dbg !17117, !noalias !17114
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !17117
  store ptr @33, ptr %i.ab, align 8, !dbg !17117, !noalias !17114
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !17117
  store ptr %i.m, ptr %i.ac, align 8, !dbg !17117, !noalias !17114
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !17117
  store ptr @33, ptr %i.ad, align 8, !dbg !17117, !noalias !17114
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !17117
  store ptr %i.a, ptr %i.ae, align 8, !dbg !17117, !noalias !17114
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !17117
  store ptr @34, ptr %i.af, align 8, !dbg !17117, !noalias !17114
    #dbg_value(ptr %i.b, !17104, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17063)
    #dbg_value(i64 10, !17104, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17063)
  %i.ag = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @29, i64 noundef 10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 10), !dbg !17128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17129, !noalias !17114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17129, !noalias !17114
  ret i1 %i.ag, !dbg !17130
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !dbg !17131 {
bb.a:
    #dbg_value(ptr %0, !17139, !DIExpression(), !17142)
    #dbg_value(ptr %1, !17140, !DIExpression(), !17142)
    #dbg_value(ptr %1, !17144, !DIExpression(), !17151)
    #dbg_value(ptr %1, !17152, !DIExpression(), !17156)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17157
  %i.b = load i32, ptr %i.a, align 8, !dbg !17157, !noundef !1521 ; 2 uses
  %i.c = and i32 %i.b, 33554432, !dbg !17157
  %.not = icmp eq i32 %i.c, 0, !dbg !17157
  br i1 %.not, label %bb.b, label %bb.c, !dbg !17158

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864, !dbg !17159
  %.not3 = icmp eq i32 %i.d, 0, !dbg !17159
  br i1 %.not3, label %bb.d, label %bb.e, !dbg !17160

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !17161
  br label %bb.f, !dbg !17161

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !17162
  br label %bb.f, !dbg !17162

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !17163
  br label %bb.f, !dbg !17163

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in, !dbg !17164
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic12write_errorsENtNtB3c_11nonstandard28NonstandardUnsuffixedCounterEEENtNtCskKLDkoKarTP_4core7default7Default7defaultB3V_() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17165 {
bb.a:
    #dbg_declare(ptr @18, !17212, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !17230)
    #dbg_declare(ptr @18, !17231, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !17241)
    #dbg_value(i64 8, !2178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17173)
    #dbg_value(i64 8, !2202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17175)
    #dbg_value(i64 8, !2221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17177)
    #dbg_value(i64 72, !2178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17173)
    #dbg_value(i64 72, !2202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17175)
    #dbg_value(i64 72, !2221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17177)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2219, !DIExpression(), !17175)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2225, !DIExpression(), !17177)
    #dbg_value(i8 0, !2226, !DIExpression(), !17177)
    #dbg_value(i64 8, !2229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17179)
    #dbg_value(i64 8, !2251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17181)
    #dbg_value(i64 72, !2229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17179)
    #dbg_value(i64 72, !2251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17181)
    #dbg_value(i1 false, !2233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17179)
    #dbg_value(i64 72, !2234, !DIExpression(), !17182)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !17271
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !dbg !17272 ; 9 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !17273
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !dbg !17274, !prof !2370

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #29, !dbg !17275
  unreachable, !dbg !17275

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !17226, !DIExpression(), !17245)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.c unwind label %bb.d, !dbg !17276 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !17277
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !17277
    #dbg_value(i64 1, !17212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17245)
    #dbg_value(i64 1, !17231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17251)
    #dbg_value(i64 1, !17212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17245)
    #dbg_value(i64 1, !17231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17251)
    #dbg_value(i64 0, !17231, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17251)
    #dbg_value(i64 0, !17212, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17245)
    #dbg_value(i64 %i.d, !17231, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !17251)
    #dbg_value(i64 %i.d, !17212, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !17245)
    #dbg_value(i64 %i.e, !17231, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !17251)
    #dbg_value(i64 %i.e, !17212, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !17245)
    #dbg_value(ptr %i.a, !17226, !DIExpression(), !17245)
    #dbg_value(ptr %i.a, !17238, !DIExpression(), !17251)
  store i64 1, ptr %i.a, align 8, !dbg !17278
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17278
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !17278
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17278
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !17278
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17278
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !17278
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !17278
  store i64 %i.d, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17278
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !17278
  store i64 %i.e, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17278
  ret ptr %i.a, !dbg !17279

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !17253, !DIExpression(), !17191)
    #dbg_value(ptr poison, !17259, !DIExpression(), !17199)
    #dbg_value(ptr %i.a, !17260, !DIExpression(), !17200)
    #dbg_value(i64 8, !17261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17201)
    #dbg_value(i64 72, !17261, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17201)
    #dbg_value(ptr poison, !2343, !DIExpression(), !17203)
    #dbg_value(ptr poison, !2349, !DIExpression(), !17205)
    #dbg_value(ptr %i.a, !2346, !DIExpression(), !17203)
    #dbg_value(ptr %i.a, !2352, !DIExpression(), !17205)
    #dbg_value(ptr %i.a, !2355, !DIExpression(), !17207)
    #dbg_value(ptr %i.a, !2361, !DIExpression(), !17209)
    #dbg_value(i64 8, !2347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17203)
    #dbg_value(i64 8, !2353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17205)
    #dbg_value(i64 8, !2359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17207)
    #dbg_value(i64 8, !2362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17209)
    #dbg_value(i64 72, !2347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17203)
    #dbg_value(i64 72, !2353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17205)
    #dbg_value(i64 72, !2359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17207)
    #dbg_value(i64 72, !2362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17209)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #22, !dbg !17280
  resume { ptr, i32 } %i.f, !dbg !17281
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic17failed_handshakesENtNtB3c_11nonstandard28NonstandardUnsuffixedCounterEEENtNtCskKLDkoKarTP_4core7default7Default7defaultB3V_() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17282 {
bb.a:
    #dbg_declare(ptr @18, !17329, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !17347)
    #dbg_declare(ptr @18, !17348, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !17358)
    #dbg_value(i64 8, !2178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17290)
    #dbg_value(i64 8, !2202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17292)
    #dbg_value(i64 8, !2221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17294)
    #dbg_value(i64 72, !2178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17290)
    #dbg_value(i64 72, !2202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17292)
    #dbg_value(i64 72, !2221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17294)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2219, !DIExpression(), !17292)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2225, !DIExpression(), !17294)
    #dbg_value(i8 0, !2226, !DIExpression(), !17294)
    #dbg_value(i64 8, !2229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17296)
    #dbg_value(i64 8, !2251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17298)
    #dbg_value(i64 72, !2229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17296)
    #dbg_value(i64 72, !2251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17298)
    #dbg_value(i1 false, !2233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17296)
    #dbg_value(i64 72, !2234, !DIExpression(), !17299)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !17388
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !dbg !17389 ; 9 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !17390
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !dbg !17391, !prof !2370

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #29, !dbg !17392
  unreachable, !dbg !17392

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !17343, !DIExpression(), !17362)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.c unwind label %bb.d, !dbg !17393 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !17394
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !17394
    #dbg_value(i64 1, !17329, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17362)
    #dbg_value(i64 1, !17348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17368)
    #dbg_value(i64 1, !17329, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17362)
    #dbg_value(i64 1, !17348, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17368)
    #dbg_value(i64 0, !17348, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17368)
    #dbg_value(i64 0, !17329, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17362)
    #dbg_value(i64 %i.d, !17348, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !17368)
    #dbg_value(i64 %i.d, !17329, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !17362)
    #dbg_value(i64 %i.e, !17348, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !17368)
    #dbg_value(i64 %i.e, !17329, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !17362)
    #dbg_value(ptr %i.a, !17343, !DIExpression(), !17362)
    #dbg_value(ptr %i.a, !17355, !DIExpression(), !17368)
  store i64 1, ptr %i.a, align 8, !dbg !17395
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17395
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !17395
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17395
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !17395
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17395
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !17395
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !17395
  store i64 %i.d, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17395
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !17395
  store i64 %i.e, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17395
  ret ptr %i.a, !dbg !17396

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !17370, !DIExpression(), !17308)
    #dbg_value(ptr poison, !17376, !DIExpression(), !17316)
    #dbg_value(ptr %i.a, !17377, !DIExpression(), !17317)
    #dbg_value(i64 8, !17378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17318)
    #dbg_value(i64 72, !17378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17318)
    #dbg_value(ptr poison, !2343, !DIExpression(), !17320)
    #dbg_value(ptr poison, !2349, !DIExpression(), !17322)
    #dbg_value(ptr %i.a, !2346, !DIExpression(), !17320)
    #dbg_value(ptr %i.a, !2352, !DIExpression(), !17322)
    #dbg_value(ptr %i.a, !2355, !DIExpression(), !17324)
    #dbg_value(ptr %i.a, !2361, !DIExpression(), !17326)
    #dbg_value(i64 8, !2347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17320)
    #dbg_value(i64 8, !2353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17322)
    #dbg_value(i64 8, !2359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17324)
    #dbg_value(i64 8, !2362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17326)
    #dbg_value(i64 72, !2347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17320)
    #dbg_value(i64 72, !2353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17322)
    #dbg_value(i64 72, !2359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17324)
    #dbg_value(i64 72, !2362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17326)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #22, !dbg !17397
  resume { ptr, i32 } %i.f, !dbg !17398
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic22handshake_time_secondsENtNtB3c_9histogram13TimeHistogramEEENtNtCskKLDkoKarTP_4core7default7Default7defaultB3V_() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17399 {
bb.a:
    #dbg_declare(ptr @18, !17446, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !17464)
    #dbg_declare(ptr @18, !17465, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !17475)
    #dbg_value(i64 8, !2178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17407)
    #dbg_value(i64 8, !2202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17409)
    #dbg_value(i64 8, !2221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17411)
    #dbg_value(i64 72, !2178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17407)
    #dbg_value(i64 72, !2202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17409)
    #dbg_value(i64 72, !2221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17411)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2219, !DIExpression(), !17409)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2225, !DIExpression(), !17411)
    #dbg_value(i8 0, !2226, !DIExpression(), !17411)
    #dbg_value(i64 8, !2229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17413)
    #dbg_value(i64 8, !2251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17415)
    #dbg_value(i64 72, !2229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17413)
    #dbg_value(i64 72, !2251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17415)
    #dbg_value(i1 false, !2233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17413)
    #dbg_value(i64 72, !2234, !DIExpression(), !17416)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !17505
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !dbg !17506 ; 9 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !17507
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !dbg !17508, !prof !2370

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #29, !dbg !17509
  unreachable, !dbg !17509

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !17460, !DIExpression(), !17479)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.c unwind label %bb.d, !dbg !17510 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !17511
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !17511
    #dbg_value(i64 1, !17446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17479)
    #dbg_value(i64 1, !17465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17485)
    #dbg_value(i64 1, !17446, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17479)
    #dbg_value(i64 1, !17465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17485)
    #dbg_value(i64 0, !17465, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17485)
    #dbg_value(i64 0, !17446, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17479)
    #dbg_value(i64 %i.d, !17465, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !17485)
    #dbg_value(i64 %i.d, !17446, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !17479)
    #dbg_value(i64 %i.e, !17465, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !17485)
    #dbg_value(i64 %i.e, !17446, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !17479)
    #dbg_value(ptr %i.a, !17460, !DIExpression(), !17479)
    #dbg_value(ptr %i.a, !17472, !DIExpression(), !17485)
  store i64 1, ptr %i.a, align 8, !dbg !17512
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17512
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !17512
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17512
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !17512
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !17512
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !17512
  store i64 %i.d, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17512
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !17512
  store i64 %i.e, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17512
  ret ptr %i.a, !dbg !17513

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !17487, !DIExpression(), !17425)
    #dbg_value(ptr poison, !17493, !DIExpression(), !17433)
    #dbg_value(ptr %i.a, !17494, !DIExpression(), !17434)
    #dbg_value(i64 8, !17495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17435)
    #dbg_value(i64 72, !17495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17435)
    #dbg_value(ptr poison, !2343, !DIExpression(), !17437)
    #dbg_value(ptr poison, !2349, !DIExpression(), !17439)
    #dbg_value(ptr %i.a, !2346, !DIExpression(), !17437)
    #dbg_value(ptr %i.a, !2352, !DIExpression(), !17439)
    #dbg_value(ptr %i.a, !2355, !DIExpression(), !17441)
    #dbg_value(ptr %i.a, !2361, !DIExpression(), !17443)
    #dbg_value(i64 8, !2347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17437)
    #dbg_value(i64 8, !2353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17439)
    #dbg_value(i64 8, !2359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17441)
    #dbg_value(i64 8, !2362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17443)
    #dbg_value(i64 72, !2347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17437)
    #dbg_value(i64 72, !2353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17439)
    #dbg_value(i64 72, !2359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17441)
    #dbg_value(i64 72, !2362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17443)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #22, !dbg !17514
  resume { ptr, i32 } %i.f, !dbg !17515
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic24invalid_cid_packet_countENtNtB3c_11nonstandard28NonstandardUnsuffixedCounterEEENtNtCskKLDkoKarTP_4core7default7Default7defaultB3V_() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17516 {
bb.a:
    #dbg_declare(ptr @18, !17563, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !17581)
    #dbg_declare(ptr @18, !17582, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !17592)
    #dbg_value(i64 8, !2178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17524)
    #dbg_value(i64 8, !2202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17526)
    #dbg_value(i64 8, !2221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17528)
    #dbg_value(i64 72, !2178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17524)
    #dbg_value(i64 72, !2202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17526)
    #dbg_value(i64 72, !2221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17528)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2219, !DIExpression(), !17526)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2225, !DIExpression(), !17528)
    #dbg_value(i8 0, !2226, !DIExpression(), !17528)
    #dbg_value(i64 8, !2229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17530)
    #dbg_value(i64 8, !2251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17532)
    #dbg_value(i64 72, !2229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17530)
    #dbg_value(i64 72, !2251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17532)
    #dbg_value(i1 false, !2233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17530)
    #dbg_value(i64 72, !2234, !DIExpression(), !17533)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !17622
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !dbg !17623 ; 9 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !17624
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !dbg !17625, !prof !2370

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #29, !dbg !17626
  unreachable, !dbg !17626

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !17577, !DIExpression(), !17596)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.c unwind label %bb.d, !dbg !17627 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !17628
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !17628
    #dbg_value(i64 1, !17563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17596)
    #dbg_value(i64 1, !17582, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17602)
    #dbg_value(i64 1, !17563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17596)
    #dbg_value(i64 1, !17582, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17602)
    #dbg_value(i64 0, !17582, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17602)
    #dbg_value(i64 0, !17563, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17596)
    #dbg_value(i64 %i.d, !17582, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !17602)
    #dbg_value(i64 %i.d, !17563, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !17596)
    #dbg_value(i64 %i.e, !17582, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !17602)
    #dbg_value(i64 %i.e, !17563, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !17596)
    #dbg_value(ptr %i.a, !17577, !DIExpression(), !17596)
    #dbg_value(ptr %i.a, !17589, !DIExpression(), !17602)
  store i64 1, ptr %i.a, align 8, !dbg !17629
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17629
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !17629
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17629
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !17629
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17629
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !17629
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !17629
  store i64 %i.d, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17629
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !17629
  store i64 %i.e, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17629
  ret ptr %i.a, !dbg !17630

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !17604, !DIExpression(), !17542)
    #dbg_value(ptr poison, !17610, !DIExpression(), !17550)
    #dbg_value(ptr %i.a, !17611, !DIExpression(), !17551)
    #dbg_value(i64 8, !17612, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17552)
    #dbg_value(i64 72, !17612, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17552)
    #dbg_value(ptr poison, !2343, !DIExpression(), !17554)
    #dbg_value(ptr poison, !2349, !DIExpression(), !17556)
    #dbg_value(ptr %i.a, !2346, !DIExpression(), !17554)
    #dbg_value(ptr %i.a, !2352, !DIExpression(), !17556)
    #dbg_value(ptr %i.a, !2355, !DIExpression(), !17558)
    #dbg_value(ptr %i.a, !2361, !DIExpression(), !17560)
    #dbg_value(i64 8, !2347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17554)
    #dbg_value(i64 8, !2353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17556)
    #dbg_value(i64 8, !2359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17558)
    #dbg_value(i64 8, !2362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17560)
    #dbg_value(i64 72, !2347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17554)
    #dbg_value(i64 72, !2353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17556)
    #dbg_value(i64 72, !2359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17558)
    #dbg_value(i64 72, !2362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17560)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #22, !dbg !17631
  resume { ptr, i32 } %i.f, !dbg !17632
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic29rejected_initial_packet_countENtNtB3c_11nonstandard28NonstandardUnsuffixedCounterEEENtNtCskKLDkoKarTP_4core7default7Default7defaultB3V_() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17633 {
bb.a:
    #dbg_declare(ptr @18, !17680, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !17698)
    #dbg_declare(ptr @18, !17699, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !17709)
    #dbg_value(i64 8, !2178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17641)
    #dbg_value(i64 8, !2202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17643)
    #dbg_value(i64 8, !2221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17645)
    #dbg_value(i64 72, !2178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17641)
    #dbg_value(i64 72, !2202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17643)
    #dbg_value(i64 72, !2221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17645)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2219, !DIExpression(), !17643)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2225, !DIExpression(), !17645)
    #dbg_value(i8 0, !2226, !DIExpression(), !17645)
    #dbg_value(i64 8, !2229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17647)
    #dbg_value(i64 8, !2251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17649)
    #dbg_value(i64 72, !2229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17647)
    #dbg_value(i64 72, !2251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17649)
    #dbg_value(i1 false, !2233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17647)
    #dbg_value(i64 72, !2234, !DIExpression(), !17650)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !17739
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !dbg !17740 ; 9 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !17741
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !dbg !17742, !prof !2370

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #29, !dbg !17743
  unreachable, !dbg !17743

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !17694, !DIExpression(), !17713)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.c unwind label %bb.d, !dbg !17744 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !17745
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !17745
    #dbg_value(i64 1, !17680, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17713)
    #dbg_value(i64 1, !17699, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17719)
    #dbg_value(i64 1, !17680, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17713)
    #dbg_value(i64 1, !17699, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17719)
    #dbg_value(i64 0, !17699, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17719)
    #dbg_value(i64 0, !17680, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17713)
    #dbg_value(i64 %i.d, !17699, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !17719)
    #dbg_value(i64 %i.d, !17680, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !17713)
    #dbg_value(i64 %i.e, !17699, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !17719)
    #dbg_value(i64 %i.e, !17680, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !17713)
    #dbg_value(ptr %i.a, !17694, !DIExpression(), !17713)
    #dbg_value(ptr %i.a, !17706, !DIExpression(), !17719)
  store i64 1, ptr %i.a, align 8, !dbg !17746
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17746
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !17746
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17746
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !17746
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17746
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !17746
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !17746
  store i64 %i.d, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17746
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !17746
  store i64 %i.e, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17746
  ret ptr %i.a, !dbg !17747

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !17721, !DIExpression(), !17659)
    #dbg_value(ptr poison, !17727, !DIExpression(), !17667)
    #dbg_value(ptr %i.a, !17728, !DIExpression(), !17668)
    #dbg_value(i64 8, !17729, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17669)
    #dbg_value(i64 72, !17729, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17669)
    #dbg_value(ptr poison, !2343, !DIExpression(), !17671)
    #dbg_value(ptr poison, !2349, !DIExpression(), !17673)
    #dbg_value(ptr %i.a, !2346, !DIExpression(), !17671)
    #dbg_value(ptr %i.a, !2352, !DIExpression(), !17673)
    #dbg_value(ptr %i.a, !2355, !DIExpression(), !17675)
    #dbg_value(ptr %i.a, !2361, !DIExpression(), !17677)
    #dbg_value(i64 8, !2347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17671)
    #dbg_value(i64 8, !2353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17673)
    #dbg_value(i64 8, !2359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17675)
    #dbg_value(i64 8, !2362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17677)
    #dbg_value(i64 72, !2347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17671)
    #dbg_value(i64 72, !2353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17673)
    #dbg_value(i64 72, !2359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17675)
    #dbg_value(i64 72, !2362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17677)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #22, !dbg !17748
  resume { ptr, i32 } %i.f, !dbg !17749
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic30peer_h3_conn_close_error_countENtNtB3c_11nonstandard28NonstandardUnsuffixedCounterEEENtNtCskKLDkoKarTP_4core7default7Default7defaultB3V_() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17750 {
bb.a:
    #dbg_declare(ptr @18, !17797, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !17815)
    #dbg_declare(ptr @18, !17816, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !17826)
    #dbg_value(i64 8, !2178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17758)
    #dbg_value(i64 8, !2202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17760)
    #dbg_value(i64 8, !2221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17762)
    #dbg_value(i64 72, !2178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17758)
    #dbg_value(i64 72, !2202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17760)
    #dbg_value(i64 72, !2221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17762)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2219, !DIExpression(), !17760)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2225, !DIExpression(), !17762)
    #dbg_value(i8 0, !2226, !DIExpression(), !17762)
    #dbg_value(i64 8, !2229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17764)
    #dbg_value(i64 8, !2251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17766)
    #dbg_value(i64 72, !2229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17764)
    #dbg_value(i64 72, !2251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17766)
    #dbg_value(i1 false, !2233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17764)
    #dbg_value(i64 72, !2234, !DIExpression(), !17767)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !17856
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !dbg !17857 ; 9 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !17858
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !dbg !17859, !prof !2370

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #29, !dbg !17860
  unreachable, !dbg !17860

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !17811, !DIExpression(), !17830)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.c unwind label %bb.d, !dbg !17861 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !17862
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !17862
    #dbg_value(i64 1, !17797, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17830)
    #dbg_value(i64 1, !17816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17836)
    #dbg_value(i64 1, !17797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17830)
    #dbg_value(i64 1, !17816, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17836)
    #dbg_value(i64 0, !17816, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17836)
    #dbg_value(i64 0, !17797, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17830)
    #dbg_value(i64 %i.d, !17816, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !17836)
    #dbg_value(i64 %i.d, !17797, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !17830)
    #dbg_value(i64 %i.e, !17816, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !17836)
    #dbg_value(i64 %i.e, !17797, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !17830)
    #dbg_value(ptr %i.a, !17811, !DIExpression(), !17830)
    #dbg_value(ptr %i.a, !17823, !DIExpression(), !17836)
  store i64 1, ptr %i.a, align 8, !dbg !17863
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17863
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !17863
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17863
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !17863
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17863
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !17863
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !17863
  store i64 %i.d, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17863
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !17863
  store i64 %i.e, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17863
  ret ptr %i.a, !dbg !17864

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !17838, !DIExpression(), !17776)
    #dbg_value(ptr poison, !17844, !DIExpression(), !17784)
    #dbg_value(ptr %i.a, !17845, !DIExpression(), !17785)
    #dbg_value(i64 8, !17846, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17786)
    #dbg_value(i64 72, !17846, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17786)
    #dbg_value(ptr poison, !2343, !DIExpression(), !17788)
    #dbg_value(ptr poison, !2349, !DIExpression(), !17790)
    #dbg_value(ptr %i.a, !2346, !DIExpression(), !17788)
    #dbg_value(ptr %i.a, !2352, !DIExpression(), !17790)
    #dbg_value(ptr %i.a, !2355, !DIExpression(), !17792)
    #dbg_value(ptr %i.a, !2361, !DIExpression(), !17794)
    #dbg_value(i64 8, !2347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17788)
    #dbg_value(i64 8, !2353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17790)
    #dbg_value(i64 8, !2359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17792)
    #dbg_value(i64 8, !2362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17794)
    #dbg_value(i64 72, !2347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17788)
    #dbg_value(i64 72, !2353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17790)
    #dbg_value(i64 72, !2359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17792)
    #dbg_value(i64 72, !2362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17794)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #22, !dbg !17865
  resume { ptr, i32 } %i.f, !dbg !17866
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic31local_h3_conn_close_error_countENtNtB3c_11nonstandard28NonstandardUnsuffixedCounterEEENtNtCskKLDkoKarTP_4core7default7Default7defaultB3V_() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17867 {
bb.a:
    #dbg_declare(ptr @18, !17914, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !17932)
    #dbg_declare(ptr @18, !17933, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !17943)
    #dbg_value(i64 8, !2178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17875)
    #dbg_value(i64 8, !2202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17877)
    #dbg_value(i64 8, !2221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17879)
    #dbg_value(i64 72, !2178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17875)
    #dbg_value(i64 72, !2202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17877)
    #dbg_value(i64 72, !2221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17879)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2219, !DIExpression(), !17877)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2225, !DIExpression(), !17879)
    #dbg_value(i8 0, !2226, !DIExpression(), !17879)
    #dbg_value(i64 8, !2229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17881)
    #dbg_value(i64 8, !2251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17883)
    #dbg_value(i64 72, !2229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17881)
    #dbg_value(i64 72, !2251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17883)
    #dbg_value(i1 false, !2233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17881)
    #dbg_value(i64 72, !2234, !DIExpression(), !17884)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !17973
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !dbg !17974 ; 9 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !17975
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !dbg !17976, !prof !2370

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #29, !dbg !17977
  unreachable, !dbg !17977

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !17928, !DIExpression(), !17947)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.c unwind label %bb.d, !dbg !17978 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !17979
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !17979
    #dbg_value(i64 1, !17914, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17947)
    #dbg_value(i64 1, !17933, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17953)
    #dbg_value(i64 1, !17914, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17947)
    #dbg_value(i64 1, !17933, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17953)
    #dbg_value(i64 0, !17933, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17953)
    #dbg_value(i64 0, !17914, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17947)
    #dbg_value(i64 %i.d, !17933, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !17953)
    #dbg_value(i64 %i.d, !17914, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !17947)
    #dbg_value(i64 %i.e, !17933, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !17953)
    #dbg_value(i64 %i.e, !17914, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !17947)
    #dbg_value(ptr %i.a, !17928, !DIExpression(), !17947)
    #dbg_value(ptr %i.a, !17940, !DIExpression(), !17953)
  store i64 1, ptr %i.a, align 8, !dbg !17980
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17980
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !17980
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17980
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !17980
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17980
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !17980
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !17980
  store i64 %i.d, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17980
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !17980
  store i64 %i.e, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !17980
  ret ptr %i.a, !dbg !17981

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !17955, !DIExpression(), !17893)
    #dbg_value(ptr poison, !17961, !DIExpression(), !17901)
    #dbg_value(ptr %i.a, !17962, !DIExpression(), !17902)
    #dbg_value(i64 8, !17963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17903)
    #dbg_value(i64 72, !17963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17903)
    #dbg_value(ptr poison, !2343, !DIExpression(), !17905)
    #dbg_value(ptr poison, !2349, !DIExpression(), !17907)
    #dbg_value(ptr %i.a, !2346, !DIExpression(), !17905)
    #dbg_value(ptr %i.a, !2352, !DIExpression(), !17907)
    #dbg_value(ptr %i.a, !2355, !DIExpression(), !17909)
    #dbg_value(ptr %i.a, !2361, !DIExpression(), !17911)
    #dbg_value(i64 8, !2347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17905)
    #dbg_value(i64 8, !2353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17907)
    #dbg_value(i64 8, !2359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17909)
    #dbg_value(i64 8, !2362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17911)
    #dbg_value(i64 72, !2347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17905)
    #dbg_value(i64 72, !2353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17907)
    #dbg_value(i64 72, !2359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17909)
    #dbg_value(i64 72, !2362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17911)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #22, !dbg !17982
  resume { ptr, i32 } %i.f, !dbg !17983
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic32peer_quic_conn_close_error_countENtNtB3c_11nonstandard28NonstandardUnsuffixedCounterEEENtNtCskKLDkoKarTP_4core7default7Default7defaultB3V_() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17984 {
bb.a:
    #dbg_declare(ptr @18, !18031, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !18049)
    #dbg_declare(ptr @18, !18050, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !18060)
    #dbg_value(i64 8, !2178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17992)
    #dbg_value(i64 8, !2202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17994)
    #dbg_value(i64 8, !2221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17996)
    #dbg_value(i64 72, !2178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17992)
    #dbg_value(i64 72, !2202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17994)
    #dbg_value(i64 72, !2221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17996)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2219, !DIExpression(), !17994)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2225, !DIExpression(), !17996)
    #dbg_value(i8 0, !2226, !DIExpression(), !17996)
    #dbg_value(i64 8, !2229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17998)
    #dbg_value(i64 8, !2251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18000)
    #dbg_value(i64 72, !2229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17998)
    #dbg_value(i64 72, !2251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18000)
    #dbg_value(i1 false, !2233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17998)
    #dbg_value(i64 72, !2234, !DIExpression(), !18001)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !18090
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !dbg !18091 ; 9 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !18092
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !dbg !18093, !prof !2370

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #29, !dbg !18094
  unreachable, !dbg !18094

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !18045, !DIExpression(), !18064)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.c unwind label %bb.d, !dbg !18095 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !18096
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !18096
    #dbg_value(i64 1, !18031, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18064)
    #dbg_value(i64 1, !18050, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18070)
    #dbg_value(i64 1, !18031, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18064)
    #dbg_value(i64 1, !18050, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18070)
    #dbg_value(i64 0, !18050, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18070)
    #dbg_value(i64 0, !18031, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18064)
    #dbg_value(i64 %i.d, !18050, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !18070)
    #dbg_value(i64 %i.d, !18031, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !18064)
    #dbg_value(i64 %i.e, !18050, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !18070)
    #dbg_value(i64 %i.e, !18031, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !18064)
    #dbg_value(ptr %i.a, !18045, !DIExpression(), !18064)
    #dbg_value(ptr %i.a, !18057, !DIExpression(), !18070)
  store i64 1, ptr %i.a, align 8, !dbg !18097
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18097
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !18097
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18097
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !18097
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !18097
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !18097
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !18097
  store i64 %i.d, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !18097
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !18097
  store i64 %i.e, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !18097
  ret ptr %i.a, !dbg !18098

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !18072, !DIExpression(), !18010)
    #dbg_value(ptr poison, !18078, !DIExpression(), !18018)
    #dbg_value(ptr %i.a, !18079, !DIExpression(), !18019)
    #dbg_value(i64 8, !18080, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18020)
    #dbg_value(i64 72, !18080, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18020)
    #dbg_value(ptr poison, !2343, !DIExpression(), !18022)
    #dbg_value(ptr poison, !2349, !DIExpression(), !18024)
    #dbg_value(ptr %i.a, !2346, !DIExpression(), !18022)
    #dbg_value(ptr %i.a, !2352, !DIExpression(), !18024)
    #dbg_value(ptr %i.a, !2355, !DIExpression(), !18026)
    #dbg_value(ptr %i.a, !2361, !DIExpression(), !18028)
    #dbg_value(i64 8, !2347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18022)
    #dbg_value(i64 8, !2353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18024)
    #dbg_value(i64 8, !2359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18026)
    #dbg_value(i64 8, !2362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18028)
    #dbg_value(i64 72, !2347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18022)
    #dbg_value(i64 72, !2353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18024)
    #dbg_value(i64 72, !2359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18026)
    #dbg_value(i64 72, !2362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18028)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #22, !dbg !18099
  resume { ptr, i32 } %i.f, !dbg !18100
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic33local_quic_conn_close_error_countENtNtB3c_11nonstandard28NonstandardUnsuffixedCounterEEENtNtCskKLDkoKarTP_4core7default7Default7defaultB3V_() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18101 {
bb.a:
    #dbg_declare(ptr @18, !18148, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !18166)
    #dbg_declare(ptr @18, !18167, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !18177)
    #dbg_value(i64 8, !2178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18109)
    #dbg_value(i64 8, !2202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18111)
    #dbg_value(i64 8, !2221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18113)
    #dbg_value(i64 72, !2178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18109)
    #dbg_value(i64 72, !2202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18111)
    #dbg_value(i64 72, !2221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18113)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2219, !DIExpression(), !18111)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2225, !DIExpression(), !18113)
    #dbg_value(i8 0, !2226, !DIExpression(), !18113)
    #dbg_value(i64 8, !2229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18115)
    #dbg_value(i64 8, !2251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18117)
    #dbg_value(i64 72, !2229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18115)
    #dbg_value(i64 72, !2251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18117)
    #dbg_value(i1 false, !2233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18115)
    #dbg_value(i64 72, !2234, !DIExpression(), !18118)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !18207
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !dbg !18208 ; 9 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !18209
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !dbg !18210, !prof !2370

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #29, !dbg !18211
  unreachable, !dbg !18211

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !18162, !DIExpression(), !18181)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.c unwind label %bb.d, !dbg !18212 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !18213
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !18213
    #dbg_value(i64 1, !18148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18181)
    #dbg_value(i64 1, !18167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18187)
    #dbg_value(i64 1, !18148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18181)
    #dbg_value(i64 1, !18167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18187)
    #dbg_value(i64 0, !18167, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18187)
    #dbg_value(i64 0, !18148, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18181)
    #dbg_value(i64 %i.d, !18167, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !18187)
    #dbg_value(i64 %i.d, !18148, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !18181)
    #dbg_value(i64 %i.e, !18167, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !18187)
    #dbg_value(i64 %i.e, !18148, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !18181)
    #dbg_value(ptr %i.a, !18162, !DIExpression(), !18181)
    #dbg_value(ptr %i.a, !18174, !DIExpression(), !18187)
  store i64 1, ptr %i.a, align 8, !dbg !18214
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18214
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !18214
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18214
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !18214
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !18214
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !18214
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !18214
  store i64 %i.d, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !18214
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !18214
  store i64 %i.e, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !18214
  ret ptr %i.a, !dbg !18215

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !18189, !DIExpression(), !18127)
    #dbg_value(ptr poison, !18195, !DIExpression(), !18135)
    #dbg_value(ptr %i.a, !18196, !DIExpression(), !18136)
    #dbg_value(i64 8, !18197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18137)
    #dbg_value(i64 72, !18197, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18137)
    #dbg_value(ptr poison, !2343, !DIExpression(), !18139)
    #dbg_value(ptr poison, !2349, !DIExpression(), !18141)
    #dbg_value(ptr %i.a, !2346, !DIExpression(), !18139)
    #dbg_value(ptr %i.a, !2352, !DIExpression(), !18141)
    #dbg_value(ptr %i.a, !2355, !DIExpression(), !18143)
    #dbg_value(ptr %i.a, !2361, !DIExpression(), !18145)
    #dbg_value(i64 8, !2347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18139)
    #dbg_value(i64 8, !2353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18141)
    #dbg_value(i64 8, !2359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18143)
    #dbg_value(i64 8, !2362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18145)
    #dbg_value(i64 72, !2347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18139)
    #dbg_value(i64 72, !2353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18141)
    #dbg_value(i64 72, !2359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18143)
    #dbg_value(i64 72, !2362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18145)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #22, !dbg !18216
  resume { ptr, i32 } %i.f, !dbg !18217
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic39expensive_accepted_initial_packet_countENtNtB3c_11nonstandard28NonstandardUnsuffixedCounterEEENtNtCskKLDkoKarTP_4core7default7Default7defaultB3V_() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18218 {
bb.a:
    #dbg_declare(ptr @18, !18265, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !18283)
    #dbg_declare(ptr @18, !18284, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !18294)
    #dbg_value(i64 8, !2178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18226)
    #dbg_value(i64 8, !2202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18228)
    #dbg_value(i64 8, !2221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18230)
    #dbg_value(i64 72, !2178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18226)
    #dbg_value(i64 72, !2202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18228)
    #dbg_value(i64 72, !2221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18230)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2219, !DIExpression(), !18228)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2225, !DIExpression(), !18230)
    #dbg_value(i8 0, !2226, !DIExpression(), !18230)
    #dbg_value(i64 8, !2229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18232)
    #dbg_value(i64 8, !2251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18234)
    #dbg_value(i64 72, !2229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18232)
    #dbg_value(i64 72, !2251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18234)
    #dbg_value(i1 false, !2233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18232)
    #dbg_value(i64 72, !2234, !DIExpression(), !18235)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !18324
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !dbg !18325 ; 9 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !18326
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !dbg !18327, !prof !2370

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #29, !dbg !18328
  unreachable, !dbg !18328

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !18279, !DIExpression(), !18298)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.c unwind label %bb.d, !dbg !18329 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !18330
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !18330
    #dbg_value(i64 1, !18265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18298)
    #dbg_value(i64 1, !18284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18304)
    #dbg_value(i64 1, !18265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18298)
    #dbg_value(i64 1, !18284, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18304)
    #dbg_value(i64 0, !18284, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18304)
    #dbg_value(i64 0, !18265, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18298)
    #dbg_value(i64 %i.d, !18284, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !18304)
    #dbg_value(i64 %i.d, !18265, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !18298)
    #dbg_value(i64 %i.e, !18284, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !18304)
    #dbg_value(i64 %i.e, !18265, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !18298)
    #dbg_value(ptr %i.a, !18279, !DIExpression(), !18298)
    #dbg_value(ptr %i.a, !18291, !DIExpression(), !18304)
  store i64 1, ptr %i.a, align 8, !dbg !18331
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18331
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !18331
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18331
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !18331
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !18331
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !18331
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !18331
  store i64 %i.d, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !18331
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !18331
  store i64 %i.e, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !18331
  ret ptr %i.a, !dbg !18332

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !18306, !DIExpression(), !18244)
    #dbg_value(ptr poison, !18312, !DIExpression(), !18252)
    #dbg_value(ptr %i.a, !18313, !DIExpression(), !18253)
    #dbg_value(i64 8, !18314, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18254)
    #dbg_value(i64 72, !18314, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18254)
    #dbg_value(ptr poison, !2343, !DIExpression(), !18256)
    #dbg_value(ptr poison, !2349, !DIExpression(), !18258)
    #dbg_value(ptr %i.a, !2346, !DIExpression(), !18256)
    #dbg_value(ptr %i.a, !2352, !DIExpression(), !18258)
    #dbg_value(ptr %i.a, !2355, !DIExpression(), !18260)
    #dbg_value(ptr %i.a, !2361, !DIExpression(), !18262)
    #dbg_value(i64 8, !2347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18256)
    #dbg_value(i64 8, !2353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18258)
    #dbg_value(i64 8, !2359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18260)
    #dbg_value(i64 8, !2362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18262)
    #dbg_value(i64 72, !2347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18256)
    #dbg_value(i64 72, !2353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18258)
    #dbg_value(i64 72, !2359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18260)
    #dbg_value(i64 72, !2362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18262)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #22, !dbg !18333
  resume { ptr, i32 } %i.f, !dbg !18334
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic39expensive_rejected_initial_packet_countENtNtB3c_11nonstandard28NonstandardUnsuffixedCounterEEENtNtCskKLDkoKarTP_4core7default7Default7defaultB3V_() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18335 {
bb.a:
    #dbg_declare(ptr @18, !18382, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !18400)
    #dbg_declare(ptr @18, !18401, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !18411)
    #dbg_value(i64 8, !2178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18343)
    #dbg_value(i64 8, !2202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18345)
    #dbg_value(i64 8, !2221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18347)
    #dbg_value(i64 72, !2178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18343)
    #dbg_value(i64 72, !2202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18345)
    #dbg_value(i64 72, !2221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18347)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2219, !DIExpression(), !18345)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2225, !DIExpression(), !18347)
    #dbg_value(i8 0, !2226, !DIExpression(), !18347)
    #dbg_value(i64 8, !2229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18349)
    #dbg_value(i64 8, !2251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18351)
    #dbg_value(i64 72, !2229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18349)
    #dbg_value(i64 72, !2251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18351)
    #dbg_value(i1 false, !2233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18349)
    #dbg_value(i64 72, !2234, !DIExpression(), !18352)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !18441
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !dbg !18442 ; 9 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !18443
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !dbg !18444, !prof !2370

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #29, !dbg !18445
  unreachable, !dbg !18445

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !18396, !DIExpression(), !18415)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.c unwind label %bb.d, !dbg !18446 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !18447
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !18447
    #dbg_value(i64 1, !18382, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18415)
    #dbg_value(i64 1, !18401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18421)
    #dbg_value(i64 1, !18382, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18415)
    #dbg_value(i64 1, !18401, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18421)
    #dbg_value(i64 0, !18401, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18421)
    #dbg_value(i64 0, !18382, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18415)
    #dbg_value(i64 %i.d, !18401, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !18421)
    #dbg_value(i64 %i.d, !18382, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !18415)
    #dbg_value(i64 %i.e, !18401, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !18421)
    #dbg_value(i64 %i.e, !18382, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !18415)
    #dbg_value(ptr %i.a, !18396, !DIExpression(), !18415)
    #dbg_value(ptr %i.a, !18408, !DIExpression(), !18421)
  store i64 1, ptr %i.a, align 8, !dbg !18448
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18448
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !18448
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18448
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !18448
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !18448
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !18448
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !18448
  store i64 %i.d, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !18448
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !18448
  store i64 %i.e, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !18448
  ret ptr %i.a, !dbg !18449

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !18423, !DIExpression(), !18361)
    #dbg_value(ptr poison, !18429, !DIExpression(), !18369)
    #dbg_value(ptr %i.a, !18430, !DIExpression(), !18370)
    #dbg_value(i64 8, !18431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18371)
    #dbg_value(i64 72, !18431, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18371)
    #dbg_value(ptr poison, !2343, !DIExpression(), !18373)
    #dbg_value(ptr poison, !2349, !DIExpression(), !18375)
    #dbg_value(ptr %i.a, !2346, !DIExpression(), !18373)
    #dbg_value(ptr %i.a, !2352, !DIExpression(), !18375)
    #dbg_value(ptr %i.a, !2355, !DIExpression(), !18377)
    #dbg_value(ptr %i.a, !2361, !DIExpression(), !18379)
    #dbg_value(i64 8, !2347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18373)
    #dbg_value(i64 8, !2353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18375)
    #dbg_value(i64 8, !2359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18377)
    #dbg_value(i64 8, !2362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18379)
    #dbg_value(i64 72, !2347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18373)
    #dbg_value(i64 72, !2353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18375)
    #dbg_value(i64 72, !2359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18377)
    #dbg_value(i64 72, !2362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18379)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #22, !dbg !18450
  resume { ptr, i32 } %i.f, !dbg !18451
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics5tokio35runtime_task_total_poll_time_microsENtNtB3c_11nonstandard28NonstandardUnsuffixedCounterEEENtNtCskKLDkoKarTP_4core7default7Default7defaultB3V_() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18452 {
bb.a:
    #dbg_declare(ptr @18, !18499, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !18517)
    #dbg_declare(ptr @18, !18518, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !18528)
    #dbg_value(i64 8, !2178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18460)
    #dbg_value(i64 8, !2202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18462)
    #dbg_value(i64 8, !2221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18464)
    #dbg_value(i64 72, !2178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18460)
    #dbg_value(i64 72, !2202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18462)
    #dbg_value(i64 72, !2221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18464)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2219, !DIExpression(), !18462)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2225, !DIExpression(), !18464)
    #dbg_value(i8 0, !2226, !DIExpression(), !18464)
    #dbg_value(i64 8, !2229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18466)
    #dbg_value(i64 8, !2251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18468)
    #dbg_value(i64 72, !2229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18466)
    #dbg_value(i64 72, !2251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18468)
    #dbg_value(i1 false, !2233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18466)
    #dbg_value(i64 72, !2234, !DIExpression(), !18469)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !18558
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !dbg !18559 ; 9 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !18560
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !dbg !18561, !prof !2370

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #29, !dbg !18562
  unreachable, !dbg !18562

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !18513, !DIExpression(), !18532)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.c unwind label %bb.d, !dbg !18563 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !18564
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !18564
    #dbg_value(i64 1, !18499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18532)
    #dbg_value(i64 1, !18518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18538)
    #dbg_value(i64 1, !18499, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18532)
    #dbg_value(i64 1, !18518, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18538)
    #dbg_value(i64 0, !18518, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18538)
    #dbg_value(i64 0, !18499, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18532)
    #dbg_value(i64 %i.d, !18518, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !18538)
    #dbg_value(i64 %i.d, !18499, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !18532)
    #dbg_value(i64 %i.e, !18518, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !18538)
    #dbg_value(i64 %i.e, !18499, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !18532)
    #dbg_value(ptr %i.a, !18513, !DIExpression(), !18532)
    #dbg_value(ptr %i.a, !18525, !DIExpression(), !18538)
  store i64 1, ptr %i.a, align 8, !dbg !18565
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18565
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !18565
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18565
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !18565
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !18565
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !18565
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !18565
  store i64 %i.d, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !18565
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !18565
  store i64 %i.e, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !18565
  ret ptr %i.a, !dbg !18566

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !18540, !DIExpression(), !18478)
    #dbg_value(ptr poison, !18546, !DIExpression(), !18486)
    #dbg_value(ptr %i.a, !18547, !DIExpression(), !18487)
    #dbg_value(i64 8, !18548, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18488)
    #dbg_value(i64 72, !18548, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18488)
    #dbg_value(ptr poison, !2343, !DIExpression(), !18490)
    #dbg_value(ptr poison, !2349, !DIExpression(), !18492)
    #dbg_value(ptr %i.a, !2346, !DIExpression(), !18490)
    #dbg_value(ptr %i.a, !2352, !DIExpression(), !18492)
    #dbg_value(ptr %i.a, !2355, !DIExpression(), !18494)
    #dbg_value(ptr %i.a, !2361, !DIExpression(), !18496)
    #dbg_value(i64 8, !2347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18490)
    #dbg_value(i64 8, !2353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18492)
    #dbg_value(i64 8, !2359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18494)
    #dbg_value(i64 8, !2362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18496)
    #dbg_value(i64 72, !2347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18490)
    #dbg_value(i64 72, !2353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18492)
    #dbg_value(i64 72, !2359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18494)
    #dbg_value(i64 72, !2362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18496)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #22, !dbg !18567
  resume { ptr, i32 } %i.f, !dbg !18568
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics5tokio36runtime_task_poll_duration_histogramENtNtB3c_9histogram13TimeHistogramEEENtNtCskKLDkoKarTP_4core7default7Default7defaultB3V_() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18569 {
bb.a:
    #dbg_declare(ptr @18, !18616, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !18634)
    #dbg_declare(ptr @18, !18635, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !18645)
    #dbg_value(i64 8, !2178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18577)
    #dbg_value(i64 8, !2202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18579)
    #dbg_value(i64 8, !2221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18581)
    #dbg_value(i64 72, !2178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18577)
    #dbg_value(i64 72, !2202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18579)
    #dbg_value(i64 72, !2221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18581)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2219, !DIExpression(), !18579)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2225, !DIExpression(), !18581)
    #dbg_value(i8 0, !2226, !DIExpression(), !18581)
    #dbg_value(i64 8, !2229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18583)
    #dbg_value(i64 8, !2251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18585)
    #dbg_value(i64 72, !2229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18583)
    #dbg_value(i64 72, !2251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18585)
    #dbg_value(i1 false, !2233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18583)
    #dbg_value(i64 72, !2234, !DIExpression(), !18586)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !18675
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !dbg !18676 ; 9 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !18677
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !dbg !18678, !prof !2370

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #29, !dbg !18679
  unreachable, !dbg !18679

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !18630, !DIExpression(), !18649)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.c unwind label %bb.d, !dbg !18680 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !18681
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !18681
    #dbg_value(i64 1, !18616, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18649)
    #dbg_value(i64 1, !18635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18655)
    #dbg_value(i64 1, !18616, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18649)
    #dbg_value(i64 1, !18635, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18655)
    #dbg_value(i64 0, !18635, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18655)
    #dbg_value(i64 0, !18616, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18649)
    #dbg_value(i64 %i.d, !18635, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !18655)
    #dbg_value(i64 %i.d, !18616, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !18649)
    #dbg_value(i64 %i.e, !18635, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !18655)
    #dbg_value(i64 %i.e, !18616, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !18649)
    #dbg_value(ptr %i.a, !18630, !DIExpression(), !18649)
    #dbg_value(ptr %i.a, !18642, !DIExpression(), !18655)
  store i64 1, ptr %i.a, align 8, !dbg !18682
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18682
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !18682
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18682
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !18682
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !18682
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !18682
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !18682
  store i64 %i.d, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !18682
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !18682
  store i64 %i.e, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !18682
  ret ptr %i.a, !dbg !18683

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !18657, !DIExpression(), !18595)
    #dbg_value(ptr poison, !18663, !DIExpression(), !18603)
    #dbg_value(ptr %i.a, !18664, !DIExpression(), !18604)
    #dbg_value(i64 8, !18665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18605)
    #dbg_value(i64 72, !18665, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18605)
    #dbg_value(ptr poison, !2343, !DIExpression(), !18607)
    #dbg_value(ptr poison, !2349, !DIExpression(), !18609)
    #dbg_value(ptr %i.a, !2346, !DIExpression(), !18607)
    #dbg_value(ptr %i.a, !2352, !DIExpression(), !18609)
    #dbg_value(ptr %i.a, !2355, !DIExpression(), !18611)
    #dbg_value(ptr %i.a, !2361, !DIExpression(), !18613)
    #dbg_value(i64 8, !2347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18607)
    #dbg_value(i64 8, !2353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18609)
    #dbg_value(i64 8, !2359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18611)
    #dbg_value(i64 8, !2362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18613)
    #dbg_value(i64 72, !2347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18607)
    #dbg_value(i64 72, !2353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18609)
    #dbg_value(i64 72, !2359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18611)
    #dbg_value(i64 72, !2362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18613)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #22, !dbg !18684
  resume { ptr, i32 } %i.f, !dbg !18685
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics5tokio37runtime_task_schedule_delay_histogramENtNtB3c_9histogram13TimeHistogramEEENtNtCskKLDkoKarTP_4core7default7Default7defaultB3V_() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18686 {
bb.a:
    #dbg_declare(ptr @18, !18733, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !18751)
    #dbg_declare(ptr @18, !18752, !DIExpression(DW_OP_LLVM_fragment, 192, 256), !18762)
    #dbg_value(i64 8, !2178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18694)
    #dbg_value(i64 8, !2202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18696)
    #dbg_value(i64 8, !2221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18698)
    #dbg_value(i64 72, !2178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18694)
    #dbg_value(i64 72, !2202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18696)
    #dbg_value(i64 72, !2221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18698)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2219, !DIExpression(), !18696)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2225, !DIExpression(), !18698)
    #dbg_value(i8 0, !2226, !DIExpression(), !18698)
    #dbg_value(i64 8, !2229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18700)
    #dbg_value(i64 8, !2251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18702)
    #dbg_value(i64 72, !2229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18700)
    #dbg_value(i64 72, !2251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18702)
    #dbg_value(i1 false, !2233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18700)
    #dbg_value(i64 72, !2234, !DIExpression(), !18703)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !18792
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !dbg !18793 ; 9 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !18794
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !dbg !18795, !prof !2370

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #29, !dbg !18796
  unreachable, !dbg !18796

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !18747, !DIExpression(), !18766)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.c unwind label %bb.d, !dbg !18797 ; 2 uses

bb.c:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !18798
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !18798
    #dbg_value(i64 1, !18733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18766)
    #dbg_value(i64 1, !18752, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18772)
    #dbg_value(i64 1, !18733, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18766)
    #dbg_value(i64 1, !18752, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18772)
    #dbg_value(i64 0, !18752, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18772)
    #dbg_value(i64 0, !18733, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18766)
    #dbg_value(i64 %i.d, !18752, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !18772)
    #dbg_value(i64 %i.d, !18733, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !18766)
    #dbg_value(i64 %i.e, !18752, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !18772)
    #dbg_value(i64 %i.e, !18733, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !18766)
    #dbg_value(ptr %i.a, !18747, !DIExpression(), !18766)
    #dbg_value(ptr %i.a, !18759, !DIExpression(), !18772)
  store i64 1, ptr %i.a, align 8, !dbg !18799
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18799
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !18799
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18799
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !18799
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !18799
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !18799
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !18799
  store i64 %i.d, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !18799
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !18799
  store i64 %i.e, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8, !dbg !18799
  ret ptr %i.a, !dbg !18800

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !18774, !DIExpression(), !18712)
    #dbg_value(ptr poison, !18780, !DIExpression(), !18720)
    #dbg_value(ptr %i.a, !18781, !DIExpression(), !18721)
    #dbg_value(i64 8, !18782, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18722)
    #dbg_value(i64 72, !18782, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18722)
    #dbg_value(ptr poison, !2343, !DIExpression(), !18724)
    #dbg_value(ptr poison, !2349, !DIExpression(), !18726)
    #dbg_value(ptr %i.a, !2346, !DIExpression(), !18724)
    #dbg_value(ptr %i.a, !2352, !DIExpression(), !18726)
    #dbg_value(ptr %i.a, !2355, !DIExpression(), !18728)
    #dbg_value(ptr %i.a, !2361, !DIExpression(), !18730)
    #dbg_value(i64 8, !2347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18724)
    #dbg_value(i64 8, !2353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18726)
    #dbg_value(i64 8, !2359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18728)
    #dbg_value(i64 8, !2362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18730)
    #dbg_value(i64 72, !2347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18724)
    #dbg_value(i64 72, !2353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18726)
    #dbg_value(i64 72, !2359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18728)
    #dbg_value(i64 72, !2362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18730)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #22, !dbg !18801
  resume { ptr, i32 } %i.f, !dbg !18802
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !18815 {
bb.a:
    #dbg_value(ptr %0, !18878, !DIExpression(), !18885)
    #dbg_declare(ptr poison, !18877, !DIExpression(), !18886)
    #dbg_value(ptr poison, !18889, !DIExpression(), !18818)
    #dbg_value(ptr %0, !18892, !DIExpression(), !18818)
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL), !dbg !18956 ; 3 uses
    #dbg_value(ptr %i.a, !18896, !DIExpression(), !18833)
    #dbg_value(ptr %0, !18941, !DIExpression(), !18833)
    #dbg_declare(ptr poison, !18942, !DIExpression(), !18834)
    #dbg_value(ptr %i.a, !18945, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18837)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18957
  %i.c = load i8, ptr %i.b, align 8, !dbg !18958, !range !3387, !noalias !18955, !noundef !1521
  %i.d = trunc nuw i8 %i.c to i1, !dbg !18958
  br i1 %i.d, label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csa2e0UnRrdBM_12tokio_quiche.exit, label %bb.b, !dbg !18959, !prof !3265

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa2e0UnRrdBM_12tokio_quiche(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0), !dbg !18960
  br label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csa2e0UnRrdBM_12tokio_quiche.exit, !dbg !18961

_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csa2e0UnRrdBM_12tokio_quiche.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ], !dbg !18962
  ret ptr %.sroa.0.0.i.i, !dbg !18886
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 0, 134) i32 @_RNvMNtCs1Uz5cMNpS3f_3nix5errnoNtNtB2_6consts5Errno4last() unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa2e0UnRrdBM_12tokio_quiche(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNCNvMs1_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc7boundedINtBa_6SenderpE13reserve_inner0INtB2_18WakeReceiverOnDropNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1T_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTdyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic12write_errorsENtNtBU_11nonstandard28NonstandardUnsuffixedCounterEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic17failed_handshakesENtNtBU_11nonstandard28NonstandardUnsuffixedCounterEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic22handshake_time_secondsENtNtBU_9histogram13TimeHistogramEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic24invalid_cid_packet_countENtNtBU_11nonstandard28NonstandardUnsuffixedCounterEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic29rejected_initial_packet_countENtNtBU_11nonstandard28NonstandardUnsuffixedCounterEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic30peer_h3_conn_close_error_countENtNtBU_11nonstandard28NonstandardUnsuffixedCounterEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic31local_h3_conn_close_error_countENtNtBU_11nonstandard28NonstandardUnsuffixedCounterEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic32peer_quic_conn_close_error_countENtNtBU_11nonstandard28NonstandardUnsuffixedCounterEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic33local_quic_conn_close_error_countENtNtBU_11nonstandard28NonstandardUnsuffixedCounterEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic39expensive_accepted_initial_packet_countENtNtBU_11nonstandard28NonstandardUnsuffixedCounterEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic39expensive_rejected_initial_packet_countENtNtBU_11nonstandard28NonstandardUnsuffixedCounterEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics5tokio35runtime_task_total_poll_time_microsENtNtBU_11nonstandard28NonstandardUnsuffixedCounterEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics5tokio36runtime_task_poll_duration_histogramENtNtBU_9histogram13TimeHistogramEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCs168gOGDjq8U_10prometools5serde6BridgeNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics5tokio37runtime_task_schedule_delay_histogramENtNtBU_9histogram13TimeHistogramEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtNtCs2sJxpAufolh_5tokio4sync7oneshotINtB5_5InnerINtNtNtCs3O5oxBhiT4j_10tokio_util4sync4mpsc10PollSenderNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1R_(ptr noalias nofree noundef align 8 dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs6_NtNtCs6rgADF5KVz1_15crossbeam_utils6atomic11atomic_cellINtB5_10AtomicCellNtNtCskKLDkoKarTP_4core4time8DurationENtNtNtB1k_3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs6_NtNtCs6rgADF5KVz1_15crossbeam_utils6atomic11atomic_cellINtB5_10AtomicCellNtNtCs1mB61iS8Qhs_15datagram_socket12socket_stats17StreamClosureKindENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chanINtB5_2RxNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver13OutboundFrameNtNtB7_7bounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBZ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs9_NtNtNtCs2sJxpAufolh_5tokio4sync4mpsc4chanINtB5_2TxNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver12InboundFrameNtNtB7_7bounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBZ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_0
