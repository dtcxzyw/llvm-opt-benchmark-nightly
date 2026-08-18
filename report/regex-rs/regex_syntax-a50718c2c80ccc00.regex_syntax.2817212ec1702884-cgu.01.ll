inline.NumInlined: 396
inline.NumDeleted: 155
begin_hunk_0_@_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3Hir6concat:bb.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs3roNzt6HBWW_12regex_syntax.exit.i: ; preds = %bb.d
    #dbg_value(ptr %i.v, !1135, !DIExpression(), !4515)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs3roNzt6HBWW_12regex_syntax.exit.thread335 unwind label %bb.bm, !dbg !4517

bb.g:                                             ; preds = %.invoke, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, %bb.h
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1t_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1t_.exit230: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !4518
    #dbg_value(ptr %i.v, !4519, !DIExpression(), !4525)
    #dbg_value(ptr %i.v, !4527, !DIExpression(), !4532)
  %.sroa.035.0.copyload = load i64, ptr %i.v, align 8, !dbg !4535 ; 2 uses
  store i64 -1, ptr %i.v, align 8, !dbg !4536
  %.not188 = icmp eq i64 %.sroa.035.0.copyload, -1, !dbg !4537
  br i1 %.not188, label %thread-pre-split, label %bb.h, !dbg !4538

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1t_.exit230
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !4535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !4281
  store i64 %.sroa.035.0.copyload, ptr %i.f, align 8, !dbg !4281
  %.sroa.537.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !4281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.537.0..sroa_idx38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.537.0..sroa_idx, i64 16, i1 false), !dbg !4281
    #dbg_value(ptr %i.w, !4270, !DIExpression(), !4539)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !4540
  invoke fastcc void @_RINvMs3_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_3Hir7literalINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB8_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.j unwind label %bb.g, !dbg !4540

thread-pre-split:                                 ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1t_.exit230
  %.pr = load i64, ptr %i.y, align 8, !dbg !4541
  br label %bb.i, !dbg !4547

bb.i:                                             ; preds = %thread-pre-split, %bb.n
  %i.ay = phi i64 [ %.pr, %thread-pre-split ], [ %i.bh, %bb.n ], !dbg !4541 ; 3 uses
    #dbg_value(ptr %i.w, !4545, !DIExpression(), !4548)
    #dbg_value(ptr %i.w, !4226, !DIExpression(), !4549)
  %i.az = icmp ult i64 %i.ay, 192153584101141163, !dbg !4550
  call void @llvm.assume(i1 %i.az), !dbg !4551
  switch i64 %i.ay, label %bb.p [
    i64 0, label %bb.o
    i64 1, label %bb.ac
  ], !dbg !4552

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.w, !3820, !DIExpression(), !4553)
    #dbg_value(ptr %i.w, !3833, !DIExpression(), !4555)
    #dbg_declare(ptr %i.e, !3826, !DIExpression(), !4557)
    #dbg_declare(ptr poison, !3842, !DIExpression(), !4558)
    #dbg_value(i64 48, !3850, !DIExpression(), !4560)
  %i.ba = load i64, ptr %i.y, align 8, !dbg !4563, !alias.scope !4564, !noalias !4567, !noundef !15 ; 3 uses
    #dbg_value(i64 %i.ba, !3827, !DIExpression(), !4569)
    #dbg_value(i64 %i.ba, !3867, !DIExpression(), !4570)
    #dbg_value(ptr %i.w, !3858, !DIExpression(), !4572)
  %i.bb = load i64, ptr %i.w, align 8, !dbg !4573, !range !2731, !alias.scope !4564, !noalias !4567, !noundef !15
  %i.bc = icmp eq i64 %i.ba, %i.bb, !dbg !4574
  br i1 %i.bc, label %bb.k, label %bb.n, !dbg !4574

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.n unwind label %bb.l, !dbg !4575, !noalias !4567, !inline_history !3877

bb.l:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e) #26
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1t_.exit unwind label %bb.m, !dbg !4576, !inline_history !3877

bb.m:                                             ; preds = %bb.l
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !4577, !inline_history !3877
  unreachable, !dbg !4577

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.bf = load ptr, ptr %i.x, align 8, !dbg !4578, !alias.scope !4564, !noalias !4567, !nonnull !15, !noundef !15
    #dbg_value(ptr %i.bf, !3870, !DIExpression(), !4570)
  %i.bg = getelementptr inbounds nuw [48 x i8], ptr %i.bf, i64 %i.ba, !dbg !4582
    #dbg_value(ptr %i.bg, !3829, !DIExpression(), !4583)
    #dbg_value(ptr %i.bg, !3847, !DIExpression(), !4584)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !dbg !4585
  %i.bh = add i64 %i.ba, 1, !dbg !4586            ; 2 uses
  store i64 %i.bh, ptr %i.y, align 8, !dbg !4586, !alias.scope !4564, !noalias !4567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !4587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !4547
  br label %bb.i, !dbg !4588

bb.o:                                             ; preds = %bb.i
    #dbg_value(i64 1, !892, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4589)
    #dbg_value(i64 1, !765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4596)
    #dbg_value(i64 0, !892, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4589)
    #dbg_value(i64 0, !765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4596)
    #dbg_value(i64 1, !892, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4589)
    #dbg_value(i64 1, !765, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4596)
    #dbg_value(i64 0, !892, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4589)
    #dbg_value(i64 0, !765, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4596)
    #dbg_value(i32 0, !892, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !4589)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !4596)
    #dbg_value(i32 0, !892, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !4589)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !4596)
    #dbg_value(i32 0, !892, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !4589)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !4596)
    #dbg_value(i32 0, !892, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !4589)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !4596)
    #dbg_value(i32 0, !892, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !4589)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !4596)
    #dbg_value(i8 1, !892, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !4589)
    #dbg_value(i8 1, !765, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !4596)
    #dbg_value(i64 0, !892, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !4589)
    #dbg_value(i64 0, !765, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !4596)
    #dbg_value(i64 1, !892, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !4589)
    #dbg_value(i64 1, !765, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !4596)
    #dbg_value(i64 0, !892, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !4589)
    #dbg_value(i64 0, !765, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !4596)
    #dbg_value(i8 0, !892, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !4589)
    #dbg_value(i8 0, !765, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !4596)
    #dbg_value(i8 0, !892, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !4589)
    #dbg_value(i8 0, !765, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !4596)
    #dbg_value(i64 8, !781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4598)
    #dbg_value(i64 8, !803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4600)
    #dbg_value(i64 8, !831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4602)
    #dbg_value(i64 80, !781, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4598)
    #dbg_value(i64 80, !803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4600)
    #dbg_value(i64 80, !831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4602)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !828, !DIExpression(), !4600)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !837, !DIExpression(), !4602)
    #dbg_value(i8 0, !838, !DIExpression(), !4602)
    #dbg_value(i64 8, !841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4604)
    #dbg_value(i64 8, !877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4606)
    #dbg_value(i64 80, !841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4604)
    #dbg_value(i64 80, !877, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4606)
    #dbg_value(i1 false, !847, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4604)
    #dbg_value(i64 80, !848, !DIExpression(), !4608)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !4609, !noalias !4610
  %i.bi = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 1, 81) 80, i64 noundef range(i64 1, 9) 8) #23, !dbg !4613, !noalias !4610 ; 11 uses
  %i.bj = icmp eq ptr %i.bi, null, !dbg !4614
  br i1 %i.bj, label %.invoke, label %bb.an, !dbg !4615, !prof !890

bb.p:                                             ; preds = %bb.i
    #dbg_value(ptr %i.w, !4616, !DIExpression(), !4619)
    #dbg_value(ptr %i.w, !4621, !DIExpression(), !4624)
    #dbg_value(ptr %i.w, !4626, !DIExpression(), !4629)
  %i.bk = load ptr, ptr %i.x, align 8, !dbg !4631, !nonnull !15, !noundef !15 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4641), !dbg !4644
    #dbg_value(ptr poison, !4645, !DIExpression(), !4649)
    #dbg_value(ptr poison, !4709, !DIExpression(), !4724)
    #dbg_value(ptr poison, !4709, !DIExpression(), !4726)
    #dbg_value(ptr %i.bk, !4686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4729)
    #dbg_value(ptr %i.bk, !4730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4733)
    #dbg_value(ptr %i.bk, !4735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4756)
    #dbg_value(ptr %i.bk, !4730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4758)
    #dbg_value(ptr %i.bk, !4735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4760)
    #dbg_value(ptr %i.bk, !4730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4763)
    #dbg_value(ptr %i.bk, !4735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4765)
    #dbg_value(i64 %i.ay, !4686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4729)
    #dbg_value(i64 %i.ay, !4730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4733)
    #dbg_value(i64 %i.ay, !4735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4756)
    #dbg_value(i64 %i.ay, !4730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4758)
    #dbg_value(i64 %i.ay, !4735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4760)
    #dbg_value(i64 %i.ay, !4730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4763)
    #dbg_value(i64 %i.ay, !4735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4765)
    #dbg_value(i64 1, !4768, !DIExpression(), !4772)
    #dbg_value(i64 1, !4768, !DIExpression(), !4774)
    #dbg_value(i64 1, !4687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4777)
    #dbg_value(i64 0, !4687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4777)
    #dbg_value(i64 1, !4687, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4777)
    #dbg_value(i64 0, !4687, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4777)
    #dbg_value(i32 0, !4687, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !4777)
    #dbg_value(i32 0, !4687, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !4777)
    #dbg_value(i32 0, !4687, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !4777)
    #dbg_value(i32 0, !4687, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !4777)
    #dbg_value(i32 0, !4687, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !4777)
    #dbg_value(i8 1, !4687, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !4777)
    #dbg_value(i64 0, !4687, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !4777)
    #dbg_value(i64 1, !4687, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !4777)
    #dbg_value(i64 0, !4687, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !4777)
    #dbg_value(i8 1, !4687, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !4777)
    #dbg_value(i8 1, !4687, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !4777)
    #dbg_value(i64 %i.ay, !4738, !DIExpression(), !4778)
    #dbg_value(i64 %i.ay, !4779, !DIExpression(), !4783)
    #dbg_value(i64 %i.ay, !4779, !DIExpression(), !4785)
    #dbg_value(i64 %i.ay, !4779, !DIExpression(), !4788)
    #dbg_value(ptr %i.bk, !4740, !DIExpression(), !4791)
    #dbg_value(ptr %i.bk, !4782, !DIExpression(), !4783)
  %.idx.i = mul nuw nsw i64 %i.ay, 48, !dbg !4792
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i, !dbg !4792 ; 3 uses
    #dbg_value(ptr %i.bk, !4688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4793)
    #dbg_value(ptr %i.bl, !4688, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4793)
    #dbg_value(i64 1, !4687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4777)
    #dbg_value(i64 0, !4687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4777)
    #dbg_value(i64 1, !4687, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4777)
    #dbg_value(i64 0, !4687, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4777)
    #dbg_value(i64 1, !4687, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !4777)
    #dbg_value(i64 0, !4687, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !4777)
    #dbg_value(i64 0, !4687, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !4777)
    #dbg_value(i32 0, !4687, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !4777)
    #dbg_value(i8 1, !4687, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !4777)
    #dbg_value(i8 1, !4687, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !4777)
    #dbg_value(ptr undef, !4709, !DIExpression(), !4726)
    #dbg_value(ptr %i.bk, !4712, !DIExpression(), !4794)
    #dbg_value(ptr %i.bk, !4771, !DIExpression(), !4772)
    #dbg_value(ptr %i.bl, !4714, !DIExpression(), !4795)
    #dbg_value(ptr poison, !4645, !DIExpression(), !4796)
    #dbg_value(ptr poison, !4648, !DIExpression(), !4798)
  br label %.lr.ph.i, !dbg !4799

.lr.ph.i:                                         ; preds = %bb.aa, %bb.p
  %.sroa.0.0108.i = phi ptr [ %i.bm, %bb.aa ], [ %i.bk, %bb.p ] ; 2 uses
  %.sroa.51.0107.i = phi i8 [ %.sroa.010.0.i, %bb.aa ], [ 1, %bb.p ]
  %.sroa.088.0106.i = phi i64 [ %.sroa.088.1.i, %bb.aa ], [ 1, %bb.p ]
  %.sroa.7.0105.i = phi i64 [ %.sroa.7.1.i, %bb.aa ], [ 0, %bb.p ] ; 2 uses
  %.sroa.12.0104.i = phi i64 [ %.sroa.12.1.i, %bb.aa ], [ 1, %bb.p ]
  %.sroa.16.0103.i = phi i64 [ %.sroa.16.1.i, %bb.aa ], [ 0, %bb.p ] ; 3 uses
  %.sroa.21.0102.i = phi i1 [ %or.cond.i, %bb.aa ], [ true, %bb.p ]
  %.sroa.24.0101.i = phi i64 [ %.sroa.5.0.i, %bb.aa ], [ 0, %bb.p ]
  %.sroa.27.0100.i = phi i64 [ %i.bx, %bb.aa ], [ 0, %bb.p ]
  %.sroa.30.099.i = phi i32 [ %i.br, %bb.aa ], [ 0, %bb.p ]
  %.sroa.45.098.i = phi i8 [ %.sroa.02.0.i, %bb.aa ], [ 1, %bb.p ]
  %.sroa.48.097.i = phi i8 [ %.sroa.09.0.i, %bb.aa ], [ 1, %bb.p ]
    #dbg_value(i8 %.sroa.51.0107.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !4777)
    #dbg_value(i64 %.sroa.088.0106.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4777)
    #dbg_value(i64 %.sroa.7.0105.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4777)
    #dbg_value(i64 %.sroa.12.0104.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4777)
    #dbg_value(i64 %.sroa.16.0103.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4777)
    #dbg_value(i64 poison, !4687, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !4777)
    #dbg_value(i64 %.sroa.24.0101.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !4777)
    #dbg_value(i64 %.sroa.27.0100.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !4777)
    #dbg_value(i32 %.sroa.30.099.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !4777)
    #dbg_value(i8 %.sroa.45.098.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !4777)
    #dbg_value(i8 %.sroa.48.097.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !4777)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0108.i, i64 48, !dbg !4800 ; 2 uses
    #dbg_value(ptr %i.bm, !4688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4793)
    #dbg_value(ptr %.sroa.0.0108.i, !4690, !DIExpression(), !4801)
    #dbg_value(ptr %.sroa.0.0108.i, !4692, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !4802)
    #dbg_value(ptr %.sroa.0.0108.i, !4803, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !4809)
    #dbg_value(ptr %.sroa.0.0108.i, !4811, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !4817)
    #dbg_value(ptr %.sroa.0.0108.i, !4819, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !4825)
    #dbg_value(ptr %.sroa.0.0108.i, !4827, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !4833)
    #dbg_value(ptr %.sroa.0.0108.i, !4835, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !4839)
    #dbg_value(ptr %.sroa.0.0108.i, !4841, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !4845)
    #dbg_value(ptr %.sroa.0.0108.i, !4847, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !4851)
    #dbg_value(ptr %.sroa.0.0108.i, !4853, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !4857)
    #dbg_value(ptr undef, !4859, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !4867)
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0108.i, i64 40, !dbg !4869
  %i.bo = load ptr, ptr %i.bn, align 8, !dbg !4869, !alias.scope !4641, !nonnull !15, !noundef !15 ; 11 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56, !dbg !4869
  %i.bq = load i32, ptr %i.bp, align 8, !dbg !4869, !noalias !4641, !noundef !15
    #dbg_value(i32 %i.bq, !4866, !DIExpression(), !4870)
    #dbg_value(i32 %i.bq, !4871, !DIExpression(), !4878)
    #dbg_value(i32 %.sroa.30.099.i, !4877, !DIExpression(), !4878)
  %i.br = or i32 %i.bq, %.sroa.30.099.i, !dbg !4880 ; 2 uses
    #dbg_value(i32 %i.br, !4687, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !4777)
  %i.bs = trunc nuw i8 %.sroa.45.098.i to i1, !dbg !4799
  br i1 %i.bs, label %bb.q, label %bb.r, !dbg !4799

bb.q:                                             ; preds = %.lr.ph.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 76, !dbg !4881
  %i.bu = load i8, ptr %i.bt, align 4, !dbg !4881, !range !4882, !noalias !4641, !noundef !15
  br label %bb.r, !dbg !4799

bb.r:                                             ; preds = %bb.q, %.lr.ph.i
  %.sroa.02.0.i = phi i8 [ %i.bu, %bb.q ], [ 0, %.lr.ph.i ], !dbg !4883 ; 2 uses
    #dbg_value(i8 %.sroa.02.0.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !4777)
    #dbg_value(i64 %.sroa.27.0100.i, !4884, !DIExpression(), !4892)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 48, !dbg !4894
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !4894, !noalias !4641, !noundef !15
    #dbg_value(i64 %i.bw, !4891, !DIExpression(), !4892)
  %i.bx = call i64 @llvm.uadd.sat.i64(i64 %.sroa.27.0100.i, i64 %i.bw), !dbg !4895 ; 2 uses
    #dbg_value(i64 %i.bx, !4687, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !4777)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 32, !dbg !4896
  %i.bz = load i64, ptr %i.by, align 8, !dbg !4896, !range !763, !noalias !4641, !noundef !15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 40, !dbg !4896
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !4896, !noalias !4641
    #dbg_value(i64 %i.bz, !4897, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4932)
    #dbg_value(i64 %i.cb, !4897, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4932)
    #dbg_value(ptr undef, !4929, !DIExpression(), !4932)
  %i.cc = trunc nuw i64 %i.bz to i1, !dbg !4934
  %or.cond.i = select i1 %i.cc, i1 %.sroa.21.0102.i, i1 false, !dbg !4934 ; 3 uses
  %i.cd = call i64 @llvm.uadd.sat.i64(i64 %i.cb, i64 %.sroa.24.0101.i), !dbg !4934
  %.sroa.5.0.i = select i1 %or.cond.i, i64 %i.cd, i64 undef, !dbg !4934 ; 2 uses
    #dbg_value(i1 %or.cond.i, !4687, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64), !4777)
    #dbg_value(i64 %.sroa.5.0.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !4777)
  %i.ce = trunc nuw i8 %.sroa.48.097.i to i1, !dbg !4935
  br i1 %i.ce, label %bb.s, label %bb.t, !dbg !4935

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 77, !dbg !4936
  %i.cg = load i8, ptr %i.cf, align 1, !dbg !4936, !range !4882, !noalias !4641, !noundef !15
  br label %bb.t, !dbg !4935

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.09.0.i = phi i8 [ %i.cg, %bb.s ], [ 0, %bb.r ], !dbg !4937 ; 2 uses
    #dbg_value(i8 %.sroa.09.0.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !4777)
  %i.ch = trunc nuw i8 %.sroa.51.0107.i to i1, !dbg !4938
  br i1 %i.ch, label %bb.u, label %bb.v, !dbg !4938

bb.u:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 78, !dbg !4939
  %i.cj = load i8, ptr %i.ci, align 2, !dbg !4939, !range !4882, !noalias !4641, !noundef !15
  br label %bb.v, !dbg !4938

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.010.0.i = phi i8 [ %i.cj, %bb.u ], [ 0, %bb.t ], !dbg !4940 ; 2 uses
    #dbg_value(i8 %.sroa.010.0.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !4777)
  %i.ck = trunc nuw i64 %.sroa.088.0106.i to i1, !dbg !4941
  br i1 %i.ck, label %bb.w, label %bb.x, !dbg !4941

bb.w:                                             ; preds = %bb.v
    #dbg_value(i64 %.sroa.7.0105.i, !4695, !DIExpression(), !4942)
    #dbg_value(i64 %.sroa.7.0105.i, !4884, !DIExpression(), !4943)
  %i.cl = load i64, ptr %i.bo, align 8, !dbg !4945, !range !763, !noalias !4641, !noundef !15
  %i.cm = trunc nuw i64 %i.cl to i1, !dbg !4946
  br i1 %i.cm, label %bb.y, label %bb.x, !dbg !4946

bb.x:                                             ; preds = %bb.y, %bb.w, %bb.v
  %.sroa.7.1.i = phi i64 [ %.sroa.7.0105.i, %bb.v ], [ %i.cq, %bb.y ], [ undef, %bb.w ], !dbg !4729 ; 2 uses
  %.sroa.088.1.i = phi i64 [ 0, %bb.v ], [ 1, %bb.y ], [ 0, %bb.w ], !dbg !4729 ; 2 uses
    #dbg_value(i64 %.sroa.088.1.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4777)
    #dbg_value(i64 %.sroa.7.1.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4777)
  %i.cn = trunc nuw i64 %.sroa.12.0104.i to i1, !dbg !4947
  br i1 %i.cn, label %bb.z, label %bb.aa, !dbg !4947

bb.y:                                             ; preds = %bb.w
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 8, !dbg !4945
  %i.cp = load i64, ptr %i.co, align 8, !dbg !4945, !noalias !4641
    #dbg_value(i64 %i.cp, !4697, !DIExpression(), !4948)
    #dbg_value(i64 %i.cp, !4891, !DIExpression(), !4943)
  %i.cq = call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0105.i, i64 %i.cp), !dbg !4949
    #dbg_value(i64 1, !4687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4777)
    #dbg_value(i64 %i.cq, !4687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4777)
  br label %bb.x, !dbg !4950

bb.z:                                             ; preds = %bb.x
    #dbg_value(i64 %.sroa.16.0103.i, !4699, !DIExpression(), !4951)
    #dbg_value(i64 %.sroa.16.0103.i, !4952, !DIExpression(), !4958)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bo, i64 16, !dbg !4960
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !4960, !range !763, !noalias !4641, !noundef !15
  %i.ct = trunc nuw i64 %i.cs to i1, !dbg !4961
  br i1 %i.ct, label %bb.ab, label %bb.aa, !dbg !4961

bb.aa:                                            ; preds = %bb.ab, %bb.z, %bb.x
  %.sroa.16.1.i = phi i64 [ %.sroa.16.0103.i, %bb.x ], [ %i.cx, %bb.ab ], [ undef, %bb.z ], !dbg !4729 ; 2 uses
  %.sroa.12.1.i = phi i64 [ 0, %bb.x ], [ %..i, %bb.ab ], [ 0, %bb.z ], !dbg !4729 ; 2 uses
    #dbg_value(i8 %.sroa.010.0.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !4777)
    #dbg_value(i64 %.sroa.088.1.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4777)
    #dbg_value(i64 %.sroa.7.1.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4777)
    #dbg_value(i64 %.sroa.12.1.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4777)
    #dbg_value(i64 %.sroa.16.1.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4777)
    #dbg_value(i1 %or.cond.i, !4687, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64), !4777)
    #dbg_value(i64 %.sroa.5.0.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !4777)
    #dbg_value(i64 %i.bx, !4687, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !4777)
    #dbg_value(i32 %i.br, !4687, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !4777)
    #dbg_value(i8 %.sroa.02.0.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !4777)
    #dbg_value(i8 %.sroa.09.0.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !4777)
    #dbg_value(ptr %i.bm, !4688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4793)
    #dbg_value(ptr undef, !4709, !DIExpression(), !4726)
    #dbg_value(ptr %i.bm, !4712, !DIExpression(), !4794)
    #dbg_value(ptr %i.bm, !4771, !DIExpression(), !4772)
    #dbg_value(ptr %i.bl, !4714, !DIExpression(), !4795)
    #dbg_value(ptr poison, !4645, !DIExpression(), !4796)
    #dbg_value(ptr poison, !4648, !DIExpression(), !4798)
  %i.cu = icmp eq ptr %i.bm, %i.bl, !dbg !4962
  br i1 %i.cu, label %.lr.ph122.i, label %.lr.ph.i, !dbg !4963

bb.ab:                                            ; preds = %bb.z
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bo, i64 24, !dbg !4960
  %i.cw = load i64, ptr %i.cv, align 8, !dbg !4960, !noalias !4641
    #dbg_value(i64 %i.cw, !4701, !DIExpression(), !4964)
    #dbg_value(i64 %i.cw, !4957, !DIExpression(), !4958)
  %i.cx = add i64 %i.cw, %.sroa.16.0103.i, !dbg !4965 ; 2 uses
  %i.cy = icmp uge i64 %i.cx, %.sroa.16.0103.i, !dbg !4965
  %..i = zext i1 %i.cy to i64, !dbg !4966
    #dbg_value(i64 %..i, !4687, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4777)
    #dbg_value(i64 %i.cx, !4687, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4777)
  br label %bb.aa, !dbg !4967

.lr.ph122.i:                                      ; preds = %bb.aa, %.lr.ph122.i
  %.sroa.018.0121.i = phi ptr [ %i.dn, %.lr.ph122.i ], [ %i.bk, %bb.aa ] ; 2 uses
  %.sroa.33.0120.i = phi i32 [ %i.dd, %.lr.ph122.i ], [ 0, %bb.aa ]
  %.sroa.39.0119.i = phi i32 [ %i.dg, %.lr.ph122.i ], [ 0, %bb.aa ]
    #dbg_value(i32 %.sroa.33.0120.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !4777)
    #dbg_value(i32 %.sroa.39.0119.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !4777)
    #dbg_value(ptr %.sroa.018.0121.i, !4703, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4968)
    #dbg_value(ptr %.sroa.018.0121.i, !4704, !DIExpression(), !4969)
    #dbg_value(ptr undef, !4859, !DIExpression(DW_OP_plus_uconst, 60, DW_OP_stack_value), !4970)
    #dbg_value(ptr %.sroa.018.0121.i, !4972, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !4976)
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.018.0121.i, i64 40, !dbg !4978
  %i.da = load ptr, ptr %i.cz, align 8, !dbg !4978, !alias.scope !4641, !nonnull !15, !noundef !15 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 60, !dbg !4978
  %i.dc = load i32, ptr %i.db, align 4, !dbg !4978, !noalias !4641, !noundef !15
    #dbg_value(i32 %i.dc, !4866, !DIExpression(), !4979)
    #dbg_value(i32 %i.dc, !4871, !DIExpression(), !4980)
    #dbg_value(i32 %.sroa.33.0120.i, !4877, !DIExpression(), !4980)
  %i.dd = or i32 %i.dc, %.sroa.33.0120.i, !dbg !4983 ; 2 uses
    #dbg_value(i32 %i.dd, !4687, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !4777)
    #dbg_value(ptr undef, !4859, !DIExpression(DW_OP_plus_uconst, 68, DW_OP_stack_value), !4984)
    #dbg_value(ptr %.sroa.018.0121.i, !4986, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !4990)
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 68, !dbg !4992
  %i.df = load i32, ptr %i.de, align 4, !dbg !4992, !noalias !4641, !noundef !15
    #dbg_value(i32 %i.df, !4866, !DIExpression(), !4993)
    #dbg_value(i32 %i.df, !4871, !DIExpression(), !4994)
    #dbg_value(i32 %.sroa.39.0119.i, !4877, !DIExpression(), !4994)
  %i.dg = or i32 %i.df, %.sroa.39.0119.i, !dbg !4997 ; 2 uses
    #dbg_value(i32 %i.dg, !4687, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !4777)
    #dbg_value(ptr %.sroa.018.0121.i, !4853, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !4998)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 16, !dbg !5000
  %i.di = load i64, ptr %i.dh, align 8, !dbg !5000, !range !763, !noalias !4641, !noundef !15
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 24, !dbg !5000
  %i.dk = load i64, ptr %i.dj, align 8, !dbg !5000, !noalias !4641
    #dbg_value(i64 %i.di, !5001, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5014)
    #dbg_value(i64 %i.dk, !5001, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5014)
    #dbg_value(i1 true, !5010, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5014)
    #dbg_declare(ptr poison, !5011, !DIExpression(), !5016)
  %i.dl = trunc nuw i64 %i.di to i1, !dbg !5017
  %i.dm = icmp ne i64 %i.dk, 0
  %not..i = xor i1 %i.dl, true, !dbg !5018
  %spec.select.i.not.i = select i1 %not..i, i1 true, i1 %i.dm, !dbg !5018
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.018.0121.i, i64 48 ; 2 uses
    #dbg_value(i32 %i.dd, !4687, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !4777)
    #dbg_value(i32 %i.dg, !4687, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !4777)
    #dbg_value(ptr %i.dn, !4703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4968)
    #dbg_value(ptr undef, !4709, !DIExpression(), !4724)
    #dbg_value(ptr %i.dn, !4771, !DIExpression(), !4774)
    #dbg_value(ptr poison, !4645, !DIExpression(), !5019)
    #dbg_value(ptr poison, !4648, !DIExpression(), !5021)
  %i.do = icmp eq ptr %i.dn, %i.bl
  %or.cond153.i = select i1 %spec.select.i.not.i, i1 true, i1 %i.do, !dbg !5018
  br i1 %or.cond153.i, label %.lr.ph132.i, label %.lr.ph122.i, !dbg !5018

.lr.ph132.i:                                      ; preds = %.lr.ph122.i, %.lr.ph132.i
  %.sroa.4.0130.i = phi ptr [ %i.ed, %.lr.ph132.i ], [ %i.bl, %.lr.ph122.i ] ; 2 uses
  %.sroa.36.0129.i = phi i32 [ %i.dt, %.lr.ph132.i ], [ 0, %.lr.ph122.i ]
  %.sroa.42.0128.i = phi i32 [ %i.dw, %.lr.ph132.i ], [ 0, %.lr.ph122.i ]
    #dbg_value(i32 %.sroa.36.0129.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !4777)
    #dbg_value(i32 %.sroa.42.0128.i, !4687, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !4777)
    #dbg_value(ptr %.sroa.4.0130.i, !4706, !DIExpression(DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5022)
    #dbg_value(ptr %.sroa.4.0130.i, !4707, !DIExpression(DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value), !5023)
    #dbg_value(ptr undef, !4859, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !5024)
    #dbg_value(ptr %.sroa.4.0130.i, !5026, !DIExpression(DW_OP_constu, 48, DW_OP_minus, DW_OP_plus_uconst, 40, DW_OP_stack_value), !5030)
  %i.dp = getelementptr inbounds i8, ptr %.sroa.4.0130.i, i64 -8, !dbg !5032
  %i.dq = load ptr, ptr %i.dp, align 8, !dbg !5032, !alias.scope !4641, !nonnull !15, !noundef !15 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64, !dbg !5032
  %i.ds = load i32, ptr %i.dr, align 8, !dbg !5032, !noalias !4641, !noundef !15
    #dbg_value(i32 %i.ds, !4866, !DIExpression(), !5033)
    #dbg_value(i32 %i.ds, !4871, !DIExpression(), !5034)
    #dbg_value(i32 %.sroa.36.0129.i, !4877, !DIExpression(), !5034)
  %i.dt = or i32 %i.ds, %.sroa.36.0129.i, !dbg !5037 ; 2 uses
    #dbg_value(i32 %i.dt, !4687, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !4777)
    #dbg_value(ptr undef, !4859, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !5038)
    #dbg_value(ptr %.sroa.4.0130.i, !5040, !DIExpression(DW_OP_constu, 48, DW_OP_minus, DW_OP_plus_uconst, 40, DW_OP_stack_value), !5044)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 72, !dbg !5046
  %i.dv = load i32, ptr %i.du, align 8, !dbg !5046, !noalias !4641, !noundef !15
    #dbg_value(i32 %i.dv, !4866, !DIExpression(), !5047)
    #dbg_value(i32 %i.dv, !4871, !DIExpression(), !5048)
    #dbg_value(i32 %.sroa.42.0128.i, !4877, !DIExpression(), !5048)
  %i.dw = or i32 %i.dv, %.sroa.42.0128.i, !dbg !5051 ; 2 uses
    #dbg_value(i32 %i.dw, !4687, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !4777)
    #dbg_value(ptr %.sroa.4.0130.i, !4853, !DIExpression(DW_OP_constu, 48, DW_OP_minus, DW_OP_plus_uconst, 40, DW_OP_stack_value), !5052)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 16, !dbg !5054
  %i.dy = load i64, ptr %i.dx, align 8, !dbg !5054, !range !763, !noalias !4641, !noundef !15
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 24, !dbg !5054
  %i.ea = load i64, ptr %i.dz, align 8, !dbg !5054, !noalias !4641
    #dbg_value(i64 %i.dy, !5055, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5068)
    #dbg_value(i64 %i.ea, !5055, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5068)
    #dbg_value(i1 true, !5064, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5068)
    #dbg_declare(ptr poison, !5065, !DIExpression(), !5070)
  %i.eb = trunc nuw i64 %i.dy to i1, !dbg !5071
  %i.ec = icmp ne i64 %i.ea, 0
  %not.156.i = xor i1 %i.eb, true, !dbg !5072
  %spec.select.i93.not.i = select i1 %not.156.i, i1 true, i1 %i.ec, !dbg !5072
  %i.ed = getelementptr inbounds i8, ptr %.sroa.4.0130.i, i64 -48 ; 2 uses
    #dbg_value(ptr %i.ed, !4853, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !5052)
    #dbg_value(ptr %i.ed, !5040, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !5044)
    #dbg_value(ptr %i.ed, !4707, !DIExpression(), !5023)
    #dbg_value(ptr %i.ed, !5026, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !5030)
    #dbg_value(ptr %i.ed, !4706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5022)
    #dbg_value(i32 %i.dt, !4687, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !4777)
    #dbg_value(i32 %i.dw, !4687, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !4777)
    #dbg_value(ptr undef, !4645, !DIExpression(), !4649)
    #dbg_value(ptr poison, !4648, !DIExpression(), !5073)
  %i.ee = icmp eq ptr %i.bk, %i.ed
  %or.cond155.i = select i1 %spec.select.i93.not.i, i1 true, i1 %i.ee, !dbg !5072
  br i1 %or.cond155.i, label %._crit_edge133.i, label %.lr.ph132.i, !dbg !5072

._crit_edge133.i:                                 ; preds = %.lr.ph132.i
    #dbg_value(i32 %i.dt, !4687, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !4777)
    #dbg_value(i32 %i.dw, !4687, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !4777)
    #dbg_value(i64 %.sroa.088.1.i, !765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5074)
    #dbg_value(i64 %.sroa.7.1.i, !765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5074)
    #dbg_value(i64 %.sroa.12.1.i, !765, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5074)
    #dbg_value(i64 %.sroa.16.1.i, !765, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5074)
    #dbg_value(i1 %or.cond.i, !765, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64), !5074)
    #dbg_value(i64 %.sroa.5.0.i, !765, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !5074)
    #dbg_value(i64 %i.bx, !765, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !5074)
    #dbg_value(i32 %i.br, !765, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !5074)
    #dbg_value(i32 %i.dd, !765, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !5074)
    #dbg_value(i32 %i.dt, !765, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !5074)
    #dbg_value(i32 %i.dg, !765, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !5074)
    #dbg_value(i32 %i.dw, !765, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !5074)
    #dbg_value(i8 %.sroa.02.0.i, !765, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !5074)
    #dbg_value(i8 %.sroa.09.0.i, !765, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !5074)
    #dbg_value(i8 %.sroa.010.0.i, !765, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !5074)
    #dbg_value(i64 8, !781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5076)
    #dbg_value(i64 8, !803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5078)
    #dbg_value(i64 8, !831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5080)
    #dbg_value(i64 80, !781, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5076)
    #dbg_value(i64 80, !803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5078)
    #dbg_value(i64 80, !831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5080)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !828, !DIExpression(), !5078)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !837, !DIExpression(), !5080)
    #dbg_value(i8 0, !838, !DIExpression(), !5080)
    #dbg_value(i64 8, !841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5082)
    #dbg_value(i64 8, !877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5084)
    #dbg_value(i64 80, !841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5082)
    #dbg_value(i64 80, !877, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5084)
    #dbg_value(i1 false, !847, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5082)
    #dbg_value(i64 80, !848, !DIExpression(), !5086)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !5087, !noalias !5088
  %i.ef = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 1, 81) 80, i64 noundef range(i64 1, 9) 8) #23, !dbg !5091, !noalias !5088 ; 17 uses
  %i.eg = icmp eq ptr %i.ef, null, !dbg !5092
  br i1 %i.eg, label %.invoke, label %bb.ai, !dbg !5093, !prof !890

.invoke:                                          ; preds = %._crit_edge133.i, %bb.o
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #24
          to label %.cont unwind label %bb.g, !dbg !5094

.cont:                                            ; preds = %.invoke
  unreachable

bb.ac:                                            ; preds = %bb.i
    #dbg_value(ptr %i.w, !4429, !DIExpression(), !5095)
    #dbg_value(ptr %i.w, !4425, !DIExpression(), !5096)
    #dbg_value(ptr %i.w, !4626, !DIExpression(), !5097)
    #dbg_value(ptr %i.w, !4226, !DIExpression(), !5099)
  store i64 0, ptr %i.y, align 8, !dbg !5101
    #dbg_value(i64 poison, !4460, !DIExpression(), !5102)
    #dbg_value(i1 true, !5105, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5108)
  %i.eh = load ptr, ptr %i.x, align 8, !dbg !5110, !nonnull !15, !noundef !15 ; 2 uses
    #dbg_value(ptr %i.eh, !5116, !DIExpression(), !5119)
  %.sroa.066.0.copyload = load i64, ptr %i.eh, align 8, !dbg !5121
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 8, !dbg !5121
  %.sroa.541.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.541.0..sroa_idx42, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.467.0..sroa_idx, i64 40, i1 false), !dbg !5121
    #dbg_value(i64 %.sroa.066.0.copyload, !4239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5123)
  store i64 %.sroa.066.0.copyload, ptr %0, align 8, !dbg !5122
  br label %bb.ae, !dbg !5124

bb.ad:                                            ; preds = %bb.cs, %bb.bc
  unreachable

bb.ae:                                            ; preds = %bb.an, %bb.ac
    #dbg_value(ptr %i.v, !4494, !DIExpression(), !5126)
  %i.ei = load i64, ptr %i.v, align 8, !dbg !5128, !range !4505, !alias.scope !5129, !noundef !15
  %i.ej = icmp eq i64 %i.ei, -1, !dbg !5128
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3Hir6concat:bb.a
bb.av:                                            ; preds = %.noexc254
    #dbg_value(ptr %i.fa, !5300, !DIExpression(), !5302)
  %i.fj = load ptr, ptr %.sroa.529.0..sroa_idx, align 8, !dbg !5319, !alias.scope !5306, !nonnull !15, !noundef !15
    #dbg_value(ptr %i.fj, !5313, !DIExpression(), !5314)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fh, !dbg !5326
    #dbg_value(ptr %i.fk, !5301, !DIExpression(), !5302)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fk, ptr nonnull readonly align 1 %i.fa, i64 %i.fb, i1 false), !dbg !5327
  %.pre.i = load i64, ptr %i.ak, align 8, !dbg !5328, !alias.scope !5306
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs3roNzt6HBWW_12regex_syntax.exit, !dbg !5329

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs3roNzt6HBWW_12regex_syntax.exit: ; preds = %.noexc254, %bb.av
  %i.fl = phi i64 [ %.pre.i, %bb.av ], [ %i.fh, %.noexc254 ], !dbg !5328
  %i.fm = add i64 %i.fl, %i.fb, !dbg !5328
  br label %bb.az, !dbg !5330

bb.aw:                                            ; preds = %bb.as
    #dbg_value(ptr %i.fa, !4303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5331)
    #dbg_value(ptr %i.fa, !4296, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5332)
    #dbg_value(ptr %i.fa, !4310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5333)
    #dbg_value(i64 %i.fb, !4303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5331)
    #dbg_value(i64 %i.fb, !4296, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5332)
    #dbg_value(i64 %i.fb, !4310, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5333)
    #dbg_value(i64 %i.fb, !4311, !DIExpression(), !5334)
    #dbg_value(i64 %i.fb, !4327, !DIExpression(), !5335)
    #dbg_value(i64 %i.fb, !4336, !DIExpression(), !5336)
    #dbg_value(i64 %i.fb, !5337, !DIExpression(), !5347)
    #dbg_value(i64 %i.fb, !5349, !DIExpression(), !5354)
    #dbg_value(i64 %i.fb, !4365, !DIExpression(), !5356)
    #dbg_value(i64 %i.fb, !4381, !DIExpression(), !4383)
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5356)
    #dbg_value(i64 1, !4382, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4383)
    #dbg_value(i64 1, !4366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5356)
    #dbg_value(i64 1, !4382, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4383)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5357
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.fb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bb unwind label %.loopexit404, !dbg !5357

bb.ax:                                            ; preds = %.loopexit404, %.loopexit.split-lp405, %.body258
  %.pn205 = phi { ptr, i32 } [ %eh.lpad-body259, %.body258 ], [ %lpad.loopexit406, %.loopexit404 ], [ %lpad.loopexit.split-lp407, %.loopexit.split-lp405 ] ; 2 uses
    #dbg_value(ptr poison, !948, !DIExpression(), !5358)
    #dbg_value(ptr poison, !958, !DIExpression(), !5360)
    #dbg_value(ptr poison, !962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5362)
    #dbg_value(i64 %i.fb, !962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5362)
    #dbg_value(i64 1, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5363)
    #dbg_value(i64 %i.fb, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5363)
  %i.fn = icmp eq i64 %i.fb, 0, !dbg !5364
  br i1 %i.fn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread366, label %bb.ay, !dbg !5364

bb.ay:                                            ; preds = %bb.ax
    #dbg_value(ptr %i.fa, !962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5362)
    #dbg_value(ptr poison, !976, !DIExpression(), !5365)
    #dbg_value(ptr poison, !985, !DIExpression(), !5367)
    #dbg_value(ptr %i.fa, !981, !DIExpression(), !5365)
    #dbg_value(ptr %i.fa, !990, !DIExpression(), !5367)
    #dbg_value(ptr %i.fa, !994, !DIExpression(), !5369)
    #dbg_value(ptr %i.fa, !1003, !DIExpression(), !5371)
    #dbg_value(i64 1, !982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5365)
    #dbg_value(i64 1, !991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5367)
    #dbg_value(i64 1, !1000, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5369)
    #dbg_value(i64 1, !1006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5371)
    #dbg_value(i64 %i.fb, !982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5365)
    #dbg_value(i64 %i.fb, !991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5367)
    #dbg_value(i64 %i.fb, !1000, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5369)
    #dbg_value(i64 %i.fb, !1006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5371)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fa, i64 noundef range(i64 1, 0) %i.fb, i64 noundef 1) #23, !dbg !5373
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread366, !dbg !5374

.loopexit404:                                     ; preds = %bb.aw, %bb.au
  %lpad.loopexit406 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp405:                            ; preds = %bb.bc
  %lpad.loopexit.split-lp407 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.az:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs3roNzt6HBWW_12regex_syntax.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs3roNzt6HBWW_12regex_syntax.exit261
  %storemerge587 = phi i64 [ %i.fm, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs3roNzt6HBWW_12regex_syntax.exit ], [ %i.fb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs3roNzt6HBWW_12regex_syntax.exit261 ], !dbg !5202
  store i64 %storemerge587, ptr %i.ak, align 8, !dbg !5202
    #dbg_value(ptr poison, !948, !DIExpression(), !5375)
    #dbg_value(ptr poison, !958, !DIExpression(), !5377)
    #dbg_value(ptr poison, !962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5379)
    #dbg_value(i64 %i.fb, !962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5379)
    #dbg_value(i64 1, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5380)
    #dbg_value(i64 %i.fb, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5380)
  %i.fo = icmp eq i64 %i.fb, 0, !dbg !5381
  br i1 %i.fo, label %bb.bl, label %bb.ba, !dbg !5381

bb.ba:                                            ; preds = %bb.az
    #dbg_value(ptr %i.fa, !962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5379)
    #dbg_value(ptr poison, !976, !DIExpression(), !5382)
    #dbg_value(ptr poison, !985, !DIExpression(), !5384)
    #dbg_value(ptr %i.fa, !981, !DIExpression(), !5382)
    #dbg_value(ptr %i.fa, !990, !DIExpression(), !5384)
    #dbg_value(ptr %i.fa, !994, !DIExpression(), !5386)
    #dbg_value(ptr %i.fa, !1003, !DIExpression(), !5388)
    #dbg_value(i64 1, !982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5382)
    #dbg_value(i64 1, !991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5384)
    #dbg_value(i64 1, !1000, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5386)
    #dbg_value(i64 1, !1006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5388)
    #dbg_value(i64 %i.fb, !982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5382)
    #dbg_value(i64 %i.fb, !991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5384)
    #dbg_value(i64 %i.fb, !1000, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5386)
    #dbg_value(i64 %i.fb, !1006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5388)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fa, i64 noundef range(i64 1, 0) %i.fb, i64 noundef 1) #23, !dbg !5390
  br label %bb.bl, !dbg !5391

bb.bb:                                            ; preds = %bb.aw
  %i.fp = load i64, ptr %i.d, align 8, !dbg !5357, !range !763, !noundef !15
  %i.fq = trunc nuw i64 %i.fp to i1, !dbg !5392
  %i.fr = load i64, ptr %i.an, align 8, !dbg !5356, !range !2306, !noundef !15 ; 4 uses
  br i1 %i.fq, label %bb.bc, label %bb.bd, !dbg !5392, !prof !890

bb.bc:                                            ; preds = %bb.bb
  %i.fs = load i64, ptr %i.ao, align 8, !dbg !5393
    #dbg_value(i64 %i.fr, !4369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5394)
    #dbg_value(i64 %i.fs, !4369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5394)
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.fr, i64 %i.fs) #24
          to label %bb.ad unwind label %.loopexit.split-lp405, !dbg !5395

bb.bd:                                            ; preds = %bb.bb
  %i.ft = load ptr, ptr %i.ao, align 8, !dbg !5396, !nonnull !15, !noundef !15 ; 3 uses
    #dbg_value(i64 %i.fr, !4367, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5397)
    #dbg_value(ptr %i.ft, !4367, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5397)
    #dbg_value(ptr poison, !4380, !DIExpression(), !5398)
    #dbg_value(ptr poison, !4185, !DIExpression(), !5399)
    #dbg_value(i64 %i.fr, !4460, !DIExpression(), !5400)
  %i.fu = icmp ule i64 %i.fb, %i.fr, !dbg !5403
    #dbg_value(i1 true, !5105, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5404)
  call void @llvm.assume(i1 %i.fu), !dbg !5406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !5407
    #dbg_value(i64 %i.fr, !4313, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5408)
    #dbg_value(ptr %i.ft, !4313, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5408)
    #dbg_value(i64 0, !4313, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5408)
  %.not204 = icmp eq i64 %i.fb, 0, !dbg !5409
  br i1 %.not204, label %bb.be, label %bb.bi, !dbg !5409

bb.be:                                            ; preds = %bb.bi, %bb.bd
    #dbg_value(i64 %i.fb, !4313, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5408)
    #dbg_value(ptr %i.v, !4494, !DIExpression(), !5410)
  %i.fv = load i64, ptr %i.v, align 8, !dbg !5412, !range !4505, !alias.scope !5413, !noundef !15
  %i.fw = icmp eq i64 %i.fv, -1, !dbg !5412
  br i1 %i.fw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs3roNzt6HBWW_12regex_syntax.exit261, label %bb.bf, !dbg !5412

bb.bf:                                            ; preds = %bb.be
    #dbg_value(ptr %i.v, !1131, !DIExpression(), !5416)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs3roNzt6HBWW_12regex_syntax.exit.i257 unwind label %bb.bg, !dbg !5418

bb.bg:                                            ; preds = %bb.bf
  %i.fx = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.v, !1135, !DIExpression(), !5419)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body258 unwind label %bb.bh, !dbg !5421

bb.bh:                                            ; preds = %bb.bg
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !5418
  unreachable, !dbg !5418

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs3roNzt6HBWW_12regex_syntax.exit.i257: ; preds = %bb.bf
    #dbg_value(ptr %i.v, !1135, !DIExpression(), !5422)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs3roNzt6HBWW_12regex_syntax.exit261 unwind label %bb.bj, !dbg !5424

bb.bi:                                            ; preds = %bb.bd
    #dbg_value(ptr %i.fa, !5345, !DIExpression(), !5347)
    #dbg_value(ptr %i.fa, !5352, !DIExpression(), !5354)
    #dbg_value(ptr %i.ft, !5346, !DIExpression(), !5347)
    #dbg_value(ptr %i.ft, !5353, !DIExpression(), !5354)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ft, ptr nonnull align 1 %i.fa, i64 %i.fb, i1 false), !dbg !5425
    #dbg_value(i64 %i.fb, !4313, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5408)
  br label %bb.be, !dbg !5426

bb.bj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs3roNzt6HBWW_12regex_syntax.exit.i257
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body258, !dbg !5427

.body258:                                         ; preds = %bb.bg, %bb.bj
  %eh.lpad-body259 = phi { ptr, i32 } [ %i.fz, %bb.bj ], [ %i.fx, %bb.bg ]
  store i64 %i.fr, ptr %i.v, align 8, !dbg !5427
  store ptr %i.ft, ptr %.sroa.529.0..sroa_idx, align 8, !dbg !5427
  store i64 %i.fb, ptr %i.ak, align 8, !dbg !5427
  br label %bb.ax, !dbg !5427

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs3roNzt6HBWW_12regex_syntax.exit261: ; preds = %bb.be, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs3roNzt6HBWW_12regex_syntax.exit.i257
  store i64 %i.fr, ptr %i.v, align 8, !dbg !5427
  store ptr %i.ft, ptr %.sroa.529.0..sroa_idx, align 8, !dbg !5427
  br label %bb.az, !dbg !5428

bb.bk:                                            ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit262.thread
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread366

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread366: ; preds = %bb.ay, %bb.ax, %bb.bk, %.body265
  %.sroa.055.1.ph.ph.a = phi i1 [ true, %bb.bk ], [ false, %bb.ay ], [ false, %bb.ax ], [ true, %.body265 ]
  %.sroa.056.0.ph.ph = phi i1 [ false, %bb.bk ], [ true, %bb.ay ], [ true, %bb.ax ], [ false, %.body265 ]
  %.pn209.ph.ph = phi { ptr, i32 } [ %i.ga, %bb.bk ], [ %.pn205, %bb.ay ], [ %.pn205, %bb.ax ], [ %.pn201, %.body265 ] ; 6 uses
    #dbg_value(ptr poison, !1172, !DIExpression(), !5429)
    #dbg_value(ptr poison, !1182, !DIExpression(), !5431)
    #dbg_value(ptr poison, !1192, !DIExpression(), !5433)
    #dbg_value(ptr %i.ev, !1195, !DIExpression(), !5435)
    #dbg_value(i64 8, !1206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5436)
    #dbg_value(i64 80, !1206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5436)
    #dbg_value(ptr poison, !976, !DIExpression(), !5437)
    #dbg_value(ptr poison, !985, !DIExpression(), !5439)
    #dbg_value(ptr %i.ev, !981, !DIExpression(), !5437)
    #dbg_value(ptr %i.ev, !990, !DIExpression(), !5439)
    #dbg_value(ptr %i.ev, !994, !DIExpression(), !5441)
    #dbg_value(ptr %i.ev, !1003, !DIExpression(), !5443)
    #dbg_value(i64 8, !982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5437)
    #dbg_value(i64 8, !991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5439)
    #dbg_value(i64 8, !1000, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5441)
    #dbg_value(i64 8, !1006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5443)
    #dbg_value(i64 80, !982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5437)
    #dbg_value(i64 80, !991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5439)
    #dbg_value(i64 80, !1000, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5441)
    #dbg_value(i64 80, !1006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5443)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ev, i64 noundef 80, i64 noundef 8) #23, !dbg !5445
  %i.gb = load i64, ptr %i.s, align 8, !dbg !5446, !range !1453, !noundef !15 ; 3 uses
  %i.gc = icmp ne i64 %i.gb, 4, !dbg !5446
  call void @llvm.assume(i1 %i.gc), !dbg !5446
  %i.gd = add nsw i64 %i.gb, -2, !dbg !5446
  %.inv212 = icmp samesign ult i64 %i.gb, 2, !dbg !5446
  %i.ge = select i1 %.inv212, i64 2, i64 %i.gd, !dbg !5446
  switch i64 %i.ge, label %bb.ei [
    i64 1, label %bb.ej
    i64 6, label %bb.ek
  ], !dbg !5446

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit: ; preds = %bb.eh
    #dbg_value(ptr poison, !1172, !DIExpression(), !5429)
    #dbg_value(ptr poison, !1182, !DIExpression(), !5431)
    #dbg_value(ptr poison, !1192, !DIExpression(), !5433)
    #dbg_value(ptr %i.ev, !1195, !DIExpression(), !5435)
    #dbg_value(i64 8, !1206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5436)
    #dbg_value(i64 80, !1206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5436)
    #dbg_value(ptr poison, !976, !DIExpression(), !5437)
    #dbg_value(ptr poison, !985, !DIExpression(), !5439)
    #dbg_value(ptr %i.ev, !981, !DIExpression(), !5437)
    #dbg_value(ptr %i.ev, !990, !DIExpression(), !5439)
    #dbg_value(ptr %i.ev, !994, !DIExpression(), !5441)
    #dbg_value(ptr %i.ev, !1003, !DIExpression(), !5443)
    #dbg_value(i64 8, !982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5437)
    #dbg_value(i64 8, !991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5439)
    #dbg_value(i64 8, !1000, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5441)
    #dbg_value(i64 8, !1006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5443)
    #dbg_value(i64 80, !982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5437)
    #dbg_value(i64 80, !991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5439)
    #dbg_value(i64 80, !1000, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5441)
    #dbg_value(i64 80, !1006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5443)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ev, i64 noundef 80, i64 noundef 8) #23, !dbg !5445
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread360, !dbg !5446

bb.bl:                                            ; preds = %bb.az, %bb.ba, %bb.aq, %bb.ce
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ev, i64 noundef 80, i64 noundef 8) #23, !dbg !5447
  %i.gf = load i64, ptr %i.s, align 8, !dbg !5446, !range !1453, !noundef !15 ; 3 uses
  %i.gg = icmp ne i64 %i.gf, 4, !dbg !5446
  call void @llvm.assume(i1 %i.gg), !dbg !5446
  %i.gh = add nsw i64 %i.gf, -2, !dbg !5446
  %.inv207 = icmp samesign ult i64 %i.gf, 2, !dbg !5446
  %i.gi = select i1 %.inv207, i64 2, i64 %i.gh, !dbg !5446
  switch i64 %i.gi, label %bb.cg [
    i64 1, label %bb.cf
    i64 6, label %bb.cf
  ], !dbg !5446

bb.bm:                                            ; preds = %.body265, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs3roNzt6HBWW_12regex_syntax.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread360, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs3roNzt6HBWW_12regex_syntax.exit.thread335, %bb.en, %bb.ei, %bb.eh, %bb.du, %bb.dt
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body, !dbg !5454

.body:                                            ; preds = %bb.e, %bb.bm
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !5454
  unreachable, !dbg !5454

.body265:                                         ; preds = %bb.dl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit273.thread386, %bb.bw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEBF_.exit, %bb.bn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit273.thread384, %bb.du
  %.pn201 = phi { ptr, i32 } [ %.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit273.thread384 ], [ %i.ix, %bb.dl ], [ %.pn, %bb.du ], [ %i.gk, %bb.bn ], [ %.pn.i.i, %bb.bw ], [ %i.gp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEBF_.exit ], [ %eh.lpad-body295.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit273.thread386 ]
    #dbg_value(ptr %i.q, !2382, !DIExpression(), !5455)
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread366 unwind label %bb.bm, !dbg !5457

bb.bn:                                            ; preds = %bb.dc
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %.body265

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit262: ; preds = %bb.at, %bb.db
  %i.gl = phi ptr [ %i.ih, %bb.db ], [ %.sroa.4177.0.copyload, %bb.at ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5458), !dbg !4262
    #dbg_value(ptr %i.gl, !2376, !DIExpression(), !5461)
    #dbg_value(ptr %i.gl, !2378, !DIExpression(), !5462)
    #dbg_value(ptr %i.gl, !2397, !DIExpression(), !5463)
    #dbg_value(ptr %i.gl, !2406, !DIExpression(), !5465)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 48, !dbg !5467
  store ptr %i.gm, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !5468, !alias.scope !5458, !noalias !5469
  %.sroa.0319.0.copyload320 = load i64, ptr %i.gl, align 8, !dbg !5471, !noalias !5458 ; 2 uses
  %.sroa.7321.0..sroa_idx322 = getelementptr inbounds nuw i8, ptr %i.gl, i64 8, !dbg !5471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7321, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7321.0..sroa_idx322, i64 40, i1 false), !dbg !5471, !noalias !5458
  %.not189 = icmp eq i64 %.sroa.0319.0.copyload320, -1, !dbg !4262
  br i1 %.not189, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit262.thread, label %bb.bo, !dbg !4262

bb.bo:                                            ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !5473
  store i64 %.sroa.0319.0.copyload320, ptr %i.p, align 8, !dbg !5473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7321.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7321, i64 40, i1 false), !dbg !5473
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0324), !dbg !5474
  call void @llvm.experimental.noalias.scope.decl(metadata !5475), !dbg !5478
    #dbg_declare(ptr %i.p, !1567, !DIExpression(), !5479)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5481, !noalias !5482
    #dbg_value(ptr %i.p, !1570, !DIExpression(), !5484)
    #dbg_value(i64 2, !1576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5486)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 40, i1 false), !dbg !5487, !noalias !5488
  store i64 2, ptr %i.p, align 8, !dbg !5489, !alias.scope !5475, !noalias !5488
    #dbg_value(ptr %i.p, !1581, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !5490)
    #dbg_value(i64 1, !892, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5492)
    #dbg_value(i64 1, !765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5494)
    #dbg_value(i64 0, !892, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5492)
    #dbg_value(i64 0, !765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5494)
    #dbg_value(i64 1, !892, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5492)
    #dbg_value(i64 1, !765, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5494)
    #dbg_value(i64 0, !892, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5492)
    #dbg_value(i64 0, !765, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5494)
    #dbg_value(i32 0, !892, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !5492)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !5494)
    #dbg_value(i32 0, !892, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !5492)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !5494)
    #dbg_value(i32 0, !892, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !5492)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !5494)
    #dbg_value(i32 0, !892, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !5492)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !5494)
    #dbg_value(i32 0, !892, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !5492)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !5494)
    #dbg_value(i8 1, !892, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !5492)
    #dbg_value(i8 1, !765, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !5494)
    #dbg_value(i64 0, !892, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !5492)
    #dbg_value(i64 0, !765, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !5494)
    #dbg_value(i64 1, !892, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5492)
    #dbg_value(i64 1, !765, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5494)
    #dbg_value(i64 0, !892, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !5492)
    #dbg_value(i64 0, !765, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !5494)
    #dbg_value(i8 0, !892, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !5492)
    #dbg_value(i8 0, !765, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !5494)
    #dbg_value(i8 0, !892, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !5492)
    #dbg_value(i8 0, !765, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !5494)
    #dbg_value(i64 8, !781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5496)
    #dbg_value(i64 8, !803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5498)
    #dbg_value(i64 8, !831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5500)
    #dbg_value(i64 80, !781, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5496)
    #dbg_value(i64 80, !803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5498)
    #dbg_value(i64 80, !831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5500)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !828, !DIExpression(), !5498)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !837, !DIExpression(), !5500)
    #dbg_value(i8 0, !838, !DIExpression(), !5500)
    #dbg_value(i64 8, !841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5502)
    #dbg_value(i64 8, !877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5504)
    #dbg_value(i64 80, !841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5502)
    #dbg_value(i64 80, !877, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5504)
    #dbg_value(i1 false, !847, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5502)
    #dbg_value(i64 80, !848, !DIExpression(), !5506)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !5507, !noalias !5508
  %i.gn = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 1, 81) 80, i64 noundef range(i64 1, 9) 8) #23, !dbg !5511, !noalias !5508 ; 11 uses
  %i.go = icmp eq ptr %i.gn, null, !dbg !5512
  br i1 %i.go, label %bb.bp, label %bb.br, !dbg !5513, !prof !890

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #24
          to label %.noexc.i unwind label %bb.bq, !dbg !5514, !noalias !5482

.noexc.i:                                         ; preds = %bb.bp
  unreachable, !dbg !5514

bb.bq:                                            ; preds = %bb.bp
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #26
          to label %bb.by unwind label %bb.bx, !dbg !5515, !noalias !5482

bb.br:                                            ; preds = %bb.bo
    #dbg_value(ptr %i.gn, !773, !DIExpression(), !5516)
  store i64 1, ptr %i.gn, align 8, !dbg !5517, !noalias !5482
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8, !dbg !5517
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !5517, !noalias !5482
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 16, !dbg !5517
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !5517, !noalias !5482
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 24, !dbg !5517
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !dbg !5517, !noalias !5482
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 32, !dbg !5517
  store i64 1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !dbg !5517, !noalias !5482
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 40, !dbg !5517
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 76, !dbg !5517
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.8.0..sroa_idx.i.i, i8 0, i64 36, i1 false), !dbg !5517, !noalias !5482
  store i8 1, ptr %.sroa.15.0..sroa_idx.i.i, align 4, !dbg !5517, !noalias !5482
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 77, !dbg !5517
  store i8 0, ptr %.sroa.16.0..sroa_idx.i.i, align 1, !dbg !5517, !noalias !5482
  %.sroa.17.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 78, !dbg !5517
  store i8 0, ptr %.sroa.17.0..sroa_idx.i.i, align 2, !dbg !5517, !noalias !5482
end_hunk_1
begin_hunk_2_@_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3Hir6concat:bb.a
    #dbg_declare(ptr %i.l, !3826, !DIExpression(), !5955)
    #dbg_declare(ptr poison, !3842, !DIExpression(), !5956)
    #dbg_value(i64 48, !3850, !DIExpression(), !5958)
  %i.iz = load i64, ptr %i.y, align 8, !dbg !5961, !alias.scope !5962, !noalias !5965, !noundef !15 ; 3 uses
    #dbg_value(i64 %i.iz, !3827, !DIExpression(), !5967)
    #dbg_value(i64 %i.iz, !3867, !DIExpression(), !5968)
    #dbg_value(ptr %i.w, !3858, !DIExpression(), !5970)
  %i.ja = load i64, ptr %i.w, align 8, !dbg !5971, !range !2731, !alias.scope !5962, !noalias !5965, !noundef !15
  %i.jb = icmp eq i64 %i.iz, %i.ja, !dbg !5972
  br i1 %i.jb, label %bb.do, label %bb.dr, !dbg !5972

bb.do:                                            ; preds = %bb.dn
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.dr unwind label %bb.dp, !dbg !5973, !noalias !5965, !inline_history !3877

bb.dp:                                            ; preds = %bb.do
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l) #26
          to label %bb.dt unwind label %bb.dq, !dbg !5974, !inline_history !3877

bb.dq:                                            ; preds = %bb.dp
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !5975, !inline_history !3877
  unreachable, !dbg !5975

bb.dr:                                            ; preds = %bb.do, %bb.dn
  %i.je = load ptr, ptr %i.x, align 8, !dbg !5976, !alias.scope !5962, !noalias !5965, !nonnull !15, !noundef !15
    #dbg_value(ptr %i.je, !3870, !DIExpression(), !5968)
  %i.jf = getelementptr inbounds nuw [48 x i8], ptr %i.je, i64 %i.iz, !dbg !5980
    #dbg_value(ptr %i.jf, !3829, !DIExpression(), !5981)
    #dbg_value(ptr %i.jf, !3847, !DIExpression(), !5982)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jf, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false), !dbg !5983
  %i.jg = add i64 %i.iz, 1, !dbg !5984            ; 2 uses
  store i64 %i.jg, ptr %i.y, align 8, !dbg !5984, !alias.scope !5962, !noalias !5965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !5985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !5986
  br label %bb.dj, !dbg !5987

bb.ds:                                            ; preds = %bb.dk, %bb.dj
  %i.jh = load ptr, ptr %i.x, align 8, !dbg !5988, !alias.scope !5652, !noalias !5655, !nonnull !15, !noundef !15
    #dbg_value(ptr %i.jh, !3870, !DIExpression(), !5943)
  %i.ji = getelementptr inbounds nuw [48 x i8], ptr %i.jh, i64 %i.iu, !dbg !5992
    #dbg_value(ptr %i.ji, !3829, !DIExpression(), !5993)
    #dbg_value(ptr %i.ji, !3847, !DIExpression(), !5994)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ji, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !dbg !5995
  %i.jj = add i64 %i.iu, 1, !dbg !5996
  store i64 %i.jj, ptr %i.y, align 8, !dbg !5996, !alias.scope !5652, !noalias !5655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !5997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !5998
  br label %bb.db, !dbg !5796

bb.dt:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.di, %bb.dp
  %eh.lpad-body295.ph = phi { ptr, i32 } [ %lpad.phi398, %bb.di ], [ %i.jc, %bb.dp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.n) #26
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit273.thread386 unwind label %bb.bm, !dbg !5998

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit273.thread386: ; preds = %bb.dt
    #dbg_value(ptr poison, !1172, !DIExpression(), !5779)
    #dbg_value(ptr poison, !1182, !DIExpression(), !5781)
    #dbg_value(ptr poison, !1192, !DIExpression(), !5783)
    #dbg_value(ptr %i.gq, !1195, !DIExpression(), !5785)
    #dbg_value(i64 8, !1206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5786)
    #dbg_value(i64 80, !1206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5786)
    #dbg_value(ptr poison, !976, !DIExpression(), !5787)
    #dbg_value(ptr poison, !985, !DIExpression(), !5789)
    #dbg_value(ptr %i.gq, !981, !DIExpression(), !5787)
    #dbg_value(ptr %i.gq, !990, !DIExpression(), !5789)
    #dbg_value(ptr %i.gq, !994, !DIExpression(), !5791)
    #dbg_value(ptr %i.gq, !1003, !DIExpression(), !5793)
    #dbg_value(i64 8, !982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5787)
    #dbg_value(i64 8, !991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5789)
    #dbg_value(i64 8, !1000, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5791)
    #dbg_value(i64 8, !1006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5793)
    #dbg_value(i64 80, !982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5787)
    #dbg_value(i64 80, !991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5789)
    #dbg_value(i64 80, !1000, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5791)
    #dbg_value(i64 80, !1006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5793)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gq, i64 noundef 80, i64 noundef 8) #23, !dbg !5795
  br label %.body265, !dbg !5796

bb.du:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit273.thread384
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.o) #26
          to label %.body265 unwind label %bb.bm, !dbg !5796

bb.dv:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !4276
  store i64 %.sroa.031.0.copyload, ptr %i.i, align 8, !dbg !4276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.0..sroa_idx34, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.529.0..sroa_idx, i64 16, i1 false), !dbg !4276
    #dbg_value(ptr %i.w, !4270, !DIExpression(), !5999)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !6000
  invoke fastcc void @_RINvMs3_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_3Hir7literalINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB8_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.eb unwind label %bb.ea, !dbg !6000

bb.dw:                                            ; preds = %._crit_edge571, %bb.ef
  %i.jk = phi i64 [ %.pre572, %._crit_edge571 ], [ %i.jx, %bb.ef ], !dbg !5194 ; 3 uses
    #dbg_value(ptr %i.w, !4270, !DIExpression(), !6001)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !6002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !dbg !6003
  store ptr %i.ev, ptr %i.ap, align 8, !dbg !6002
    #dbg_value(ptr %i.w, !3820, !DIExpression(), !6004)
    #dbg_value(ptr %i.w, !3833, !DIExpression(), !6005)
    #dbg_declare(ptr %i.g, !3826, !DIExpression(), !6007)
    #dbg_declare(ptr poison, !3842, !DIExpression(), !6008)
    #dbg_value(i64 48, !3850, !DIExpression(), !6010)
    #dbg_value(i64 %i.jk, !3827, !DIExpression(), !6013)
    #dbg_value(i64 %i.jk, !3867, !DIExpression(), !6014)
    #dbg_value(ptr %i.w, !3858, !DIExpression(), !6016)
  %i.jl = load i64, ptr %i.w, align 8, !dbg !6017, !range !2731, !alias.scope !5196, !noalias !5199, !noundef !15
  %i.jm = icmp eq i64 %i.jk, %i.jl, !dbg !6018
  br i1 %i.jm, label %bb.dx, label %bb.eg, !dbg !6018

bb.dx:                                            ; preds = %bb.dw
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.eg unwind label %bb.dy, !dbg !6019, !noalias !5199, !inline_history !3877

bb.dy:                                            ; preds = %bb.dx
  %i.jn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g) #26
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread360 unwind label %bb.dz, !dbg !6020, !inline_history !3877

bb.dz:                                            ; preds = %bb.dy
  %i.jo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !6021, !inline_history !3877
  unreachable, !dbg !6021

bb.ea:                                            ; preds = %bb.dv
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh, !dbg !6022

bb.eb:                                            ; preds = %bb.dv
    #dbg_value(ptr %i.w, !3820, !DIExpression(), !6023)
    #dbg_value(ptr %i.w, !3833, !DIExpression(), !6025)
    #dbg_declare(ptr %i.h, !3826, !DIExpression(), !6027)
    #dbg_declare(ptr poison, !3842, !DIExpression(), !6028)
    #dbg_value(i64 48, !3850, !DIExpression(), !6030)
  %i.jq = load i64, ptr %i.y, align 8, !dbg !6033, !alias.scope !6034, !noalias !6037, !noundef !15 ; 3 uses
    #dbg_value(i64 %i.jq, !3827, !DIExpression(), !6039)
    #dbg_value(i64 %i.jq, !3867, !DIExpression(), !6040)
    #dbg_value(ptr %i.w, !3858, !DIExpression(), !6042)
  %i.jr = load i64, ptr %i.w, align 8, !dbg !6043, !range !2731, !alias.scope !6034, !noalias !6037, !noundef !15
  %i.js = icmp eq i64 %i.jq, %i.jr, !dbg !6044
  br i1 %i.js, label %bb.ec, label %bb.ef, !dbg !6044

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.ef unwind label %bb.ed, !dbg !6045, !noalias !6037, !inline_history !3877

bb.ed:                                            ; preds = %bb.ec
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h) #26
          to label %bb.eh unwind label %bb.ee, !dbg !6046, !inline_history !3877

bb.ee:                                            ; preds = %bb.ed
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !6047, !inline_history !3877
  unreachable, !dbg !6047

bb.ef:                                            ; preds = %bb.ec, %bb.eb
  %i.jv = load ptr, ptr %i.x, align 8, !dbg !6048, !alias.scope !6034, !noalias !6037, !nonnull !15, !noundef !15
    #dbg_value(ptr %i.jv, !3870, !DIExpression(), !6040)
  %i.jw = getelementptr inbounds nuw [48 x i8], ptr %i.jv, i64 %i.jq, !dbg !6052
    #dbg_value(ptr %i.jw, !3829, !DIExpression(), !6053)
    #dbg_value(ptr %i.jw, !3847, !DIExpression(), !6054)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jw, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !6055
  %i.jx = add i64 %i.jq, 1, !dbg !6056            ; 2 uses
  store i64 %i.jx, ptr %i.y, align 8, !dbg !6056, !alias.scope !6034, !noalias !6037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !6057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !6058
  br label %bb.dw, !dbg !6059

bb.eg:                                            ; preds = %bb.dx, %bb.dw
  %i.jy = load ptr, ptr %i.x, align 8, !dbg !6060, !alias.scope !5196, !noalias !5199, !nonnull !15, !noundef !15
    #dbg_value(ptr %i.jy, !3870, !DIExpression(), !6014)
  %i.jz = getelementptr inbounds nuw [48 x i8], ptr %i.jy, i64 %i.jk, !dbg !6064
    #dbg_value(ptr %i.jz, !3829, !DIExpression(), !6065)
    #dbg_value(ptr %i.jz, !3847, !DIExpression(), !6066)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jz, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !dbg !6067
  %i.ka = add i64 %i.jk, 1, !dbg !6068
  store i64 %i.ka, ptr %i.y, align 8, !dbg !6068, !alias.scope !5196, !noalias !5199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !6069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !6022
  br label %bb.cf, !dbg !5446

bb.eh:                                            ; preds = %bb.ea, %bb.ed
  %eh.lpad-body304.ph = phi { ptr, i32 } [ %i.jp, %bb.ea ], [ %i.jt, %bb.ed ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.j) #26
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit unwind label %bb.bm, !dbg !6022

bb.ei:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread366
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.s) #26
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread360 unwind label %bb.bm, !dbg !5446

bb.ej:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread366
  br i1 %.sroa.055.1.ph.ph.a, label %bb.el, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread360, !dbg !5446

bb.ek:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread366
  br i1 %.sroa.056.0.ph.ph, label %bb.en, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread360, !dbg !5446

bb.el:                                            ; preds = %bb.ej
  %.val216 = load i64, ptr %.sroa.4177.0..sroa_idx, align 8, !dbg !5446, !noundef !15 ; 2 uses
    #dbg_value(ptr poison, !948, !DIExpression(), !6070)
    #dbg_value(ptr poison, !958, !DIExpression(), !6072)
    #dbg_value(ptr poison, !962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6074)
    #dbg_value(i64 %.val216, !962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6074)
    #dbg_value(i64 1, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6075)
    #dbg_value(i64 %.val216, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6075)
  %i.kb = icmp eq i64 %.val216, 0, !dbg !6076
  br i1 %i.kb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread360, label %bb.em, !dbg !6076

bb.em:                                            ; preds = %bb.el
  %.val = load ptr, ptr %i.ae, align 8, !dbg !5446, !nonnull !15, !noundef !15
    #dbg_value(ptr %.val, !962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6074)
    #dbg_value(ptr poison, !976, !DIExpression(), !6077)
    #dbg_value(ptr poison, !985, !DIExpression(), !6079)
    #dbg_value(ptr %.val, !981, !DIExpression(), !6077)
    #dbg_value(ptr %.val, !990, !DIExpression(), !6079)
    #dbg_value(ptr %.val, !994, !DIExpression(), !6081)
    #dbg_value(ptr %.val, !1003, !DIExpression(), !6083)
    #dbg_value(i64 1, !982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6077)
    #dbg_value(i64 1, !991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6079)
    #dbg_value(i64 1, !1000, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6081)
    #dbg_value(i64 1, !1006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6083)
    #dbg_value(i64 %.val216, !982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6077)
    #dbg_value(i64 %.val216, !991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6079)
    #dbg_value(i64 %.val216, !1000, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6081)
    #dbg_value(i64 %.val216, !1006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6083)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val216, i64 noundef 1) #23, !dbg !6085
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread360, !dbg !6086

bb.en:                                            ; preds = %bb.ek
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #26
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread360 unwind label %bb.bm, !dbg !5446

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs3roNzt6HBWW_12regex_syntax.exit.thread335: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1t_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs3roNzt6HBWW_12regex_syntax.exit.i, %bb.ag, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs3roNzt6HBWW_12regex_syntax.exit.thread341
  %.pn209.pn.pn.pn.pn334 = phi { ptr, i32 } [ %i.ek, %bb.ag ], [ %i.em, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs3roNzt6HBWW_12regex_syntax.exit.thread341 ], [ %.pn209.pn.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs3roNzt6HBWW_12regex_syntax.exit.i ], [ %.pn209.pn.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1t_.exit ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #26
          to label %common.resume unwind label %bb.bm, !dbg !5141
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i64 } @_RNvMs8_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_5Class11maximum_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #3 !dbg !6087 {
bb.a:
    #dbg_value(ptr %0, !6092, !DIExpression(), !6097)
  %i.a = load i64, ptr %0, align 8, !dbg !6098, !range !763, !noundef !15
  %i.b = trunc nuw i64 %i.a to i1, !dbg !6099
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6097
  %i.d = load i64, ptr %i.c, align 8, !dbg !6097, !noundef !15 ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !6099

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !6095, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6100)
    #dbg_value(ptr %0, !6101, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6107)
    #dbg_value(ptr %0, !6109, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6112)
    #dbg_value(ptr %0, !6114, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6117)
    #dbg_value(ptr %0, !6119, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6122)
    #dbg_value(ptr %0, !6124, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6127)
  %i.e = icmp ne i64 %i.d, 0, !dbg !6129
  %.4 = zext i1 %i.e to i64, !dbg !6130
  br label %_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_12ClassUnicode11maximum_len.exit, !dbg !6130

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !6093, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6131)
    #dbg_value(ptr poison, !6132, !DIExpression(), !6145)
    #dbg_value(ptr poison, !6147, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6152)
    #dbg_value(i64 %i.d, !6147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6152)
  %.not.i = icmp eq i64 %i.d, 0, !dbg !6154
  br i1 %.not.i, label %_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_12ClassUnicode11maximum_len.exit, label %bb.d, !dbg !6154

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6155
  %.val = load ptr, ptr %i.f, align 8, !dbg !6155, !nonnull !15, !noundef !15
    #dbg_value(ptr %.val, !6147, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6152)
  %i.g = getelementptr [8 x i8], ptr %.val, i64 %i.d, !dbg !6156
    #dbg_value(ptr %i.g, !6150, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !6157)
    #dbg_value(ptr %i.g, !6139, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !6158)
  %i.h = getelementptr i8, ptr %i.g, i64 -4, !dbg !6159
  %i.i = load i32, ptr %i.h, align 4, !dbg !6159, !range !3663, !noundef !15 ; 3 uses
    #dbg_value(i32 %i.i, !6160, !DIExpression(), !6163)
    #dbg_value(i32 %i.i, !6165, !DIExpression(), !6168)
  %i.j = icmp samesign ult i32 %i.i, 128, !dbg !6170
  br i1 %i.j, label %_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_12ClassUnicode11maximum_len.exit, label %bb.e, !dbg !6170

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ult i32 %i.i, 2048, !dbg !6171
  br i1 %i.k, label %_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_12ClassUnicode11maximum_len.exit, label %bb.f, !dbg !6171

bb.f:                                             ; preds = %bb.e
  %i.l = icmp samesign ult i32 %i.i, 65536, !dbg !6172
  %..i = select i1 %i.l, i64 3, i64 4, !dbg !6168
  br label %_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_12ClassUnicode11maximum_len.exit, !dbg !6168

_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_12ClassUnicode11maximum_len.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.4.0 = phi i64 [ 1, %bb.b ], [ undef, %bb.c ], [ 2, %bb.e ], [ %..i, %bb.f ], [ 1, %bb.d ], !dbg !6097
  %.sroa.0.0 = phi i64 [ %.4, %bb.b ], [ 0, %bb.c ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.d ], !dbg !6097
  %i.m = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !6173
  %i.n = insertvalue { i64, i64 } %i.m, i64 %.sroa.4.0, 1, !dbg !6173
  ret { i64, i64 } %i.n, !dbg !6173
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i64 } @_RNvMs8_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_5Class11minimum_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #3 !dbg !6174 {
bb.a:
    #dbg_value(ptr %0, !6177, !DIExpression(), !6182)
  %i.a = load i64, ptr %0, align 8, !dbg !6183, !range !763, !noundef !15
  %i.b = trunc nuw i64 %i.a to i1, !dbg !6184
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6182
  %i.d = load i64, ptr %i.c, align 8, !dbg !6182, !noundef !15 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !6184

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !6180, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6185)
    #dbg_value(ptr %0, !6186, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6190)
    #dbg_value(ptr %0, !6192, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6195)
    #dbg_value(ptr %0, !6197, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6200)
    #dbg_value(ptr %0, !6202, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6205)
    #dbg_value(ptr %0, !6207, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6210)
  %i.e = icmp ne i64 %i.d, 0, !dbg !6212
  %.4 = zext i1 %i.e to i64, !dbg !6213
  br label %_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_12ClassUnicode11minimum_len.exit, !dbg !6213

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !6178, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6214)
    #dbg_value(ptr poison, !6215, !DIExpression(), !6225)
    #dbg_value(i64 0, !6227, !DIExpression(), !6235)
    #dbg_value(i64 0, !6237, !DIExpression(), !6246)
    #dbg_value(ptr poison, !6232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6235)
    #dbg_value(ptr poison, !6245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6246)
    #dbg_value(i64 %i.d, !6232, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6235)
    #dbg_value(i64 %i.d, !6245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6246)
  %.not.i = icmp eq i64 %i.d, 0, !dbg !6248
  br i1 %.not.i, label %_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_12ClassUnicode11minimum_len.exit, label %bb.d, !dbg !6248

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6249
  %.val = load ptr, ptr %i.f, align 8, !dbg !6249, !nonnull !15, !noundef !15
    #dbg_value(ptr %.val, !6232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6235)
    #dbg_value(ptr %.val, !6245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6246)
    #dbg_value(ptr %.val, !6219, !DIExpression(), !6250)
  %i.g = load i32, ptr %.val, align 4, !dbg !6251, !range !3663, !noundef !15 ; 3 uses
    #dbg_value(i32 %i.g, !6252, !DIExpression(), !6255)
    #dbg_value(i32 %i.g, !6257, !DIExpression(), !6260)
  %i.h = icmp samesign ult i32 %i.g, 128, !dbg !6262
  br i1 %i.h, label %_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_12ClassUnicode11minimum_len.exit, label %bb.e, !dbg !6262

bb.e:                                             ; preds = %bb.d
  %i.i = icmp samesign ult i32 %i.g, 2048, !dbg !6263
  br i1 %i.i, label %_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_12ClassUnicode11minimum_len.exit, label %bb.f, !dbg !6263

bb.f:                                             ; preds = %bb.e
  %i.j = icmp samesign ult i32 %i.g, 65536, !dbg !6264
  %..i = select i1 %i.j, i64 3, i64 4, !dbg !6260
  br label %_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_12ClassUnicode11minimum_len.exit, !dbg !6260

_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_12ClassUnicode11minimum_len.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.4.0 = phi i64 [ 1, %bb.b ], [ undef, %bb.c ], [ 2, %bb.e ], [ %..i, %bb.f ], [ 1, %bb.d ], !dbg !6182
  %.sroa.0.0 = phi i64 [ %.4, %bb.b ], [ 0, %bb.c ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.d ], !dbg !6182
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !6265
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.4.0, 1, !dbg !6265
  ret { i64, i64 } %i.l, !dbg !6265
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_5Class16case_fold_simple(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !6266 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
    #dbg_value(ptr %0, !6269, !DIExpression(), !6274)
  %i.b = load i64, ptr %0, align 8, !dbg !6275, !range !763, !noundef !15
  %i.c = trunc nuw i64 %i.b to i1, !dbg !6276
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6274 ; 2 uses
    #dbg_declare(ptr %i.a, !6277, !DIExpression(), !6304)
    #dbg_declare(ptr %i.a, !6277, !DIExpression(), !6311)
  br i1 %i.c, label %bb.b, label %bb.d, !dbg !6276

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.d, !6272, !DIExpression(), !6318)
    #dbg_value(ptr %i.d, !6309, !DIExpression(), !6319)
  %i.e = tail call noundef zeroext i1 @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_15ClassBytesRangeE16case_fold_simpleB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d), !dbg !6320
    #dbg_value(i1 %i.e, !6300, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6321)
    #dbg_value(ptr @5, !6301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6321)
    #dbg_value(i64 30, !6301, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6321)
  br i1 %i.e, label %bb.c, label %_RNvMsf_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_10ClassBytes16case_fold_simple.exit, !dbg !6322, !prof !890

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 30, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #30, !dbg !6323
  unreachable, !dbg !6323

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr %i.d, !6270, !DIExpression(), !6324)
    #dbg_value(ptr %i.d, !6316, !DIExpression(), !6325)
  %i.f = tail call noundef zeroext i1 @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE16case_fold_simpleB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d), !dbg !6326
    #dbg_value(i1 %i.f, !6300, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6327)
    #dbg_value(ptr @3, !6301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6327)
    #dbg_value(i64 36, !6301, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6327)
  br i1 %i.f, label %bb.e, label %_RNvMsf_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_10ClassBytes16case_fold_simple.exit, !dbg !6328, !prof !890

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 36, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #30, !dbg !6329
end_hunk_2
begin_hunk_3_@_RNvMsi_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_15ClassBytesRange3len:bb.a
    #dbg_value(i8 %i.e, !7220, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !7228)
    #dbg_value(i8 %i.e, !7231, !DIExpression(), !7237)
    #dbg_value(i8 %i.e, !7205, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7206)
  %i.f = zext i8 %i.e to i64, !dbg !7240
    #dbg_value(i64 %i.f, !7205, !DIExpression(), !7206)
  %i.g = add nuw nsw i64 %i.f, 1, !dbg !7241
  ret i64 %i.g, !dbg !7242
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i8, i8 } @_RNvMsi_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_15ClassBytesRange3new(i8 noundef %0, i8 noundef %1) unnamed_addr #6 !dbg !7243 {
bb.a:
    #dbg_value(i8 %0, !7248, !DIExpression(), !7250)
    #dbg_value(i8 %1, !7249, !DIExpression(), !7250)
    #dbg_value(i8 %0, !7251, !DIExpression(), !7259)
    #dbg_value(i8 %0, !7251, !DIExpression(), !7259)
    #dbg_value(i8 %1, !7254, !DIExpression(), !7259)
    #dbg_value(i8 %1, !7254, !DIExpression(), !7259)
    #dbg_value(i8 0, !7255, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !7261)
    #dbg_value(i8 0, !7255, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !7261)
    #dbg_value(ptr undef, !7251, !DIExpression(DW_OP_deref), !7259)
    #dbg_value(ptr undef, !7254, !DIExpression(DW_OP_deref), !7259)
  %..i = tail call i8 @llvm.umin.i8(i8 %0, i8 %1), !dbg !7262
  %.3.i = tail call i8 @llvm.umax.i8(i8 %0, i8 %1), !dbg !7262
    #dbg_value(i8 %.3.i, !7255, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !7261)
    #dbg_value(i8 %..i, !7255, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !7261)
  %i.a = insertvalue { i8, i8 } poison, i8 %..i, 0, !dbg !7263
  %i.b = insertvalue { i8, i8 } %i.a, i8 %.3.i, 1, !dbg !7263
  ret { i8, i8 } %i.b, !dbg !7264
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsl_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_10Repetition4with(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !7265 {
bb.a:
    #dbg_value(ptr %1, !7270, !DIExpression(), !7272)
    #dbg_declare(ptr %2, !7271, !DIExpression(), !7273)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !7274
  %i.b = load i32, ptr %i.a, align 8, !dbg !7274, !noundef !15
  %i.c = load <2 x i32>, ptr %1, align 8, !dbg !7275
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20, !dbg !7276
  %i.e = load i8, ptr %i.d, align 4, !dbg !7276, !range !4882, !noundef !15
    #dbg_declare(ptr %2, !7277, !DIExpression(), !7284)
    #dbg_value(i64 8, !781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7286)
    #dbg_value(i64 8, !803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7288)
    #dbg_value(i64 8, !831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7290)
    #dbg_value(i64 48, !781, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7286)
    #dbg_value(i64 48, !803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7288)
    #dbg_value(i64 48, !831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7290)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !828, !DIExpression(), !7288)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !837, !DIExpression(), !7290)
    #dbg_value(i8 0, !838, !DIExpression(), !7290)
    #dbg_value(i64 8, !841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7292)
    #dbg_value(i64 8, !877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7294)
    #dbg_value(i64 48, !841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7292)
    #dbg_value(i64 48, !877, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7294)
    #dbg_value(i1 false, !847, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7292)
    #dbg_value(i64 48, !848, !DIExpression(), !7296)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !7297, !noalias !7298
  %i.f = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 1, 81) 48, i64 noundef range(i64 1, 9) 8) #23, !dbg !7301, !noalias !7298 ; 3 uses
  %i.g = icmp eq ptr %i.f, null, !dbg !7302
  br i1 %i.g, label %bb.b, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE3newBI_.exit, !dbg !7303, !prof !890

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #24
          to label %.noexc unwind label %bb.c, !dbg !7304

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !7304

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2) #26
          to label %bb.e unwind label %bb.d, !dbg !7305

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !7306
  unreachable, !dbg !7306

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h, !dbg !7306

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE3newBI_.exit: ; preds = %bb.a
    #dbg_value(ptr %i.f, !7282, !DIExpression(), !7307)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !dbg !7308
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7309
  store i32 %i.b, ptr %i.j, align 8, !dbg !7309
  store <2 x i32> %i.c, ptr %0, align 8, !dbg !7309
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !7309
  store i8 %i.e, ptr %i.k, align 4, !dbg !7309
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7309
  store ptr %i.f, ptr %i.l, align 8, !dbg !7309
  ret void, !dbg !7310
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMso_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_10Properties10repetition(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !7311 {
bb.a:
    #dbg_value(ptr %0, !7316, !DIExpression(), !7325)
    #dbg_value(ptr %0, !7326, !DIExpression(), !7342)
    #dbg_value(ptr poison, !7344, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !7352)
    #dbg_value(ptr poison, !7354, !DIExpression(), !7365)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7367
  %i.b = load ptr, ptr %i.a, align 8, !dbg !7367, !nonnull !15, !noundef !15
    #dbg_value(ptr %i.b, !7368, !DIExpression(), !7374)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !7376
    #dbg_value(ptr %i.c, !7317, !DIExpression(), !7377)
    #dbg_value(ptr %i.c, !7378, !DIExpression(), !7381)
    #dbg_value(ptr %i.c, !7383, !DIExpression(), !7386)
    #dbg_value(ptr %i.c, !7388, !DIExpression(), !7391)
    #dbg_value(ptr %i.c, !7393, !DIExpression(), !7396)
    #dbg_value(ptr %i.c, !7398, !DIExpression(), !7401)
    #dbg_value(ptr %i.c, !7403, !DIExpression(), !7406)
    #dbg_value(ptr %i.c, !7408, !DIExpression(), !7411)
    #dbg_value(ptr %i.c, !7413, !DIExpression(), !7416)
    #dbg_value(ptr %i.c, !7418, !DIExpression(), !7421)
  %i.d = load ptr, ptr %i.c, align 8, !dbg !7423, !nonnull !15, !noundef !15 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !7423, !range !763, !noundef !15
    #dbg_value(i64 %i.e, !7339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7342)
    #dbg_value(i64 poison, !7339, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7342)
  %i.f = trunc nuw i64 %i.e to i1, !dbg !7424
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !7424

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !7423
  %i.h = load i64, ptr %i.g, align 8, !dbg !7423
    #dbg_value(i64 %i.h, !7339, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7342)
    #dbg_value(i64 %i.h, !7340, !DIExpression(), !7425)
    #dbg_value(i64 %i.h, !7349, !DIExpression(), !7352)
    #dbg_value(i64 %i.h, !7426, !DIExpression(), !7432)
    #dbg_value(i64 %i.h, !7434, !DIExpression(), !7441)
    #dbg_value(i64 %i.h, !7443, !DIExpression(), !7453)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7455
  %i.j = load i32, ptr %i.i, align 8, !dbg !7455, !noundef !15
    #dbg_value(i32 %i.j, !7456, !DIExpression(), !7459)
  %i.k = zext i32 %i.j to i64, !dbg !7461
    #dbg_value(i64 %i.k, !7350, !DIExpression(), !7462)
    #dbg_value(i64 %i.k, !7429, !DIExpression(), !7432)
    #dbg_value(i64 %i.k, !7437, !DIExpression(), !7441)
    #dbg_value(i64 %i.k, !7452, !DIExpression(), !7453)
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.k), !dbg !7463 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 0, !dbg !7463
  %i.n = extractvalue { i64, i1 } %i.l, 1, !dbg !7463
    #dbg_value(i1 %i.n, !7440, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7464)
    #dbg_value(i1 %i.n, !7465, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7472)
    #dbg_value(i64 %i.m, !7438, !DIExpression(), !7464)
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !7474, !prof !890

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.3.0 = phi i64 [ undef, %bb.a ], [ -1, %bb.d ], [ %i.m, %bb.b ], !dbg !7342
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.b ], !dbg !7342
    #dbg_value(i64 %.sroa.0.0, !7319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7475)
    #dbg_value(i64 %.sroa.3.0, !7319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7475)
  %i.o = load i32, ptr %0, align 8, !dbg !7476, !range !7477, !noundef !15
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !7476 ; 2 uses
    #dbg_value(i32 %i.o, !7478, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7492)
    #dbg_value(i32 poison, !7478, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7492)
    #dbg_value(ptr %i.c, !7489, !DIExpression(), !7492)
  %i.q = trunc nuw i32 %i.o to i1, !dbg !7494     ; 2 uses
  br i1 %i.q, label %bb.e, label %_RNCNvMso_NtCs3roNzt6HBWW_12regex_syntax3hirNtB7_10Properties10repetitions_0B9_.exit, !dbg !7494

bb.d:                                             ; preds = %bb.b
    #dbg_value(i64 -1, !7438, !DIExpression(), !7464)
  br label %bb.c, !dbg !7495

bb.e:                                             ; preds = %bb.c
    #dbg_value(i32 poison, !7478, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7492)
    #dbg_value(i32 poison, !7490, !DIExpression(), !7496)
    #dbg_value(ptr poison, !7497, !DIExpression(DW_OP_deref), !7515)
    #dbg_value(i32 poison, !7502, !DIExpression(), !7515)
    #dbg_value(i32 poison, !7517, !DIExpression(), !7520)
    #dbg_value(i32 poison, !7522, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7546)
    #dbg_value(i64 1, !7522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7546)
    #dbg_value(i32 poison, !7503, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7549)
    #dbg_value(i32 poison, !7550, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7557)
    #dbg_value(i32 poison, !7559, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7563)
    #dbg_value(ptr poison, !7565, !DIExpression(), !7568)
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !7570
  %i.s = load i64, ptr %i.r, align 8, !dbg !7570, !range !763, !noundef !15
    #dbg_value(i64 %i.s, !7522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7571)
    #dbg_value(i64 poison, !7522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7571)
  %i.t = trunc nuw i64 %i.s to i1, !dbg !7573
  br i1 %i.t, label %bb.f, label %_RNCNvMso_NtCs3roNzt6HBWW_12regex_syntax3hirNtB7_10Properties10repetitions_0B9_.exit, !dbg !7573

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.p, align 4, !dbg !7476
    #dbg_value(i32 %i.u, !7490, !DIExpression(), !7496)
    #dbg_value(i32 %i.u, !7478, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7492)
    #dbg_value(i32 %i.u, !7502, !DIExpression(), !7515)
    #dbg_value(i32 %i.u, !7517, !DIExpression(), !7520)
    #dbg_value(i32 %i.u, !7522, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7546)
    #dbg_value(i32 %i.u, !7503, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7549)
    #dbg_value(i32 %i.u, !7550, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7557)
    #dbg_value(i32 %i.u, !7559, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7563)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !7570
  %i.w = load i64, ptr %i.v, align 8, !dbg !7570
    #dbg_value(i64 %i.w, !7522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7571)
  %i.x = zext i32 %i.u to i64, !dbg !7574
    #dbg_value(i64 %i.x, !7522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7546)
    #dbg_value(i64 %i.x, !7503, !DIExpression(), !7549)
    #dbg_value(i64 %i.x, !7550, !DIExpression(), !7557)
    #dbg_value(i64 %i.x, !7559, !DIExpression(), !7563)
    #dbg_value(i64 %i.w, !7509, !DIExpression(), !7575)
    #dbg_value(i64 %i.w, !7553, !DIExpression(), !7557)
    #dbg_value(i64 %i.w, !7562, !DIExpression(), !7563)
  %i.y = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.w, i64 %i.x), !dbg !7576 ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 1, !dbg !7576
    #dbg_value(i1 %i.z, !7556, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7577)
    #dbg_value(i1 %i.z, !7578, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7581)
    #dbg_value(i64 poison, !7554, !DIExpression(), !7577)
  %i.aa = extractvalue { i64, i1 } %i.y, 0
  %not..i = xor i1 %i.z, true, !dbg !7583
  %spec.select21.i = zext i1 %not..i to i64, !dbg !7583
  br label %_RNCNvMso_NtCs3roNzt6HBWW_12regex_syntax3hirNtB7_10Properties10repetitions_0B9_.exit, !dbg !7583

_RNCNvMso_NtCs3roNzt6HBWW_12regex_syntax3hirNtB7_10Properties10repetitions_0B9_.exit: ; preds = %bb.f, %bb.e, %bb.c
  %.sroa.05.0.a = phi i64 [ 0, %bb.c ], [ 0, %bb.e ], [ %spec.select21.i, %bb.f ], !dbg !7492
  %.sroa.36.0 = phi i64 [ undef, %bb.c ], [ undef, %bb.e ], [ %i.aa, %bb.f ], !dbg !7492
    #dbg_value(i64 %.sroa.36.0, !7321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7584)
    #dbg_value(i64 %.sroa.05.0.a, !7321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7584)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 56, !dbg !7585
  %i.ac = load i32, ptr %i.ab, align 8, !dbg !7585, !noundef !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 68, !dbg !7586
  %i.ae = load <2 x i32>, ptr %i.ad, align 4, !dbg !7586
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 76, !dbg !7587
  %i.ag = load i8, ptr %i.af, align 4, !dbg !7587, !range !4882, !noundef !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !7588
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !7588, !noundef !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !7589
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !7589, !range !763, !noundef !15 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !7589
  %i.am = load i64, ptr %i.al, align 8, !dbg !7589 ; 4 uses
    #dbg_value(i64 %.sroa.0.0, !7323, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7590)
    #dbg_value(i64 %.sroa.0.0, !765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7591)
    #dbg_value(i64 %.sroa.3.0, !7323, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7590)
    #dbg_value(i64 %.sroa.3.0, !765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7591)
    #dbg_value(i64 %.sroa.05.0.a, !7323, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7590)
    #dbg_value(i64 %.sroa.05.0.a, !765, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7591)
    #dbg_value(i64 %.sroa.36.0, !7323, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7590)
    #dbg_value(i64 %.sroa.36.0, !765, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7591)
    #dbg_value(i32 %i.ac, !7323, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !7590)
    #dbg_value(i32 %i.ac, !765, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !7591)
    #dbg_value(i32 0, !7323, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7590)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7591)
    #dbg_value(i32 0, !7323, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !7590)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !7591)
    #dbg_value(i32 poison, !7323, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !7590)
    #dbg_value(i32 poison, !765, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !7591)
    #dbg_value(i32 poison, !7323, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !7590)
    #dbg_value(i32 poison, !765, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !7591)
    #dbg_value(i8 %i.ag, !7323, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !7590)
    #dbg_value(i8 %i.ag, !765, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !7591)
    #dbg_value(i64 %i.ai, !7323, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !7590)
    #dbg_value(i64 %i.ai, !765, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !7591)
    #dbg_value(i64 %i.ak, !7323, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !7590)
    #dbg_value(i64 %i.ak, !765, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !7591)
    #dbg_value(i64 %i.am, !7323, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !7590)
    #dbg_value(i64 %i.am, !765, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !7591)
    #dbg_value(i8 0, !7323, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !7590)
    #dbg_value(i8 0, !765, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !7591)
    #dbg_value(i8 0, !7323, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !7590)
    #dbg_value(i8 0, !765, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !7591)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7593
  %i.ao = load i32, ptr %i.an, align 8, !dbg !7593, !noundef !15
  %.not = icmp eq i32 %i.ao, 0, !dbg !7593
  br i1 %.not, label %bb.h, label %bb.g, !dbg !7593

bb.g:                                             ; preds = %_RNCNvMso_NtCs3roNzt6HBWW_12regex_syntax3hirNtB7_10Properties10repetitions_0B9_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 60, !dbg !7594
    #dbg_value(i32 poison, !7323, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7590)
    #dbg_value(i32 poison, !765, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7591)
  %i.aq = load <2 x i32>, ptr %i.ap, align 4, !dbg !7594
    #dbg_value(i32 poison, !765, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !7591)
    #dbg_value(i32 poison, !7323, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !7590)
    #dbg_value(i32 poison, !765, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7591)
    #dbg_value(i32 poison, !7323, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7590)
  br label %bb.j, !dbg !7595

bb.h:                                             ; preds = %_RNCNvMso_NtCs3roNzt6HBWW_12regex_syntax3hirNtB7_10Properties10repetitions_0B9_.exit
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !7591)
    #dbg_value(i32 0, !7323, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !7590)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7591)
    #dbg_value(i32 0, !7323, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7590)
    #dbg_value(i64 %i.ak, !7596, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7609)
    #dbg_value(i64 %i.am, !7596, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7609)
    #dbg_value(i1 false, !7605, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7609)
    #dbg_declare(ptr poison, !7606, !DIExpression(), !7611)
  %i.ar = trunc nuw i64 %i.ak to i1, !dbg !7612
  %i.as = icmp ne i64 %i.am, 0
  %spec.select.i = select i1 %i.ar, i1 %i.as, i1 false, !dbg !7612
  br i1 %spec.select.i, label %bb.i, label %bb.j, !dbg !7613

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %0, !7361, !DIExpression(), !7614)
  %i.at = load i32, ptr %i.p, align 4
  %i.au = icmp eq i32 %i.at, 0
  %or.cond = select i1 %i.q, i1 %i.au, i1 false, !dbg !7615 ; 2 uses
  %spec.select = zext i1 %or.cond to i64, !dbg !7615
  %spec.select31 = select i1 %or.cond, i64 0, i64 %i.am, !dbg !7615
  br label %bb.j, !dbg !7615

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.h
  %.sroa.5.0 = phi i64 [ %spec.select, %bb.i ], [ %i.ak, %bb.g ], [ %i.ak, %bb.h ], !dbg !7584
  %.sroa.8.0 = phi i64 [ %spec.select31, %bb.i ], [ %i.am, %bb.g ], [ %i.am, %bb.h ], !dbg !7584
  %i.av = phi <2 x i32> [ zeroinitializer, %bb.i ], [ %i.aq, %bb.g ], [ zeroinitializer, %bb.h ]
    #dbg_value(i64 %.sroa.8.0, !765, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !7591)
    #dbg_value(i64 %.sroa.8.0, !7323, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !7590)
    #dbg_value(i64 %.sroa.5.0, !765, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !7591)
    #dbg_value(i64 %.sroa.5.0, !7323, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !7590)
    #dbg_value(i64 8, !781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7616)
    #dbg_value(i64 8, !803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7618)
    #dbg_value(i64 8, !831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7620)
    #dbg_value(i64 80, !781, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7616)
    #dbg_value(i64 80, !803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7618)
    #dbg_value(i64 80, !831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7620)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !828, !DIExpression(), !7618)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !837, !DIExpression(), !7620)
    #dbg_value(i8 0, !838, !DIExpression(), !7620)
    #dbg_value(i64 8, !841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7622)
    #dbg_value(i64 8, !877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7624)
    #dbg_value(i64 80, !841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7622)
    #dbg_value(i64 80, !877, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7624)
    #dbg_value(i1 false, !847, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7622)
    #dbg_value(i64 80, !848, !DIExpression(), !7626)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !7627, !noalias !7628
  %i.aw = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 1, 81) 80, i64 noundef range(i64 1, 9) 8) #23, !dbg !7631, !noalias !7628 ; 15 uses
  %i.ax = icmp eq ptr %i.aw, null, !dbg !7632
  br i1 %i.ax, label %bb.k, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !dbg !7633, !prof !890

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #24, !dbg !7634, !noalias !7628
  unreachable, !dbg !7634

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.j
    #dbg_value(ptr %i.aw, !773, !DIExpression(), !7635)
  store i64 %.sroa.0.0, ptr %i.aw, align 8, !dbg !7636
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !7636
  store i64 %.sroa.3.0, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !7636
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !7636
  store i64 %.sroa.05.0.a, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !7636
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24, !dbg !7636
  store i64 %.sroa.36.0, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !7636
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 32, !dbg !7636
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !7636
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 40, !dbg !7636
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !7636
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 48, !dbg !7636
  store i64 %i.ai, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !7636
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 56, !dbg !7636
  store i32 %i.ac, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !7636
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 60, !dbg !7636
  store <2 x i32> %i.av, ptr %.sroa.12.0..sroa_idx, align 4, !dbg !7636
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 68, !dbg !7636
  store <2 x i32> %i.ae, ptr %.sroa.16.0..sroa_idx, align 4, !dbg !7636
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 76, !dbg !7636
  store i8 %i.ag, ptr %.sroa.18.0..sroa_idx, align 4, !dbg !7636
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 77, !dbg !7636
  store i8 0, ptr %.sroa.19.0..sroa_idx, align 1, !dbg !7636
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 78, !dbg !7636
  store i8 0, ptr %.sroa.20.0..sroa_idx, align 2, !dbg !7636
  ret ptr %i.aw, !dbg !7637
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMso_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_10Properties11alternation(ptr noalias nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 192153584101141163) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !7638 {
bb.a:
    #dbg_value(ptr %0, !7641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7642)
    #dbg_value(ptr %0, !7643, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7646)
    #dbg_value(ptr %0, !7648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7657)
    #dbg_value(i64 %1, !7641, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7642)
    #dbg_value(i64 %1, !7643, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7646)
    #dbg_value(i64 %1, !7648, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7657)
    #dbg_value(i64 %1, !7651, !DIExpression(), !7659)
    #dbg_value(i64 %1, !7660, !DIExpression(), !7664)
    #dbg_value(ptr %0, !7653, !DIExpression(), !7666)
    #dbg_value(ptr %0, !7663, !DIExpression(), !7664)
  %.idx = mul nuw nsw i64 %1, 48, !dbg !7667
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx, !dbg !7667
    #dbg_value(ptr poison, !7668, !DIExpression(), !7678)
    #dbg_value(ptr poison, !7686, !DIExpression(), !7762)
    #dbg_value(ptr poison, !7763, !DIExpression(), !7773)
    #dbg_value(ptr poison, !7776, !DIExpression(), !7793)
    #dbg_value(ptr poison, !7815, !DIExpression(), !7820)
    #dbg_value(ptr %0, !7715, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7821)
    #dbg_value(ptr %i.a, !7715, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7821)
    #dbg_declare(ptr poison, !7822, !DIExpression(), !7836)
    #dbg_value(ptr %0, !7716, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7838)
    #dbg_value(ptr %i.a, !7716, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7838)
    #dbg_value(i64 0, !7716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7838)
    #dbg_value(ptr undef, !7815, !DIExpression(), !7839)
    #dbg_value(ptr undef, !7816, !DIExpression(), !7841)
    #dbg_value(ptr undef, !7776, !DIExpression(), !7842)
    #dbg_value(ptr undef, !7792, !DIExpression(), !7842)
    #dbg_value(ptr poison, !7844, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !7849)
    #dbg_value(ptr undef, !7851, !DIExpression(), !7859)
    #dbg_value(ptr undef, !7861, !DIExpression(), !7870)
    #dbg_value(ptr %0, !7864, !DIExpression(), !7872)
    #dbg_value(ptr %i.a, !7866, !DIExpression(), !7873)
    #dbg_value(ptr poison, !7874, !DIExpression(), !7878)
    #dbg_value(ptr poison, !7877, !DIExpression(), !7880)
  %i.b = icmp eq i64 %1, 0, !dbg !7881
  br i1 %i.b, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENCNvMso_B1o_NtB1o_10Properties11alternation0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.thread.i, label %.peel.next.i, !dbg !7882

.peel.next.i:                                     ; preds = %bb.a
    #dbg_value(ptr %0, !7716, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !7838)
    #dbg_value(ptr %0, !7883, !DIExpression(), !7896)
    #dbg_value(ptr undef, !7893, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !7896)
    #dbg_value(ptr undef, !7898, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !7913)
    #dbg_value(ptr %0, !7894, !DIExpression(), !7915)
    #dbg_value(ptr %0, !7907, !DIExpression(), !7913)
    #dbg_value(ptr poison, !7916, !DIExpression(), !7921)
    #dbg_value(ptr %0, !7920, !DIExpression(), !7921)
    #dbg_value(ptr %0, !7923, !DIExpression(), !7926)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !7928
    #dbg_value(i32 -1, !7749, !DIExpression(), !7929)
    #dbg_value(ptr undef, !7815, !DIExpression(), !7820)
    #dbg_value(ptr undef, !7776, !DIExpression(), !7793)
    #dbg_value(ptr undef, !7792, !DIExpression(), !7793)
    #dbg_value(i64 1, !7716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7838)
    #dbg_value(ptr %i.c, !7716, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7838)
    #dbg_value(ptr %0, !7716, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !7838)
    #dbg_value(ptr undef, !7833, !DIExpression(), !7930)
    #dbg_value(ptr undef, !7834, !DIExpression(), !7931)
    #dbg_value(ptr undef, !7932, !DIExpression(), !7937)
    #dbg_value(ptr %i.c, !7939, !DIExpression(), !7942)
  %i.d = load ptr, ptr %i.c, align 8, !dbg !7944, !nonnull !15, !noundef !15 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !7944
  %i.f = load i64, ptr %i.e, align 8, !dbg !7944, !range !763, !noundef !15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !7944
  %i.h = load i64, ptr %i.g, align 8, !dbg !7944  ; 3 uses
    #dbg_value(i64 %i.f, !7750, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7945)
    #dbg_value(i64 %i.h, !7750, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7945)
    #dbg_value(i64 %i.h, !7751, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !7946)
    #dbg_value(i64 %i.h, !765, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !7947)
    #dbg_value(i8 0, !7751, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !7946)
    #dbg_value(i8 0, !765, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !7947)
    #dbg_value(ptr %i.c, !7754, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7949)
    #dbg_value(ptr %i.a, !7754, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7949)
    #dbg_value(i64 0, !765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7947)
    #dbg_value(i64 0, !7751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7946)
    #dbg_value(i64 undef, !765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7947)
    #dbg_value(i64 undef, !7751, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7946)
    #dbg_value(i64 0, !765, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7947)
    #dbg_value(i64 0, !7751, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7946)
    #dbg_value(i64 undef, !765, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7947)
    #dbg_value(i64 undef, !7751, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7946)
    #dbg_value(i64 %i.f, !765, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !7947)
    #dbg_value(i64 %i.f, !7751, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !7946)
    #dbg_value(i64 0, !765, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !7947)
    #dbg_value(i64 0, !7751, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !7946)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !7947)
    #dbg_value(i32 0, !7751, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !7946)
    #dbg_value(i32 -1, !765, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7947)
    #dbg_value(i32 -1, !7751, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7946)
    #dbg_value(i32 -1, !765, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !7947)
    #dbg_value(i32 -1, !7751, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !7946)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !7947)
    #dbg_value(i32 0, !7751, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !7946)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !7947)
    #dbg_value(i32 0, !7751, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !7946)
    #dbg_value(i8 1, !765, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !7947)
    #dbg_value(i8 1, !7751, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !7946)
    #dbg_value(i8 1, !765, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !7947)
    #dbg_value(i8 1, !7751, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !7946)
    #dbg_value(i8 poison, !7752, !DIExpression(), !7950)
    #dbg_value(i8 poison, !7753, !DIExpression(), !7950)
    #dbg_value(ptr undef, !7763, !DIExpression(), !7773)
    #dbg_value(i64 0, !7754, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7949)
    #dbg_value(ptr %0, !7754, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !7949)
    #dbg_value(ptr undef, !7755, !DIExpression(DW_OP_deref), !7951)
    #dbg_value(ptr %i.c, !7756, !DIExpression(), !7952)
    #dbg_value(ptr %i.c, !7953, !DIExpression(), !7956)
    #dbg_value(ptr %i.c, !7958, !DIExpression(), !7961)
    #dbg_value(ptr %i.c, !7963, !DIExpression(), !7966)
    #dbg_value(ptr %i.c, !7968, !DIExpression(), !7971)
    #dbg_value(ptr %i.c, !7973, !DIExpression(), !7976)
    #dbg_value(ptr %i.c, !7978, !DIExpression(), !7981)
    #dbg_value(ptr %i.c, !7983, !DIExpression(), !7986)
    #dbg_value(ptr %i.c, !7939, !DIExpression(), !7988)
    #dbg_value(ptr %i.c, !7990, !DIExpression(), !7993)
    #dbg_value(ptr %i.c, !7995, !DIExpression(), !7998)
    #dbg_value(ptr %i.c, !8000, !DIExpression(), !8003)
    #dbg_value(ptr undef, !8005, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !8009)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56, !dbg !8011
    #dbg_value(i32 poison, !8008, !DIExpression(), !8012)
    #dbg_value(i32 poison, !8013, !DIExpression(), !8017)
    #dbg_value(i32 0, !8016, !DIExpression(), !8017)
    #dbg_value(i32 poison, !7751, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !7946)
    #dbg_value(i32 poison, !765, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !7947)
    #dbg_value(ptr undef, !8019, !DIExpression(DW_OP_plus_uconst, 60, DW_OP_stack_value), !8024)
    #dbg_value(i32 poison, !8023, !DIExpression(), !8026)
    #dbg_value(i32 poison, !8027, !DIExpression(), !8032)
    #dbg_value(i32 -1, !8031, !DIExpression(), !8032)
    #dbg_value(i32 poison, !7751, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7946)
    #dbg_value(i32 poison, !765, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7947)
    #dbg_value(ptr undef, !8019, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !8034)
    #dbg_value(i32 poison, !8023, !DIExpression(), !8036)
    #dbg_value(i32 poison, !8027, !DIExpression(), !8037)
    #dbg_value(i32 -1, !8031, !DIExpression(), !8037)
    #dbg_value(i32 poison, !7751, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !7946)
    #dbg_value(i32 poison, !765, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !7947)
    #dbg_value(ptr undef, !8005, !DIExpression(DW_OP_plus_uconst, 68, DW_OP_stack_value), !8040)
  %i.j = load <4 x i32>, ptr %i.i, align 8, !dbg !8011 ; 2 uses
    #dbg_value(i32 poison, !8008, !DIExpression(), !8042)
    #dbg_value(i32 poison, !8013, !DIExpression(), !8043)
    #dbg_value(i32 0, !8016, !DIExpression(), !8043)
    #dbg_value(i32 poison, !7751, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !7946)
    #dbg_value(i32 poison, !765, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !7947)
    #dbg_value(ptr undef, !8005, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !8046)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 72, !dbg !8048
  %i.l = load i32, ptr %i.k, align 8, !dbg !8048, !noundef !15 ; 2 uses
    #dbg_value(i32 %i.l, !8008, !DIExpression(), !8049)
    #dbg_value(i32 %i.l, !8013, !DIExpression(), !8050)
    #dbg_value(i32 0, !8016, !DIExpression(), !8050)
    #dbg_value(i32 %i.l, !7751, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !7946)
    #dbg_value(i32 %i.l, !765, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !7947)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 76, !dbg !8053
  %i.n = load i8, ptr %i.m, align 4, !dbg !8053, !range !4882, !noundef !15 ; 2 uses
    #dbg_value(i8 %i.n, !7751, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !7946)
    #dbg_value(i8 %i.n, !765, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !7947)
    #dbg_value(i64 0, !8054, !DIExpression(), !8058)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !8060
  %i.p = load i64, ptr %i.o, align 8, !dbg !8060, !noundef !15 ; 2 uses
    #dbg_value(i64 %i.p, !8057, !DIExpression(), !8058)
    #dbg_value(i64 %i.p, !7751, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !7946)
    #dbg_value(i64 %i.p, !765, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !7947)
    #dbg_value(ptr undef, !7685, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8061)
    #dbg_value(ptr undef, !7673, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8062)
    #dbg_value(ptr undef, !7686, !DIExpression(), !7762)
    #dbg_value(ptr undef, !7668, !DIExpression(), !7678)
    #dbg_value(i64 %i.f, !765, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !7947)
    #dbg_value(i64 %i.f, !7751, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !7946)
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 77, !dbg !8063
  %i.r = load i8, ptr %i.q, align 1, !dbg !8063, !range !4882, !noundef !15 ; 2 uses
    #dbg_value(i8 %i.r, !7751, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !7946)
    #dbg_value(i8 %i.r, !765, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !7947)
  %i.s = load i64, ptr %i.d, align 8, !dbg !8064, !range !763, !noundef !15 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !8064
  %i.u = load i64, ptr %i.t, align 8, !dbg !8064
  %i.v = trunc nuw i64 %i.s to i1, !dbg !8065     ; 3 uses
  %spec.select.i = select i1 %i.v, i64 %i.u, i64 undef, !dbg !8065 ; 3 uses
    #dbg_value(i64 %i.s, !765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7947)
    #dbg_value(i64 %i.s, !7751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7946)
    #dbg_value(i64 %spec.select.i, !765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7947)
    #dbg_value(i64 %spec.select.i, !7751, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7946)
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !8066
  %i.x = load i64, ptr %i.w, align 8, !dbg !8066, !range !763, !noundef !15 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !8066
  %i.z = load i64, ptr %i.y, align 8, !dbg !8066
  %i.aa = trunc nuw i64 %i.x to i1, !dbg !8067    ; 3 uses
  %.sroa.870.2.peel.i = select i1 %i.aa, i64 %i.z, i64 undef, !dbg !8067 ; 3 uses
    #dbg_value(i64 %i.x, !765, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7947)
    #dbg_value(i64 %i.x, !7751, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7946)
    #dbg_value(i64 %.sroa.870.2.peel.i, !765, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7947)
    #dbg_value(i64 %.sroa.870.2.peel.i, !7751, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7946)
  %i.ab = icmp eq i64 %1, 1, !dbg !8068
  br i1 %i.ab, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENCNvMso_B1o_NtB1o_10Properties11alternation0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.thread.i, label %.lr.ph.preheader, !dbg !8072

.lr.ph.preheader:                                 ; preds = %.peel.next.i
  %.sroa.7.0.i9 = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !7838
  %.sroa.011.1.peel.i = xor i1 %i.aa, true, !dbg !8073
  %.sroa.010.2.peel.i = xor i1 %i.v, true, !dbg !8074
  br label %.lr.ph, !dbg !8075

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %.sroa.7.0.i28 = phi ptr [ %.sroa.7.0.i, %bb.t ], [ %.sroa.7.0.i9, %.lr.ph.preheader ] ; 2 uses
  %i.ac = phi i1 [ %i.bq, %bb.t ], [ %i.v, %.lr.ph.preheader ] ; 2 uses
  %i.ad = phi i64 [ %i.bp, %bb.t ], [ %spec.select.i, %.lr.ph.preheader ] ; 3 uses
  %i.ae = phi i1 [ %i.cb, %bb.t ], [ %i.aa, %.lr.ph.preheader ] ; 2 uses
  %i.af = phi i64 [ %i.ca, %bb.t ], [ %.sroa.870.2.peel.i, %.lr.ph.preheader ] ; 3 uses
  %.sroa.02.0.load5.i27 = phi i64 [ %.sroa.02.0.load4.i, %bb.t ], [ %i.f, %.lr.ph.preheader ]
  %.sroa.3.8.load7.i26 = phi i64 [ %.sroa.3.8.load6.i, %bb.t ], [ %i.h, %.lr.ph.preheader ] ; 3 uses
  %.sroa.010.0.i25 = phi i1 [ %.sroa.010.1.i, %bb.t ], [ %.sroa.010.2.peel.i, %.lr.ph.preheader ]
  %.sroa.011.0.i24 = phi i1 [ %.sroa.011.2.i, %bb.t ], [ %.sroa.011.1.peel.i, %.lr.ph.preheader ]
  %.pn.i23 = phi ptr [ %.sroa.7.0.i28, %bb.t ], [ %0, %.lr.ph.preheader ]
  %.sroa.069.0.i22 = phi i64 [ %.sroa.069.1.i, %bb.t ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  %.sroa.4.0.i21 = phi i64 [ %.sroa.4.1.i, %bb.t ], [ %spec.select.i, %.lr.ph.preheader ] ; 3 uses
  %.sroa.5.0.i20 = phi i64 [ %.sroa.5.3.i, %bb.t ], [ %i.x, %.lr.ph.preheader ] ; 2 uses
  %.sroa.870.0.i19 = phi i64 [ %.sroa.870.3.i, %bb.t ], [ %.sroa.870.2.peel.i, %.lr.ph.preheader ] ; 3 uses
  %.sroa.9.0.i18 = phi i64 [ %.sroa.9.1.i, %bb.t ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %.sroa.12.0.i17 = phi i64 [ %i.az, %bb.t ], [ %i.p, %.lr.ph.preheader ]
  %.sroa.22.0.i12 = phi i32 [ %i.aq, %bb.t ], [ %i.l, %.lr.ph.preheader ]
  %.sroa.24.0.i11 = phi i8 [ %.sroa.014.0.i, %bb.t ], [ %i.n, %.lr.ph.preheader ]
  %.sroa.27.0.i10 = phi i8 [ %.sroa.019.0.i, %bb.t ], [ %i.r, %.lr.ph.preheader ]
  %i.ag = phi <4 x i32> [ %i.an, %bb.t ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
    #dbg_value(i64 %.sroa.069.0.i22, !765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7947)
    #dbg_value(i64 %.sroa.4.0.i21, !765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7947)
    #dbg_value(i64 %.sroa.5.0.i20, !765, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7947)
    #dbg_value(i64 %.sroa.870.0.i19, !765, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7947)
    #dbg_value(i64 %.sroa.9.0.i18, !765, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !7947)
    #dbg_value(i64 %.sroa.12.0.i17, !765, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !7947)
    #dbg_value(i32 poison, !765, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !7947)
    #dbg_value(i32 poison, !765, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !7947)
    #dbg_value(i32 poison, !765, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !7947)
    #dbg_value(i32 poison, !765, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !7947)
    #dbg_value(i32 %.sroa.22.0.i12, !765, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !7947)
    #dbg_value(i8 %.sroa.24.0.i11, !765, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !7947)
    #dbg_value(i8 %.sroa.27.0.i10, !765, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !7947)
    #dbg_value(ptr %.sroa.7.0.i28, !7754, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !7949)
    #dbg_value(ptr %.sroa.7.0.i28, !7883, !DIExpression(), !8076)
    #dbg_value(ptr undef, !7893, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !8076)
    #dbg_value(ptr undef, !7898, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !8078)
    #dbg_value(ptr %.sroa.7.0.i28, !7894, !DIExpression(), !8080)
    #dbg_value(ptr %.sroa.7.0.i28, !7907, !DIExpression(), !8078)
    #dbg_value(ptr poison, !7916, !DIExpression(), !8081)
    #dbg_value(ptr %.sroa.7.0.i28, !7920, !DIExpression(), !8081)
    #dbg_value(ptr %.sroa.7.0.i28, !7923, !DIExpression(), !8083)
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn.i23, i64 88, !dbg !8085
    #dbg_value(ptr undef, !7755, !DIExpression(DW_OP_deref), !7951)
    #dbg_value(ptr %i.ah, !7756, !DIExpression(), !7952)
    #dbg_value(ptr %i.ah, !7953, !DIExpression(), !7956)
    #dbg_value(ptr %i.ah, !7958, !DIExpression(), !7961)
    #dbg_value(ptr %i.ah, !7963, !DIExpression(), !7966)
    #dbg_value(ptr %i.ah, !7968, !DIExpression(), !7971)
    #dbg_value(ptr %i.ah, !7973, !DIExpression(), !7976)
    #dbg_value(ptr %i.ah, !7978, !DIExpression(), !7981)
    #dbg_value(ptr %i.ah, !7983, !DIExpression(), !7986)
    #dbg_value(ptr %i.ah, !7939, !DIExpression(), !7988)
    #dbg_value(ptr %i.ah, !7990, !DIExpression(), !7993)
    #dbg_value(ptr %i.ah, !7995, !DIExpression(), !7998)
    #dbg_value(ptr %i.ah, !8000, !DIExpression(), !8003)
    #dbg_value(ptr undef, !8005, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !8009)
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !8011, !nonnull !15, !noundef !15 ; 11 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56, !dbg !8011
    #dbg_value(i32 poison, !8008, !DIExpression(), !8012)
    #dbg_value(i32 poison, !8013, !DIExpression(), !8017)
    #dbg_value(i32 poison, !8016, !DIExpression(), !8017)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !7751, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 32), !7946)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !765, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 32), !7947)
    #dbg_value(ptr undef, !8019, !DIExpression(DW_OP_plus_uconst, 60, DW_OP_stack_value), !8024)
    #dbg_value(i32 poison, !8023, !DIExpression(), !8026)
    #dbg_value(i32 poison, !8027, !DIExpression(), !8032)
    #dbg_value(i32 poison, !8031, !DIExpression(), !8032)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !7751, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 480, 32), !7946)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !765, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 480, 32), !7947)
    #dbg_value(ptr undef, !8019, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !8034)
    #dbg_value(i32 poison, !8023, !DIExpression(), !8036)
    #dbg_value(i32 poison, !8027, !DIExpression(), !8037)
    #dbg_value(i32 poison, !8031, !DIExpression(), !8037)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !7751, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 512, 32), !7946)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !765, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 512, 32), !7947)
    #dbg_value(ptr undef, !8005, !DIExpression(DW_OP_plus_uconst, 68, DW_OP_stack_value), !8040)
  %i.ak = load <4 x i32>, ptr %i.aj, align 8, !dbg !8011 ; 2 uses
    #dbg_value(i32 poison, !8008, !DIExpression(), !8042)
    #dbg_value(i32 poison, !8013, !DIExpression(), !8043)
    #dbg_value(i32 poison, !8016, !DIExpression(), !8043)
  %i.al = or <4 x i32> %i.ak, %i.ag, !dbg !8086
  %i.am = and <4 x i32> %i.ak, %i.ag, !dbg !8086
  %i.an = shufflevector <4 x i32> %i.al, <4 x i32> %i.am, <4 x i32> <i32 0, i32 5, i32 6, i32 3>, !dbg !8086 ; 2 uses
    #dbg_value(!DIArgList(i32 poison, i32 poison), !7751, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 544, 32), !7946)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !765, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 544, 32), !7947)
    #dbg_value(ptr undef, !8005, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !8046)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 72, !dbg !8048
  %i.ap = load i32, ptr %i.ao, align 8, !dbg !8048, !noundef !15
    #dbg_value(i32 %i.ap, !8008, !DIExpression(), !8049)
    #dbg_value(i32 %i.ap, !8013, !DIExpression(), !8050)
    #dbg_value(i32 %.sroa.22.0.i12, !8016, !DIExpression(), !8050)
  %i.aq = or i32 %i.ap, %.sroa.22.0.i12, !dbg !8087 ; 2 uses
    #dbg_value(i32 %i.aq, !7751, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !7946)
    #dbg_value(i32 %i.aq, !765, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !7947)
  %i.ar = trunc nuw i8 %.sroa.24.0.i11 to i1, !dbg !8075
  br i1 %i.ar, label %bb.c, label %bb.d, !dbg !8075

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENCNvMso_B1o_NtB1o_10Properties11alternation0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.thread.i: ; preds = %bb.t, %.peel.next.i, %bb.a
  %.sroa.3.0112.i = phi i64 [ undef, %bb.a ], [ %i.h, %.peel.next.i ], [ %i.h, %bb.t ]
  %.sroa.27.0.lcssa.i = phi i8 [ 1, %bb.a ], [ %i.r, %.peel.next.i ], [ %.sroa.019.0.i, %bb.t ], !dbg !7945
  %.sroa.24.0.lcssa.i = phi i8 [ 1, %bb.a ], [ %i.n, %.peel.next.i ], [ %.sroa.014.0.i, %bb.t ], !dbg !7945
  %.sroa.22.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.l, %.peel.next.i ], [ %i.aq, %bb.t ], !dbg !7945
  %.sroa.12.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.p, %.peel.next.i ], [ %i.az, %bb.t ], !dbg !7945
  %.sroa.9.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.f, %.peel.next.i ], [ %.sroa.9.1.i, %bb.t ], !dbg !7945
  %.sroa.870.0.lcssa.i = phi i64 [ undef, %bb.a ], [ %.sroa.870.2.peel.i, %.peel.next.i ], [ %.sroa.870.3.i, %bb.t ]
  %.sroa.5.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.x, %.peel.next.i ], [ %.sroa.5.3.i, %bb.t ], !dbg !8088
  %.sroa.4.0.lcssa.i = phi i64 [ undef, %bb.a ], [ %spec.select.i, %.peel.next.i ], [ %.sroa.4.1.i, %bb.t ]
  %.sroa.069.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.s, %.peel.next.i ], [ %.sroa.069.1.i, %bb.t ], !dbg !8088
  %i.as = phi <4 x i32> [ zeroinitializer, %bb.a ], [ %i.j, %.peel.next.i ], [ %i.an, %bb.t ], !dbg !7945
    #dbg_value(i64 8, !781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8089)
    #dbg_value(i64 8, !803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8091)
    #dbg_value(i64 8, !831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8093)
    #dbg_value(i64 80, !781, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8089)
    #dbg_value(i64 80, !803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8091)
    #dbg_value(i64 80, !831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8093)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !828, !DIExpression(), !8091)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !837, !DIExpression(), !8093)
    #dbg_value(i8 0, !838, !DIExpression(), !8093)
    #dbg_value(i64 8, !841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8095)
    #dbg_value(i64 8, !877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8097)
    #dbg_value(i64 80, !841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8095)
    #dbg_value(i64 80, !877, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8097)
    #dbg_value(i1 false, !847, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8095)
    #dbg_value(i64 80, !848, !DIExpression(), !8099)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !8100, !noalias !8101
  %i.at = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 1, 81) 80, i64 noundef range(i64 1, 9) 8) #23, !dbg !8104, !noalias !8101 ; 14 uses
  %i.au = icmp eq ptr %i.at, null, !dbg !8105
  br i1 %i.au, label %bb.b, label %_RINvMsn_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_10Properties5unionINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterNtB6_3HirENCNvMso_B6_BE_11alternation0ERBE_EB8_.exit, !dbg !8106, !prof !890

bb.b:                                             ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENCNvMso_B1o_NtB1o_10Properties11alternation0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.thread.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #24, !dbg !8107, !noalias !8101
  unreachable, !dbg !8107

bb.c:                                             ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 76, !dbg !8053
  %i.aw = load i8, ptr %i.av, align 4, !dbg !8053, !range !4882, !noundef !15
  br label %bb.d, !dbg !8075

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %.sroa.014.0.i = phi i8 [ %i.aw, %bb.c ], [ 0, %.lr.ph ], !dbg !8108 ; 2 uses
    #dbg_value(i8 %.sroa.014.0.i, !7751, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !7946)
    #dbg_value(i8 %.sroa.014.0.i, !765, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !7947)
    #dbg_value(i64 %.sroa.12.0.i17, !8054, !DIExpression(), !8058)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 48, !dbg !8060
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !8060, !noundef !15
    #dbg_value(i64 %i.ay, !8057, !DIExpression(), !8058)
  %i.az = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.12.0.i17, i64 %i.ay), !dbg !8109 ; 2 uses
    #dbg_value(i64 %i.az, !7751, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !7946)
    #dbg_value(i64 %i.az, !765, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !7947)
    #dbg_value(ptr undef, !7685, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8061)
    #dbg_value(ptr undef, !7673, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8062)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 32, !dbg !8110
  %i.bb = load i64, ptr %i.ba, align 8, !dbg !8110, !range !763, !noundef !15 ; 2 uses
    #dbg_value(ptr undef, !7686, !DIExpression(), !7762)
    #dbg_value(ptr undef, !7668, !DIExpression(), !7678)
  %i.bc = trunc nuw i64 %.sroa.02.0.load5.i27 to i1, !dbg !8111
  br i1 %i.bc, label %bb.e, label %bb.f, !dbg !8111

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 40, !dbg !8110
  %i.be = load i64, ptr %i.bd, align 8, !dbg !8110
  %i.bf = trunc nuw i64 %i.bb to i1, !dbg !8111
  %i.bg = icmp eq i64 %.sroa.3.8.load7.i26, %i.be
  %or.cond.not.i = select i1 %i.bf, i1 %i.bg, i1 false, !dbg !8111
  br i1 %or.cond.not.i, label %bb.h, label %bb.g, !dbg !8111

bb.f:                                             ; preds = %bb.d
  %i.bh = trunc nuw i64 %i.bb to i1, !dbg !8111
  br i1 %i.bh, label %bb.g, label %bb.h, !dbg !8112

bb.g:                                             ; preds = %bb.f, %bb.e
    #dbg_value(i64 0, !7751, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !7946)
    #dbg_value(i64 0, !765, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !7947)
  br label %bb.h, !dbg !8113

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.9.1.i = phi i64 [ 0, %bb.g ], [ %.sroa.9.0.i18, %bb.f ], [ %.sroa.9.0.i18, %bb.e ], !dbg !7945 ; 2 uses
  %.sroa.3.8.load6.i = phi i64 [ undef, %bb.g ], [ %.sroa.3.8.load7.i26, %bb.f ], [ %.sroa.3.8.load7.i26, %bb.e ]
  %.sroa.02.0.load4.i = phi i64 [ 0, %bb.g ], [ 0, %bb.f ], [ 1, %bb.e ]
    #dbg_value(i64 %.sroa.9.1.i, !765, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !7947)
    #dbg_value(i64 %.sroa.9.1.i, !7751, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !7946)
  %i.bi = trunc nuw i8 %.sroa.27.0.i10 to i1, !dbg !8114
  br i1 %i.bi, label %bb.i, label %bb.j, !dbg !8114

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 77, !dbg !8063
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !8063, !range !4882, !noundef !15
  br label %bb.j, !dbg !8114

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.019.0.i = phi i8 [ %i.bk, %bb.i ], [ 0, %bb.h ], !dbg !8115 ; 2 uses
    #dbg_value(i8 %.sroa.019.0.i, !7751, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !7946)
    #dbg_value(i8 %.sroa.019.0.i, !765, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !7947)
  br i1 %.sroa.010.0.i25, label %bb.l, label %bb.k, !dbg !8116

bb.k:                                             ; preds = %bb.j
  %i.bl = load i64, ptr %i.ai, align 8, !dbg !8064, !range !763, !noundef !15
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !8064
  %i.bn = load i64, ptr %i.bm, align 8, !dbg !8064 ; 3 uses
  %i.bo = trunc nuw i64 %i.bl to i1, !dbg !8065   ; 3 uses
  br i1 %i.bo, label %bb.m, label %bb.o, !dbg !8065

bb.l:                                             ; preds = %bb.o, %bb.j
  %.sroa.4.1.i = phi i64 [ %.sroa.4.0.i21, %bb.j ], [ %.sroa.4.3.i, %bb.o ] ; 2 uses
  %.sroa.069.1.i = phi i64 [ %.sroa.069.0.i22, %bb.j ], [ %.sroa.069.3.i, %bb.o ], !dbg !7945 ; 2 uses
  %.sroa.010.1.i = phi i1 [ true, %bb.j ], [ %.sroa.010.2.i, %bb.o ], !dbg !8117
  %i.bp = phi i64 [ %i.ad, %bb.j ], [ %i.bs, %bb.o ]
  %i.bq = phi i1 [ %i.ac, %bb.j ], [ %i.bo, %bb.o ]
    #dbg_value(i64 %.sroa.069.1.i, !765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7947)
    #dbg_value(i64 %.sroa.069.1.i, !7751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7946)
    #dbg_value(i64 %.sroa.4.1.i, !765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7947)
    #dbg_value(i64 %.sroa.4.1.i, !7751, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7946)
    #dbg_value(i8 poison, !7752, !DIExpression(), !7950)
  br i1 %.sroa.011.0.i24, label %bb.t, label %bb.p, !dbg !8118

bb.m:                                             ; preds = %bb.k
    #dbg_value(ptr undef, !7757, !DIExpression(DW_OP_deref), !8119)
  %i.br = icmp uge i64 %i.bn, %i.ad
  %spec.select.i.not.i = select i1 %i.ac, i1 %i.br, i1 false, !dbg !8120
  br i1 %spec.select.i.not.i, label %bb.o, label %bb.n, !dbg !8120

bb.n:                                             ; preds = %bb.m
    #dbg_value(i64 1, !7751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7946)
    #dbg_value(i64 1, !765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7947)
    #dbg_value(i64 %i.bn, !7751, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7946)
    #dbg_value(i64 %i.bn, !765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7947)
  br label %bb.o, !dbg !8121

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %.sroa.4.3.i = phi i64 [ %.sroa.4.0.i21, %bb.k ], [ %i.bn, %bb.n ], [ %.sroa.4.0.i21, %bb.m ]
  %.sroa.069.3.i = phi i64 [ 0, %bb.k ], [ 1, %bb.n ], [ %.sroa.069.0.i22, %bb.m ], !dbg !7952
  %i.bs = phi i64 [ undef, %bb.k ], [ %i.bn, %bb.n ], [ %i.ad, %bb.m ]
    #dbg_value(i64 %.sroa.069.3.i, !765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7947)
    #dbg_value(i64 %.sroa.069.3.i, !7751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7946)
    #dbg_value(i64 %.sroa.4.3.i, !765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7947)
    #dbg_value(i64 %.sroa.4.3.i, !7751, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7946)
  %.sroa.010.2.i = xor i1 %i.bo, true, !dbg !8074
    #dbg_value(i8 poison, !7752, !DIExpression(), !7950)
  br label %bb.l, !dbg !8074

bb.p:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !8066
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !8066, !range !763, !noundef !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ai, i64 24, !dbg !8066
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !8066 ; 3 uses
  %i.bx = trunc nuw i64 %i.bu to i1, !dbg !8067   ; 3 uses
  br i1 %i.bx, label %bb.q, label %bb.s, !dbg !8067

bb.q:                                             ; preds = %bb.p
    #dbg_value(ptr undef, !7759, !DIExpression(DW_OP_deref), !8122)
  %i.by = icmp ule i64 %i.bw, %i.af
  %spec.select.i64.not.i = select i1 %i.ae, i1 %i.by, i1 false, !dbg !8123
  br i1 %spec.select.i64.not.i, label %bb.s, label %bb.r, !dbg !8123

bb.r:                                             ; preds = %bb.q
    #dbg_value(i64 1, !7751, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7946)
    #dbg_value(i64 1, !765, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7947)
    #dbg_value(i64 %i.bw, !7751, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7946)
    #dbg_value(i64 %i.bw, !765, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7947)
  br label %bb.s, !dbg !8124

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.sroa.870.2.i = phi i64 [ %.sroa.870.0.i19, %bb.p ], [ %i.bw, %bb.r ], [ %.sroa.870.0.i19, %bb.q ]
  %.sroa.5.2.i = phi i64 [ 0, %bb.p ], [ 1, %bb.r ], [ %.sroa.5.0.i20, %bb.q ], !dbg !7952
  %i.bz = phi i64 [ undef, %bb.p ], [ %i.bw, %bb.r ], [ %i.af, %bb.q ]
    #dbg_value(i64 %.sroa.5.2.i, !765, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7947)
    #dbg_value(i64 %.sroa.5.2.i, !7751, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7946)
    #dbg_value(i64 %.sroa.870.2.i, !765, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7947)
    #dbg_value(i64 %.sroa.870.2.i, !7751, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7946)
  %.sroa.011.1.i = xor i1 %i.bx, true, !dbg !8073
    #dbg_value(i8 poison, !7753, !DIExpression(), !7950)
  br label %bb.t, !dbg !8073

bb.t:                                             ; preds = %bb.s, %bb.l
  %.sroa.870.3.i = phi i64 [ %.sroa.870.0.i19, %bb.l ], [ %.sroa.870.2.i, %bb.s ] ; 2 uses
  %.sroa.5.3.i = phi i64 [ %.sroa.5.0.i20, %bb.l ], [ %.sroa.5.2.i, %bb.s ], !dbg !7945 ; 2 uses
  %.sroa.011.2.i = phi i1 [ true, %bb.l ], [ %.sroa.011.1.i, %bb.s ], !dbg !8125
  %i.ca = phi i64 [ %i.af, %bb.l ], [ %i.bz, %bb.s ]
  %i.cb = phi i1 [ %i.ae, %bb.l ], [ %i.bx, %bb.s ]
    #dbg_value(i64 %.sroa.5.3.i, !765, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7947)
    #dbg_value(i64 %.sroa.5.3.i, !7751, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7946)
    #dbg_value(i64 %.sroa.870.3.i, !765, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7947)
    #dbg_value(i64 %.sroa.870.3.i, !7751, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7946)
    #dbg_value(i8 poison, !7753, !DIExpression(), !7950)
  %.sroa.7.0.i = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i28, i64 48, !dbg !7838 ; 2 uses
    #dbg_value(ptr %.sroa.7.0.i, !7754, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7949)
    #dbg_value(i64 %.sroa.069.1.i, !765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7947)
    #dbg_value(i64 %.sroa.069.1.i, !7751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7946)
    #dbg_value(i64 %.sroa.4.1.i, !765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7947)
    #dbg_value(i64 %.sroa.4.1.i, !7751, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7946)
    #dbg_value(i64 %.sroa.5.3.i, !765, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7947)
    #dbg_value(i64 %.sroa.5.3.i, !7751, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7946)
    #dbg_value(i64 %.sroa.870.3.i, !765, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7947)
    #dbg_value(i64 %.sroa.870.3.i, !7751, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7946)
    #dbg_value(i64 %.sroa.9.1.i, !765, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !7947)
    #dbg_value(i64 %.sroa.9.1.i, !7751, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !7946)
    #dbg_value(i64 %i.az, !765, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !7947)
    #dbg_value(i64 %i.az, !7751, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !7946)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !765, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 32), !7947)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !7751, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 448, 32), !7946)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !765, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 480, 32), !7947)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !7751, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 480, 32), !7946)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !765, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 512, 32), !7947)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !7751, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 512, 32), !7946)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !765, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 544, 32), !7947)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !7751, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 544, 32), !7946)
    #dbg_value(i32 %i.aq, !765, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !7947)
    #dbg_value(i32 %i.aq, !7751, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !7946)
    #dbg_value(i8 %.sroa.014.0.i, !765, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !7947)
    #dbg_value(i8 %.sroa.014.0.i, !7751, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !7946)
    #dbg_value(i8 %.sroa.019.0.i, !765, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !7947)
    #dbg_value(i8 %.sroa.019.0.i, !7751, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !7946)
    #dbg_value(i8 poison, !7752, !DIExpression(), !7950)
    #dbg_value(ptr undef, !7763, !DIExpression(), !7773)
    #dbg_value(i64 0, !7754, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7949)
    #dbg_value(ptr undef, !7851, !DIExpression(), !8126)
    #dbg_value(ptr undef, !7861, !DIExpression(), !8127)
    #dbg_value(ptr %.sroa.7.0.i, !7864, !DIExpression(), !8128)
    #dbg_value(ptr %i.a, !7866, !DIExpression(), !8129)
    #dbg_value(ptr poison, !7874, !DIExpression(), !8130)
    #dbg_value(ptr poison, !7877, !DIExpression(), !8131)
  %i.cc = icmp eq ptr %.sroa.7.0.i, %i.a, !dbg !8068
  br i1 %i.cc, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENCNvMso_B1o_NtB1o_10Properties11alternation0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.thread.i, label %.lr.ph, !dbg !8072, !llvm.loop !8132

_RINvMsn_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_10Properties5unionINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterNtB6_3HirENCNvMso_B6_BE_11alternation0ERBE_EB8_.exit: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENCNvMso_B1o_NtB1o_10Properties11alternation0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.thread.i
    #dbg_value(ptr %i.at, !773, !DIExpression(), !8134)
  store i64 %.sroa.069.0.lcssa.i, ptr %i.at, align 8, !dbg !8135
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !8135
  store i64 %.sroa.4.0.lcssa.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !8135
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16, !dbg !8135
  store i64 %.sroa.5.0.lcssa.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !8135
  %.sroa.870.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !8135
  store i64 %.sroa.870.0.lcssa.i, ptr %.sroa.870.0..sroa_idx.i, align 8, !dbg !8135
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32, !dbg !8135
  store i64 %.sroa.9.0.lcssa.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !dbg !8135
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 40, !dbg !8135
  store i64 %.sroa.3.0112.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !dbg !8135
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 48, !dbg !8135
  store i64 %.sroa.12.0.lcssa.i, ptr %.sroa.12.0..sroa_idx.i, align 8, !dbg !8135
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 56, !dbg !8135
  store <4 x i32> %i.as, ptr %.sroa.14.0..sroa_idx.i, align 8, !dbg !8135
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 72, !dbg !8135
  store i32 %.sroa.22.0.lcssa.i, ptr %.sroa.22.0..sroa_idx.i, align 8, !dbg !8135
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 76, !dbg !8135
  store i8 %.sroa.24.0.lcssa.i, ptr %.sroa.24.0..sroa_idx.i, align 4, !dbg !8135
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 77, !dbg !8135
  store i8 0, ptr %.sroa.26.0..sroa_idx.i, align 1, !dbg !8135
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 78, !dbg !8135
  store i8 %.sroa.27.0.lcssa.i, ptr %.sroa.27.0..sroa_idx.i, align 2, !dbg !8135
  ret ptr %i.at, !dbg !8136
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMso_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_10Properties4look(i32 noundef range(i32 1, 131073) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !8137 {
bb.a:
    #dbg_value(i32 %0, !8142, !DIExpression(), !8145)
    #dbg_value(i64 1, !8143, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8146)
    #dbg_value(i64 1, !765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8147)
    #dbg_value(i64 0, !8143, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8146)
    #dbg_value(i64 0, !765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8147)
    #dbg_value(i64 1, !8143, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8146)
    #dbg_value(i64 1, !765, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8147)
    #dbg_value(i64 0, !8143, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8146)
    #dbg_value(i64 0, !765, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8147)
    #dbg_value(i32 %0, !8143, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !8146)
    #dbg_value(i32 %0, !765, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !8147)
    #dbg_value(i32 %0, !8143, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !8146)
    #dbg_value(i32 %0, !765, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !8147)
    #dbg_value(i32 %0, !8143, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !8146)
    #dbg_value(i32 %0, !765, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !8147)
    #dbg_value(i32 %0, !8143, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !8146)
    #dbg_value(i32 %0, !765, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !8147)
    #dbg_value(i32 %0, !8143, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !8146)
    #dbg_value(i32 %0, !765, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !8147)
    #dbg_value(i8 1, !8143, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !8146)
    #dbg_value(i8 1, !765, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !8147)
    #dbg_value(i64 0, !8143, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !8146)
    #dbg_value(i64 0, !765, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !8147)
    #dbg_value(i64 1, !8143, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !8146)
    #dbg_value(i64 1, !765, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !8147)
    #dbg_value(i64 0, !8143, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !8146)
    #dbg_value(i64 0, !765, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !8147)
    #dbg_value(i8 0, !8143, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !8146)
    #dbg_value(i8 0, !765, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !8147)
    #dbg_value(i8 0, !8143, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !8146)
    #dbg_value(i8 0, !765, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !8147)
    #dbg_value(i64 8, !781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8149)
    #dbg_value(i64 8, !803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8151)
    #dbg_value(i64 8, !831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8153)
    #dbg_value(i64 80, !781, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8149)
    #dbg_value(i64 80, !803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8151)
    #dbg_value(i64 80, !831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8153)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !828, !DIExpression(), !8151)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !837, !DIExpression(), !8153)
    #dbg_value(i8 0, !838, !DIExpression(), !8153)
    #dbg_value(i64 8, !841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8155)
    #dbg_value(i64 8, !877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8157)
    #dbg_value(i64 80, !841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8155)
    #dbg_value(i64 80, !877, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8157)
    #dbg_value(i1 false, !847, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8155)
    #dbg_value(i64 80, !848, !DIExpression(), !8159)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !8160, !noalias !8161
  %i.a = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 1, 81) 80, i64 noundef range(i64 1, 9) 8) #23, !dbg !8164, !noalias !8161 ; 13 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !8165
  br i1 %i.b, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !dbg !8166, !prof !890

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #24, !dbg !8167, !noalias !8161
  unreachable, !dbg !8167

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !773, !DIExpression(), !8168)
  store i64 1, ptr %i.a, align 8, !dbg !8169
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !8169
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !8169
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !8169
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !8169
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !8169
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !8169
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !8169
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !8169
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !8169
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !8169
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !8169
  %i.c = insertelement <4 x i32> poison, i32 %0, i64 0, !dbg !8169
  %i.d = shufflevector <4 x i32> %i.c, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !8169
  store <4 x i32> %i.d, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !8169
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !8169
  store i32 %0, ptr %.sroa.14.0..sroa_idx, align 8, !dbg !8169
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 76, !dbg !8169
  store i8 1, ptr %.sroa.15.0..sroa_idx, align 4, !dbg !8169
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 77, !dbg !8169
  store i8 0, ptr %.sroa.16.0..sroa_idx, align 1, !dbg !8169
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 78, !dbg !8169
  store i8 0, ptr %.sroa.17.0..sroa_idx, align 2, !dbg !8169
  ret ptr %i.a, !dbg !8170
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMso_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_10Properties5class(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !8171 {
bb.a:
    #dbg_value(ptr %0, !8176, !DIExpression(), !8179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8180), !dbg !8183
    #dbg_value(ptr %0, !6177, !DIExpression(), !8184)
  %i.a = load i64, ptr %0, align 8, !dbg !8186, !range !763, !alias.scope !8180, !noundef !15
  %i.b = trunc nuw i64 %i.a to i1, !dbg !8187
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8184
  %i.d = load i64, ptr %i.c, align 8, !dbg !8184, !alias.scope !8180, !noundef !15 ; 5 uses
  br i1 %i.b, label %bb.i, label %bb.b, !dbg !8187

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !6178, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8188)
    #dbg_value(ptr poison, !6215, !DIExpression(), !8189)
    #dbg_value(i64 0, !6227, !DIExpression(), !8191)
    #dbg_value(i64 0, !6237, !DIExpression(), !8193)
    #dbg_value(ptr poison, !6232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8191)
    #dbg_value(ptr poison, !6245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8193)
    #dbg_value(i64 %i.d, !6232, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8191)
    #dbg_value(i64 %i.d, !6245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8193)
  %.not.i.i = icmp eq i64 %i.d, 0, !dbg !8195
  br i1 %.not.i.i, label %_RNvMs8_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_5Class7is_utf8.exit, label %bb.c, !dbg !8195

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8196
  %.val.i = load ptr, ptr %i.e, align 8, !dbg !8196, !alias.scope !8180, !nonnull !15, !noundef !15 ; 2 uses
    #dbg_value(ptr %.val.i, !6232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8191)
    #dbg_value(ptr %.val.i, !6245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8193)
    #dbg_value(ptr %.val.i, !6219, !DIExpression(), !8197)
  %i.f = load i32, ptr %.val.i, align 4, !dbg !8198, !range !3663, !noalias !8180, !noundef !15 ; 3 uses
    #dbg_value(i32 %i.f, !6252, !DIExpression(), !8199)
    #dbg_value(i32 %i.f, !6257, !DIExpression(), !8201)
  %i.g = icmp samesign ult i32 %i.f, 128, !dbg !8203
  br i1 %i.g, label %bb.f, label %bb.d, !dbg !8203

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i32 %i.f, 2048, !dbg !8204
  br i1 %i.h, label %bb.f, label %bb.e, !dbg !8204

bb.e:                                             ; preds = %bb.d
  %i.i = icmp samesign ult i32 %i.f, 65536, !dbg !8205
  %..i.i = select i1 %i.i, i64 3, i64 4, !dbg !8201
  br label %bb.f, !dbg !8201

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.4.0.i.ph.ph = phi i64 [ 2, %bb.d ], [ %..i.i, %bb.e ], [ 1, %bb.c ] ; 3 uses
    #dbg_value(ptr %0, !6092, !DIExpression(), !8206)
    #dbg_value(ptr %0, !6093, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8208)
    #dbg_value(ptr poison, !6132, !DIExpression(), !8209)
    #dbg_value(ptr poison, !6147, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8211)
    #dbg_value(i64 %i.d, !6147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8211)
    #dbg_value(ptr %.val.i, !6147, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8211)
  %i.j = getelementptr [8 x i8], ptr %.val.i, i64 %i.d, !dbg !8213
    #dbg_value(ptr %i.j, !6150, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !8214)
    #dbg_value(ptr %i.j, !6139, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !8215)
  %i.k = getelementptr i8, ptr %i.j, i64 -4, !dbg !8216
  %i.l = load i32, ptr %i.k, align 4, !dbg !8216, !range !3663, !noalias !8217, !noundef !15 ; 3 uses
    #dbg_value(i32 %i.l, !6160, !DIExpression(), !8220)
    #dbg_value(i32 %i.l, !6165, !DIExpression(), !8222)
  %i.m = icmp samesign ult i32 %i.l, 128, !dbg !8224
  br i1 %i.m, label %_RNvMs8_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_5Class7is_utf8.exit, label %bb.g, !dbg !8224

bb.g:                                             ; preds = %bb.f
  %i.n = icmp samesign ult i32 %i.l, 2048, !dbg !8225
  br i1 %i.n, label %_RNvMs8_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_5Class7is_utf8.exit, label %bb.h, !dbg !8225

bb.h:                                             ; preds = %bb.g
  %i.o = icmp samesign ult i32 %i.l, 65536, !dbg !8226
  %..i.i3 = select i1 %i.o, i64 3, i64 4, !dbg !8222
  br label %_RNvMs8_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_5Class7is_utf8.exit, !dbg !8222

bb.i:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !6180, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8227)
end_hunk_3
begin_hunk_4_@_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval13is_contiguousB6_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !13992
  %.val9 = load i8, ptr %i.b, align 1, !dbg !13992, !noundef !15
    #dbg_value(i8 %.val9, !13963, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13993)
    #dbg_value(i8 %.val9, !13987, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13988)
    #dbg_value(i8 %.val8, !13994, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14000)
    #dbg_value(i8 %.val8, !13994, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14000)
    #dbg_value(i8 %.val, !13997, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14000)
    #dbg_value(i8 %.val, !13997, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14000)
    #dbg_value(ptr undef, !13994, !DIExpression(DW_OP_deref), !14000)
    #dbg_value(ptr undef, !13997, !DIExpression(DW_OP_deref), !14000)
  %i.c = tail call i8 @llvm.umax.i8(i8 %.val, i8 %.val8), !dbg !14002
  %..i = zext i8 %i.c to i32, !dbg !14002
    #dbg_value(i8 %.val10, !14003, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14007)
    #dbg_value(i8 %.val10, !14003, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14007)
    #dbg_value(i8 %.val9, !14006, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14007)
    #dbg_value(i8 %.val9, !14006, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14007)
    #dbg_value(ptr undef, !14003, !DIExpression(DW_OP_deref), !14007)
    #dbg_value(ptr undef, !14006, !DIExpression(DW_OP_deref), !14007)
  %i.d = tail call i8 @llvm.umin.i8(i8 %.val9, i8 %.val10), !dbg !14009
  %..i11 = zext i8 %i.d to i32, !dbg !14009
    #dbg_value(i32 %..i11, !13971, !DIExpression(), !13972)
  %i.e = add nuw nsw i32 %..i11, 1, !dbg !14010
  %i.f = icmp samesign uge i32 %i.e, %..i, !dbg !13981
  ret i1 %i.f, !dbg !14011
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval21is_intersection_emptyB6_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !12676 {
bb.a:
    #dbg_value(ptr poison, !12702, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14012)
    #dbg_value(ptr poison, !12708, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14012)
    #dbg_value(ptr %0, !12675, !DIExpression(), !14014)
    #dbg_value(ptr %1, !12679, !DIExpression(), !14014)
  %.val6 = load i8, ptr %0, align 1, !dbg !14015, !noundef !15
    #dbg_value(i8 %.val6, !12680, !DIExpression(), !14016)
    #dbg_value(i8 %.val6, !12712, !DIExpression(), !14017)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14019
  %.val8 = load i8, ptr %i.a, align 1, !dbg !14019, !noundef !15
    #dbg_value(i8 %.val8, !12682, !DIExpression(), !14016)
    #dbg_value(i8 %.val8, !12720, !DIExpression(), !14020)
  %.val = load i8, ptr %1, align 1, !dbg !14022, !noundef !15
    #dbg_value(i8 %.val, !12683, !DIExpression(), !14023)
    #dbg_value(i8 %.val, !12717, !DIExpression(), !14017)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !14024
  %.val7 = load i8, ptr %i.b, align 1, !dbg !14024, !noundef !15
    #dbg_value(i8 %.val7, !12685, !DIExpression(), !14023)
    #dbg_value(i8 %.val7, !12723, !DIExpression(), !14020)
    #dbg_value(i8 %.val6, !12734, !DIExpression(), !14025)
    #dbg_value(i8 %.val6, !12734, !DIExpression(), !14025)
    #dbg_value(i8 %.val, !12738, !DIExpression(), !14025)
    #dbg_value(i8 %.val, !12738, !DIExpression(), !14025)
    #dbg_value(ptr undef, !12734, !DIExpression(DW_OP_deref), !14025)
    #dbg_value(ptr undef, !12738, !DIExpression(DW_OP_deref), !14025)
  %..i = tail call noundef i8 @llvm.umax.i8(i8 %.val, i8 %.val6), !dbg !14027
    #dbg_value(i8 %.val8, !12744, !DIExpression(), !14028)
    #dbg_value(i8 %.val8, !12744, !DIExpression(), !14028)
    #dbg_value(i8 %.val7, !12747, !DIExpression(), !14028)
    #dbg_value(i8 %.val7, !12747, !DIExpression(), !14028)
    #dbg_value(ptr undef, !12744, !DIExpression(DW_OP_deref), !14028)
    #dbg_value(ptr undef, !12747, !DIExpression(DW_OP_deref), !14028)
  %..i9 = tail call noundef i8 @llvm.umin.i8(i8 %.val7, i8 %.val8), !dbg !14030
    #dbg_value(ptr undef, !12708, !DIExpression(), !14012)
    #dbg_value(ptr undef, !12702, !DIExpression(), !14012)
  %i.c = icmp ugt i8 %..i, %..i9, !dbg !14031
  ret i1 %i.c, !dbg !14032
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden i24 @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval5unionB6_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !14033 {
bb.a:
    #dbg_value(ptr %0, !14037, !DIExpression(), !14043)
    #dbg_value(ptr %1, !14038, !DIExpression(), !14043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14044), !dbg !14047
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14048), !dbg !14047
    #dbg_value(ptr %0, !13955, !DIExpression(), !14050)
    #dbg_value(ptr %1, !13956, !DIExpression(), !14050)
    #dbg_value(i32 1, !13966, !DIExpression(), !14052)
  %.val8.i = load i8, ptr %0, align 1, !dbg !14054, !alias.scope !14044, !noalias !14048, !noundef !15 ; 2 uses
    #dbg_value(i8 %.val8.i, !13957, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14055)
    #dbg_value(i8 %.val8.i, !13976, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14056)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14058
  %.val10.i = load i8, ptr %i.a, align 1, !dbg !14058, !alias.scope !14044, !noalias !14048, !noundef !15 ; 2 uses
    #dbg_value(i8 %.val10.i, !13959, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14059)
    #dbg_value(i8 %.val10.i, !13984, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14060)
  %.val.i = load i8, ptr %1, align 1, !dbg !14062, !alias.scope !14048, !noalias !14044, !noundef !15 ; 2 uses
    #dbg_value(i8 %.val.i, !13961, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14063)
    #dbg_value(i8 %.val.i, !13979, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14056)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !14064
  %.val9.i = load i8, ptr %i.b, align 1, !dbg !14064, !alias.scope !14048, !noalias !14044, !noundef !15 ; 2 uses
    #dbg_value(i8 %.val9.i, !13963, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14065)
    #dbg_value(i8 %.val9.i, !13987, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14060)
    #dbg_value(i8 %.val8.i, !13994, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14066)
    #dbg_value(i8 %.val8.i, !13994, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14066)
    #dbg_value(i8 %.val.i, !13997, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14066)
    #dbg_value(i8 %.val.i, !13997, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14066)
    #dbg_value(ptr undef, !13994, !DIExpression(DW_OP_deref), !14066)
    #dbg_value(ptr undef, !13997, !DIExpression(DW_OP_deref), !14066)
  %i.c = tail call i8 @llvm.umax.i8(i8 %.val.i, i8 %.val8.i), !dbg !14068
  %..i.i = zext i8 %i.c to i32, !dbg !14068
    #dbg_value(i8 %.val10.i, !14003, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14069)
    #dbg_value(i8 %.val10.i, !14003, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14069)
    #dbg_value(i8 %.val9.i, !14006, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14069)
    #dbg_value(i8 %.val9.i, !14006, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14069)
    #dbg_value(ptr undef, !14003, !DIExpression(DW_OP_deref), !14069)
    #dbg_value(ptr undef, !14006, !DIExpression(DW_OP_deref), !14069)
  %i.d = tail call i8 @llvm.umin.i8(i8 %.val9.i, i8 %.val10.i), !dbg !14071
  %..i11.i = zext i8 %i.d to i32, !dbg !14071
    #dbg_value(i32 %..i11.i, !13971, !DIExpression(), !14052)
  %i.e = add nuw nsw i32 %..i11.i, 1, !dbg !14072
  %.not = icmp samesign ult i32 %i.e, %..i.i, !dbg !14073
  br i1 %.not, label %bb.c, label %bb.b, !dbg !14074

bb.b:                                             ; preds = %bb.a
    #dbg_value(i8 %.val8.i, !14075, !DIExpression(), !14079)
    #dbg_value(i8 %.val.i, !14078, !DIExpression(), !14079)
    #dbg_value(i8 %.val8.i, !12744, !DIExpression(), !14081)
    #dbg_value(i8 %.val8.i, !12744, !DIExpression(), !14081)
    #dbg_value(i8 %.val.i, !12747, !DIExpression(), !14081)
    #dbg_value(i8 %.val.i, !12747, !DIExpression(), !14081)
    #dbg_value(ptr undef, !12744, !DIExpression(DW_OP_deref), !14081)
    #dbg_value(ptr undef, !12747, !DIExpression(DW_OP_deref), !14081)
  %..i = tail call noundef i8 @llvm.umin.i8(i8 %.val.i, i8 %.val8.i), !dbg !14083 ; 2 uses
    #dbg_value(i8 %..i, !14039, !DIExpression(), !14084)
    #dbg_value(i8 %.val10.i, !14085, !DIExpression(), !14089)
    #dbg_value(i8 %.val9.i, !14088, !DIExpression(), !14089)
    #dbg_value(i8 %.val10.i, !12734, !DIExpression(), !14091)
    #dbg_value(i8 %.val10.i, !12734, !DIExpression(), !14091)
    #dbg_value(i8 %.val9.i, !12738, !DIExpression(), !14091)
    #dbg_value(i8 %.val9.i, !12738, !DIExpression(), !14091)
    #dbg_value(ptr undef, !12734, !DIExpression(DW_OP_deref), !14091)
    #dbg_value(ptr undef, !12738, !DIExpression(DW_OP_deref), !14091)
  %..i12 = tail call noundef i8 @llvm.umax.i8(i8 %.val9.i, i8 %.val10.i), !dbg !14093 ; 2 uses
    #dbg_value(i8 %..i12, !14041, !DIExpression(), !14094)
    #dbg_value(i8 %..i, !7251, !DIExpression(), !14095)
    #dbg_value(i8 %..i, !7251, !DIExpression(), !14095)
    #dbg_value(i8 %..i12, !7254, !DIExpression(), !14095)
    #dbg_value(i8 %..i12, !7254, !DIExpression(), !14095)
    #dbg_value(i8 0, !7255, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14097)
    #dbg_value(i8 0, !7255, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14097)
    #dbg_value(ptr undef, !7251, !DIExpression(DW_OP_deref), !14095)
    #dbg_value(ptr undef, !7254, !DIExpression(DW_OP_deref), !14095)
  %..i13 = tail call i8 @llvm.umin.i8(i8 %..i, i8 %..i12), !dbg !14098
  %.3.i = tail call i8 @llvm.umax.i8(i8 %..i, i8 %..i12), !dbg !14098
    #dbg_value(i8 %.3.i, !7255, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14097)
    #dbg_value(i8 %..i13, !7255, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14097)
  br label %bb.c, !dbg !14099

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0 = phi i8 [ %.3.i, %bb.b ], [ undef, %bb.a ]
  %.sroa.3.0 = phi i8 [ %..i13, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !14043
  %.sroa.4.0.insert.ext = zext i8 %.sroa.4.0 to i24, !dbg !14099
  %.sroa.4.0.insert.shift = shl nuw i24 %.sroa.4.0.insert.ext, 16, !dbg !14099
  %.sroa.3.0.insert.ext = zext i8 %.sroa.3.0 to i24, !dbg !14099
  %.sroa.3.0.insert.shift = shl nuw nsw i24 %.sroa.3.0.insert.ext, 8, !dbg !14099
  %.sroa.3.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, %.sroa.4.0.insert.shift, !dbg !14099
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i24, !dbg !14099
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.insert, %.sroa.0.0.insert.ext, !dbg !14099
  ret i24 %.sroa.0.0.insert.insert, !dbg !14099
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i8, i8 } @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval6createB6_(i8 noundef %0, i8 noundef %1) unnamed_addr #6 !dbg !7252 {
bb.a:
    #dbg_value(i8 %0, !7251, !DIExpression(), !14100)
    #dbg_value(i8 %0, !7251, !DIExpression(), !14100)
    #dbg_value(i8 %1, !7254, !DIExpression(), !14100)
    #dbg_value(i8 %1, !7254, !DIExpression(), !14100)
    #dbg_value(i8 0, !7255, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14101)
    #dbg_value(i8 0, !7255, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14101)
    #dbg_value(ptr undef, !7251, !DIExpression(DW_OP_deref), !14100)
    #dbg_value(ptr undef, !7254, !DIExpression(DW_OP_deref), !14100)
  %. = tail call i8 @llvm.umin.i8(i8 %0, i8 %1), !dbg !14102
  %.3 = tail call i8 @llvm.umax.i8(i8 %0, i8 %1), !dbg !14102
    #dbg_value(i8 %.3, !7255, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14101)
    #dbg_value(i8 %., !7255, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14101)
  %i.a = insertvalue { i8, i8 } poison, i8 %., 0, !dbg !14103
  %i.b = insertvalue { i8, i8 } %i.a, i8 %.3, 1, !dbg !14103
  ret { i8, i8 } %i.b, !dbg !14103
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i24 @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval9intersectB6_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !14104 {
bb.a:
    #dbg_value(ptr poison, !13873, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14112)
    #dbg_value(ptr poison, !13876, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14112)
    #dbg_value(ptr %0, !14106, !DIExpression(), !14114)
    #dbg_value(ptr %1, !14107, !DIExpression(), !14114)
  %.val7 = load i8, ptr %0, align 1, !dbg !14115, !noundef !15
    #dbg_value(i8 %.val7, !14116, !DIExpression(), !14120)
  %.val = load i8, ptr %1, align 1, !dbg !14122, !noundef !15
    #dbg_value(i8 %.val, !14119, !DIExpression(), !14120)
    #dbg_value(i8 %.val7, !12734, !DIExpression(), !14123)
    #dbg_value(i8 %.val7, !12734, !DIExpression(), !14123)
    #dbg_value(i8 %.val, !12738, !DIExpression(), !14123)
    #dbg_value(i8 %.val, !12738, !DIExpression(), !14123)
    #dbg_value(ptr undef, !12734, !DIExpression(DW_OP_deref), !14123)
    #dbg_value(ptr undef, !12738, !DIExpression(DW_OP_deref), !14123)
  %..i = tail call noundef i8 @llvm.umax.i8(i8 %.val, i8 %.val7), !dbg !14125 ; 2 uses
    #dbg_value(i8 %..i, !14108, !DIExpression(), !14126)
    #dbg_value(i8 %..i, !14108, !DIExpression(), !14126)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14127
  %.val9 = load i8, ptr %i.a, align 1, !dbg !14127, !noundef !15
    #dbg_value(i8 %.val9, !14128, !DIExpression(), !14132)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !14134
  %.val8 = load i8, ptr %i.b, align 1, !dbg !14134, !noundef !15
    #dbg_value(i8 %.val8, !14131, !DIExpression(), !14132)
    #dbg_value(i8 %.val9, !12744, !DIExpression(), !14135)
    #dbg_value(i8 %.val9, !12744, !DIExpression(), !14135)
    #dbg_value(i8 %.val8, !12747, !DIExpression(), !14135)
    #dbg_value(i8 %.val8, !12747, !DIExpression(), !14135)
    #dbg_value(ptr undef, !12744, !DIExpression(DW_OP_deref), !14135)
    #dbg_value(ptr undef, !12747, !DIExpression(DW_OP_deref), !14135)
  %..i10 = tail call noundef i8 @llvm.umin.i8(i8 %.val8, i8 %.val9), !dbg !14137 ; 2 uses
    #dbg_value(i8 %..i10, !14110, !DIExpression(), !14138)
    #dbg_value(i8 %..i10, !14110, !DIExpression(), !14138)
    #dbg_value(ptr undef, !14108, !DIExpression(DW_OP_deref), !14126)
    #dbg_value(ptr undef, !14110, !DIExpression(DW_OP_deref), !14138)
    #dbg_value(ptr undef, !13876, !DIExpression(), !14112)
    #dbg_value(ptr undef, !13873, !DIExpression(), !14112)
  %.not = icmp ule i8 %..i, %..i10, !dbg !14139
  %.sroa.4.0.insert.ext = zext i8 %..i10 to i24, !dbg !14140
  %.sroa.4.0.insert.shift = shl nuw i24 %.sroa.4.0.insert.ext, 16, !dbg !14140
  %.sroa.3.0.insert.ext = zext i8 %..i to i24, !dbg !14140
  %.sroa.3.0.insert.shift = shl nuw nsw i24 %.sroa.3.0.insert.ext, 8, !dbg !14140
  %.sroa.3.0.insert.insert = or disjoint i24 %.sroa.4.0.insert.shift, %.sroa.3.0.insert.shift, !dbg !14140
  %.sroa.0.0.insert.ext = zext i1 %.not to i24, !dbg !14140
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.insert, %.sroa.0.0.insert.ext, !dbg !14140
  ret i24 %.sroa.0.0.insert.insert, !dbg !14140
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNtNtB4_8interval8Interval10differenceB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !14141 {
bb.a:
    #dbg_value(ptr poison, !14174, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14181)
    #dbg_value(ptr poison, !14180, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14181)
    #dbg_value(ptr poison, !14183, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14187)
    #dbg_value(ptr poison, !14186, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14187)
    #dbg_declare(ptr %0, !14166, !DIExpression(), !14189)
    #dbg_value(ptr %1, !14160, !DIExpression(), !14190)
    #dbg_value(ptr %2, !14161, !DIExpression(), !14190)
  %.val21 = load i32, ptr %1, align 4, !dbg !14191, !range !3663, !noundef !15 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !14191
  %.val22 = load i32, ptr %i.a, align 4, !dbg !14191, !range !3663, !noundef !15 ; 7 uses
  %.val23 = load i32, ptr %2, align 4, !dbg !14191, !range !3663, !noundef !15 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !14191
  %.val24 = load i32, ptr %i.b, align 4, !dbg !14191, !range !3663, !noundef !15 ; 5 uses
    #dbg_value(ptr poison, !14192, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14196)
    #dbg_value(ptr poison, !14192, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14209)
    #dbg_value(ptr poison, !14195, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14211)
    #dbg_value(ptr poison, !14195, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14213)
    #dbg_value(ptr poison, !14192, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14213)
    #dbg_value(ptr poison, !14195, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14209)
    #dbg_value(ptr poison, !14192, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14211)
    #dbg_value(ptr poison, !14195, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14196)
    #dbg_value(ptr poison, !14202, !DIExpression(), !14215)
    #dbg_value(ptr poison, !14203, !DIExpression(), !14215)
    #dbg_value(i32 %.val22, !14205, !DIExpression(), !14216)
    #dbg_value(i32 %.val24, !14207, !DIExpression(), !14217)
    #dbg_value(ptr undef, !14204, !DIExpression(DW_OP_deref), !14216)
    #dbg_value(ptr undef, !14206, !DIExpression(DW_OP_deref), !14217)
    #dbg_value(ptr undef, !14195, !DIExpression(), !14211)
    #dbg_value(ptr undef, !14192, !DIExpression(), !14211)
  %.not.i = icmp samesign ule i32 %.val23, %.val21, !dbg !14218
    #dbg_value(ptr undef, !14207, !DIExpression(DW_OP_deref), !14217)
    #dbg_value(ptr undef, !14195, !DIExpression(), !14196)
    #dbg_value(ptr undef, !14192, !DIExpression(), !14196)
  %.not12.i = icmp samesign ule i32 %.val21, %.val24
  %or.cond.not15.i = select i1 %.not.i, i1 %.not12.i, i1 false
    #dbg_value(ptr undef, !14205, !DIExpression(DW_OP_deref), !14216)
    #dbg_value(ptr undef, !14195, !DIExpression(), !14213)
    #dbg_value(ptr undef, !14192, !DIExpression(), !14213)
  %.not13.i = icmp samesign ule i32 %.val23, %.val22
  %or.cond14.not.i = select i1 %or.cond.not15.i, i1 %.not13.i, i1 false, !dbg !14219
  %i.c = icmp samesign ule i32 %.val22, %.val24, !dbg !14219
  %.sroa.0.0.i = select i1 %or.cond14.not.i, i1 %i.c, i1 false, !dbg !14219
  br i1 %.sroa.0.0.i, label %bb.c, label %bb.b, !dbg !14220

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !14183, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14221)
    #dbg_value(ptr poison, !14186, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14221)
    #dbg_value(ptr %1, !14228, !DIExpression(), !14235)
    #dbg_value(ptr %2, !14229, !DIExpression(), !14235)
    #dbg_value(i32 %.val21, !14230, !DIExpression(), !14236)
    #dbg_value(i32 %.val21, !14237, !DIExpression(), !14243)
    #dbg_value(i32 %.val22, !14231, !DIExpression(), !14236)
    #dbg_value(i32 %.val22, !14245, !DIExpression(), !14249)
    #dbg_value(i32 %.val23, !14232, !DIExpression(), !14251)
    #dbg_value(i32 %.val23, !14242, !DIExpression(), !14243)
    #dbg_value(i32 %.val24, !14233, !DIExpression(), !14251)
    #dbg_value(i32 %.val24, !14248, !DIExpression(), !14249)
    #dbg_value(ptr undef, !14252, !DIExpression(DW_OP_deref), !14258)
    #dbg_value(ptr undef, !14255, !DIExpression(DW_OP_deref), !14258)
  %..i.i = tail call noundef range(i32 0, 1114112) i32 @llvm.umax.i32(i32 range(i32 0, 1114112) %.val23, i32 range(i32 0, 1114112) %.val21), !dbg !14260
    #dbg_value(ptr undef, !14261, !DIExpression(DW_OP_deref), !14265)
    #dbg_value(ptr undef, !14264, !DIExpression(DW_OP_deref), !14265)
  %..i9.i = tail call noundef range(i32 0, 1114112) i32 @llvm.umin.i32(i32 range(i32 0, 1114112) %.val24, i32 range(i32 0, 1114112) %.val22), !dbg !14267
    #dbg_value(ptr undef, !14186, !DIExpression(), !14221)
    #dbg_value(ptr undef, !14183, !DIExpression(), !14221)
  %i.d = icmp samesign ugt i32 %..i.i, %..i9.i, !dbg !14268
  br i1 %i.d, label %bb.e, label %bb.d, !dbg !14269

bb.c:                                             ; preds = %bb.a
  store i32 -1, ptr %0, align 4, !dbg !14270
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14270
  store i32 -1, ptr %i.e, align 4, !dbg !14270
  br label %bb.l, !dbg !14271

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !14186, !DIExpression(), !14187)
    #dbg_value(ptr undef, !14183, !DIExpression(), !14187)
  %.not = icmp samesign ugt i32 %.val23, %.val21, !dbg !14273 ; 2 uses
    #dbg_value(i1 %.not, !14162, !DIExpression(DW_OP_not, DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14274)
    #dbg_value(ptr undef, !14180, !DIExpression(), !14181)
    #dbg_value(ptr undef, !14174, !DIExpression(), !14181)
  %i.f = icmp samesign ult i32 %.val24, %.val22, !dbg !14275 ; 2 uses
    #dbg_value(i1 %i.f, !14164, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14276)
  br i1 %.not, label %bb.h, label %bb.f, !dbg !14277

bb.e:                                             ; preds = %bb.b
  store i32 %.val21, ptr %0, align 4, !dbg !14278
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !14278
  store i32 %.val22, ptr %i.g, align 4, !dbg !14278
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14278
  store i32 -1, ptr %i.h, align 4, !dbg !14278
  br label %bb.l, !dbg !14271

bb.f:                                             ; preds = %bb.d
  br i1 %i.f, label %.thread, label %bb.g, !dbg !14279, !prof !9090

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3028, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3030) #30, !dbg !14280
  unreachable, !dbg !14280

.thread:                                          ; preds = %bb.f
  store i32 -1, ptr %0, align 4, !dbg !14281
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14281
  store i32 -1, ptr %i.i, align 4, !dbg !14281
  br label %bb.i, !dbg !14282

bb.h:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !14281
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14281
  store i32 -1, ptr %i.k, align 4, !dbg !14281
  %i.l = tail call noundef i32 @_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9decrement(i32 noundef %.val23), !dbg !14283 ; 2 uses
    #dbg_value(i32 %i.l, !14168, !DIExpression(), !14284)
    #dbg_value(i32 0, !7024, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14285)
    #dbg_value(i32 0, !7024, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14285)
    #dbg_value(ptr undef, !7019, !DIExpression(DW_OP_deref), !14287)
    #dbg_value(ptr undef, !7023, !DIExpression(DW_OP_deref), !14287)
  %..i = tail call i32 @llvm.umin.i32(i32 range(i32 0, 1114112) %.val21, i32 range(i32 0, 1114112) %i.l), !dbg !14288
  %.3.i = tail call i32 @llvm.umax.i32(i32 range(i32 0, 1114112) %.val21, i32 range(i32 0, 1114112) %i.l), !dbg !14288
    #dbg_value(i32 %.3.i, !7024, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14285)
    #dbg_value(i32 %..i, !7024, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14285)
  store i32 %..i, ptr %0, align 4, !dbg !14289
  store i32 %.3.i, ptr %i.j, align 4, !dbg !14289
  br i1 %i.f, label %bb.i, label %bb.l, !dbg !14282

bb.i:                                             ; preds = %.thread, %bb.h
  %i.m = tail call noundef i32 @_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9increment(i32 noundef %.val24), !dbg !14290 ; 2 uses
    #dbg_value(i32 %i.m, !14170, !DIExpression(), !14291)
    #dbg_value(i32 0, !7024, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14292)
    #dbg_value(i32 0, !7024, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14292)
    #dbg_value(ptr undef, !7019, !DIExpression(DW_OP_deref), !14294)
    #dbg_value(ptr undef, !7023, !DIExpression(DW_OP_deref), !14294)
  %..i27 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 1114112) %i.m, i32 range(i32 0, 1114112) %.val22), !dbg !14295 ; 2 uses
  %.3.i28 = tail call i32 @llvm.umax.i32(i32 range(i32 0, 1114112) %i.m, i32 range(i32 0, 1114112) %.val22), !dbg !14295 ; 2 uses
    #dbg_value(i32 %.3.i28, !7024, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14292)
    #dbg_value(i32 %..i27, !7024, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14292)
    #dbg_value(i32 %..i27, !14172, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14296)
    #dbg_value(i32 %.3.i28, !14172, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14296)
    #dbg_value(ptr %0, !14297, !DIExpression(), !14304)
    #dbg_value(ptr %0, !14306, !DIExpression(), !14310)
  br i1 %.not, label %bb.j, label %bb.k, !dbg !14312

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14313
  store i32 %..i27, ptr %i.n, align 4, !dbg !14313
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !14313
  store i32 %.3.i28, ptr %i.o, align 4, !dbg !14313
  br label %bb.l, !dbg !14314

bb.k:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !14315
  store i32 %..i27, ptr %0, align 4, !dbg !14316
  store i32 %.3.i28, ptr %i.p, align 4, !dbg !14316
  br label %bb.l, !dbg !14314

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h, %bb.e, %bb.c
  ret void, !dbg !14317
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNtNtB4_8interval8Interval13is_contiguousB6_(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !14318 {
bb.a:
    #dbg_value(ptr %0, !14320, !DIExpression(), !14330)
    #dbg_value(ptr %1, !14321, !DIExpression(), !14330)
    #dbg_value(i32 1, !14331, !DIExpression(), !14335)
  %.val8 = load i32, ptr %0, align 4, !dbg !14337, !range !3663, !noundef !15
    #dbg_value(i32 %.val8, !14322, !DIExpression(), !14338)
    #dbg_value(i32 %.val8, !14339, !DIExpression(), !14343)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !14345
  %.val10 = load i32, ptr %i.a, align 4, !dbg !14345, !range !3663, !noundef !15
    #dbg_value(i32 %.val10, !14324, !DIExpression(), !14346)
    #dbg_value(i32 %.val10, !14347, !DIExpression(), !14351)
  %.val = load i32, ptr %1, align 4, !dbg !14353, !range !3663, !noundef !15
    #dbg_value(i32 %.val, !14326, !DIExpression(), !14354)
    #dbg_value(i32 %.val, !14342, !DIExpression(), !14343)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !14355
  %.val9 = load i32, ptr %i.b, align 4, !dbg !14355, !range !3663, !noundef !15
    #dbg_value(i32 %.val9, !14328, !DIExpression(), !14356)
    #dbg_value(i32 %.val9, !14350, !DIExpression(), !14351)
    #dbg_value(i32 %.val8, !13994, !DIExpression(), !14357)
    #dbg_value(i32 %.val8, !13994, !DIExpression(), !14357)
    #dbg_value(i32 %.val, !13997, !DIExpression(), !14357)
    #dbg_value(i32 %.val, !13997, !DIExpression(), !14357)
    #dbg_value(ptr undef, !13994, !DIExpression(DW_OP_deref), !14357)
    #dbg_value(ptr undef, !13997, !DIExpression(DW_OP_deref), !14357)
  %..i = tail call noundef range(i32 0, 1114112) i32 @llvm.umax.i32(i32 range(i32 0, 1114112) %.val, i32 range(i32 0, 1114112) %.val8), !dbg !14359
    #dbg_value(i32 %.val10, !14003, !DIExpression(), !14360)
    #dbg_value(i32 %.val10, !14003, !DIExpression(), !14360)
    #dbg_value(i32 %.val9, !14006, !DIExpression(), !14360)
    #dbg_value(i32 %.val9, !14006, !DIExpression(), !14360)
    #dbg_value(ptr undef, !14003, !DIExpression(DW_OP_deref), !14360)
    #dbg_value(ptr undef, !14006, !DIExpression(DW_OP_deref), !14360)
  %..i11 = tail call noundef range(i32 0, 1114112) i32 @llvm.umin.i32(i32 range(i32 0, 1114112) %.val9, i32 range(i32 0, 1114112) %.val10), !dbg !14362
    #dbg_value(i32 %..i11, !14334, !DIExpression(), !14335)
  %i.c = add nuw nsw i32 %..i11, 1, !dbg !14363
  %i.d = icmp samesign ule i32 %..i, %i.c, !dbg !14344
  ret i1 %i.d, !dbg !14364
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNtNtB4_8interval8Interval21is_intersection_emptyB6_(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !14225 {
bb.a:
    #dbg_value(ptr poison, !14183, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14365)
    #dbg_value(ptr poison, !14186, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14365)
    #dbg_value(ptr %0, !14228, !DIExpression(), !14367)
    #dbg_value(ptr %1, !14229, !DIExpression(), !14367)
  %.val6 = load i32, ptr %0, align 4, !dbg !14368, !range !3663, !noundef !15
    #dbg_value(i32 %.val6, !14230, !DIExpression(), !14369)
    #dbg_value(i32 %.val6, !14237, !DIExpression(), !14370)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !14372
  %.val8 = load i32, ptr %i.a, align 4, !dbg !14372, !range !3663, !noundef !15
    #dbg_value(i32 %.val8, !14231, !DIExpression(), !14369)
    #dbg_value(i32 %.val8, !14245, !DIExpression(), !14373)
  %.val = load i32, ptr %1, align 4, !dbg !14375, !range !3663, !noundef !15
    #dbg_value(i32 %.val, !14232, !DIExpression(), !14376)
    #dbg_value(i32 %.val, !14242, !DIExpression(), !14370)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !14377
  %.val7 = load i32, ptr %i.b, align 4, !dbg !14377, !range !3663, !noundef !15
    #dbg_value(i32 %.val7, !14233, !DIExpression(), !14376)
    #dbg_value(i32 %.val7, !14248, !DIExpression(), !14373)
    #dbg_value(i32 %.val6, !14252, !DIExpression(), !14378)
    #dbg_value(i32 %.val6, !14252, !DIExpression(), !14378)
    #dbg_value(i32 %.val, !14255, !DIExpression(), !14378)
    #dbg_value(i32 %.val, !14255, !DIExpression(), !14378)
    #dbg_value(ptr undef, !14252, !DIExpression(DW_OP_deref), !14378)
    #dbg_value(ptr undef, !14255, !DIExpression(DW_OP_deref), !14378)
  %..i = tail call noundef range(i32 0, 1114112) i32 @llvm.umax.i32(i32 range(i32 0, 1114112) %.val, i32 range(i32 0, 1114112) %.val6), !dbg !14380
    #dbg_value(i32 %.val8, !14261, !DIExpression(), !14381)
    #dbg_value(i32 %.val8, !14261, !DIExpression(), !14381)
    #dbg_value(i32 %.val7, !14264, !DIExpression(), !14381)
    #dbg_value(i32 %.val7, !14264, !DIExpression(), !14381)
    #dbg_value(ptr undef, !14261, !DIExpression(DW_OP_deref), !14381)
    #dbg_value(ptr undef, !14264, !DIExpression(DW_OP_deref), !14381)
  %..i9 = tail call noundef range(i32 0, 1114112) i32 @llvm.umin.i32(i32 range(i32 0, 1114112) %.val7, i32 range(i32 0, 1114112) %.val8), !dbg !14383
    #dbg_value(ptr undef, !14186, !DIExpression(), !14365)
    #dbg_value(ptr undef, !14183, !DIExpression(), !14365)
  %i.c = icmp samesign ugt i32 %..i, %..i9, !dbg !14384
  ret i1 %i.c, !dbg !14385
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden { i32, i32 } @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNtNtB4_8interval8Interval5unionB6_(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !14386 {
bb.a:
    #dbg_value(ptr %0, !14390, !DIExpression(), !14396)
    #dbg_value(ptr %1, !14391, !DIExpression(), !14396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14397), !dbg !14400
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14401), !dbg !14400
    #dbg_value(ptr %0, !14320, !DIExpression(), !14403)
    #dbg_value(ptr %1, !14321, !DIExpression(), !14403)
    #dbg_value(i32 1, !14331, !DIExpression(), !14405)
  %.val8.i = load i32, ptr %0, align 4, !dbg !14407, !range !3663, !alias.scope !14397, !noalias !14401, !noundef !15 ; 2 uses
    #dbg_value(i32 %.val8.i, !14322, !DIExpression(), !14408)
    #dbg_value(i32 %.val8.i, !14339, !DIExpression(), !14409)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !14411
  %.val10.i = load i32, ptr %i.a, align 4, !dbg !14411, !range !3663, !alias.scope !14397, !noalias !14401, !noundef !15 ; 2 uses
    #dbg_value(i32 %.val10.i, !14324, !DIExpression(), !14412)
    #dbg_value(i32 %.val10.i, !14347, !DIExpression(), !14413)
  %.val.i = load i32, ptr %1, align 4, !dbg !14415, !range !3663, !alias.scope !14401, !noalias !14397, !noundef !15 ; 2 uses
    #dbg_value(i32 %.val.i, !14326, !DIExpression(), !14416)
    #dbg_value(i32 %.val.i, !14342, !DIExpression(), !14409)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !14417
  %.val9.i = load i32, ptr %i.b, align 4, !dbg !14417, !range !3663, !alias.scope !14401, !noalias !14397, !noundef !15 ; 2 uses
    #dbg_value(i32 %.val9.i, !14328, !DIExpression(), !14418)
    #dbg_value(i32 %.val9.i, !14350, !DIExpression(), !14413)
    #dbg_value(i32 %.val8.i, !13994, !DIExpression(), !14419)
    #dbg_value(i32 %.val8.i, !13994, !DIExpression(), !14419)
    #dbg_value(i32 %.val.i, !13997, !DIExpression(), !14419)
    #dbg_value(i32 %.val.i, !13997, !DIExpression(), !14419)
    #dbg_value(ptr undef, !13994, !DIExpression(DW_OP_deref), !14419)
    #dbg_value(ptr undef, !13997, !DIExpression(DW_OP_deref), !14419)
  %..i.i = tail call noundef range(i32 0, 1114112) i32 @llvm.umax.i32(i32 range(i32 0, 1114112) %.val.i, i32 range(i32 0, 1114112) %.val8.i), !dbg !14421
    #dbg_value(i32 %.val10.i, !14003, !DIExpression(), !14422)
    #dbg_value(i32 %.val10.i, !14003, !DIExpression(), !14422)
    #dbg_value(i32 %.val9.i, !14006, !DIExpression(), !14422)
    #dbg_value(i32 %.val9.i, !14006, !DIExpression(), !14422)
    #dbg_value(ptr undef, !14003, !DIExpression(DW_OP_deref), !14422)
    #dbg_value(ptr undef, !14006, !DIExpression(DW_OP_deref), !14422)
  %..i11.i = tail call noundef range(i32 0, 1114112) i32 @llvm.umin.i32(i32 range(i32 0, 1114112) %.val9.i, i32 range(i32 0, 1114112) %.val10.i), !dbg !14424
    #dbg_value(i32 %..i11.i, !14334, !DIExpression(), !14405)
  %i.c = add nuw nsw i32 %..i11.i, 1, !dbg !14425
  %.not = icmp samesign ugt i32 %..i.i, %i.c, !dbg !14426
  br i1 %.not, label %bb.c, label %bb.b, !dbg !14427

bb.b:                                             ; preds = %bb.a
    #dbg_value(i32 %.val8.i, !14428, !DIExpression(), !14432)
    #dbg_value(i32 %.val.i, !14431, !DIExpression(), !14432)
    #dbg_value(i32 %.val8.i, !14261, !DIExpression(), !14434)
    #dbg_value(i32 %.val8.i, !14261, !DIExpression(), !14434)
    #dbg_value(i32 %.val.i, !14264, !DIExpression(), !14434)
    #dbg_value(i32 %.val.i, !14264, !DIExpression(), !14434)
    #dbg_value(ptr undef, !14261, !DIExpression(DW_OP_deref), !14434)
    #dbg_value(ptr undef, !14264, !DIExpression(DW_OP_deref), !14434)
  %..i = tail call noundef range(i32 0, 1114112) i32 @llvm.umin.i32(i32 range(i32 0, 1114112) %.val.i, i32 range(i32 0, 1114112) %.val8.i), !dbg !14436 ; 2 uses
    #dbg_value(i32 %..i, !14392, !DIExpression(), !14437)
    #dbg_value(i32 %.val10.i, !14438, !DIExpression(), !14442)
    #dbg_value(i32 %.val9.i, !14441, !DIExpression(), !14442)
    #dbg_value(i32 %.val10.i, !14252, !DIExpression(), !14444)
    #dbg_value(i32 %.val10.i, !14252, !DIExpression(), !14444)
    #dbg_value(i32 %.val9.i, !14255, !DIExpression(), !14444)
    #dbg_value(i32 %.val9.i, !14255, !DIExpression(), !14444)
    #dbg_value(ptr undef, !14252, !DIExpression(DW_OP_deref), !14444)
    #dbg_value(ptr undef, !14255, !DIExpression(DW_OP_deref), !14444)
  %..i12 = tail call noundef range(i32 0, 1114112) i32 @llvm.umax.i32(i32 range(i32 0, 1114112) %.val9.i, i32 range(i32 0, 1114112) %.val10.i), !dbg !14446 ; 2 uses
    #dbg_value(i32 %..i12, !14394, !DIExpression(), !14447)
    #dbg_value(i32 %..i, !7019, !DIExpression(), !14448)
    #dbg_value(i32 %..i, !7019, !DIExpression(), !14448)
    #dbg_value(i32 %..i12, !7023, !DIExpression(), !14448)
    #dbg_value(i32 %..i12, !7023, !DIExpression(), !14448)
    #dbg_value(i32 0, !7024, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14450)
    #dbg_value(i32 0, !7024, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14450)
    #dbg_value(ptr undef, !7019, !DIExpression(DW_OP_deref), !14448)
    #dbg_value(ptr undef, !7023, !DIExpression(DW_OP_deref), !14448)
  %..i13 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 1114112) %..i, i32 range(i32 0, 1114112) %..i12), !dbg !14451
  %.3.i = tail call i32 @llvm.umax.i32(i32 range(i32 0, 1114112) %..i, i32 range(i32 0, 1114112) %..i12), !dbg !14451
    #dbg_value(i32 %.3.i, !7024, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14450)
    #dbg_value(i32 %..i13, !7024, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14450)
  br label %bb.c, !dbg !14452

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %.3.i, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ %..i13, %bb.b ], [ -1, %bb.a ], !dbg !14396
  %i.d = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !14452
  %i.e = insertvalue { i32, i32 } %i.d, i32 %.sroa.3.0, 1, !dbg !14452
  ret { i32, i32 } %i.e, !dbg !14452
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i32, i32 } @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNtNtB4_8interval8Interval6createB6_(i32 noundef range(i32 0, 1114112) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #6 !dbg !7020 {
bb.a:
    #dbg_value(i32 %0, !7019, !DIExpression(), !14453)
    #dbg_value(i32 %0, !7019, !DIExpression(), !14453)
    #dbg_value(i32 %1, !7023, !DIExpression(), !14453)
    #dbg_value(i32 %1, !7023, !DIExpression(), !14453)
    #dbg_value(i32 0, !7024, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14454)
    #dbg_value(i32 0, !7024, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14454)
    #dbg_value(ptr undef, !7019, !DIExpression(DW_OP_deref), !14453)
    #dbg_value(ptr undef, !7023, !DIExpression(DW_OP_deref), !14453)
  %. = tail call i32 @llvm.umin.i32(i32 %0, i32 %1), !dbg !14455
  %.3 = tail call i32 @llvm.umax.i32(i32 %0, i32 %1), !dbg !14455
    #dbg_value(i32 %.3, !7024, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14454)
    #dbg_value(i32 %., !7024, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14454)
  %i.a = insertvalue { i32, i32 } poison, i32 %., 0, !dbg !14456
  %i.b = insertvalue { i32, i32 } %i.a, i32 %.3, 1, !dbg !14456
  ret { i32, i32 } %i.b, !dbg !14456
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i32, i32 } @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNtNtB4_8interval8Interval9intersectB6_(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !14457 {
bb.a:
    #dbg_value(ptr poison, !14192, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14465)
    #dbg_value(ptr poison, !14195, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14465)
    #dbg_value(ptr %0, !14459, !DIExpression(), !14467)
    #dbg_value(ptr %1, !14460, !DIExpression(), !14467)
  %.val7 = load i32, ptr %0, align 4, !dbg !14468, !range !3663, !noundef !15
    #dbg_value(i32 %.val7, !14469, !DIExpression(), !14473)
  %.val = load i32, ptr %1, align 4, !dbg !14475, !range !3663, !noundef !15
    #dbg_value(i32 %.val, !14472, !DIExpression(), !14473)
    #dbg_value(i32 %.val7, !14252, !DIExpression(), !14476)
    #dbg_value(i32 %.val7, !14252, !DIExpression(), !14476)
    #dbg_value(i32 %.val, !14255, !DIExpression(), !14476)
    #dbg_value(i32 %.val, !14255, !DIExpression(), !14476)
    #dbg_value(ptr undef, !14252, !DIExpression(DW_OP_deref), !14476)
    #dbg_value(ptr undef, !14255, !DIExpression(DW_OP_deref), !14476)
  %..i = tail call noundef range(i32 0, 1114112) i32 @llvm.umax.i32(i32 range(i32 0, 1114112) %.val, i32 range(i32 0, 1114112) %.val7), !dbg !14478 ; 2 uses
    #dbg_value(i32 %..i, !14461, !DIExpression(), !14479)
    #dbg_value(i32 %..i, !14461, !DIExpression(), !14479)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !14480
  %.val9 = load i32, ptr %i.a, align 4, !dbg !14480, !range !3663, !noundef !15
    #dbg_value(i32 %.val9, !14481, !DIExpression(), !14485)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !14487
  %.val8 = load i32, ptr %i.b, align 4, !dbg !14487, !range !3663, !noundef !15
    #dbg_value(i32 %.val8, !14484, !DIExpression(), !14485)
    #dbg_value(i32 %.val9, !14261, !DIExpression(), !14488)
    #dbg_value(i32 %.val9, !14261, !DIExpression(), !14488)
    #dbg_value(i32 %.val8, !14264, !DIExpression(), !14488)
    #dbg_value(i32 %.val8, !14264, !DIExpression(), !14488)
    #dbg_value(ptr undef, !14261, !DIExpression(DW_OP_deref), !14488)
    #dbg_value(ptr undef, !14264, !DIExpression(DW_OP_deref), !14488)
  %..i10 = tail call noundef range(i32 0, 1114112) i32 @llvm.umin.i32(i32 range(i32 0, 1114112) %.val8, i32 range(i32 0, 1114112) %.val9), !dbg !14490 ; 2 uses
    #dbg_value(i32 %..i10, !14463, !DIExpression(), !14491)
    #dbg_value(i32 %..i10, !14463, !DIExpression(), !14491)
    #dbg_value(ptr undef, !14461, !DIExpression(DW_OP_deref), !14479)
    #dbg_value(ptr undef, !14463, !DIExpression(DW_OP_deref), !14491)
    #dbg_value(ptr undef, !14195, !DIExpression(), !14465)
    #dbg_value(ptr undef, !14192, !DIExpression(), !14465)
  %.not = icmp samesign ugt i32 %..i, %..i10, !dbg !14492
  %spec.select = select i1 %.not, i32 -1, i32 %..i, !dbg !14493
  %i.c = insertvalue { i32, i32 } poison, i32 %spec.select, 0, !dbg !14494
  %i.d = insertvalue { i32, i32 } %i.c, i32 %..i10, 1, !dbg !14494
  ret { i32, i32 } %i.d, !dbg !14494
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VeccENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVeccENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEBW_EINtB5_7ZipImplBW_BW_E3newB1q_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i32 -1, 1114112) i32 @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNvNtBb_4char8from_u32INtB7_5FnMutTmEE8call_mutCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3roNzt6HBWW_12regex_syntax(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_17ClassUnicodeRangeE3newINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoItercENCNvMs3_B8_NtB8_3Hir11alternation0EEBa_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_15ClassBytesRangeE3newINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterhENCNvMs3_B8_NtB8_3Hir11alternations_0EEBa_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVeccE8grow_oneCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecppE9split_off13assert_failed(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE10differenceB9_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_15ClassBytesRangeE3newINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1I_5slice4iter4IterNtB8_17ClassUnicodeRangeENCNvMsa_B8_NtB8_12ClassUnicode13to_byte_class0EEBa_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE16case_fold_simpleB9_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE20symmetric_differenceB9_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE4pushB9_(ptr noalias nofree noundef align 8 dereferenceable(32), i32 noundef range(i32 0, 1114112), i32 noundef range(i32 0, 1114112)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_17ClassUnicodeRangeE3newINtNtCs4wP2HXfJTCR_5alloc3vec3VecB18_EEBa_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE5unionB9_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE6negateB9_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE9intersectB9_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_15ClassBytesRangeE10differenceB9_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_15ClassBytesRangeE16case_fold_simpleB9_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_17ClassUnicodeRangeE3newINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1K_5slice4iter4IterNtB8_15ClassBytesRangeENCNvMsf_B8_NtB8_10ClassBytes16to_unicode_class0EEBa_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_15ClassBytesRangeE20symmetric_differenceB9_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_15ClassBytesRangeE4pushB9_(ptr noalias nofree noundef align 8 dereferenceable(32), i8 noundef, i8 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_15ClassBytesRangeE3newINtNtCs4wP2HXfJTCR_5alloc3vec3VecB18_EEBa_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_15ClassBytesRangeE5unionB9_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_15ClassBytesRangeE6negateB9_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_15ClassBytesRangeE9intersectB9_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvNtCs3roNzt6HBWW_12regex_syntax5debug11utf8_decode(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCsj6eKBz9Db1c_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

end_hunk_4
