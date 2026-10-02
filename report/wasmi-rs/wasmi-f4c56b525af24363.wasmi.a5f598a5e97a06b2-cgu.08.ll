Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.08?download=true
inline.NumInlined: 623
inline.NumDeleted: 231
begin_hunk_0_@_RNvMs8_NtNtCsefoF4u9kbII_5wasmi6engine9resumableNtB5_21ResumableCallHostTrap6update
define void @_RNvMs8_NtNtCsefoF4u9kbII_5wasmi6engine9resumableNtB5_21ResumableCallHostTrap6update(ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) initializes((128, 136)) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2, ptr noalias noundef nonnull align 8 %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  store ptr %3, ptr %i.c, align 8
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  store ptr %3, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %4, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeIBx_eENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEE13new_uninit_inB1G_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(376) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 376, i64 noundef range(i64 1, 9) 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 376) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeIBx_eENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEE13new_uninit_inB1G_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(416) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 416, i64 noundef range(i64 1, 9) 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 416) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1A_6handle9RawHandleNtNtNtB1A_6engine10func_types13DedupFuncTypeEEE13new_uninit_inB1A_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(416) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 416, i64 noundef range(i64 1, 9) 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 416) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeIBx_eENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEE13new_uninit_inB1B_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(280) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 280, i64 noundef range(i64 1, 9) 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 280) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeIBx_eENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEE13new_uninit_inB1B_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(320) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 320, i64 noundef range(i64 1, 9) 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 320) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1v_6handle9RawHandleNtNtNtB1v_6engine10func_types13DedupFuncTypeEEE13new_uninit_inB1v_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(320) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 320, i64 noundef range(i64 1, 9) 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 320) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtNtCsefoF4u9kbII_5wasmi6engine5costs12OperatorCostE13new_uninit_inBM_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noalias noundef dereferenceable_or_null(463) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 463, i64 noundef range(i64 1, 9) 1) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 463) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs9FmeSmcCnTG_10wasmparser9validator4funcINtB4_13FuncValidatorNtNtB6_4core18ValidatorResourcesE16into_allocationsCsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([176 x i8]) align 8 captures(none) dereferenceable(176) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(224) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 4 uses
  %i.b = alloca [176 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull align 8 dereferenceable(208) %1, i64 208, i1 false)
  invoke void @_RNvMs5_NtNtCs9FmeSmcCnTG_10wasmparser9validator9operatorsNtB5_17OperatorValidator16into_allocations(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(208) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  call void @llvm.experimental.noalias.scope.decl(metadata !1576)
  call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1578, !nonnull !4, !noundef !4
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !1578
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core18ValidatorResourcesECsefoF4u9kbII_5wasmi.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core6ModuleE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core18ValidatorResourcesECsefoF4u9kbII_5wasmi.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %i.b, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1579)
  call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  call void @llvm.experimental.noalias.scope.decl(metadata !1581)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1582, !nonnull !4, !noundef !4
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !1582
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core18ValidatorResourcesECsefoF4u9kbII_5wasmi.exit1

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core6ModuleE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #27
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core18ValidatorResourcesECsefoF4u9kbII_5wasmi.exit1

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core18ValidatorResourcesECsefoF4u9kbII_5wasmi.exit1: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core18ValidatorResourcesECsefoF4u9kbII_5wasmi.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs_NtNtCs9FmeSmcCnTG_10wasmparser9validator4funcINtB4_13FuncValidatorNtNtB6_4core18ValidatorResourcesE8validateCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(224) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 16               ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  %i.f = load ptr, ptr %1, align 8, !alias.scope !1598, !noalias !1597, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1598, !noalias !1597, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i32, ptr %i.j, align 8, !alias.scope !1598, !noalias !1597, !noundef !4
  store ptr %i.f, ptr %i.e, align 8, !alias.scope !1597, !noalias !1598
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store i64 %i.h, ptr %i.l, align 8, !alias.scope !1597, !noalias !1598
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.o = load <2 x i64>, ptr %i.i, align 8, !alias.scope !1598, !noalias !1597
  %i.p = load i64, ptr %i.i, align 8, !alias.scope !1598, !noalias !1597, !noundef !4 ; 3 uses
  store <2 x i64> %i.o, ptr %i.m, align 8, !alias.scope !1597, !noalias !1598
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store i32 %i.k, ptr %i.q, align 8, !alias.scope !1597, !noalias !1598
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1600
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  %i.r = icmp ult i64 %i.p, %i.h
  br i1 %i.r, label %bb.b, label %_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader12read_var_u32.exit.thread.i, !prof !27

_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader12read_var_u32.exit.thread.i: ; preds = %bb.a
  %i.s = call noundef nonnull align 8 ptr @_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader7eof_err(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e), !noalias !1602
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.p
  %i.u = load i8, ptr %i.t, align 1, !noalias !1603, !noundef !4 ; 3 uses
  %i.v = add nuw i64 %i.p, 1
  store i64 %i.v, ptr %i.m, align 8, !alias.scope !1604, !noalias !1602
  %i.w = icmp sgt i8 %i.u, -1
  br i1 %i.w, label %_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader12read_var_u32.exit.thread20.i, label %_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader12read_var_u32.exit.i

_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader12read_var_u32.exit.thread20.i: ; preds = %bb.b
  %i.x = zext nneg i8 %i.u to i32
  br label %bb.d

_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader12read_var_u32.exit.i: ; preds = %bb.b
  call void @_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader16read_var_u32_big(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e, i8 noundef %i.u), !noalias !1605
  %.pre.i = load i32, ptr %i.c, align 8, !range !6, !noalias !1600
  %i.y = trunc nuw i32 %.pre.i to i1
  br i1 %i.y, label %_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader12read_var_u32.exit.i._crit_edge, label %_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader12read_var_u32.exit.i._crit_edge33

_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader12read_var_u32.exit.i._crit_edge33: ; preds = %_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader12read_var_u32.exit.i
  %.phi.trans.insert34 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre35 = load i32, ptr %.phi.trans.insert34, align 4, !noalias !1600
  br label %bb.d

_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader12read_var_u32.exit.i._crit_edge: ; preds = %_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader12read_var_u32.exit.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !noalias !1600
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader12read_var_u32.exit.i._crit_edge, %_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader12read_var_u32.exit.thread.i
  %i.z = phi ptr [ %.pre, %_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader12read_var_u32.exit.i._crit_edge ], [ %i.s, %_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader12read_var_u32.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1600
  br label %_RNvMs_NtNtCs9FmeSmcCnTG_10wasmparser9validator4funcINtB4_13FuncValidatorNtNtB6_4core18ValidatorResourcesE11read_localsCsefoF4u9kbII_5wasmi.exit.thread

bb.d:                                             ; preds = %_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader12read_var_u32.exit.i._crit_edge33, %_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader12read_var_u32.exit.thread20.i
  %i.aa = phi i32 [ %.pre35, %_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader12read_var_u32.exit.i._crit_edge33 ], [ %i.x, %_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_12BinaryReader12read_var_u32.exit.thread20.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1600
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %exitcond.not.i46 = icmp eq i32 %i.aa, 0
  br i1 %exitcond.not.i46, label %_RNvMs_NtNtCs9FmeSmcCnTG_10wasmparser9validator4funcINtB4_13FuncValidatorNtNtB6_4core18ValidatorResourcesE11read_localsCsefoF4u9kbII_5wasmi.exit, label %.lr.ph49

bb.e:                                             ; preds = %bb.i
  %exitcond.not.i = icmp eq i32 %i.ae, %i.aa
  br i1 %exitcond.not.i, label %_RNvMs_NtNtCs9FmeSmcCnTG_10wasmparser9validator4funcINtB4_13FuncValidatorNtNtB6_4core18ValidatorResourcesE11read_localsCsefoF4u9kbII_5wasmi.exit, label %.lr.ph49

.lr.ph49:                                         ; preds = %bb.d, %bb.e
  %.sroa.015.0.i47 = phi i32 [ %i.ae, %bb.e ], [ 0, %bb.d ]
  %i.ae = add i32 %.sroa.015.0.i47, 1             ; 2 uses
  %i.af = load i64, ptr %i.n, align 8, !alias.scope !1599, !noalias !1605, !noundef !4
  %i.ag = load i64, ptr %i.m, align 8, !alias.scope !1599, !noalias !1605, !noundef !4
  %i.ah = add i64 %i.ag, %i.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1600
  call void @_RNvXs_NtCs9FmeSmcCnTG_10wasmparser7readersmNtB4_10FromReader11from_reader(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
  %i.ai = load i32, ptr %i.b, align 8, !range !6, !noalias !1600, !noundef !4
  %i.aj = trunc nuw i32 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !1600, !nonnull !4, !align !14, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1600
  br label %_RNvMs_NtNtCs9FmeSmcCnTG_10wasmparser9validator4funcINtB4_13FuncValidatorNtNtB6_4core18ValidatorResourcesE11read_localsCsefoF4u9kbII_5wasmi.exit.thread

bb.g:                                             ; preds = %.lr.ph49
  %i.am = load i32, ptr %i.ab, align 4, !noalias !1600, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1600
  call void @_RNvXss_NtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5typesNtB5_7ValTypeNtB9_10FromReader11from_reader(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
  %i.an = load i8, ptr %i.a, align 8, !range !9, !noalias !1600, !noundef !4
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !1600, !nonnull !4, !align !14, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1600
  br label %_RNvMs_NtNtCs9FmeSmcCnTG_10wasmparser9validator4funcINtB4_13FuncValidatorNtNtB6_4core18ValidatorResourcesE11read_localsCsefoF4u9kbII_5wasmi.exit.thread

bb.i:                                             ; preds = %bb.g
  %.sroa.014.0.copyload.i = load i32, ptr %i.ac, align 1, !noalias !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1600
  %i.ar = call noundef align 8 ptr @_RINvMs5_NtNtCs9FmeSmcCnTG_10wasmparser9validator9operatorsNtB6_17OperatorValidator13define_localsNtNtB8_4core18ValidatorResourcesECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %i.ah, i32 noundef %i.am, i32 %.sroa.014.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad) ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.e, label %_RNvMs_NtNtCs9FmeSmcCnTG_10wasmparser9validator4funcINtB4_13FuncValidatorNtNtB6_4core18ValidatorResourcesE11read_localsCsefoF4u9kbII_5wasmi.exit.thread

_RNvMs_NtNtCs9FmeSmcCnTG_10wasmparser9validator4funcINtB4_13FuncValidatorNtNtB6_4core18ValidatorResourcesE11read_localsCsefoF4u9kbII_5wasmi.exit: ; preds = %bb.e, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.at = load i32, ptr %i.as, align 8, !noundef !4
  store i32 %i.at, ptr %i.q, align 8, !alias.scope !1606
  %.val25 = load i64, ptr %i.l, align 8, !noundef !4
  %.val1426 = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %.not27 = icmp ult i64 %.val1426, %.val25
  br i1 %.not27, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMs_NtNtCs9FmeSmcCnTG_10wasmparser9validator4funcINtB4_13FuncValidatorNtNtB6_4core18ValidatorResourcesE11read_localsCsefoF4u9kbII_5wasmi.exit
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %2 = insertelement <2 x ptr> poison, ptr %0, i64 0
  %3 = insertelement <2 x ptr> %2, ptr %i.ad, i64 1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %.val1428 = phi i64 [ %.val1426, %.lr.ph ], [ %.val14, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.val18 = load i64, ptr %i.n, align 8, !noundef !4
  %i.au = add i64 %.val18, %.val1428
  store <2 x ptr> %3, ptr %i.d, align 16, !alias.scope !1607, !noalias !1608
  store i64 %i.au, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !1607, !noalias !1608
  %i.av = call { i64, ptr } @_RINvMs1_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB6_12BinaryReader14visit_operatorINtNtNtB8_9validator9operators21WasmProposalValidatorNtNtB1r_4core18ValidatorResourcesEECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) ; 2 uses
  %i.aw = extractvalue { i64, ptr } %i.av, 0
  %i.ax = extractvalue { i64, ptr } %i.av, 1      ; 3 uses
  %i.ay = trunc nuw i64 %i.aw to i1
  br i1 %i.ay, label %bb.k, label %bb.l

._crit_edge:                                      ; preds = %bb.m, %_RNvMs_NtNtCs9FmeSmcCnTG_10wasmparser9validator4funcINtB4_13FuncValidatorNtNtB6_4core18ValidatorResourcesE11read_localsCsefoF4u9kbII_5wasmi.exit
  %.val14.lcssa = phi i64 [ %.val1426, %_RNvMs_NtNtCs9FmeSmcCnTG_10wasmparser9validator4funcINtB4_13FuncValidatorNtNtB6_4core18ValidatorResourcesE11read_localsCsefoF4u9kbII_5wasmi.exit ], [ %.val14, %bb.m ]
  %.val16 = load i64, ptr %i.n, align 8, !noundef !4
  %i.az = add i64 %.val16, %.val14.lcssa
  %i.ba = call noundef align 8 ptr @_RNvMs5_NtNtCs9FmeSmcCnTG_10wasmparser9validator9operatorsNtB5_17OperatorValidator6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %i.az)
  br label %_RNvMs_NtNtCs9FmeSmcCnTG_10wasmparser9validator4funcINtB4_13FuncValidatorNtNtB6_4core18ValidatorResourcesE11read_localsCsefoF4u9kbII_5wasmi.exit.thread

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %.not13 = icmp eq ptr %i.ax, null
  br i1 %.not13, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load i64, ptr %i.l, align 8, !noundef !4
  %.val14 = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %.not = icmp ult i64 %.val14, %.val
  br i1 %.not, label %bb.j, label %._crit_edge

.loopexit:                                        ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs_NtNtCs9FmeSmcCnTG_10wasmparser9validator4funcINtB4_13FuncValidatorNtNtB6_4core18ValidatorResourcesE11read_localsCsefoF4u9kbII_5wasmi.exit.thread

_RNvMs_NtNtCs9FmeSmcCnTG_10wasmparser9validator4funcINtB4_13FuncValidatorNtNtB6_4core18ValidatorResourcesE11read_localsCsefoF4u9kbII_5wasmi.exit.thread: ; preds = %bb.i, %.loopexit, %bb.h, %bb.c, %bb.f, %._crit_edge
  %.sroa.0.2 = phi ptr [ %i.ba, %._crit_edge ], [ %i.ax, %.loopexit ], [ %i.aq, %bb.h ], [ %i.al, %bb.f ], [ %i.z, %bb.c ], [ %i.ar, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %.sroa.0.2
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsefoF4u9kbII_5wasmi8instance6layoutNtB4_21InstanceLayoutBuilder5datas(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 4 dereferenceable(48) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !range !6, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 1000000
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = trunc nuw nsw i64 %2 to i32
  store i32 1, ptr %i.a, align 4
  store i32 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.f, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 14, ptr %i.g, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge = phi i8 [ 0, %bb.d ], [ 1, %bb.e ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsefoF4u9kbII_5wasmi8instance6layoutNtB4_21InstanceLayoutBuilder5elems(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 4 dereferenceable(48) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !range !6, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 100000
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = trunc nuw nsw i64 %2 to i32
  store i32 1, ptr %i.a, align 4
  store i32 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.f, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 12, ptr %i.g, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge = phi i8 [ 0, %bb.d ], [ 1, %bb.e ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsefoF4u9kbII_5wasmi8instance6layoutNtB4_21InstanceLayoutBuilder5funcs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 4 dereferenceable(48) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !range !6, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 1000000
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = trunc nuw nsw i64 %2 to i32
  store i32 1, ptr %i.a, align 4
  store i32 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.f, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.g, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge = phi i8 [ 0, %bb.d ], [ 1, %bb.e ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtNtCsefoF4u9kbII_5wasmi8instance6layoutNtB4_21InstanceLayoutBuilder6finish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([28 x i8]) align 4 captures(none) dereferenceable(28) initializes((0, 1)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !6, !noundef !4
  %i.b = trunc nuw i32 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %.sroa.0.0 = select i1 %i.b, i32 %i.d, i32 0    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 4, !range !6, !noundef !4
  %i.g = trunc nuw i32 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %.sroa.05.0 = select i1 %i.g, i32 %i.i, i32 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 4, !range !6, !noundef !4
  %i.l = trunc nuw i32 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.n = load i32, ptr %i.m, align 4
  %.sroa.015.0 = select i1 %i.l, i32 %i.n, i32 0
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i32, ptr %i.o, align 4, !range !6, !noundef !4
  %i.q = trunc nuw i32 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = load i32, ptr %i.r, align 4
  %.sroa.020.0 = select i1 %i.q, i32 %i.s, i32 0
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i32, ptr %i.t, align 4, !range !6, !noundef !4
  %i.v = trunc nuw i32 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.x = load i32, ptr %i.w, align 4
  %.sroa.025.0 = select i1 %i.v, i32 %i.x, i32 0
  %i.y = add i32 %.sroa.05.0, %.sroa.0.0          ; 4 uses
  %i.z = icmp ult i32 %i.y, %.sroa.0.0
  br i1 %i.z, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i32, ptr %i.aa, align 4, !range !6, !noundef !4
  %i.ac = trunc nuw i32 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ae = load i32, ptr %i.ad, align 4
  %.sroa.010.0 = select i1 %i.ac, i32 %i.ae, i32 0
  %i.af = add i32 %.sroa.010.0, %i.y              ; 4 uses
  %i.ag = icmp ult i32 %i.af, %i.y
  br i1 %i.ag, label %bb.e, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 18, ptr %i.ah, align 1
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.ai = add i32 %i.af, %.sroa.025.0             ; 4 uses
end_hunk_0
