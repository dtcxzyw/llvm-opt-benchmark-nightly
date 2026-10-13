Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.14?download=true
inline.NumInlined: 895
inline.NumDeleted: 521
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsefoF4u9kbII_5wasmi8instance6handle12RawAnyHandleNtB6_5Debug3fmtBC_
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsefoF4u9kbII_5wasmi8instance6handle12RawAnyHandleNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2561
  store ptr %i.b, ptr %i.a, align 8, !noalias !2561
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2561
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsefoF4u9kbII_5wasmi8instance6handle9AnyHandleNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2565
  store ptr %i.b, ptr %i.a, align 8, !noalias !2565
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @100)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2565
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCs9FmeSmcCnTG_10wasmparser9validator9operators9MaybeTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 5 uses
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs9FmeSmcCnTG_10wasmparser9validator9operators9MaybeTypeNtNtBO_5alloc6GlobalEECsefoF4u9kbII_5wasmi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 4 uses
  %i.k = icmp ult i64 %i.j, 2305843009213693952
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.m, %i.j
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.f
  store i64 %i.n, ptr %i.i, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs9FmeSmcCnTG_10wasmparser9validator9operators9MaybeTypeNtNtBO_5alloc6GlobalEECsefoF4u9kbII_5wasmi.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.j
  %i.s = shl nuw nsw i64 %i.f, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs9FmeSmcCnTG_10wasmparser9validator9operators9MaybeTypeNtNtBO_5alloc6GlobalEECsefoF4u9kbII_5wasmi.exit: ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  ret void

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs9FmeSmcCnTG_10wasmparser9validator9operators9MaybeTypeNtNtBO_5alloc6GlobalEECsefoF4u9kbII_5wasmi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !4 ; 4 uses
  %i.x = icmp ult i64 %i.w, 2305843009213693952
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !4 ; 2 uses
  %.not3.i.i9 = icmp eq i64 %i.z, %i.w
  br i1 %.not3.i.i9, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aa = add i64 %i.w, %i.f
  store i64 %i.aa, ptr %i.v, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs9FmeSmcCnTG_10wasmparser9validator9operators9MaybeTypeNtNtBO_5alloc6GlobalEECsefoF4u9kbII_5wasmi.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.z
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.w
  %i.af = shl nuw nsw i64 %i.f, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 1 %i.ad, i64 %i.af, i1 false)
  br label %bb.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperandENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 5 uses
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperandNtNtBO_5alloc6GlobalEEB2l_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 4 uses
  %i.k = icmp ult i64 %i.j, 384307168202282326
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.m, %i.j
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.f
  store i64 %i.n, ptr %i.i, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperandNtNtBO_5alloc6GlobalEEB2l_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.j
  %i.s = mul nuw nsw i64 %i.f, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false)
  br label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperandNtNtBO_5alloc6GlobalEEB2l_.exit: ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  ret void

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperandNtNtBO_5alloc6GlobalEEB2l_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !4 ; 4 uses
  %i.x = icmp ult i64 %i.w, 384307168202282326
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !4 ; 2 uses
  %.not3.i.i5 = icmp eq i64 %i.z, %i.w
  br i1 %.not3.i.i5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aa = add i64 %i.w, %i.f
  store i64 %i.aa, ptr %i.v, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperandNtNtBO_5alloc6GlobalEEB2l_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.z
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.w
  %i.af = mul nuw nsw i64 %i.f, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ad, i64 %i.af, i1 false)
  br label %bb.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8_NtNtCsefoF4u9kbII_5wasmi6module6exportNtB5_7FuncIdxNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterINtNtBa_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxINtNtNtBa_3vec9into_iter8IntoIterTB1t_B1N_EEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1T_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx.promoted = load i32, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.promoted = load i32, ptr %.sroa.5.0..sroa_idx, align 4
  %.promoted = load ptr, ptr %i.d, align 8
  %.sroa.01.sroa.0.0.copyload.pre = load ptr, ptr %i.a, align 8
  %.sroa.01.sroa.4.0.copyload.pre = load i64, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19.backedge, %bb.a
  %.sroa.01.sroa.4.0.copyload = phi i64 [ %.sroa.01.sroa.4.0.copyload.pre, %bb.a ], [ %.sroa.030.sroa.6.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19.backedge ]
  %i.e = phi ptr [ %.sroa.01.sroa.0.0.copyload.pre, %bb.a ], [ %.val17, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19.backedge ]
  %2 = phi ptr [ %.promoted, %bb.a ], [ %i.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19.backedge ] ; 7 uses
  %.sroa.4.0.copyload66.a = phi i32 [ %.sroa.5.0..sroa_idx.promoted, %bb.a ], [ %.sroa.5.0.copyload10.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19.backedge ]
  %.sroa.4.0.copyload66 = phi i32 [ %.sroa.4.0..sroa_idx.promoted, %bb.a ], [ %.sroa.4.0.copyload8.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19.backedge ] ; 2 uses
  store i32 -2, ptr %.sroa.4.0..sroa_idx, align 8
  %.not = icmp eq i32 %.sroa.4.0.copyload66, -2
  br i1 %.not, label %bb.b, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2584)
  %i.f = icmp eq ptr %2, %i.c
  br i1 %i.f, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.g, ptr %i.d, align 8, !alias.scope !2584, !noalias !2585
  %.sroa.030.sroa.0.0.copyload = load ptr, ptr %2, align 8, !noalias !2584
  %.sroa.030.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.030.sroa.6.0.copyload = load i64, ptr %.sroa.030.sroa.6.0..sroa_idx, align 8, !noalias !2584
  %.sroa.6.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload32 = load i32, ptr %.sroa.6.0..sroa_idx31, align 8, !noalias !2584
  %.sroa.933.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.933.0.copyload35 = load i32, ptr %.sroa.933.0..sroa_idx34, align 4, !noalias !2584
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit: ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19
  %i.h = phi ptr [ %2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19 ], [ %i.g, %bb.c ] ; 5 uses
  %.sroa.030.sroa.0.0 = phi ptr [ %i.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19 ], [ %.sroa.030.sroa.0.0.copyload, %bb.c ] ; 5 uses
  %.sroa.030.sroa.6.0 = phi i64 [ %.sroa.01.sroa.4.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19 ], [ %.sroa.030.sroa.6.0.copyload, %bb.c ] ; 7 uses
  %.sroa.933.0 = phi i32 [ %.sroa.4.0.copyload66.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19 ], [ %.sroa.933.0.copyload35, %bb.c ] ; 2 uses
  %.sroa.6.0 = phi i32 [ %.sroa.4.0.copyload66, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19 ], [ %.sroa.6.0.copyload32, %bb.c ] ; 3 uses
  %.not10 = icmp eq i32 %.sroa.6.0, -1
  br i1 %.not10, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2589)
  %i.i = icmp eq ptr %i.h, %i.c
  br i1 %i.i, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.d
  store i32 -1, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2586, !noalias !2587
  br label %.loopexit

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.thread: ; preds = %bb.b, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.j, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXsg_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsefoF4u9kbII_5wasmi.exit.thread, %.loopexit, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1n_.exit.thread
  ret void

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !2590, !noalias !2591
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !2587
  %.sroa.4.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4.0.copyload8.i = load i32, ptr %.sroa.4.0..sroa_idx7.i, align 8, !noalias !2592 ; 4 uses
  %.sroa.5.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.sroa.5.0.copyload10.i = load i32, ptr %.sroa.5.0..sroa_idx9.i, align 4, !noalias !2592 ; 2 uses
  store i32 %.sroa.4.0.copyload8.i, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2586, !noalias !2587
  store i32 %.sroa.5.0.copyload10.i, ptr %.sroa.5.0..sroa_idx, align 4, !alias.scope !2586, !noalias !2587
  %i.l = icmp ne i32 %.sroa.4.0.copyload8.i, -2
  tail call void @llvm.assume(i1 %i.l)
  %.not11 = icmp eq i32 %.sroa.4.0.copyload8.i, -1
  br i1 %.not11, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val18 = load i64, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.030.sroa.0.0) ]
  %i.m = icmp eq i64 %.sroa.030.sroa.6.0, %.val18
  br i1 %i.m, label %_RNvXsg_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsefoF4u9kbII_5wasmi.exit, label %_RNvXsg_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsefoF4u9kbII_5wasmi.exit.thread

.loopexit:                                        ; preds = %bb.f, %.thread
  %.sroa.5.16.insert.ext.le = zext i32 %.sroa.6.0 to i64
  %.sroa.5.20.insert.ext.le61 = zext i32 %.sroa.933.0 to i64
  %.sroa.5.20.insert.shift.le = shl nuw i64 %.sroa.5.20.insert.ext.le61, 32
  %.sroa.5.20.insert.insert.le56 = or disjoint i64 %.sroa.5.20.insert.shift.le, %.sroa.5.16.insert.ext.le
  store ptr %.sroa.030.sroa.0.0, ptr %0, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.030.sroa.6.0, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.20.insert.insert.le56, ptr %.sroa.542.0..sroa_idx, align 8
  br label %bb.e

_RNvXsg_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsefoF4u9kbII_5wasmi.exit: ; preds = %bb.g
  %.val17 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.030.sroa.0.0, ptr nonnull readonly %.val17, i64 %.sroa.030.sroa.6.0), !alias.scope !2593
  %.not52 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not52, label %bb.h, label %_RNvXsg_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsefoF4u9kbII_5wasmi.exit.thread

bb.h:                                             ; preds = %_RNvXsg_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsefoF4u9kbII_5wasmi.exit
  %i.n = icmp eq i64 %.sroa.030.sroa.6.0, 0
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19.backedge, label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19.backedge: ; preds = %bb.h, %bb.i
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.030.sroa.0.0, i64 noundef range(i64 1, 0) %.sroa.030.sroa.6.0, i64 noundef 1) #30
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19.backedge

_RNvXsg_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsefoF4u9kbII_5wasmi.exit.thread: ; preds = %bb.g, %_RNvXsg_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsefoF4u9kbII_5wasmi.exit
  %.sroa.5.16.insert.ext.le63 = zext i32 %.sroa.6.0 to i64
  %.sroa.5.20.insert.ext.le = zext i32 %.sroa.933.0 to i64
  %.sroa.5.20.insert.shift.le59 = shl nuw i64 %.sroa.5.20.insert.ext.le, 32
  %.sroa.5.20.insert.insert.le = or disjoint i64 %.sroa.5.20.insert.shift.le59, %.sroa.5.16.insert.ext.le63
  store ptr %.sroa.030.sroa.0.0, ptr %0, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.030.sroa.6.0, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.20.insert.insert.le, ptr %.sroa.545.0..sroa_idx, align 8
  br label %bb.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsefoF4u9kbII_5wasmi4func4FuncEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #11 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !2596
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !2596
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !2596
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsefoF4u9kbII_5wasmi5table5TableEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #11 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !2599
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !2599
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !2599
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsefoF4u9kbII_5wasmi6global6GlobalEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #11 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !2602
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !2602
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !2602
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsefoF4u9kbII_5wasmi6memory6MemoryEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #11 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !2605
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !2605
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !2605
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCsefoF4u9kbII_5wasmi5table7element14ElementSegmentEENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #11 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !2608
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !2608
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !2608
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCsefoF4u9kbII_5wasmi6memory4data11DataSegmentEENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #11 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !2611
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !2611
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !2611
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1t_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  %i.h = load i64, ptr %0, align 8, !range !9, !alias.scope !2620, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2620, !noundef !4
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.d, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE10init_frontB29_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2620, !noundef !4 ; 5 uses
  %.sroa.013.015.i = load ptr, ptr %i.l, align 8, !alias.scope !2620, !nonnull !4, !noundef !4 ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol
end_hunk_0
