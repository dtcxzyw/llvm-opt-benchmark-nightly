Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.14?download=true
inline.NumInlined: 1166
inline.NumDeleted: 478
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENvYB2l_INtNtB1f_7convert4IntoB2l_E4intoEB2l_ECs2NzvFoTxuAy_2rg:bb.a
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENvYB1L_INtNtBc_7convert4IntoB1L_E4intoENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0INtNtBc_6result6ResultB3N_zEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c, !dbg !9287

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENvYB1X_INtNtB4_7convert4IntoB1X_E4intoEECs2NzvFoTxuAy_2rg.exit unwind label %bb.g, !dbg !9288

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1, !dbg !9287
  %i.j = ptrtoint ptr %i.i to i64, !dbg !9289
  %i.k = ptrtoint ptr %i.d to i64, !dbg !9289
  %i.l = sub nuw i64 %i.j, %i.k, !dbg !9289
  %i.m = udiv exact i64 %i.l, 24, !dbg !9289      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9290
  store ptr %i.d, ptr %i.a, align 8, !dbg !9291
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9291
  store i64 %i.m, ptr %i.n, align 8, !dbg !9291
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9291
  store i64 %i.c, ptr %i.o, align 8, !dbg !9291
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE32forget_allocation_drop_remainingCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e, !dbg !9292

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringB1L_EECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #33
          to label %bb.b unwind label %bb.g, !dbg !9293

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8, !dbg !9294
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9294
  store ptr %i.d, ptr %i.q, align 8, !dbg !9294
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9294
  store i64 %i.m, ptr %i.r, align 8, !dbg !9294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9293
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !dbg !9295
  ret void, !dbg !9296

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34, !dbg !9297
  unreachable, !dbg !9297

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENvYB1X_INtNtB4_7convert4IntoB1X_E4intoEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn, !dbg !9297
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !9298 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9315), !dbg !9316
  %i.b = icmp eq i64 %4, 0, !dbg !9317
  br i1 %i.b, label %bb.e, label %bb.b, !dbg !9317, !prof !658

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1, !dbg !9318               ; 2 uses
  %i.d = icmp ult i64 %i.c, %1, !dbg !9318
  br i1 %i.d, label %bb.e, label %bb.c, !dbg !9319

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !dbg !9320, !range !661, !alias.scope !9315, !noundef !572 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1, !dbg !9320
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f), !dbg !9321
  %i.g = icmp eq i64 %4, 1, !dbg !9322
  %i.h = icmp ult i64 %4, 1025, !dbg !9322
  %..i = select i1 %i.h, i64 4, i64 1, !dbg !9322
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i, !dbg !9322
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i), !dbg !9323 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9324, !noalias !9315
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9325 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !dbg !9325, !alias.scope !9315
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !dbg !9325, !noalias !9315
  %i.j = load i64, ptr %i.a, align 8, !dbg !9326, !range !677, !noalias !9315, !noundef !572
  %i.k = trunc nuw i64 %i.j to i1, !dbg !9327
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9328 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f, !dbg !9327

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !dbg !9329, !range !742, !noalias !9315, !noundef !572
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9329
  %i.o = load i64, ptr %i.n, align 8, !dbg !9329, !noalias !9315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9330, !noalias !9315
  br label %bb.e, !dbg !9331

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #35, !dbg !9332
  unreachable, !dbg !9332

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !dbg !9333, !noalias !9315, !nonnull !572, !noundef !572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9330, !noalias !9315
  store ptr %i.p, ptr %i.i, align 8, !dbg !9334, !alias.scope !9315
  %i.q = icmp sgt i64 %..i14.i, -1, !dbg !9335
  tail call void @llvm.assume(i1 %i.q), !dbg !9335
  store i64 %..i14.i, ptr %0, align 8, !dbg !9336, !alias.scope !9315
  ret void, !dbg !9337
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1u_2eqB3_E0ECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9338 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 14 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !9532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !dbg !9532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !9533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !dbg !9534, !alias.scope !9491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9535, !noalias !9495
  call void @_RNvXsj_NtCsG258MDvU3F_3std4pathNtB5_10ComponentsNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e), !dbg !9536, !noalias !9503
  %i.f = load i8, ptr %i.b, align 8, !dbg !9535, !range !9504, !noalias !9495, !noundef !572 ; 2 uses
  %.not16.i.i.i.i.i.i = icmp eq i8 %i.f, -1, !dbg !9535
  br i1 %.not16.i.i.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !9537

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a
  %.sroa.58.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.710.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.811.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.912.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.89.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.910.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b, !dbg !9537

bb.b:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i
  %i.g = phi i8 [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %bb.m ] ; 4 uses
  %.sroa.58.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.58.0..sroa_idx.i.i.i.i.i.i, align 1, !dbg !9538, !noalias !9495 ; 2 uses
  %.sroa.710.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.710.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !9538, !noalias !9495 ; 10 uses
  %.sroa.811.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.811.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !9538, !noalias !9495 ; 10 uses
  %.sroa.912.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.912.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !9538, !noalias !9495 ; 4 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !9538, !noalias !9495 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9539, !noalias !9505
  call void @_RNvXsj_NtCsG258MDvU3F_3std4pathNtB5_10ComponentsNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d), !dbg !9540, !noalias !9510
  %i.h = load i8, ptr %i.a, align 8, !dbg !9539, !range !9504, !noalias !9505, !noundef !572 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.h, -1, !dbg !9539
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs2NzvFoTxuAy_2rg.exit.i.i.i, label %bb.c, !dbg !9541

bb.c:                                             ; preds = %bb.b
  %.sroa.45.0.copyload.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !dbg !9542, !noalias !9505 ; 2 uses
  %.sroa.67.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !dbg !9542, !noalias !9505 ; 10 uses
  %.sroa.78.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !dbg !9542, !noalias !9505 ; 5 uses
  %.sroa.89.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.89.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !dbg !9542, !noalias !9505 ; 4 uses
  %.sroa.910.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.910.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !dbg !9542, !noalias !9505 ; 2 uses
  %i.i = icmp samesign ugt i8 %i.g, 5, !dbg !9543
  %i.j = zext nneg i8 %i.g to i64, !dbg !9543
  %i.k = add nsw i64 %i.j, -5, !dbg !9543
  %i.l = select i1 %i.i, i64 %i.k, i64 0, !dbg !9543 ; 2 uses
  %i.m = icmp samesign ult i8 %i.h, 6, !dbg !9544 ; 2 uses
  %i.n = zext nneg i8 %i.h to i64, !dbg !9544
  %i.o = add nsw i64 %i.n, -5, !dbg !9544
  %i.p = select i1 %i.m, i64 0, i64 %i.o, !dbg !9544
  %i.q = icmp eq i64 %i.l, %i.p, !dbg !9545
  br i1 %i.q, label %bb.d, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !9545

bb.d:                                             ; preds = %bb.c
  switch i64 %i.l, label %bb.m [
    i64 0, label %bb.e
    i64 4, label %bb.l
  ], !dbg !9545

bb.e:                                             ; preds = %bb.d
  br i1 %i.m, label %bb.f, label %bb.m, !dbg !9545

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i8 %i.g, %i.h, !dbg !9546
  br i1 %i.r, label %bb.g, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !9546

bb.g:                                             ; preds = %bb.f
  switch i8 %i.g, label %default.unreachable [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %.split31.i.i.i.i.i.i.i.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %.split29.i.i.i.i.i.i.i.i
  ], !dbg !9546

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.s = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i, !dbg !9547
  br i1 %i.s, label %.split27.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !9547

.split27.i.i.i.i.i.i.i.i:                         ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i), !dbg !9548, !alias.scope !9517, !noalias !9518
  %bcmp.i.i.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !9548
  %i.t = icmp eq i32 %bcmp.i.i.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0, !dbg !9548
  br i1 %i.t, label %bb.m, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !9549

bb.i:                                             ; preds = %bb.g
  %i.u = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i, !dbg !9550
  br i1 %i.u, label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCs2NzvFoTxuAy_2rg.exit27.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !9550

_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCs2NzvFoTxuAy_2rg.exit27.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i26.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i), !dbg !9551, !alias.scope !9522, !noalias !9518
  %i.v = icmp eq i32 %bcmp.i.i26.i.i.i.i.i.i.i.i.i.i.i.i, 0, !dbg !9551
  %i.w = icmp eq i64 %.sroa.10.0.copyload.i.i.i.i.i.i, %.sroa.910.0.copyload.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.v, i1 %i.w, i1 false, !dbg !9552
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCsG258MDvU3F_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB1Z_E0E0Cs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !9552

.split31.i.i.i.i.i.i.i.i:                         ; preds = %bb.g
  %i.x = icmp eq i8 %.sroa.58.0.copyload.i.i.i.i.i.i, %.sroa.45.0.copyload.i.i.i.i.i.i.i.i, !dbg !9553
  %cond.fr32.i.i.i.i.i.i.i.i = freeze i1 %i.x
  br i1 %cond.fr32.i.i.i.i.i.i.i.i, label %bb.m, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !9549

bb.j:                                             ; preds = %bb.g
  %i.y = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i, !dbg !9554
  br i1 %i.y, label %.split33.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !9554

.split33.i.i.i.i.i.i.i.i:                         ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i29.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i), !dbg !9555, !alias.scope !9525, !noalias !9518
  %bcmp.i.i29.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i29.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !9555
  %i.z = icmp eq i32 %bcmp.i.i29.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0, !dbg !9555
  br i1 %i.z, label %bb.m, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !9549

bb.k:                                             ; preds = %bb.g
  %i.aa = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i, !dbg !9556
  br i1 %i.aa, label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCs2NzvFoTxuAy_2rg.exit33.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !9556

_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCs2NzvFoTxuAy_2rg.exit33.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i32.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i), !dbg !9557, !alias.scope !9526, !noalias !9518
  %i.ab = icmp eq i32 %bcmp.i.i32.i.i.i.i.i.i.i.i.i.i.i.i, 0, !dbg !9557
  %i.ac = icmp eq i64 %.sroa.10.0.copyload.i.i.i.i.i.i, %.sroa.910.0.copyload.i.i.i.i.i.i.i.i
  %or.cond6.i.i.i.i.i.i.i.i.i = select i1 %i.ab, i1 %i.ac, i1 false, !dbg !9558
  br i1 %or.cond6.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !9558

.split29.i.i.i.i.i.i.i.i:                         ; preds = %bb.g
  %i.ad = icmp eq i8 %.sroa.58.0.copyload.i.i.i.i.i.i, %.sroa.45.0.copyload.i.i.i.i.i.i.i.i, !dbg !9559
  %cond.fr30.i.i.i.i.i.i.i.i = freeze i1 %i.ad
  br i1 %cond.fr30.i.i.i.i.i.i.i.i, label %bb.m, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !9549

.split.i.i.i.i.i.i.i.i:                           ; preds = %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCs2NzvFoTxuAy_2rg.exit33.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.89.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.912.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i38.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.912.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.89.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.copyload.i.i.i.i.i.i), !dbg !9560, !alias.scope !9527, !noalias !9518
  %bcmp.i.i38.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i38.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !9560
  %i.ae = icmp eq i32 %bcmp.i.i38.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0, !dbg !9560
  br i1 %i.ae, label %bb.m, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !9549

bb.l:                                             ; preds = %bb.d
  %i.af = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i, !dbg !9561
  br i1 %i.af, label %.split35.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !9561

.split35.i.i.i.i.i.i.i.i:                         ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i), !dbg !9562, !alias.scope !9528, !noalias !9529
  %bcmp.i.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !9562
  %i.ag = icmp eq i32 %bcmp.i.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0, !dbg !9562
  br i1 %i.ag, label %bb.m, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !9549

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCsG258MDvU3F_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB1Z_E0E0Cs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCs2NzvFoTxuAy_2rg.exit27.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.89.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.912.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i35.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.912.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.89.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.copyload.i.i.i.i.i.i), !dbg !9563, !alias.scope !9530, !noalias !9518
  %bcmp.i.i35.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i35.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !9563
  %i.ah = icmp eq i32 %bcmp.i.i35.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0, !dbg !9563
  br i1 %i.ah, label %bb.m, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !9549

bb.m:                                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCsG258MDvU3F_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB1Z_E0E0Cs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i, %.split35.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i, %.split29.i.i.i.i.i.i.i.i, %.split33.i.i.i.i.i.i.i.i, %.split31.i.i.i.i.i.i.i.i, %.split27.i.i.i.i.i.i.i.i, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9564, !noalias !9505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9565, !noalias !9495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9535, !noalias !9495
  call void @_RNvXsj_NtCsG258MDvU3F_3std4pathNtB5_10ComponentsNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e), !dbg !9536
  %i.ai = load i8, ptr %i.b, align 8, !dbg !9535, !range !9504, !noalias !9495, !noundef !572 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ai, -1, !dbg !9535
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b, !dbg !9537

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCsG258MDvU3F_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB1Z_E0E0Cs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i, %.split35.i.i.i.i.i.i.i.i, %bb.l, %.split.i.i.i.i.i.i.i.i, %.split29.i.i.i.i.i.i.i.i, %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCs2NzvFoTxuAy_2rg.exit33.i.i.i.i.i.i.i.i.i.i.i.i, %bb.k, %.split33.i.i.i.i.i.i.i.i, %bb.j, %.split31.i.i.i.i.i.i.i.i, %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCs2NzvFoTxuAy_2rg.exit27.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i, %.split27.i.i.i.i.i.i.i.i, %bb.h, %bb.f, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9564, !noalias !9505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9565, !noalias !9495
  br label %_RINvXNtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB30_NCINvYBN_B2y_2eqBN_E0E0ECs2NzvFoTxuAy_2rg.exit, !dbg !9566

.loopexit.i.i.i:                                  ; preds = %bb.m, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9565, !noalias !9495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9567, !noalias !9531
  call void @_RNvXsj_NtCsG258MDvU3F_3std4pathNtB5_10ComponentsNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d), !dbg !9568
  %i.aj = load i8, ptr %i.c, align 8, !dbg !9567, !range !9504, !noalias !9531, !noundef !572
  %.not4.i.not.i.i = icmp eq i8 %i.aj, -1, !dbg !9567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9569, !noalias !9531
  br label %_RINvXNtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB30_NCINvYBN_B2y_2eqBN_E0E0ECs2NzvFoTxuAy_2rg.exit, !dbg !9569

_RINvXNtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB30_NCINvYBN_B2y_2eqBN_E0E0ECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs2NzvFoTxuAy_2rg.exit.i.i.i, %.loopexit.i.i.i
  %.sroa.0.0.i.i.i = phi i1 [ %.not4.i.not.i.i, %.loopexit.i.i.i ], [ false, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECs2NzvFoTxuAy_2rg.exit.i.i.i ], !dbg !9570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9571
  ret i1 %.sroa.0.0.i.i.i, !dbg !9572
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB19_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4recvs_0uEs0_0B1D_(ptr nofree captures(none) %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !9573 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9610
  %i.c = tail call noundef nonnull ptr @_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtB2_7Context3new(), !dbg !9610 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !dbg !9610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9611
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.0.copyload = load ptr, ptr %.0.val, align 8, !dbg !9612 ; 2 uses
  store ptr null, ptr %.0.val, align 8, !dbg !9613
  %.not = icmp eq ptr %.sroa.0.0.copyload, null, !dbg !9614
  br i1 %.not, label %bb.c, label %bb.b, !dbg !9615, !prof !589

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !9612
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8, !dbg !9616
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false), !dbg !9616
  invoke fastcc void @_RNCNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4recvs_0B11_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d, !dbg !9617

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #35
          to label %bb.f unwind label %bb.d, !dbg !9618

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = atomicrmw add ptr %i.c, i64 -1 release, align 8, !dbg !9619, !noalias !9608
  %i.f = icmp eq i64 %i.e, 1, !dbg !9620
  br i1 %i.f, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit, !dbg !9620

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !9621
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit unwind label %bb.i, !dbg !9622

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9623
  %i.g = atomicrmw add ptr %i.c, i64 -1 release, align 8, !dbg !9624, !noalias !9609
  %i.h = icmp eq i64 %i.g, 1, !dbg !9625
  br i1 %i.h, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit6, !dbg !9625

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !9626
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #32, !dbg !9627
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit6, !dbg !9627

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit6: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9628
  ret void, !dbg !9629

bb.i:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34, !dbg !9630
  unreachable, !dbg !9630

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d, !dbg !9630
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB19_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4send0uEs0_0B1D_(ptr nofree captures(none) %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !9631 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9668
  %i.c = tail call noundef nonnull ptr @_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtB2_7Context3new(), !dbg !9668 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !dbg !9668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9669
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.0.copyload = load ptr, ptr %.0.val, align 8, !dbg !9670 ; 2 uses
  store ptr null, ptr %.0.val, align 8, !dbg !9671
  %.not = icmp eq ptr %.sroa.0.0.copyload, null, !dbg !9672
  br i1 %.not, label %bb.c, label %bb.b, !dbg !9673, !prof !589

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !9670
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8, !dbg !9674
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false), !dbg !9674
  invoke fastcc void @_RNCNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4send0B11_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d, !dbg !9675

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #35
          to label %bb.f unwind label %bb.d, !dbg !9676

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = atomicrmw add ptr %i.c, i64 -1 release, align 8, !dbg !9677, !noalias !9666
  %i.f = icmp eq i64 %i.e, 1, !dbg !9678
  br i1 %i.f, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit, !dbg !9678

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !9679
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit unwind label %bb.i, !dbg !9680

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9681
  %i.g = atomicrmw add ptr %i.c, i64 -1 release, align 8, !dbg !9682, !noalias !9667
  %i.h = icmp eq i64 %i.g, 1, !dbg !9683
  br i1 %i.h, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit6, !dbg !9683

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !9684
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #32, !dbg !9685
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit6, !dbg !9685

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit6: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9686
  ret void, !dbg !9687

bb.i:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34, !dbg !9688
  unreachable, !dbg !9688

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d, !dbg !9688
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i8 0, 3) i8 @_RNCNCNvCs2NzvFoTxuAy_2rg14files_parallels_00B5_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !361 {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 5 uses
  %i.c = alloca [120 x i8], align 8               ; 6 uses
  %i.d = alloca [120 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !9697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9698
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9698
  %i.f = load ptr, ptr %i.e, align 8, !dbg !9698, !nonnull !572, !noundef !572
  %.val = load i8, ptr %i.f, align 1, !dbg !9699
  call fastcc void @_RNvMNtCs2NzvFoTxuAy_2rg8haystackNtB2_15HaystackBuilder17build_from_result(ptr noalias nofree noundef align 8 captures(address) dereferenceable(120) %i.c, i8 %.val, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %1), !dbg !9699
  %i.g = load i64, ptr %i.c, align 8, !dbg !9698, !range !694, !noundef !572
  %.not = icmp eq i64 %i.g, -1, !dbg !9698
  br i1 %.not, label %bb.b, label %bb.d, !dbg !9700

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9701
  br label %bb.c, !dbg !9702

bb.c:                                             ; preds = %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCsG258MDvU3F_3std4sync4mpsc9SendErrorNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEEEB1K_.exit, %bb.b
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ 2, %bb.f ], [ %., %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCsG258MDvU3F_3std4sync4mpsc9SendErrorNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEEEB1K_.exit ], !dbg !9703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9702
  ret i8 %.sroa.0.0, !dbg !9704

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 8 dereferenceable(120) %i.c, i64 120, i1 false), !dbg !9705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9701
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9706
  %i.i = load ptr, ptr %i.h, align 8, !dbg !9706, !nonnull !572, !noundef !572
end_hunk_0
begin_hunk_1_@_RNvCs2NzvFoTxuAy_2rg3run:bb.a
  %or.cond6.i.not = select i1 %i.lg, i1 %i.li, i1 false, !dbg !13134
  br i1 %or.cond6.i.not, label %_RNvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB2_6HiArgs16matches_possible.exit.thread, label %bb.bf, !dbg !13134

_RNvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB2_6HiArgs16matches_possible.exit.thread: ; preds = %bb.y, %_RNvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB2_6HiArgs16matches_possible.exit, %bb.rd, %bb.nb
  %i.lj = invoke noundef zeroext i1 @_RNvNtCs2NzvFoTxuAy_2rg8messages7errored()
          to label %bb.re unwind label %bb.w, !dbg !13135

bb.bf:                                            ; preds = %_RNvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB2_6HiArgs16matches_possible.exit
  %i.lk = getelementptr inbounds nuw i8, ptr %i.hd, i64 808, !dbg !13136
  %.val23 = load i64, ptr %i.lk, align 8, !dbg !13136, !noundef !572
  %i.ll = icmp eq i64 %.val23, 1, !dbg !13137
  br i1 %i.ll, label %bb.bg, label %bb.hz, !dbg !13137

bb.bg:                                            ; preds = %bb.bf
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12492), !dbg !13138
  %i.lm = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %.noexc51 unwind label %bb.w, !dbg !13139 ; 2 uses

.noexc51:                                         ; preds = %bb.bg
  %i.ln = extractvalue { i64, i32 } %i.lm, 0, !dbg !13139
  %i.lo = extractvalue { i64, i32 } %i.lm, 1, !dbg !13139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gs), !dbg !13140, !noalias !12493
  %i.lp = getelementptr inbounds nuw i8, ptr %i.hd, i64 384, !dbg !13141
  %.val101.i = load i8, ptr %i.lp, align 8, !dbg !13141, !range !699, !alias.scope !12492, !noundef !572 ; 2 uses
  %i.lq = trunc nuw i8 %.val101.i to i1, !dbg !13142
  store i8 %.val101.i, ptr %i.gs, align 1, !dbg !13141, !noalias !12493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gr), !dbg !13143, !noalias !12493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gq), !dbg !13144, !noalias !12493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gp), !dbg !13144, !noalias !12493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.go), !dbg !13144, !noalias !12493
  invoke void @_RNvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB2_6HiArgs12walk_builder(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.go, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(944) %i.hd)
          to label %.noexc52 unwind label %bb.w, !dbg !13145

.noexc52:                                         ; preds = %.noexc51
  %i.lr = load i64, ptr %i.go, align 8, !dbg !13146, !range !673, !noalias !12493, !noundef !572 ; 2 uses
  %i.ls = icmp eq i64 %i.lr, 2, !dbg !13146
  %i.lt = getelementptr inbounds nuw i8, ptr %i.go, i64 8, !dbg !13147
  %i.lu = load ptr, ptr %i.lt, align 8, !dbg !13147, !noalias !12493 ; 2 uses
  br i1 %i.ls, label %bb.bh, label %bb.bi, !dbg !13148

bb.bh:                                            ; preds = %.noexc52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.go), !dbg !13149, !noalias !12493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq), !dbg !13150, !noalias !12493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp), !dbg !13151, !noalias !12493
  br label %bb.mz, !dbg !13152

bb.bi:                                            ; preds = %.noexc52
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.go, i64 16, !dbg !13153
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 16, !dbg !13154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.560.0..sroa_idx.i, i64 272, i1 false), !dbg !13153, !noalias !12493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.go), !dbg !13149, !noalias !12493
  store i64 %i.lr, ptr %i.gp, align 8, !dbg !13154, !noalias !12493
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 8, !dbg !13154
  store ptr %i.lu, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !13154, !noalias !12493
  invoke void @_RNvMs3_NtCsc0anycpf6TS_6ignore4walkNtB5_11WalkBuilder5build(ptr noalias nofree noundef nonnull sret([344 x i8]) align 8 captures(none) dereferenceable(344) %i.gq, ptr noundef nonnull align 8 %i.gp)
          to label %bb.bk unwind label %bb.bj, !dbg !13155, !noalias !12494

bb.bj:                                            ; preds = %bb.bi
  %i.lv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore4walk11WalkBuilderECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(288) %i.gp) #33
          to label %.body unwind label %bb.ed, !dbg !13151, !noalias !12494

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.gr, ptr noundef nonnull align 8 dereferenceable(344) %i.gq, i64 344, i1 false), !dbg !13156, !noalias !12493
  %i.lw = getelementptr inbounds nuw i8, ptr %i.gr, i64 344, !dbg !13156
  store ptr %i.gs, ptr %i.lw, align 8, !dbg !13156, !noalias !12493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq), !dbg !13150, !noalias !12493
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore4walk11WalkBuilderECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(288) %i.gp)
          to label %bb.bl unwind label %bb.hy, !dbg !13151, !noalias !12494

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp), !dbg !13151, !noalias !12493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gn), !dbg !13157, !noalias !12493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.gn, ptr noundef nonnull align 8 dereferenceable(352) %i.gr, i64 352, i1 false), !dbg !13157, !noalias !12493
  %i.lx = invoke { ptr, ptr } @_RINvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB3_6HiArgs4sortINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB7_6search0EEB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(944) %i.hd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(352) %i.gn)
          to label %.noexc53 unwind label %bb.w, !dbg !13158 ; 2 uses

.noexc53:                                         ; preds = %bb.bl
  %i.ly = extractvalue { ptr, ptr } %i.lx, 0, !dbg !13159 ; 13 uses
  %i.lz = extractvalue { ptr, ptr } %i.lx, 1, !dbg !13159 ; 16 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gn), !dbg !13160, !noalias !12493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gm), !dbg !13161, !noalias !12493
  call void @llvm.experimental.noalias.scope.decl(metadata !12496), !dbg !13162
  call void @llvm.experimental.noalias.scope.decl(metadata !12497), !dbg !13162
  %i.ma = getelementptr inbounds nuw i8, ptr %i.hd, i64 792, !dbg !13163
  %i.mb = load i32, ptr %i.ma, align 8, !dbg !13163, !range !789, !alias.scope !12498, !noundef !572
  %.not.i.i = icmp eq i32 %i.mb, -1, !dbg !13163
  br i1 %.not.i.i, label %bb.bn, label %bb.bm, !dbg !13164

bb.bm:                                            ; preds = %.noexc53
  %i.mc = getelementptr inbounds nuw i8, ptr %i.hd, i64 736, !dbg !13163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gm, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.mc, i64 64, i1 false), !dbg !13165, !alias.scope !12499, !noalias !12494
  br label %_RNvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB2_6HiArgs5stats.exit.i, !dbg !13166

bb.bn:                                            ; preds = %.noexc53
  %i.md = getelementptr inbounds nuw i8, ptr %i.gm, i64 56, !dbg !13167
  store i32 -1, ptr %i.md, align 8, !dbg !13167, !alias.scope !12496, !noalias !12493
  br label %_RNvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB2_6HiArgs5stats.exit.i, !dbg !13167

_RNvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB2_6HiArgs5stats.exit.i: ; preds = %bb.bn, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gl), !dbg !13168, !noalias !12493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gk), !dbg !13169, !noalias !12493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gj), !dbg !13170, !noalias !12493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gi), !dbg !13170, !noalias !12493
  invoke void @_RNvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB2_6HiArgs7matcher(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.gi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(944) %i.hd)
          to label %bb.bo unwind label %bb.bv, !dbg !13171, !noalias !12494

bb.bo:                                            ; preds = %_RNvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB2_6HiArgs5stats.exit.i
  %i.me = getelementptr inbounds nuw i8, ptr %i.gi, i64 99, !dbg !13172
  %i.mf = load i8, ptr %i.me, align 1, !dbg !13172, !range !853, !noalias !12493, !noundef !572 ; 2 uses
  %i.mg = icmp eq i8 %i.mf, 2, !dbg !13172
  %i.mh = load ptr, ptr %i.gi, align 8, !dbg !13173, !noalias !12493 ; 2 uses
  br i1 %i.mg, label %bb.bp, label %bb.bq, !dbg !13174

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gi), !dbg !13175, !noalias !12493
  br label %.sink.split685, !dbg !12715

bb.bq:                                            ; preds = %bb.bo
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 8, !dbg !13176
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 8, !dbg !13177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(91) %.sroa.427.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(91) %.sroa.462.0..sroa_idx.i, i64 91, i1 false), !dbg !13176, !noalias !12493
  %.sroa.664.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 100, !dbg !13176
  %.sroa.664.0.copyload.i = load i32, ptr %.sroa.664.0..sroa_idx.i, align 4, !dbg !13176, !noalias !12493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gi), !dbg !13175, !noalias !12493
  store ptr %i.mh, ptr %i.gj, align 8, !dbg !13177, !noalias !12493
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 99, !dbg !13177
  store i8 %i.mf, ptr %.sroa.528.0..sroa_idx.i, align 1, !dbg !13177, !noalias !12493
  %.sroa.629.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 100, !dbg !13177
  store i32 %.sroa.664.0.copyload.i, ptr %.sroa.629.0..sroa_idx.i, align 4, !dbg !13177, !noalias !12493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gh), !dbg !13178, !noalias !12493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gg), !dbg !13178, !noalias !12493
  invoke void @_RNvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB2_6HiArgs8searcher(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.gg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(944) %i.hd)
          to label %bb.bs unwind label %bb.br, !dbg !13179, !noalias !12494

bb.br:                                            ; preds = %bb.bq
  %i.mi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search14PatternMatcherEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.gj) #33
          to label %.critedge.thread.i unwind label %bb.ed, !dbg !13180, !noalias !12494

bb.bs:                                            ; preds = %bb.bq
  %i.mj = load i64, ptr %i.gg, align 8, !dbg !13181, !range !673, !noalias !12493, !noundef !572 ; 2 uses
  %i.mk = icmp eq i64 %i.mj, 2, !dbg !13181
  %i.ml = getelementptr inbounds nuw i8, ptr %i.gg, i64 8, !dbg !13182
  %i.mm = load ptr, ptr %i.ml, align 8, !dbg !13182, !noalias !12493 ; 2 uses
  br i1 %i.mk, label %bb.bt, label %bb.bu, !dbg !13183

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gg), !dbg !13184, !noalias !12493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gh), !dbg !13180, !noalias !12493
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg6search14PatternMatcherEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.gj)
          to label %.sink.split685 unwind label %bb.bv, !dbg !13180, !noalias !12494

bb.bu:                                            ; preds = %bb.bs
  %.sroa.567.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 16, !dbg !13185
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 16, !dbg !13186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.539.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.567.0..sroa_idx.i, i64 248, i1 false), !dbg !13185, !noalias !12493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gg), !dbg !13184, !noalias !12493
  store i64 %i.mj, ptr %i.gh, align 8, !dbg !13186, !noalias !12493
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 8, !dbg !13186
  store ptr %i.mm, ptr %.sroa.438.0..sroa_idx.i, align 8, !dbg !13186, !noalias !12493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gf), !dbg !13187, !noalias !12493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ge), !dbg !13188, !noalias !12493
  invoke void @_RNvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB2_6HiArgs6stdout(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ge, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(944) %i.hd)
          to label %bb.bw unwind label %bb.hs, !dbg !13189, !noalias !12494

bb.bv:                                            ; preds = %bb.bx, %bb.bt, %_RNvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB2_6HiArgs5stats.exit.i
  %lpad.thr_comm.split-lp178.i = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.thread.i, !dbg !13180

bb.bw:                                            ; preds = %bb.bu
  invoke void @_RINvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB3_6HiArgs7printerNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEB7_(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.gf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(944) %i.hd, i8 noundef range(i8 0, 6) %.val22, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.ge)
          to label %bb.bx unwind label %bb.hs, !dbg !13190, !noalias !12494

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge), !dbg !13191, !noalias !12493
  invoke void @_RINvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB3_6HiArgs13search_workerNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEB7_(ptr noalias nofree noundef nonnull sret([848 x i8]) align 8 captures(none) dereferenceable(848) %i.gk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(944) %i.hd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.gj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(264) %i.gh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(272) %i.gf)
          to label %bb.by unwind label %bb.bv, !dbg !13192, !noalias !12494

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf), !dbg !13180, !noalias !12493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gh), !dbg !13180, !noalias !12493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gj), !dbg !13180, !noalias !12493
  %i.mn = load i64, ptr %i.gk, align 8, !dbg !13193, !range !673, !noalias !12493, !noundef !572 ; 2 uses
  %i.mo = icmp eq i64 %i.mn, 2, !dbg !13193
  %i.mp = getelementptr inbounds nuw i8, ptr %i.gk, i64 8, !dbg !13194
  %i.mq = load ptr, ptr %i.mp, align 8, !dbg !13194, !noalias !12493 ; 2 uses
  br i1 %i.mo, label %bb.hu, label %bb.bz, !dbg !13195

bb.bz:                                            ; preds = %bb.by
  %.sroa.570.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 16, !dbg !13196
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 16, !dbg !13197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(832) %.sroa.542.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(832) %.sroa.570.0..sroa_idx.i, i64 832, i1 false), !dbg !13196, !noalias !12493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gk), !dbg !13198, !noalias !12493
  store i64 %i.mn, ptr %i.gl, align 8, !dbg !13197, !noalias !12493
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 8, !dbg !13197
  store ptr %i.mq, ptr %.sroa.441.0..sroa_idx.i, align 8, !dbg !13197, !noalias !12493
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ly) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lz) ]
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.ms = load ptr, ptr %i.mr, align 8, !invariant.load !572, !noalias !12494, !nonnull !572 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ga, i64 56 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 2 uses
  %.sroa.478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 24 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.gb, i64 64
  %i.my = getelementptr inbounds nuw i8, ptr %i.gm, i64 56 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.gb, i64 56
  %i.na = getelementptr inbounds nuw i8, ptr %i.hd, i64 931
  %.val114.i = load i8, ptr %i.na, align 1, !range !699, !alias.scope !12492
  %i.nb = trunc nuw i8 %.val114.i to i1
  br label %.outer.i, !dbg !13199

.outer.i:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEBF_.exit124.i, %bb.bz
  %.sroa.047.0.ph.i = phi i8 [ %.sroa.047.2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEBF_.exit124.i ], [ 0, %bb.bz ] ; 4 uses
  %.sroa.09.0.ph.i = phi i1 [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEBF_.exit124.i ], [ false, %bb.bz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd), !dbg !13200, !noalias !12493
  invoke void %i.ms(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.gd, ptr noundef nonnull %i.ly)
          to label %bb.ca unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13201, !noalias !12494

bb.ca:                                            ; preds = %.outer.i
  %i.nc = load i64, ptr %i.gd, align 8, !dbg !13200, !range !694, !noalias !12493, !noundef !572
  %.not80.peel.i = icmp eq i64 %i.nc, -1, !dbg !13200
  br i1 %.not80.peel.i, label %.loopexit206.i, label %bb.cb, !dbg !13200

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc), !dbg !13202, !noalias !12493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.gc, ptr noundef nonnull align 8 dereferenceable(120) %i.gd, i64 120, i1 false), !dbg !13202, !noalias !12493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb), !dbg !13203, !noalias !12493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga), !dbg !13204, !noalias !12493
  invoke void @_RNvMs3_NtCs2NzvFoTxuAy_2rg6searchINtB5_12SearchWorkerNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE6searchB7_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ga, ptr noalias nofree noundef nonnull align 8 dereferenceable(848) %i.gl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gc)
          to label %bb.cc unwind label %.thread192.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13205, !noalias !12494

bb.cc:                                            ; preds = %bb.cb
  %i.nd = load i32, ptr %i.mt, align 8, !dbg !13204, !range !785, !noalias !12493, !noundef !572
  %i.ne = icmp eq i32 %i.nd, -2, !dbg !13204
  br i1 %i.ne, label %bb.cd, label %.loopexit.i46, !dbg !13206

bb.cd:                                            ; preds = %bb.cc
  %.val112.peel.i = load ptr, ptr %i.ga, align 8, !dbg !13207, !noalias !12493, !nonnull !572, !noundef !572 ; 6 uses
  %i.nf = ptrtoint ptr %.val112.peel.i to i64, !dbg !13208 ; 3 uses
  %i.ng = and i64 %i.nf, 3, !dbg !13209
  switch i64 %i.ng, label %default.unreachable584 [
    i64 2, label %bb.ch
    i64 3, label %bb.cg
    i64 0, label %bb.cf
    i64 1, label %bb.ce
  ], !dbg !13210, !prof !681

bb.ce:                                            ; preds = %bb.cd
  %i.nh = getelementptr i8, ptr %.val112.peel.i, i64 31, !dbg !13211
  %i.ni = load i8, ptr %i.nh, align 8, !dbg !13211, !range !795, !noalias !12494, !noundef !572
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.peel.i, !dbg !13212

bb.cf:                                            ; preds = %bb.cd
  %i.nj = getelementptr inbounds nuw i8, ptr %.val112.peel.i, i64 16, !dbg !13213
  %i.nk = load i8, ptr %i.nj, align 8, !dbg !13213, !range !795, !noalias !12494, !noundef !572
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.peel.i, !dbg !13214

bb.cg:                                            ; preds = %bb.cd
  %i.nl = lshr i64 %i.nf, 32, !dbg !13215
  %i.nm = icmp ult ptr %.val112.peel.i, inttoptr (i64 188978561024 to ptr), !dbg !13216
  %switch.idx.cast.i.i.i.peel.i = trunc i64 %i.nl to i8 ; 2 uses
  %i.nn = icmp ne i8 %switch.idx.cast.i.i.i.peel.i, -1, !dbg !13217
  call void @llvm.assume(i1 %i.nm), !dbg !13218
  call void @llvm.assume(i1 %i.nn), !dbg !13218
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.peel.i, !dbg !13219

bb.ch:                                            ; preds = %bb.cd
  %i.no = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.peel.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13220, !noalias !12494

.noexc.peel.i:                                    ; preds = %bb.ch
  %i.np = lshr i64 %i.nf, 32, !dbg !13221
  %i.nq = trunc nuw i64 %i.np to i32, !dbg !13221
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 8, !dbg !13222
  %i.ns = load ptr, ptr %i.nr, align 8, !dbg !13222, !noalias !12494, !nonnull !572, !noundef !572
  %i.nt = invoke noundef i8 %i.ns(i32 noundef %i.nq)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.peel.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13222, !noalias !12494, !inline_history !794

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.peel.i: ; preds = %.noexc.peel.i, %bb.cg, %bb.cf, %bb.ce
  %.sroa.0.0.i.peel.i = phi i8 [ %i.ni, %bb.ce ], [ %switch.idx.cast.i.i.i.peel.i, %bb.cg ], [ %i.nk, %bb.cf ], [ %i.nt, %.noexc.peel.i ], !dbg !13223
  %i.nu = icmp eq i8 %.sroa.0.0.i.peel.i, 11, !dbg !13224
  br i1 %i.nu, label %.loopexit333.i, label %bb.ci, !dbg !13225

bb.ci:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.peel.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy), !dbg !13226, !noalias !12493
  store ptr %.val112.peel.i, ptr %i.fy, align 8, !dbg !13226, !noalias !12493
  invoke void @_RNvNtCs2NzvFoTxuAy_2rg8messages11set_errored()
          to label %bb.cj unwind label %.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13227, !noalias !12494

bb.cj:                                            ; preds = %bb.ci
  %i.nv = invoke noundef zeroext i1 @_RNvNtCs2NzvFoTxuAy_2rg8messages8messages()
          to label %bb.ck unwind label %.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13228, !noalias !12494

bb.ck:                                            ; preds = %bb.cj
  br i1 %i.nv, label %bb.cl, label %bb.cy, !dbg !13228

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx), !dbg !13229, !noalias !12493
  %i.nw = invoke noundef nonnull align 8 ptr @_RNvNtNtCsG258MDvU3F_3std2io5stdio6stdout()
          to label %bb.cm unwind label %.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13229, !noalias !12494

bb.cm:                                            ; preds = %bb.cl
  store ptr %i.nw, ptr %i.fx, align 8, !dbg !13229, !noalias !12493
  %i.nx = invoke noundef nonnull align 8 ptr @_RNvMsa_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fx)
          to label %bb.cn unwind label %.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13230, !noalias !12494 ; 7 uses

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx), !dbg !13231, !noalias !12493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw), !dbg !13232, !noalias !12493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv), !dbg !13233, !noalias !12493
  store ptr @_RNvNvNtNtCsG258MDvU3F_3std2io5stdio6stderr8INSTANCE, ptr %i.fv, align 8, !dbg !13234, !noalias !12493
  %i.ny = invoke noundef nonnull align 8 ptr @_RNvMsk_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fv)
          to label %bb.co unwind label %.split.thread.loopexit.split-lp.i, !dbg !13235, !noalias !12494

bb.co:                                            ; preds = %bb.cn
  store ptr %i.ny, ptr %i.fw, align 8, !dbg !13233, !noalias !12493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv), !dbg !13236, !noalias !12493
  %i.nz = invoke noundef ptr @_RNvYNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 9 to ptr))
          to label %bb.cp unwind label %.loopexit.split-lp342.i, !dbg !13237, !noalias !12494 ; 2 uses

bb.cp:                                            ; preds = %bb.co
  %.not83.peel.i = icmp eq ptr %i.nz, null, !dbg !13237
  br i1 %.not83.peel.i, label %bb.cq, label %.loopexit348.i, !dbg !13238

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft), !dbg !13239, !noalias !12493
  %i.oa = invoke { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gc)
          to label %bb.cr unwind label %.loopexit.split-lp342.i, !dbg !13240, !noalias !12494 ; 2 uses

bb.cr:                                            ; preds = %bb.cq
  %i.ob = extractvalue { ptr, i64 } %i.oa, 0, !dbg !13239
  %i.oc = extractvalue { ptr, i64 } %i.oa, 1, !dbg !13239
  store ptr %i.ob, ptr %i.ft, align 8, !dbg !13241, !noalias !12493
  store i64 %i.oc, ptr %i.mu, align 8, !dbg !13241, !noalias !12493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs), !dbg !13242, !noalias !12493
  store ptr %i.ft, ptr %i.fs, align 8, !dbg !13242, !noalias !12493
  store ptr @_RNvXs1b_NtCsG258MDvU3F_3std4pathNtB6_7DisplayNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.474.0..sroa_idx.i, align 8, !dbg !13242, !noalias !12493
  store ptr %i.fy, ptr %i.mv, align 8, !dbg !13242, !noalias !12493
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.478.0..sroa_idx.i, align 8, !dbg !13242, !noalias !12493
  %i.od = invoke noundef ptr @_RNvYNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull @28, ptr noundef nonnull %i.fs)
          to label %bb.cs unwind label %.loopexit.split-lp342.i, !dbg !13243, !noalias !12494 ; 2 uses

bb.cs:                                            ; preds = %bb.cr
  %.not84.peel.i = icmp eq ptr %i.od, null, !dbg !13243
  br i1 %.not84.peel.i, label %bb.ct, label %.loopexit349.i, !dbg !13244

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs), !dbg !13245, !noalias !12493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft), !dbg !13245, !noalias !12493
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nx, i64 12, !dbg !13246 ; 2 uses
  %i.of = load i32, ptr %i.oe, align 4, !dbg !13247, !noalias !12494, !noundef !572
  %i.og = add i32 %i.of, -1, !dbg !13247          ; 2 uses
  store i32 %i.og, ptr %i.oe, align 4, !dbg !13247, !noalias !12494
  %i.oh = icmp eq i32 %i.og, 0, !dbg !13248
  br i1 %i.oh, label %bb.cu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECs2NzvFoTxuAy_2rg.exit.peel.i, !dbg !13248

bb.cu:                                            ; preds = %bb.ct
  store atomic i64 0, ptr %i.nx monotonic, align 8, !dbg !13249, !noalias !12494
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nx, i64 8, !dbg !13250 ; 2 uses
  %i.oj = atomicrmw xchg ptr %i.oi, i32 0 release, align 4, !dbg !13251, !noalias !12494
  %i.ok = icmp eq i32 %i.oj, 2, !dbg !13252
  br i1 %i.ok, label %bb.cv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECs2NzvFoTxuAy_2rg.exit.peel.i, !dbg !13252, !prof !589

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.oi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECs2NzvFoTxuAy_2rg.exit.peel.i unwind label %.loopexit.split-lp342.i, !dbg !13253, !noalias !12494

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECs2NzvFoTxuAy_2rg.exit.peel.i: ; preds = %bb.cv, %bb.cu, %bb.ct
  %.val115.peel.i = load ptr, ptr %i.fw, align 8, !dbg !13254, !noalias !12493, !nonnull !572, !align !698, !noundef !572 ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.val115.peel.i, i64 12, !dbg !13255 ; 2 uses
  %i.om = load i32, ptr %i.ol, align 4, !dbg !13256, !noalias !12494, !noundef !572
  %i.on = add i32 %i.om, -1, !dbg !13256          ; 2 uses
  store i32 %i.on, ptr %i.ol, align 4, !dbg !13256, !noalias !12494
  %i.oo = icmp eq i32 %i.on, 0, !dbg !13257
  br i1 %i.oo, label %bb.cw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs2NzvFoTxuAy_2rg.exit.peel.i, !dbg !13257

bb.cw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECs2NzvFoTxuAy_2rg.exit.peel.i
  store atomic i64 0, ptr %.val115.peel.i monotonic, align 8, !dbg !13258, !noalias !12494
  %i.op = getelementptr inbounds nuw i8, ptr %.val115.peel.i, i64 8, !dbg !13259 ; 2 uses
  %i.oq = atomicrmw xchg ptr %i.op, i32 0 release, align 4, !dbg !13260, !noalias !12494
  %i.or = icmp eq i32 %i.oq, 2, !dbg !13261
  br i1 %i.or, label %bb.cx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs2NzvFoTxuAy_2rg.exit.peel.i, !dbg !13261, !prof !589

bb.cx:                                            ; preds = %bb.cw
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.op)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs2NzvFoTxuAy_2rg.exit.peel.i unwind label %.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13262, !noalias !12494

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs2NzvFoTxuAy_2rg.exit.peel.i: ; preds = %bb.cx, %bb.cw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECs2NzvFoTxuAy_2rg.exit.peel.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw), !dbg !13254, !noalias !12493
  br label %bb.cy, !dbg !13263

bb.cy:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs2NzvFoTxuAy_2rg.exit.peel.i, %bb.ck
  call void @llvm.experimental.noalias.scope.decl(metadata !12510), !dbg !13264
  %.val.i.peel.i = load ptr, ptr %i.fy, align 8, !dbg !13265, !alias.scope !12510, !noalias !12493, !nonnull !572, !noundef !572 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq), !dbg !13266, !noalias !12511
end_hunk_1
begin_hunk_2_@_RNvCs2NzvFoTxuAy_2rg3run:bb.a
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2NzvFoTxuAy_2rg5flags6hiargs6HiArgsEBH_(ptr noalias nofree noundef align 8 dereferenceable(944) %i.hd), !dbg !13044
  br label %bb.rg, !dbg !13044

bb.nd:                                            ; preds = %bb.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !dbg !13584, !noalias !12717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !dbg !13916, !noalias !12717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !dbg !13917
  br i1 %.sroa.0210.1, label %bb.ne, label %bb.nb, !dbg !13918

bb.ne:                                            ; preds = %bb.nd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11213.1) ]
  %i.ahh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13919
  store ptr %.sroa.11213.1, ptr %i.ahh, align 8, !dbg !13919
  store i8 1, ptr %0, align 8, !dbg !13919
  br label %bb.nc, !dbg !13913

bb.nf:                                            ; preds = %bb.x
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.hd, i64 808, !dbg !13920
  %.val24 = load i64, ptr %i.ahi, align 8, !dbg !13920, !noundef !572
  %i.ahj = icmp eq i64 %.val24, 1, !dbg !13921
  br i1 %i.ahj, label %bb.ng, label %bb.pi, !dbg !13921

bb.ng:                                            ; preds = %bb.nf
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12899), !dbg !13922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !13923, !noalias !12900
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.hd, i64 384, !dbg !13924
  %i.ahl = load i8, ptr %i.ahk, align 8, !dbg !13924, !range !699, !alias.scope !12899, !noundef !572
  store i8 %i.ahl, ptr %i.aj, align 1, !dbg !13925, !noalias !12900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !13926, !noalias !12900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !13927, !noalias !12900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !13927, !noalias !12900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !13927, !noalias !12900
  invoke void @_RNvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB2_6HiArgs12walk_builder(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(944) %i.hd)
          to label %.noexc177 unwind label %bb.w, !dbg !13928

.noexc177:                                        ; preds = %bb.ng
  %i.ahm = load i64, ptr %i.af, align 8, !dbg !13929, !range !673, !noalias !12900, !noundef !572 ; 2 uses
  %i.ahn = icmp eq i64 %i.ahm, 2, !dbg !13929
  %i.aho = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !13930
  %i.ahp = load ptr, ptr %i.aho, align 8, !dbg !13930, !noalias !12900 ; 2 uses
  br i1 %i.ahn, label %bb.nh, label %bb.ni, !dbg !13931

bb.nh:                                            ; preds = %.noexc177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !13932, !noalias !12900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !13933, !noalias !12900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !13934, !noalias !12900
  br label %bb.qx, !dbg !13935

bb.ni:                                            ; preds = %.noexc177
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !13936
  %.sroa.5.0..sroa_idx.i157 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !13937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.5.0..sroa_idx.i157, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.514.0..sroa_idx.i, i64 272, i1 false), !dbg !13936, !noalias !12900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !13932, !noalias !12900
  store i64 %i.ahm, ptr %i.ag, align 8, !dbg !13937, !noalias !12900
  %.sroa.4.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !13937
  store ptr %i.ahp, ptr %.sroa.4.0..sroa_idx.i158, align 8, !dbg !13937, !noalias !12900
  invoke void @_RNvMs3_NtCsc0anycpf6TS_6ignore4walkNtB5_11WalkBuilder5build(ptr noalias nofree noundef nonnull sret([344 x i8]) align 8 captures(none) dereferenceable(344) %i.ah, ptr noundef nonnull align 8 %i.ag)
          to label %bb.nk unwind label %bb.nj, !dbg !13938, !noalias !12901

bb.nj:                                            ; preds = %bb.ni
  %i.ahq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore4walk11WalkBuilderECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(288) %i.ag) #33
          to label %.body unwind label %bb.pc, !dbg !13934, !noalias !12901

bb.nk:                                            ; preds = %bb.ni
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.ai, ptr noundef nonnull align 8 dereferenceable(344) %i.ah, i64 344, i1 false), !dbg !13939, !noalias !12900
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ai, i64 344, !dbg !13939
  store ptr %i.aj, ptr %i.ahr, align 8, !dbg !13939, !noalias !12900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !13933, !noalias !12900
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore4walk11WalkBuilderECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(288) %i.ag)
          to label %bb.nl unwind label %bb.ph, !dbg !13934, !noalias !12901

bb.nl:                                            ; preds = %bb.nk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !13934, !noalias !12900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !13940, !noalias !12900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.ae, ptr noundef nonnull align 8 dereferenceable(352) %i.ai, i64 352, i1 false), !dbg !13940, !noalias !12900
  %i.ahs = invoke { ptr, ptr } @_RINvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB3_6HiArgs4sortINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB7_5files0EEB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(944) %i.hd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(352) %i.ae)
          to label %.noexc178 unwind label %bb.w, !dbg !13941 ; 2 uses

.noexc178:                                        ; preds = %bb.nl
  %i.aht = extractvalue { ptr, ptr } %i.ahs, 0, !dbg !13942 ; 12 uses
  %i.ahu = extractvalue { ptr, ptr } %i.ahs, 1, !dbg !13942 ; 15 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !13943, !noalias !12900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !13944, !noalias !12900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !13945, !noalias !12900
  invoke void @_RNvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB2_6HiArgs20path_printer_builder(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(944) %i.hd)
          to label %bb.nn unwind label %.body54.i, !dbg !13946, !noalias !12901

bb.nm:                                            ; preds = %.body.i163
  br i1 %.sroa.010.2.i, label %.thread74.i, label %.body, !dbg !13947

.body54.i:                                        ; preds = %.noexc178
  %lpad.thr_comm.split-lp.i159 = landingpad { ptr, i32 }
          cleanup
  br label %.thread74.i, !dbg !13947

bb.nn:                                            ; preds = %.noexc178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !13948, !noalias !12900
  invoke void @_RNvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB2_6HiArgs6stdout(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(944) %i.hd)
          to label %bb.nq unwind label %bb.no, !dbg !13949, !noalias !12901

bb.no:                                            ; preds = %bb.nn
  %i.ahv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12902), !dbg !13950
  call void @llvm.experimental.noalias.scope.decl(metadata !12903), !dbg !13951
  call void @llvm.experimental.noalias.scope.decl(metadata !12904), !dbg !13952
  call void @llvm.experimental.noalias.scope.decl(metadata !12905), !dbg !13953
  call void @llvm.experimental.noalias.scope.decl(metadata !12906), !dbg !13954
  %i.ahw = load ptr, ptr %i.ac, align 8, !dbg !13955, !alias.scope !12907, !noalias !12900, !nonnull !572, !noundef !572
  %i.ahx = atomicrmw add ptr %i.ahw, i64 -1 release, align 8, !dbg !13956, !noalias !12908
  %i.ahy = icmp eq i64 %i.ahx, 1, !dbg !13957
  br i1 %i.ahy, label %bb.np, label %.thread74.i, !dbg !13957

bb.np:                                            ; preds = %bb.no
  fence acquire, !dbg !13958
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkConfigInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ac) #32
          to label %.thread74.i unwind label %bb.pc, !dbg !13959, !noalias !12901

bb.nq:                                            ; preds = %bb.nn
  call void @llvm.experimental.noalias.scope.decl(metadata !12909), !dbg !13960
  call void @llvm.experimental.noalias.scope.decl(metadata !12910), !dbg !13960
  call void @llvm.experimental.noalias.scope.decl(metadata !12911), !dbg !13960
  %i.ahz = load ptr, ptr %i.ac, align 8, !dbg !13961, !alias.scope !12910, !noalias !12900, !nonnull !572, !noundef !572 ; 4 uses
  %i.aia = atomicrmw add ptr %i.ahz, i64 1 monotonic, align 8, !dbg !13962, !noalias !12916
  %i.aib = icmp slt i64 %i.aia, 0, !dbg !13963
  br i1 %i.aib, label %bb.ns, label %bb.nr, !dbg !13963

bb.nr:                                            ; preds = %bb.nq
  %i.aic = atomicrmw add ptr %i.ahz, i64 1 monotonic, align 8, !dbg !13964, !noalias !12916
  %i.aid = icmp slt i64 %i.aic, 0, !dbg !13965
  br i1 %i.aid, label %bb.nt, label %bb.nu, !dbg !13965

bb.ns:                                            ; preds = %bb.nq
  call void @llvm.trap(), !dbg !13966
  unreachable, !dbg !13966

bb.nt:                                            ; preds = %bb.nr
  call void @llvm.trap(), !dbg !13967
  unreachable, !dbg !13967

bb.nu:                                            ; preds = %bb.nr
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ac, i64 9, !dbg !13968
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ac, i64 84, !dbg !13969
  %i.aig = load i8, ptr %i.aif, align 4, !dbg !13969, !range !699, !alias.scope !12910, !noalias !12900, !noundef !572 ; 2 uses
  %i.aih = trunc nuw i8 %i.aig to i1, !dbg !13969
  %i.aii = getelementptr inbounds nuw i8, ptr %i.ac, i64 85, !dbg !13970
  %i.aij = load i8, ptr %i.aii, align 1, !dbg !13970, !alias.scope !12910, !noalias !12900
  %.sroa.512.0.i.i = select i1 %i.aih, i8 %i.aij, i8 undef, !dbg !13970
  %i.aik = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !13971
  %i.ail = load i8, ptr %i.aik, align 8, !dbg !13971, !alias.scope !12910, !noalias !12900, !noundef !572
  %.sroa.5.0..sroa_idx.i.i160 = getelementptr inbounds nuw i8, ptr %i.ad, i64 73, !dbg !13972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %.sroa.5.0..sroa_idx.i.i160, ptr noundef nonnull readonly align 1 dereferenceable(75) %i.aie, i64 75, i1 false), !dbg !13971, !alias.scope !12923, !noalias !12900
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ad, i64 64, !dbg !13972 ; 5 uses
  store ptr %i.ahz, ptr %i.aim, align 8, !dbg !13972, !alias.scope !12909, !noalias !12900
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 72, !dbg !13972
  store i8 %i.ail, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !13972, !alias.scope !12909, !noalias !12900
  %.sroa.6.0..sroa_idx.i.i161 = getelementptr inbounds nuw i8, ptr %i.ad, i64 148, !dbg !13972
  store i8 %i.aig, ptr %.sroa.6.0..sroa_idx.i.i161, align 4, !dbg !13972, !alias.scope !12909, !noalias !12900
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 149, !dbg !13972
  store i8 %.sroa.512.0.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 1, !dbg !13972, !alias.scope !12909, !noalias !12900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ab, i64 64, i1 false), !dbg !13972, !alias.scope !12924, !noalias !12900
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ad, i64 152, !dbg !13972 ; 5 uses
  store ptr %i.ahz, ptr %i.ain, align 8, !dbg !13972, !alias.scope !12909, !noalias !12900
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 160, !dbg !13972
  %.sroa.4.sroa.4.sroa.4.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 176, !dbg !13972
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !dbg !13972, !alias.scope !12909, !noalias !12900
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.sroa.4.sroa.4.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !dbg !13972, !alias.scope !12909, !noalias !12900
  %.sroa.4.sroa.4.sroa.5.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 184, !dbg !13972
  store i64 0, ptr %.sroa.4.sroa.4.sroa.5.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !dbg !13972, !alias.scope !12909, !noalias !12900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !13973, !noalias !12900
  call void @llvm.experimental.noalias.scope.decl(metadata !12925), !dbg !13950
  call void @llvm.experimental.noalias.scope.decl(metadata !12926), !dbg !13974
  call void @llvm.experimental.noalias.scope.decl(metadata !12927), !dbg !13975
  call void @llvm.experimental.noalias.scope.decl(metadata !12928), !dbg !13976
  call void @llvm.experimental.noalias.scope.decl(metadata !12929), !dbg !13977
  %i.aio = load ptr, ptr %i.ac, align 8, !dbg !13978, !alias.scope !12930, !noalias !12900, !nonnull !572, !noundef !572
  %i.aip = atomicrmw add ptr %i.aio, i64 -1 release, align 8, !dbg !13979, !noalias !12931
  %i.aiq = icmp eq i64 %i.aip, 1, !dbg !13980
  br i1 %i.aiq, label %bb.nv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path18PathPrinterBuilderECs2NzvFoTxuAy_2rg.exit35.i, !dbg !13980

bb.nv:                                            ; preds = %bb.nu
  fence acquire, !dbg !13981
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkConfigInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ac) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path18PathPrinterBuilderECs2NzvFoTxuAy_2rg.exit35.i unwind label %bb.nw, !dbg !13982, !noalias !12901

.body.i163:                                       ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i46.i, %bb.ou, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i170, %bb.og, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEBF_.exit.i162, %bb.nw
  %.sroa.010.2.i = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEBF_.exit.i162 ], [ false, %bb.og ], [ true, %bb.nw ], [ false, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i170 ], [ false, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i46.i ], [ false, %bb.ou ], !dbg !13983
  %.pn20.i = phi { ptr, i32 } [ %.pn18.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEBF_.exit.i162 ], [ %i.ajl, %bb.og ], [ %i.air, %bb.nw ], [ %i.ajl, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i170 ], [ %i.akw, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i46.i ], [ %i.akw, %bb.ou ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer4path11PathPrinterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(192) %i.ad) #33
          to label %bb.nm unwind label %bb.pc, !dbg !13984, !noalias !12901

bb.nw:                                            ; preds = %bb.nv
  %i.air = landingpad { ptr, i32 }
          cleanup
  br label %.body.i163

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path18PathPrinterBuilderECs2NzvFoTxuAy_2rg.exit35.i: ; preds = %bb.nv, %bb.nu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !13950, !noalias !12900
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aht) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ahu) ]
  %i.ais = getelementptr inbounds nuw i8, ptr %i.ahu, i64 24
  %i.ait = load ptr, ptr %i.ais, align 8, !invariant.load !572, !noalias !12901, !nonnull !572 ; 3 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.hd, i64 931
  %i.aiv = load i8, ptr %i.aiu, align 1, !range !699, !alias.scope !12899
  %.fr104.i = freeze i8 %i.aiv
  %i.aiw = trunc i8 %.fr104.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !13985, !noalias !12900
  br i1 %i.aiw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path18PathPrinterBuilderECs2NzvFoTxuAy_2rg.exit35.split.us.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path18PathPrinterBuilderECs2NzvFoTxuAy_2rg.exit35.split.preheader.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path18PathPrinterBuilderECs2NzvFoTxuAy_2rg.exit35.split.preheader.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path18PathPrinterBuilderECs2NzvFoTxuAy_2rg.exit35.i
  invoke void %i.ait(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.aa, ptr noundef nonnull %i.aht)
          to label %bb.nx unwind label %.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13986, !noalias !12901

bb.nx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path18PathPrinterBuilderECs2NzvFoTxuAy_2rg.exit35.split.preheader.i
  %i.aix = load i64, ptr %i.aa, align 8, !dbg !13985, !range !694, !noalias !12900, !noundef !572
  %.not.peel.i = icmp eq i64 %i.aix, -1, !dbg !13985
  br i1 %.not.peel.i, label %.loopexit92.i, label %bb.ny, !dbg !13985

bb.ny:                                            ; preds = %bb.nx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !13987, !noalias !12900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.z, ptr noundef nonnull align 8 dereferenceable(120) %i.aa, i64 120, i1 false), !dbg !13987, !noalias !12900
  %i.aiy = invoke { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.z)
          to label %bb.nz unwind label %.loopexit.split-lp95.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13988, !noalias !12901 ; 2 uses

bb.nz:                                            ; preds = %bb.ny
  %i.aiz = extractvalue { ptr, i64 } %i.aiy, 0, !dbg !13989
  %i.aja = extractvalue { ptr, i64 } %i.aiy, 1, !dbg !13989
  %i.ajb = invoke noundef ptr @_RNvMs0_NtCshhHc5tDBDRu_12grep_printer4pathINtB5_11PathPrinterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aiz, i64 noundef %i.aja)
          to label %bb.oa unwind label %.loopexit.split-lp95.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13990, !noalias !12901 ; 2 uses

bb.oa:                                            ; preds = %bb.nz
  %.not16.peel.i = icmp eq ptr %i.ajb, null, !dbg !13991
  br i1 %.not16.peel.i, label %.invoke.i175, label %.loopexit.i165, !dbg !13992

.invoke.i175:                                     ; preds = %bb.oa, %bb.oi
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore4walk8DirEntryECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path18PathPrinterBuilderECs2NzvFoTxuAy_2rg.exit35.split.i unwind label %.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13993, !noalias !12901

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path18PathPrinterBuilderECs2NzvFoTxuAy_2rg.exit35.split.us.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path18PathPrinterBuilderECs2NzvFoTxuAy_2rg.exit35.i
  invoke void %i.ait(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.aa, ptr noundef nonnull %i.aht)
          to label %bb.ob unwind label %.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13986, !noalias !12901

bb.ob:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path18PathPrinterBuilderECs2NzvFoTxuAy_2rg.exit35.split.us.i
  %i.ajc = load i64, ptr %i.aa, align 8, !dbg !13985, !range !694, !noalias !12900, !noundef !572
  %.not.us.i = icmp eq i64 %i.ajc, -1, !dbg !13985
  br i1 %.not.us.i, label %.loopexit92.i, label %.loopexit93.split.us.i, !dbg !13985

.loopexit93.split.us.i:                           ; preds = %bb.ob
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !13987, !noalias !12900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.z, ptr noundef nonnull align 8 dereferenceable(120) %i.aa, i64 120, i1 false), !dbg !13987, !noalias !12900
  br label %bb.pa, !dbg !13994

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path18PathPrinterBuilderECs2NzvFoTxuAy_2rg.exit35.split.i: ; preds = %.invoke.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !13995, !noalias !12900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !13995, !noalias !12900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !13985, !noalias !12900
  invoke void %i.ait(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.aa, ptr noundef nonnull %i.aht)
          to label %bb.oc unwind label %.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13986, !noalias !12901

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEBF_.exit.i162: ; preds = %.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp95.i
  %.pn18.i = phi { ptr, i32 } [ %.pn.i164, %.loopexit.split-lp95.i ], [ %lpad.loopexit.split-lp937, %.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEL_EEB20_(ptr nonnull %i.aht, ptr nonnull %i.ahu) #33
          to label %.body.i163 unwind label %bb.pc, !dbg !13996, !noalias !12901

.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path18PathPrinterBuilderECs2NzvFoTxuAy_2rg.exit35.split.i, %.invoke.i175, %bb.pa, %bb.or, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path18PathPrinterBuilderECs2NzvFoTxuAy_2rg.exit35.split.us.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path18PathPrinterBuilderECs2NzvFoTxuAy_2rg.exit35.split.preheader.i
  %lpad.loopexit.split-lp937 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEBF_.exit.i162

bb.oc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path18PathPrinterBuilderECs2NzvFoTxuAy_2rg.exit35.split.i
  %i.ajd = load i64, ptr %i.aa, align 8, !dbg !13985, !range !694, !noalias !12900, !noundef !572
  %.not.i176 = icmp eq i64 %i.ajd, -1, !dbg !13985
  br i1 %.not.i176, label %.loopexit92.i, label %bb.od, !dbg !13985

bb.od:                                            ; preds = %bb.oc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !13987, !noalias !12900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.z, ptr noundef nonnull align 8 dereferenceable(120) %i.aa, i64 120, i1 false), !dbg !13987, !noalias !12900
  %i.aje = invoke { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.z)
          to label %bb.oh unwind label %.loopexit.split-lp95.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13988, !noalias !12901 ; 2 uses

.loopexit92.i:                                    ; preds = %bb.oc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEBF_.exit57.i, %bb.ob, %bb.nx
  %.sroa.06.1.i = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEBF_.exit57.i ], [ 0, %bb.ob ], [ 0, %bb.nx ], [ 1, %bb.oc ], !dbg !13997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !13995, !noalias !12900
  %i.ajf = load ptr, ptr %i.ahu, align 8, !dbg !13998, !invariant.load !572, !noalias !12901 ; 2 uses
  %.not.i.i169 = icmp eq ptr %i.ajf, null, !dbg !13998
  br i1 %.not.i.i169, label %bb.of, label %bb.oe, !dbg !13998

bb.oe:                                            ; preds = %.loopexit92.i
  invoke void %i.ajf(ptr noundef nonnull %i.aht)
          to label %bb.of unwind label %bb.og, !dbg !13998, !noalias !12901

bb.of:                                            ; preds = %bb.oe, %.loopexit92.i
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8, !dbg !13999
  %i.ajh = load i64, ptr %i.ajg, align 8, !dbg !13999, !range !661, !invariant.load !572, !noalias !12901 ; 2 uses
  %i.aji = icmp eq i64 %i.ajh, 0, !dbg !14000
  br i1 %i.aji, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEL_EEB20_.exit.i172, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i171, !dbg !14000

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i171: ; preds = %bb.of
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ahu, i64 16, !dbg !13999
  %i.ajk = load i64, ptr %i.ajj, align 8, !dbg !14001, !range !690, !invariant.load !572, !noalias !12901
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aht, i64 noundef %i.ajh, i64 noundef range(i64 1, -9223372036854775807) %i.ajk) #26, !dbg !14002, !noalias !12901
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEL_EEB20_.exit.i172, !dbg !14003

bb.og:                                            ; preds = %bb.oe
  %i.ajl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8, !dbg !14004
  %i.ajn = load i64, ptr %i.ajm, align 8, !dbg !14004, !range !661, !invariant.load !572, !noalias !12901 ; 2 uses
  %i.ajo = icmp eq i64 %i.ajn, 0, !dbg !14005
  br i1 %i.ajo, label %.body.i163, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i170, !dbg !14005

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i170: ; preds = %bb.og
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ahu, i64 16, !dbg !14004
  %i.ajq = load i64, ptr %i.ajp, align 8, !dbg !14006, !range !690, !invariant.load !572, !noalias !12901
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aht, i64 noundef %i.ajn, i64 noundef range(i64 1, -9223372036854775807) %i.ajq) #26, !dbg !14007, !noalias !12901
  br label %.body.i163, !dbg !14008

.loopexit.split-lp95.i:                           ; preds = %.loopexit.split-lp95.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.pb
  %.pn.i164 = phi { ptr, i32 } [ %lpad.thr_comm86.i, %bb.pb ], [ %lpad.loopexit.split-lp940, %.loopexit.split-lp95.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore4walk8DirEntryECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEBF_.exit.i162 unwind label %bb.pc, !dbg !14009, !noalias !12901

bb.oh:                                            ; preds = %bb.od
  %i.ajr = extractvalue { ptr, i64 } %i.aje, 0, !dbg !13989
  %i.ajs = extractvalue { ptr, i64 } %i.aje, 1, !dbg !13989
  %i.ajt = invoke noundef ptr @_RNvMs0_NtCshhHc5tDBDRu_12grep_printer4pathINtB5_11PathPrinterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ajr, i64 noundef %i.ajs)
          to label %bb.oi unwind label %.loopexit.split-lp95.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13990, !noalias !12901 ; 2 uses

bb.oi:                                            ; preds = %bb.oh
  %.not16.i = icmp eq ptr %i.ajt, null, !dbg !13991
  br i1 %.not16.i, label %.invoke.i175, label %.loopexit.i165, !dbg !13992

.loopexit.i165:                                   ; preds = %bb.oi, %bb.oa
  %.lcssa.i = phi ptr [ %i.ajb, %bb.oa ], [ %i.ajt, %bb.oi ], !dbg !13990 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !14010, !noalias !12900
  store ptr %.lcssa.i, ptr %i.y, align 8, !dbg !14010, !noalias !12900
  %i.aju = ptrtoint ptr %.lcssa.i to i64, !dbg !14011 ; 4 uses
  %i.ajv = and i64 %i.aju, 3, !dbg !14012         ; 2 uses
  switch i64 %i.ajv, label %default.unreachable584 [
    i64 2, label %bb.oj
    i64 3, label %bb.ok
    i64 0, label %bb.ol
    i64 1, label %bb.om
  ], !dbg !14013, !prof !681

bb.oj:                                            ; preds = %.loopexit.i165
  %i.ajw = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc37.i unwind label %bb.pb, !dbg !14014, !noalias !12901

.noexc37.i:                                       ; preds = %bb.oj
  %i.ajx = lshr i64 %i.aju, 32, !dbg !14015
  %i.ajy = trunc nuw i64 %i.ajx to i32, !dbg !14015
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajw, i64 8, !dbg !14016
  %i.aka = load ptr, ptr %i.ajz, align 8, !dbg !14016, !noalias !12901, !nonnull !572, !noundef !572
  %i.akb = invoke noundef i8 %i.aka(i32 noundef %i.ajy)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i166 unwind label %bb.pb, !dbg !14016, !noalias !12901, !inline_history !794

bb.ok:                                            ; preds = %.loopexit.i165
  %i.akc = lshr i64 %i.aju, 32, !dbg !14017
  %i.akd = icmp ult ptr %.lcssa.i, inttoptr (i64 188978561024 to ptr), !dbg !14018
  %switch.idx.cast.i.i.i.i174 = trunc i64 %i.akc to i8 ; 2 uses
  %i.ake = icmp ne i8 %switch.idx.cast.i.i.i.i174, -1, !dbg !14019
  call void @llvm.assume(i1 %i.akd), !dbg !14020
  call void @llvm.assume(i1 %i.ake), !dbg !14020
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i166, !dbg !14021

bb.ol:                                            ; preds = %.loopexit.i165
  %i.akf = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16, !dbg !14022
  %i.akg = load i8, ptr %i.akf, align 8, !dbg !14022, !range !795, !noalias !12901, !noundef !572
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i166, !dbg !14023

bb.om:                                            ; preds = %.loopexit.i165
  %i.akh = getelementptr i8, ptr %.lcssa.i, i64 31, !dbg !14024
  %i.aki = load i8, ptr %i.akh, align 8, !dbg !14024, !range !795, !noalias !12901, !noundef !572
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i166, !dbg !14025

.loopexit.split-lp95.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.oh, %bb.od, %bb.oq, %bb.on, %bb.nz, %bb.ny
  %lpad.loopexit.split-lp940 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp95.i

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i166: ; preds = %bb.om, %bb.ol, %bb.ok, %.noexc37.i
  %.sroa.0.0.i.i167 = phi i8 [ %i.aki, %bb.om ], [ %switch.idx.cast.i.i.i.i174, %bb.ok ], [ %i.akg, %bb.ol ], [ %i.akb, %.noexc37.i ], !dbg !14026
  %i.akj = icmp eq i8 %.sroa.0.0.i.i167, 11, !dbg !14027
  br i1 %i.akj, label %bb.oo, label %bb.on, !dbg !14028

bb.on:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i166
  %i.akk = invoke noundef nonnull ptr @_RNvXs_NtCseNfSUspcXaQ_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCs2NzvFoTxuAy_2rg(ptr noundef nonnull %.lcssa.i)
          to label %bb.or unwind label %.loopexit.split-lp95.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14029, !noalias !12901

bb.oo:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !14030, !noalias !12933
  switch i64 %i.ajv, label %default.unreachable584 [
    i64 2, label %bb.oz
    i64 3, label %bb.op
    i64 0, label %bb.oz
    i64 1, label %bb.oq
  ], !dbg !14031, !prof !681

bb.op:                                            ; preds = %bb.oo
end_hunk_2
