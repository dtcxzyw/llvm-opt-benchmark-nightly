Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/bulk.bulk.93260328f3fcf1fb-cgu.08?download=true
begin_hunk_0_@_RINvMNtNtCsar2VadbF9t7_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNvCscDgBWNIBxoJ_4bulk6server0EB17_:bb.a
  %i.k = load ptr, ptr %i.a, align 8, !dbg !10537, !alias.scope !10538, !noalias !10516, !noundef !23 ; 2 uses
  %i.l = icmp eq ptr %i.k, null, !dbg !10537
  br i1 %i.l, label %.thread.i, label %bb.f, !dbg !10537

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr %i.a, !10263, !DIExpression(), !10543)
    #dbg_value(ptr %i.a, !10271, !DIExpression(), !10545)
    #dbg_value(ptr %i.a, !10279, !DIExpression(), !10547)
    #dbg_value(i64 1, !10286, !DIExpression(), !10549)
    #dbg_value(i8 1, !10295, !DIExpression(), !10549)
    #dbg_value(i64 1, !10298, !DIExpression(), !10551)
    #dbg_value(i8 1, !10305, !DIExpression(), !10551)
    #dbg_value(ptr %i.k, !10294, !DIExpression(), !10553)
    #dbg_value(ptr %i.k, !10304, !DIExpression(), !10551)
  %i.m = atomicrmw sub ptr %i.k, i64 1 release, align 8, !dbg !10554, !noalias !10555
  %i.n = icmp eq i64 %i.m, 1, !dbg !10562
  br i1 %i.n, label %bb.g, label %.thread.i, !dbg !10562

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 2, !10320, !DIExpression(), !10563)
  fence acquire, !dbg !10565
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #23
          to label %.thread.i unwind label %bb.k, !dbg !10566, !noalias !10526

bb.h:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !10567), !dbg !10531
    #dbg_value(ptr %i.a, !10247, !DIExpression(), !10570)
  %i.o = load ptr, ptr %i.a, align 8, !dbg !10572, !alias.scope !10573, !noalias !10516, !noundef !23 ; 2 uses
  %i.p = icmp eq ptr %i.o, null, !dbg !10572
  br i1 %i.p, label %_RINvMNtNtCsar2VadbF9t7_5tokio7runtime7runtimeNtB3_7Runtime14block_on_innerNCNvCscDgBWNIBxoJ_4bulk6server0EB1e_.exit, label %bb.i, !dbg !10572

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %i.a, !10263, !DIExpression(), !10574)
    #dbg_value(ptr %i.a, !10271, !DIExpression(), !10576)
    #dbg_value(ptr %i.a, !10279, !DIExpression(), !10578)
    #dbg_value(i64 1, !10286, !DIExpression(), !10580)
    #dbg_value(i8 1, !10295, !DIExpression(), !10580)
    #dbg_value(i64 1, !10298, !DIExpression(), !10582)
    #dbg_value(i8 1, !10305, !DIExpression(), !10582)
    #dbg_value(ptr %i.o, !10294, !DIExpression(), !10584)
    #dbg_value(ptr %i.o, !10304, !DIExpression(), !10582)
  %i.q = atomicrmw sub ptr %i.o, i64 1 release, align 8, !dbg !10585, !noalias !10586
  %i.r = icmp eq i64 %i.q, 1, !dbg !10593
  br i1 %i.r, label %bb.j, label %_RINvMNtNtCsar2VadbF9t7_5tokio7runtime7runtimeNtB3_7Runtime14block_on_innerNCNvCscDgBWNIBxoJ_4bulk6server0EB1e_.exit, !dbg !10593

bb.j:                                             ; preds = %bb.i
    #dbg_value(i8 2, !10320, !DIExpression(), !10594)
  fence acquire, !dbg !10596
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #23, !dbg !10597, !noalias !10526
  br label %_RINvMNtNtCsar2VadbF9t7_5tokio7runtime7runtimeNtB3_7Runtime14block_on_innerNCNvCscDgBWNIBxoJ_4bulk6server0EB1e_.exit, !dbg !10597

bb.k:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !10531, !noalias !10526
  unreachable, !dbg !10531

bb.l:                                             ; preds = %bb.m, %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !10598
  unreachable, !dbg !10598

.thread.i:                                        ; preds = %bb.m, %bb.g, %bb.f, %bb.e, %bb.c
  %.pn7.i = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.u, %bb.m ], [ %i.j, %bb.g ], [ %i.j, %bb.e ], [ %i.j, %bb.f ]
  resume { ptr, i32 } %.pn7.i, !dbg !10598

bb.m:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvCscDgBWNIBxoJ_4bulk6server0EBF_(ptr noundef nonnull align 8 dereferenceable(392) %i.b) #21
          to label %.thread.i unwind label %bb.l, !dbg !10525, !noalias !10599

_RINvMNtNtCsar2VadbF9t7_5tokio7runtime7runtimeNtB3_7Runtime14block_on_innerNCNvCscDgBWNIBxoJ_4bulk6server0EB1e_.exit: ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10525, !noalias !10516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10600
  ret ptr %i.h, !dbg !10601
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsb_CscbFFjjIlwRm_5rcgenNtB6_11KeyIdMethod6deriveINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscDgBWNIBxoJ_4bulk(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10602 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %0, !10619, !DIExpression(), !10642)
    #dbg_declare(ptr %0, !10640, !DIExpression(), !10655)
    #dbg_value(ptr %1, !10610, !DIExpression(), !10661)
    #dbg_declare(ptr %2, !10611, !DIExpression(), !10662)
    #dbg_declare(ptr %i.a, !10617, !DIExpression(), !10663)
    #dbg_declare(ptr poison, !10647, !DIExpression(), !10664)
    #dbg_declare(ptr poison, !10636, !DIExpression(), !10665)
    #dbg_declare(ptr poison, !10666, !DIExpression(), !10674)
    #dbg_declare(ptr poison, !10676, !DIExpression(), !10683)
    #dbg_declare(ptr poison, !10685, !DIExpression(), !10717)
    #dbg_declare(ptr poison, !10647, !DIExpression(), !10719)
    #dbg_declare(ptr poison, !10636, !DIExpression(), !10720)
    #dbg_declare(ptr poison, !10666, !DIExpression(), !10721)
    #dbg_declare(ptr poison, !10676, !DIExpression(), !10724)
    #dbg_value(i64 20, !10712, !DIExpression(), !10727)
    #dbg_declare(ptr poison, !10685, !DIExpression(), !10730)
  %i.b = load i64, ptr %1, align 8, !dbg !10731, !range !10732, !noundef !23 ; 2 uses
  %i.c = xor i64 %i.b, -9223372036854775808, !dbg !10731
  %i.d = icmp slt i64 %i.b, 0, !dbg !10731
  %i.e = select i1 %i.d, i64 %i.c, i64 3, !dbg !10731
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.i
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ], !dbg !10733

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !10734

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr @_RNvNtCs8shshkhJObF_4ring6digest6SHA384, !10612, !DIExpression(), !10736)
  br label %bb.i, !dbg !10737

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr @_RNvNtCs8shshkhJObF_4ring6digest6SHA512, !10612, !DIExpression(), !10736)
  br label %bb.i, !dbg !10738

bb.e:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !10614, !DIExpression(), !10739)
    #dbg_value(ptr %1, !10740, !DIExpression(), !10746)
    #dbg_value(ptr %1, !10748, !DIExpression(), !10752)
    #dbg_value(ptr %1, !10754, !DIExpression(), !10760)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10762
  %i.g = load ptr, ptr %i.f, align 8, !dbg !10762, !nonnull !23, !noundef !23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10781
  %i.i = load i64, ptr %i.h, align 8, !dbg !10781, !noundef !23 ; 8 uses
    #dbg_value(i64 %i.i, !10637, !DIExpression(), !10782)
    #dbg_value(i64 %i.i, !10673, !DIExpression(), !10783)
    #dbg_value(i64 %i.i, !10682, !DIExpression(), !10784)
    #dbg_value(i64 %i.i, !10785, !DIExpression(), !10795)
    #dbg_value(i64 %i.i, !10797, !DIExpression(), !10804)
    #dbg_value(i64 %i.i, !10806, !DIExpression(), !10813)
    #dbg_value(i64 %i.i, !10691, !DIExpression(), !10815)
    #dbg_value(ptr %i.g, !10653, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10816)
    #dbg_value(ptr %i.g, !10646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10817)
    #dbg_value(ptr %i.g, !10631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10818)
    #dbg_value(i64 %i.i, !10653, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10816)
    #dbg_value(i64 %i.i, !10646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10817)
    #dbg_value(i64 %i.i, !10631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10818)
    #dbg_value(i64 1, !10692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10815)
    #dbg_value(i64 1, !10692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10815)
    #dbg_value(i64 %i.i, !10819, !DIExpression(), !10874)
    #dbg_value(i64 %i.i, !10876, !DIExpression(), !10897)
    #dbg_value(i64 %i.i, !10899, !DIExpression(), !10926)
    #dbg_value(i64 %i.i, !10928, !DIExpression(), !10937)
    #dbg_value(i1 false, !10841, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10874)
    #dbg_declare(ptr poison, !10842, !DIExpression(), !10939)
    #dbg_value(i64 1, !10843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10874)
    #dbg_value(i64 1, !10843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10874)
    #dbg_value(i64 1, !10896, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10897)
    #dbg_value(i64 1, !10933, !DIExpression(), !10937)
    #dbg_value(i64 1, !10896, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10897)
    #dbg_value(ptr poison, !10923, !DIExpression(), !10940)
    #dbg_value(i1 false, !10936, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10941)
    #dbg_value(i1 false, !10942, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10949)
    #dbg_value(i64 %i.i, !10924, !DIExpression(), !10951)
    #dbg_value(i64 %i.i, !10934, !DIExpression(), !10941)
  %.not.i = icmp slt i64 %i.i, 0
  br i1 %.not.i, label %.invoke, label %bb.f, !dbg !10952, !prof !10953

bb.f:                                             ; preds = %bb.e
    #dbg_value(i64 1, !10844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10954)
    #dbg_value(i64 %i.i, !10844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10954)
  %i.j = icmp eq i64 %i.i, 0, !dbg !10955
  br i1 %i.j, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscDgBWNIBxoJ_4bulk.exit.thread83, label %bb.g, !dbg !10955

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscDgBWNIBxoJ_4bulk.exit.thread83: ; preds = %bb.f
  store i64 0, ptr %0, align 8, !dbg !10956
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10956
  store ptr inttoptr (i64 1 to ptr), ptr %i.k, align 8, !dbg !10956
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10956
  store i64 0, ptr %i.l, align 8, !dbg !10956
  br label %bb.p, !dbg !10957

bb.g:                                             ; preds = %bb.f
    #dbg_value(i64 1, !10958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10988)
    #dbg_value(i64 1, !10958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11006)
    #dbg_value(i64 %i.i, !10958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10988)
    #dbg_value(i64 %i.i, !10958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11006)
    #dbg_value(i64 %i.i, !10965, !DIExpression(), !11019)
    #dbg_value(i64 %i.i, !10965, !DIExpression(), !11020)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !dbg !10954, !noalias !11021
    #dbg_value(ptr poison, !10848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11024)
    #dbg_value(i64 poison, !10848, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11024)
    #dbg_value(ptr poison, !11016, !DIExpression(), !11025)
    #dbg_value(ptr poison, !11010, !DIExpression(), !11026)
    #dbg_value(i64 1, !11017, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11025)
    #dbg_value(i64 1, !11011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11026)
    #dbg_value(i64 %i.i, !11017, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11025)
    #dbg_value(i64 %i.i, !11011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11026)
    #dbg_value(i8 0, !11012, !DIExpression(), !11026)
    #dbg_value(i64 1, !11027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11032)
    #dbg_value(i64 %i.i, !11027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11032)
    #dbg_value(i1 false, !10964, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11006)
  %i.m = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !dbg !11034, !noalias !11021 ; 3 uses
    #dbg_value(ptr %i.m, !10848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11024)
  %i.n = icmp eq ptr %i.m, null, !dbg !11035
  br i1 %i.n, label %.invoke, label %bb.u, !dbg !11036

bb.h:                                             ; preds = %.invoke, %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #21
          to label %common.resume unwind label %bb.v, !dbg !11037

bb.i:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.sroa.0.0 = phi ptr [ @_RNvNtCs8shshkhJObF_4ring6digest6SHA512, %bb.d ], [ @_RNvNtCs8shshkhJObF_4ring6digest6SHA384, %bb.c ], [ @_RNvNtCs8shshkhJObF_4ring6digest6SHA256, %bb.a ], !dbg !10661
    #dbg_value(ptr %.sroa.0.0, !10612, !DIExpression(), !10736)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11038
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !11039 ; 3 uses
  %.val = load ptr, ptr %i.p, align 8, !dbg !11039, !nonnull !23, !noundef !23
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !11039
  %.val60 = load i64, ptr %i.q, align 8, !dbg !11039, !noundef !23
  invoke void @_RNvNtCs8shshkhJObF_4ring6digest6digest(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val60)
          to label %bb.j unwind label %bb.h, !dbg !11040

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr %i.a, !11041, !DIExpression(), !11049)
    #dbg_value(ptr %i.a, !10653, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11051)
    #dbg_value(ptr %i.a, !10646, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11052)
    #dbg_value(ptr %i.a, !10631, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11053)
    #dbg_value(i64 20, !10653, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11051)
    #dbg_value(i64 20, !10646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11052)
    #dbg_value(i64 20, !10631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11053)
    #dbg_value(i64 20, !10638, !DIExpression(), !11054)
    #dbg_value(i64 20, !10673, !DIExpression(), !11055)
    #dbg_value(i64 20, !10682, !DIExpression(), !11056)
    #dbg_value(i64 20, !10785, !DIExpression(), !11057)
    #dbg_value(i64 20, !10797, !DIExpression(), !11060)
    #dbg_value(i64 20, !10806, !DIExpression(), !11063)
    #dbg_value(i64 1, !10692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10727)
    #dbg_value(i64 1, !10692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10727)
    #dbg_value(i64 20, !10819, !DIExpression(), !11065)
    #dbg_value(i64 20, !10876, !DIExpression(), !11067)
    #dbg_value(i64 20, !10899, !DIExpression(), !11069)
    #dbg_value(i64 20, !10928, !DIExpression(), !11071)
    #dbg_value(i1 false, !10841, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11065)
    #dbg_declare(ptr poison, !10842, !DIExpression(), !11073)
    #dbg_value(i64 1, !10843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11065)
    #dbg_value(i64 1, !10843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11065)
    #dbg_value(i64 1, !10896, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11067)
    #dbg_value(i64 1, !10933, !DIExpression(), !11071)
    #dbg_value(i64 1, !10896, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11067)
    #dbg_value(ptr poison, !10923, !DIExpression(), !11074)
    #dbg_value(i1 false, !10936, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11075)
    #dbg_value(i1 false, !10942, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11076)
    #dbg_value(i64 20, !10924, !DIExpression(), !11078)
    #dbg_value(i64 20, !10934, !DIExpression(), !11075)
    #dbg_value(i64 1, !10844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11079)
    #dbg_value(i64 20, !10844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11079)
    #dbg_value(i64 1, !10958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11080)
    #dbg_value(i64 1, !10958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11084)
    #dbg_value(i64 20, !10958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11080)
    #dbg_value(i64 20, !10958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11084)
    #dbg_value(i64 20, !10965, !DIExpression(), !11088)
    #dbg_value(i64 20, !10965, !DIExpression(), !11089)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !dbg !11079, !noalias !11090
    #dbg_value(ptr poison, !10848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11093)
    #dbg_value(i64 poison, !10848, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11093)
    #dbg_value(ptr poison, !11016, !DIExpression(), !11094)
    #dbg_value(ptr poison, !11010, !DIExpression(), !11095)
    #dbg_value(i64 1, !11017, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11094)
    #dbg_value(i64 1, !11011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11095)
    #dbg_value(i64 20, !11017, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11094)
    #dbg_value(i64 20, !11011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11095)
    #dbg_value(i8 0, !11012, !DIExpression(), !11095)
    #dbg_value(i64 1, !11027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11096)
    #dbg_value(i64 20, !11027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11096)
    #dbg_value(i1 false, !10964, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11084)
  %i.r = call noundef dereferenceable_or_null(20) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 20, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !dbg !11098, !noalias !11090 ; 3 uses
    #dbg_value(ptr %i.r, !10848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11093)
  %i.s = icmp eq ptr %i.r, null, !dbg !11099
  br i1 %i.s, label %.invoke, label %bb.k, !dbg !11100

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11101
    #dbg_value(ptr %i.t, !10653, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11051)
    #dbg_value(ptr %i.t, !10646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11052)
    #dbg_value(ptr %i.t, !10631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11053)
  store i64 20, ptr %0, align 8, !dbg !11102
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11102
  store ptr %i.r, ptr %i.u, align 8, !dbg !11102
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11102
    #dbg_value(ptr %i.t, !10793, !DIExpression(), !11057)
    #dbg_value(ptr %i.t, !10802, !DIExpression(), !11060)
    #dbg_value(ptr %i.r, !10794, !DIExpression(), !11057)
    #dbg_value(ptr %i.r, !10803, !DIExpression(), !11060)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.r, ptr noundef nonnull align 8 dereferenceable(20) %i.t, i64 20, i1 false), !dbg !11103
    #dbg_value(ptr %0, !10812, !DIExpression(), !11104)
  store i64 20, ptr %i.v, align 8, !dbg !11105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11106
    #dbg_value(ptr %2, !11107, !DIExpression(), !11112)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.n unwind label %bb.l, !dbg !11114

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val3.i = load i64, ptr %2, align 8, !dbg !11114, !range !2458, !alias.scope !11115, !noundef !23 ; 2 uses
    #dbg_value(ptr poison, !11120, !DIExpression(), !11128)
    #dbg_value(ptr poison, !11130, !DIExpression(), !11134)
    #dbg_value(ptr poison, !2482, !DIExpression(), !11136)
    #dbg_value(i64 1, !2499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11136)
    #dbg_value(i64 1, !2499, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11136)
    #dbg_value(ptr poison, !2505, !DIExpression(), !11138)
    #dbg_value(i64 1, !2530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11138)
    #dbg_value(i64 1, !2530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11138)
  %i.x = icmp eq i64 %.val3.i, 0, !dbg !11140
  br i1 %i.x, label %common.resume, label %bb.m, !dbg !11140

bb.m:                                             ; preds = %bb.l
  %.val4.i = load ptr, ptr %i.p, align 8, !dbg !11114, !alias.scope !11141, !nonnull !23, !noundef !23
    #dbg_value(ptr %.val4.i, !2500, !DIExpression(), !11142)
    #dbg_value(i64 1, !2502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11142)
    #dbg_value(i64 %.val3.i, !2502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11142)
    #dbg_value(ptr poison, !2551, !DIExpression(), !11143)
    #dbg_value(ptr poison, !2563, !DIExpression(), !11145)
    #dbg_value(ptr %.val4.i, !2559, !DIExpression(), !11143)
    #dbg_value(ptr %.val4.i, !2568, !DIExpression(), !11145)
    #dbg_value(ptr %.val4.i, !2572, !DIExpression(), !11147)
    #dbg_value(ptr %.val4.i, !2581, !DIExpression(), !11149)
    #dbg_value(i64 1, !2560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11143)
    #dbg_value(i64 1, !2569, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11145)
    #dbg_value(i64 1, !2578, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11147)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11149)
    #dbg_value(i64 %.val3.i, !2560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11143)
    #dbg_value(i64 %.val3.i, !2569, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11145)
    #dbg_value(i64 %.val3.i, !2578, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11147)
    #dbg_value(i64 %.val3.i, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11149)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %.val3.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !dbg !11151, !noalias !11152
  br label %common.resume, !dbg !11155

bb.n:                                             ; preds = %bb.k
  %.val.i = load i64, ptr %2, align 8, !dbg !11114, !range !2458, !alias.scope !11115, !noundef !23 ; 2 uses
    #dbg_value(ptr poison, !11120, !DIExpression(), !11156)
    #dbg_value(ptr poison, !11130, !DIExpression(), !11158)
    #dbg_value(ptr poison, !2482, !DIExpression(), !11160)
    #dbg_value(i64 1, !2499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11160)
    #dbg_value(i64 1, !2499, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11160)
    #dbg_value(ptr poison, !2505, !DIExpression(), !11162)
    #dbg_value(i64 1, !2530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11162)
    #dbg_value(i64 1, !2530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11162)
  %i.y = icmp eq i64 %.val.i, 0, !dbg !11164
  br i1 %i.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscDgBWNIBxoJ_4bulk.exit, label %bb.o, !dbg !11164

bb.o:                                             ; preds = %bb.n
  %.val2.i = load ptr, ptr %i.p, align 8, !dbg !11114, !alias.scope !11141, !nonnull !23, !noundef !23
    #dbg_value(ptr %.val2.i, !2500, !DIExpression(), !11165)
    #dbg_value(i64 1, !2502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11165)
    #dbg_value(i64 %.val.i, !2502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11165)
    #dbg_value(ptr poison, !2551, !DIExpression(), !11166)
    #dbg_value(ptr poison, !2563, !DIExpression(), !11168)
    #dbg_value(ptr %.val2.i, !2559, !DIExpression(), !11166)
    #dbg_value(ptr %.val2.i, !2568, !DIExpression(), !11168)
    #dbg_value(ptr %.val2.i, !2572, !DIExpression(), !11170)
    #dbg_value(ptr %.val2.i, !2581, !DIExpression(), !11172)
    #dbg_value(i64 1, !2560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11166)
    #dbg_value(i64 1, !2569, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11168)
    #dbg_value(i64 1, !2578, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11170)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11172)
    #dbg_value(i64 %.val.i, !2560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11166)
    #dbg_value(i64 %.val.i, !2569, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11168)
    #dbg_value(i64 %.val.i, !2578, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11170)
    #dbg_value(i64 %.val.i, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11172)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !dbg !11174, !noalias !11175
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscDgBWNIBxoJ_4bulk.exit, !dbg !11178

common.resume:                                    ; preds = %bb.h, %bb.q, %bb.r, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.q ], [ %i.w, %bb.l ], [ %i.w, %bb.m ], [ %i.ab, %bb.r ], [ %i.o, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !10661

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.t, %bb.s, %bb.o, %bb.n
  ret void, !dbg !11179

.invoke:                                          ; preds = %bb.g, %bb.e, %bb.j
  %i.z = phi i64 [ 1, %bb.j ], [ 1, %bb.g ], [ 0, %bb.e ]
  %i.aa = phi i64 [ 20, %bb.j ], [ %i.i, %bb.g ], [ %i.i, %bb.e ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.aa) #24
          to label %.cont unwind label %bb.h, !dbg !11180

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscDgBWNIBxoJ_4bulk.exit.thread83, %bb.u
    #dbg_value(ptr %2, !11107, !DIExpression(), !11186)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.s unwind label %bb.q, !dbg !11188

bb.q:                                             ; preds = %bb.p
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val3.i63 = load i64, ptr %2, align 8, !dbg !11188, !range !2458, !alias.scope !11189, !noundef !23 ; 2 uses
    #dbg_value(ptr poison, !11120, !DIExpression(), !11194)
    #dbg_value(ptr poison, !11130, !DIExpression(), !11196)
    #dbg_value(ptr poison, !2482, !DIExpression(), !11198)
    #dbg_value(i64 1, !2499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11198)
    #dbg_value(i64 1, !2499, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11198)
    #dbg_value(ptr poison, !2505, !DIExpression(), !11200)
    #dbg_value(i64 1, !2530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11200)
    #dbg_value(i64 1, !2530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11200)
  %i.ac = icmp eq i64 %.val3.i63, 0, !dbg !11202
  br i1 %i.ac, label %common.resume, label %bb.r, !dbg !11202

bb.r:                                             ; preds = %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !11188
  %.val4.i64 = load ptr, ptr %i.ad, align 8, !dbg !11188, !alias.scope !11203, !nonnull !23, !noundef !23
    #dbg_value(ptr %.val4.i64, !2500, !DIExpression(), !11204)
    #dbg_value(i64 1, !2502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11204)
    #dbg_value(i64 %.val3.i63, !2502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11204)
    #dbg_value(ptr poison, !2551, !DIExpression(), !11205)
    #dbg_value(ptr poison, !2563, !DIExpression(), !11207)
    #dbg_value(ptr %.val4.i64, !2559, !DIExpression(), !11205)
    #dbg_value(ptr %.val4.i64, !2568, !DIExpression(), !11207)
    #dbg_value(ptr %.val4.i64, !2572, !DIExpression(), !11209)
    #dbg_value(ptr %.val4.i64, !2581, !DIExpression(), !11211)
    #dbg_value(i64 1, !2560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11205)
    #dbg_value(i64 1, !2569, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11207)
    #dbg_value(i64 1, !2578, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11209)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11211)
    #dbg_value(i64 %.val3.i63, !2560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11205)
    #dbg_value(i64 %.val3.i63, !2569, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11207)
    #dbg_value(i64 %.val3.i63, !2578, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11209)
    #dbg_value(i64 %.val3.i63, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11211)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i64, i64 noundef %.val3.i63, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !dbg !11213, !noalias !11214
  br label %common.resume, !dbg !11217

bb.s:                                             ; preds = %bb.p
  %.val.i66 = load i64, ptr %2, align 8, !dbg !11188, !range !2458, !alias.scope !11189, !noundef !23 ; 2 uses
    #dbg_value(ptr poison, !11120, !DIExpression(), !11218)
    #dbg_value(ptr poison, !11130, !DIExpression(), !11220)
    #dbg_value(ptr poison, !2482, !DIExpression(), !11222)
    #dbg_value(i64 1, !2499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11222)
    #dbg_value(i64 1, !2499, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11222)
    #dbg_value(ptr poison, !2505, !DIExpression(), !11224)
    #dbg_value(i64 1, !2530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11224)
    #dbg_value(i64 1, !2530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11224)
  %i.ae = icmp eq i64 %.val.i66, 0, !dbg !11226
  br i1 %i.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscDgBWNIBxoJ_4bulk.exit, label %bb.t, !dbg !11226

bb.t:                                             ; preds = %bb.s
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !11188
  %.val2.i67 = load ptr, ptr %i.af, align 8, !dbg !11188, !alias.scope !11203, !nonnull !23, !noundef !23
    #dbg_value(ptr %.val2.i67, !2500, !DIExpression(), !11227)
    #dbg_value(i64 1, !2502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11227)
    #dbg_value(i64 %.val.i66, !2502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11227)
    #dbg_value(ptr poison, !2551, !DIExpression(), !11228)
    #dbg_value(ptr poison, !2563, !DIExpression(), !11230)
    #dbg_value(ptr %.val2.i67, !2559, !DIExpression(), !11228)
    #dbg_value(ptr %.val2.i67, !2568, !DIExpression(), !11230)
    #dbg_value(ptr %.val2.i67, !2572, !DIExpression(), !11232)
    #dbg_value(ptr %.val2.i67, !2581, !DIExpression(), !11234)
    #dbg_value(i64 1, !2560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11228)
    #dbg_value(i64 1, !2569, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(i64 1, !2578, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11232)
    #dbg_value(i64 1, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11234)
    #dbg_value(i64 %.val.i66, !2560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11228)
    #dbg_value(i64 %.val.i66, !2569, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11230)
    #dbg_value(i64 %.val.i66, !2578, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11232)
    #dbg_value(i64 %.val.i66, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11234)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i67, i64 noundef %.val.i66, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !dbg !11236, !noalias !11237
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscDgBWNIBxoJ_4bulk.exit, !dbg !11240

bb.u:                                             ; preds = %bb.g
  store i64 %i.i, ptr %0, align 8, !dbg !10956
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10956
  store ptr %i.m, ptr %i.ag, align 8, !dbg !10956
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10956
    #dbg_value(ptr %i.g, !10793, !DIExpression(), !10795)
    #dbg_value(ptr %i.g, !10802, !DIExpression(), !10804)
    #dbg_value(ptr %i.m, !10794, !DIExpression(), !10795)
    #dbg_value(ptr %i.m, !10803, !DIExpression(), !10804)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.g, i64 %i.i, i1 false), !dbg !11241
    #dbg_value(ptr %0, !10812, !DIExpression(), !11242)
  store i64 %i.i, ptr %i.ah, align 8, !dbg !11243
  br label %bb.p, !dbg !11244

bb.v:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !11245
  unreachable, !dbg !11245
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsb_CscbFFjjIlwRm_5rcgenNtB6_11KeyIdMethod6deriveRShECscDgBWNIBxoJ_4bulk(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11246 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
    #dbg_value(ptr %2, !11254, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11261)
    #dbg_value(i64 %3, !11254, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11261)
    #dbg_declare(ptr %0, !11262, !DIExpression(), !11274)
    #dbg_declare(ptr %0, !11272, !DIExpression(), !11285)
    #dbg_value(ptr %1, !11253, !DIExpression(), !11261)
    #dbg_declare(ptr %i.a, !11259, !DIExpression(), !11291)
    #dbg_declare(ptr poison, !11279, !DIExpression(), !11292)
    #dbg_declare(ptr poison, !11268, !DIExpression(), !11293)
    #dbg_declare(ptr poison, !11294, !DIExpression(), !11298)
    #dbg_declare(ptr poison, !11300, !DIExpression(), !11304)
    #dbg_declare(ptr poison, !11306, !DIExpression(), !11320)
    #dbg_declare(ptr poison, !11279, !DIExpression(), !11322)
    #dbg_declare(ptr poison, !11268, !DIExpression(), !11323)
    #dbg_declare(ptr poison, !11294, !DIExpression(), !11324)
    #dbg_declare(ptr poison, !11300, !DIExpression(), !11327)
    #dbg_value(i64 20, !11315, !DIExpression(), !11330)
    #dbg_declare(ptr poison, !11306, !DIExpression(), !11333)
  %i.b = load i64, ptr %1, align 8, !dbg !11334, !range !10732, !noundef !23 ; 2 uses
  %i.c = xor i64 %i.b, -9223372036854775808, !dbg !11334
  %i.d = icmp slt i64 %i.b, 0, !dbg !11334
  %i.e = select i1 %i.d, i64 %i.c, i64 3, !dbg !11334
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.h
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ], !dbg !11335

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !11336

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr @_RNvNtCs8shshkhJObF_4ring6digest6SHA384, !11255, !DIExpression(), !11338)
  br label %bb.h, !dbg !11339

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr @_RNvNtCs8shshkhJObF_4ring6digest6SHA512, !11255, !DIExpression(), !11338)
  br label %bb.h, !dbg !11340

bb.e:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !11257, !DIExpression(), !11341)
    #dbg_value(ptr %1, !11342, !DIExpression(), !11345)
    #dbg_value(ptr %1, !11347, !DIExpression(), !11350)
    #dbg_value(ptr %1, !11352, !DIExpression(), !11355)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11357
  %i.g = load ptr, ptr %i.f, align 8, !dbg !11357, !nonnull !23, !noundef !23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11364
  %i.i = load i64, ptr %i.h, align 8, !dbg !11364, !noundef !23 ; 7 uses
    #dbg_value(i64 %i.i, !11269, !DIExpression(), !11365)
    #dbg_value(i64 %i.i, !11297, !DIExpression(), !11366)
    #dbg_value(i64 %i.i, !11303, !DIExpression(), !11367)
    #dbg_value(i64 %i.i, !11368, !DIExpression(), !11373)
    #dbg_value(i64 %i.i, !11375, !DIExpression(), !11380)
    #dbg_value(i64 %i.i, !11382, !DIExpression(), !11386)
    #dbg_value(i64 %i.i, !11309, !DIExpression(), !11388)
    #dbg_value(ptr %i.g, !11283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11389)
    #dbg_value(ptr %i.g, !11278, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11390)
    #dbg_value(ptr %i.g, !11267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11391)
    #dbg_value(i64 %i.i, !11283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11389)
    #dbg_value(i64 %i.i, !11278, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11390)
    #dbg_value(i64 %i.i, !11267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11391)
    #dbg_value(i64 1, !11310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11388)
    #dbg_value(i64 1, !11310, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11388)
    #dbg_value(i64 %i.i, !10819, !DIExpression(), !11392)
    #dbg_value(i64 %i.i, !10876, !DIExpression(), !11394)
    #dbg_value(i64 %i.i, !10899, !DIExpression(), !11396)
    #dbg_value(i64 %i.i, !10928, !DIExpression(), !11398)
    #dbg_value(i1 false, !10841, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11392)
    #dbg_declare(ptr poison, !10842, !DIExpression(), !11400)
    #dbg_value(i64 1, !10843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11392)
    #dbg_value(i64 1, !10843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11392)
    #dbg_value(i64 1, !10896, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11394)
    #dbg_value(i64 1, !10933, !DIExpression(), !11398)
    #dbg_value(i64 1, !10896, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11394)
    #dbg_value(ptr poison, !10923, !DIExpression(), !11401)
    #dbg_value(i1 false, !10936, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11402)
    #dbg_value(i1 false, !10942, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11403)
    #dbg_value(i64 %i.i, !10924, !DIExpression(), !11405)
    #dbg_value(i64 %i.i, !10934, !DIExpression(), !11402)
  %.not.i = icmp slt i64 %i.i, 0
  br i1 %.not.i, label %bb.l, label %bb.f, !dbg !11406, !prof !10953

bb.f:                                             ; preds = %bb.e
    #dbg_value(i64 1, !10844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11407)
    #dbg_value(i64 %i.i, !10844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11407)
  %i.j = icmp eq i64 %i.i, 0, !dbg !11408
  br i1 %i.j, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscDgBWNIBxoJ_4bulk.exit.thread77, label %bb.g, !dbg !11408

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscDgBWNIBxoJ_4bulk.exit.thread77: ; preds = %bb.f
  store i64 0, ptr %0, align 8, !dbg !11409
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11409
  store ptr inttoptr (i64 1 to ptr), ptr %i.k, align 8, !dbg !11409
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11409
  store i64 0, ptr %i.l, align 8, !dbg !11409
  br label %bb.k, !dbg !11410

bb.g:                                             ; preds = %bb.f
    #dbg_value(i64 1, !10958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11411)
    #dbg_value(i64 1, !10958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11415)
    #dbg_value(i64 %i.i, !10958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11411)
    #dbg_value(i64 %i.i, !10958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11415)
    #dbg_value(i64 %i.i, !10965, !DIExpression(), !11419)
    #dbg_value(i64 %i.i, !10965, !DIExpression(), !11420)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !dbg !11407, !noalias !11421
    #dbg_value(ptr poison, !10848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11424)
    #dbg_value(i64 poison, !10848, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11424)
    #dbg_value(ptr poison, !11016, !DIExpression(), !11425)
    #dbg_value(ptr poison, !11010, !DIExpression(), !11426)
    #dbg_value(i64 1, !11017, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11425)
    #dbg_value(i64 1, !11011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11426)
    #dbg_value(i64 %i.i, !11017, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11425)
    #dbg_value(i64 %i.i, !11011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11426)
    #dbg_value(i8 0, !11012, !DIExpression(), !11426)
    #dbg_value(i64 1, !11027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11427)
    #dbg_value(i64 %i.i, !11027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11427)
    #dbg_value(i1 false, !10964, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11415)
  %i.m = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !dbg !11429, !noalias !11421 ; 3 uses
    #dbg_value(ptr %i.m, !10848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11424)
  %i.n = icmp eq ptr %i.m, null, !dbg !11430
  br i1 %i.n, label %bb.l, label %bb.m, !dbg !11431

bb.h:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.0.0 = phi ptr [ @_RNvNtCs8shshkhJObF_4ring6digest6SHA512, %bb.d ], [ @_RNvNtCs8shshkhJObF_4ring6digest6SHA384, %bb.c ], [ @_RNvNtCs8shshkhJObF_4ring6digest6SHA256, %bb.a ], !dbg !11261
    #dbg_value(ptr %.sroa.0.0, !11255, !DIExpression(), !11338)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11432
  call void @_RNvNtCs8shshkhJObF_4ring6digest6digest(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !11433
    #dbg_value(ptr %i.a, !11434, !DIExpression(), !11437)
    #dbg_value(ptr %i.a, !11283, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11439)
    #dbg_value(ptr %i.a, !11278, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11440)
    #dbg_value(ptr %i.a, !11267, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11441)
    #dbg_value(i64 20, !11283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11439)
    #dbg_value(i64 20, !11278, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11440)
    #dbg_value(i64 20, !11267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11441)
    #dbg_value(i64 20, !11270, !DIExpression(), !11442)
    #dbg_value(i64 20, !11297, !DIExpression(), !11443)
    #dbg_value(i64 20, !11303, !DIExpression(), !11444)
    #dbg_value(i64 20, !11368, !DIExpression(), !11445)
    #dbg_value(i64 20, !11375, !DIExpression(), !11448)
    #dbg_value(i64 20, !11382, !DIExpression(), !11451)
    #dbg_value(i64 1, !11310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11330)
    #dbg_value(i64 1, !11310, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11330)
    #dbg_value(i64 20, !10819, !DIExpression(), !11453)
    #dbg_value(i64 20, !10876, !DIExpression(), !11455)
    #dbg_value(i64 20, !10899, !DIExpression(), !11457)
    #dbg_value(i64 20, !10928, !DIExpression(), !11459)
    #dbg_value(i1 false, !10841, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11453)
    #dbg_declare(ptr poison, !10842, !DIExpression(), !11461)
    #dbg_value(i64 1, !10843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11453)
    #dbg_value(i64 1, !10843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11453)
    #dbg_value(i64 1, !10896, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11455)
    #dbg_value(i64 1, !10933, !DIExpression(), !11459)
    #dbg_value(i64 1, !10896, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11455)
    #dbg_value(ptr poison, !10923, !DIExpression(), !11462)
    #dbg_value(i1 false, !10936, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11463)
    #dbg_value(i1 false, !10942, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11464)
    #dbg_value(i64 20, !10924, !DIExpression(), !11466)
    #dbg_value(i64 20, !10934, !DIExpression(), !11463)
    #dbg_value(i64 1, !10844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11467)
    #dbg_value(i64 20, !10844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11467)
    #dbg_value(i64 1, !10958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11468)
    #dbg_value(i64 1, !10958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11472)
    #dbg_value(i64 20, !10958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11468)
    #dbg_value(i64 20, !10958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11472)
    #dbg_value(i64 20, !10965, !DIExpression(), !11476)
    #dbg_value(i64 20, !10965, !DIExpression(), !11477)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !dbg !11467, !noalias !11478
    #dbg_value(ptr poison, !10848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11481)
    #dbg_value(i64 poison, !10848, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11481)
    #dbg_value(ptr poison, !11016, !DIExpression(), !11482)
    #dbg_value(ptr poison, !11010, !DIExpression(), !11483)
    #dbg_value(i64 1, !11017, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11482)
    #dbg_value(i64 1, !11011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11483)
    #dbg_value(i64 20, !11017, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11482)
    #dbg_value(i64 20, !11011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11483)
    #dbg_value(i8 0, !11012, !DIExpression(), !11483)
    #dbg_value(i64 1, !11027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11484)
    #dbg_value(i64 20, !11027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11484)
    #dbg_value(i1 false, !10964, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11472)
  %i.o = call noundef dereferenceable_or_null(20) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 20, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !dbg !11486, !noalias !11478 ; 3 uses
    #dbg_value(ptr %i.o, !10848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11481)
  %i.p = icmp eq ptr %i.o, null, !dbg !11487
  br i1 %i.p, label %bb.i, label %bb.j, !dbg !11488

bb.i:                                             ; preds = %bb.h
    #dbg_value(i64 1, !11318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11489)
    #dbg_value(i64 20, !11318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11489)
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 20) #24, !dbg !11490
  unreachable, !dbg !11490

bb.j:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11491
    #dbg_value(ptr %i.q, !11283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11439)
    #dbg_value(ptr %i.q, !11278, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11440)
    #dbg_value(ptr %i.q, !11267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11441)
  store i64 20, ptr %0, align 8, !dbg !11492
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11492
  store ptr %i.o, ptr %i.r, align 8, !dbg !11492
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11492
    #dbg_value(ptr %i.q, !11371, !DIExpression(), !11445)
    #dbg_value(ptr %i.q, !11378, !DIExpression(), !11448)
    #dbg_value(ptr %i.o, !11372, !DIExpression(), !11445)
    #dbg_value(ptr %i.o, !11379, !DIExpression(), !11448)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.o, ptr noundef nonnull align 8 dereferenceable(20) %i.q, i64 20, i1 false), !dbg !11493
    #dbg_value(ptr %0, !11385, !DIExpression(), !11494)
  store i64 20, ptr %i.s, align 8, !dbg !11495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11496
  br label %bb.k, !dbg !11497

bb.k:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscDgBWNIBxoJ_4bulk.exit.thread77, %bb.m, %bb.j
  ret void, !dbg !11498

bb.l:                                             ; preds = %bb.e, %bb.g
  %.sroa.4.0.ph = phi i64 [ 1, %bb.g ], [ 0, %bb.e ]
    #dbg_value(i64 %.sroa.4.0.ph, !11313, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11499)
    #dbg_value(i64 %i.i, !11313, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11499)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.i) #24, !dbg !11500
  unreachable, !dbg !11500

bb.m:                                             ; preds = %bb.g
  store i64 %i.i, ptr %0, align 8, !dbg !11409
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11409
  store ptr %i.m, ptr %i.t, align 8, !dbg !11409
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11409
    #dbg_value(ptr %i.g, !11371, !DIExpression(), !11373)
    #dbg_value(ptr %i.g, !11378, !DIExpression(), !11380)
    #dbg_value(ptr %i.m, !11372, !DIExpression(), !11373)
    #dbg_value(ptr %i.m, !11379, !DIExpression(), !11380)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.g, i64 %i.i, i1 false), !dbg !11501
    #dbg_value(ptr %0, !11385, !DIExpression(), !11502)
  store i64 %i.i, ptr %i.u, align 8, !dbg !11503
  br label %bb.k, !dbg !11504
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsG258MDvU3F_3std2rt10lang_startuECscDgBWNIBxoJ_4bulk(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #0 !dbg !11505 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !11512, !DIExpression(), !11516)
    #dbg_value(i64 %1, !11513, !DIExpression(), !11516)
    #dbg_value(ptr %2, !11514, !DIExpression(), !11516)
    #dbg_value(i8 %3, !11515, !DIExpression(), !11516)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11517
  store ptr %0, ptr %i.a, align 8, !dbg !11517
  %i.b = call noundef i64 @_RNvNtCsG258MDvU3F_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, i64 noundef %1, ptr noundef %2, i8 noundef %3), !dbg !11518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11519
  ret i64 %i.b, !dbg !11520
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgR93kpVnVos_12hdrhistogram9HistogramyEECscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11521 {
bb.a:
    #dbg_value(ptr %0, !11526, !DIExpression(), !11529)
    #dbg_value(ptr %0, !11530, !DIExpression(), !11538)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b, !dbg !11540

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val3.i = load i64, ptr %0, align 8, !dbg !11540, !range !2458, !alias.scope !11541, !noundef !23 ; 2 uses
    #dbg_value(ptr poison, !11546, !DIExpression(), !11554)
    #dbg_value(ptr poison, !11556, !DIExpression(), !11560)
    #dbg_value(ptr poison, !2482, !DIExpression(), !11562)
    #dbg_value(i64 8, !2499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11562)
    #dbg_value(i64 8, !2499, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11562)
    #dbg_value(ptr poison, !2505, !DIExpression(), !11564)
    #dbg_value(i64 8, !2530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11564)
    #dbg_value(i64 8, !2530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11564)
    #dbg_value(i64 8, !2537, !DIExpression(), !11566)
  %i.b = icmp eq i64 %.val3.i, 0, !dbg !11568
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECscDgBWNIBxoJ_4bulk.exit.i, label %bb.c, !dbg !11568

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11540
  %.val4.i = load ptr, ptr %i.c, align 8, !dbg !11540, !alias.scope !11569, !nonnull !23, !noundef !23
    #dbg_value(i64 %.val3.i, !2544, !DIExpression(), !11566)
  %i.d = shl nuw i64 %.val3.i, 3, !dbg !11570
    #dbg_value(ptr %.val4.i, !2500, !DIExpression(), !11571)
    #dbg_value(i64 8, !2502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11571)
    #dbg_value(i64 %i.d, !2502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11571)
    #dbg_value(ptr poison, !2551, !DIExpression(), !11572)
    #dbg_value(ptr poison, !2563, !DIExpression(), !11574)
    #dbg_value(ptr %.val4.i, !2559, !DIExpression(), !11572)
    #dbg_value(ptr %.val4.i, !2568, !DIExpression(), !11574)
    #dbg_value(ptr %.val4.i, !2572, !DIExpression(), !11576)
    #dbg_value(ptr %.val4.i, !2581, !DIExpression(), !11578)
    #dbg_value(i64 8, !2560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11572)
    #dbg_value(i64 8, !2569, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11574)
    #dbg_value(i64 8, !2578, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11576)
    #dbg_value(i64 8, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11578)
    #dbg_value(i64 %i.d, !2560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11572)
    #dbg_value(i64 %i.d, !2569, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11574)
    #dbg_value(i64 %i.d, !2578, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11576)
    #dbg_value(i64 %i.d, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11578)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !dbg !11580, !noalias !11581
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECscDgBWNIBxoJ_4bulk.exit.i, !dbg !11584

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %0, align 8, !dbg !11540, !range !2458, !alias.scope !11541, !noundef !23 ; 2 uses
    #dbg_value(ptr poison, !11546, !DIExpression(), !11585)
    #dbg_value(ptr poison, !11556, !DIExpression(), !11587)
    #dbg_value(ptr poison, !2482, !DIExpression(), !11589)
    #dbg_value(i64 8, !2499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11589)
    #dbg_value(i64 8, !2499, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11589)
    #dbg_value(ptr poison, !2505, !DIExpression(), !11591)
    #dbg_value(i64 8, !2530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11591)
    #dbg_value(i64 8, !2530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11591)
    #dbg_value(i64 8, !2537, !DIExpression(), !11593)
  %i.e = icmp eq i64 %.val.i, 0, !dbg !11595
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECscDgBWNIBxoJ_4bulk.exit, label %bb.e, !dbg !11595

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11540
  %.val2.i = load ptr, ptr %i.f, align 8, !dbg !11540, !alias.scope !11569, !nonnull !23, !noundef !23
    #dbg_value(i64 %.val.i, !2544, !DIExpression(), !11593)
  %i.g = shl nuw i64 %.val.i, 3, !dbg !11596
    #dbg_value(ptr %.val2.i, !2500, !DIExpression(), !11597)
    #dbg_value(i64 8, !2502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11597)
    #dbg_value(i64 %i.g, !2502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11597)
    #dbg_value(ptr poison, !2551, !DIExpression(), !11598)
    #dbg_value(ptr poison, !2563, !DIExpression(), !11600)
    #dbg_value(ptr %.val2.i, !2559, !DIExpression(), !11598)
    #dbg_value(ptr %.val2.i, !2568, !DIExpression(), !11600)
    #dbg_value(ptr %.val2.i, !2572, !DIExpression(), !11602)
    #dbg_value(ptr %.val2.i, !2581, !DIExpression(), !11604)
    #dbg_value(i64 8, !2560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11598)
    #dbg_value(i64 8, !2569, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11600)
    #dbg_value(i64 8, !2578, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11602)
    #dbg_value(i64 8, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11604)
    #dbg_value(i64 %i.g, !2560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11598)
    #dbg_value(i64 %i.g, !2569, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11600)
    #dbg_value(i64 %i.g, !2578, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11602)
    #dbg_value(i64 %i.g, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11604)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !dbg !11606, !noalias !11607
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECscDgBWNIBxoJ_4bulk.exit, !dbg !11610

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECscDgBWNIBxoJ_4bulk.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a, !dbg !11540

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.d, %bb.e
  ret void, !dbg !11611
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultIB1n_NtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11612 {
bb.a:
    #dbg_value(ptr %0, !11650, !DIExpression(), !11653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11654), !dbg !11657
    #dbg_value(ptr %0, !11658, !DIExpression(), !11664)
  %i.a = load i64, ptr %0, align 8, !dbg !11666, !range !11667, !alias.scope !11654, !noundef !23 ; 2 uses
  %i.b = icmp eq i64 %i.a, -3, !dbg !11666
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_NtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEB1p_.exit, label %bb.b, !dbg !11666

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11668), !dbg !11666
    #dbg_value(ptr %0, !11671, !DIExpression(), !11677)
  switch i64 %i.a, label %bb.c [
    i64 -2, label %bb.g
    i64 -1, label %bb.f
  ], !dbg !11679

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !11680, !DIExpression(), !11687)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslIemzedAtQF_5bench5stats5StatsECscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef nonnull align 8 dereferenceable(448) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCscDgBWNIBxoJ_4bulk11ClientStatsEBD_.exit.i.i.i unwind label %bb.d, !dbg !11697

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !11697
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslIemzedAtQF_5bench5stats5StatsECscDgBWNIBxoJ_4bulk(ptr noalias nofree noundef align 8 dereferenceable(224) %i.d) #21
          to label %common.resume.i.i unwind label %bb.e, !dbg !11697

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !11697
  unreachable, !dbg !11697

common.resume.i.i:                                ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i5.i.i.i, %bb.j, %bb.d
end_hunk_0
begin_hunk_1_@_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscDgBWNIBxoJ_4bulk:bb.a
    #dbg_value(i64 %i.b, !19960, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19961)
    #dbg_value(i64 %i.b, !19971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19973)
    #dbg_value(i8 0, !19972, !DIExpression(), !19973)
    #dbg_value(ptr poison, !19975, !DIExpression(), !20005)
    #dbg_value(ptr %.8.val, !19980, !DIExpression(), !20005)
    #dbg_value(ptr %.8.val, !20007, !DIExpression(), !20014)
    #dbg_value(i64 %2, !19981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20005)
    #dbg_value(i64 %2, !20012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20014)
    #dbg_value(i64 %i.f, !19981, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20005)
    #dbg_value(i64 %i.f, !20012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20014)
    #dbg_value(i64 %2, !19982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20005)
    #dbg_value(i64 %i.b, !19982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20005)
    #dbg_value(i1 false, !19983, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20005)
    #dbg_value(i64 %i.f, !19984, !DIExpression(), !20016)
    #dbg_value(ptr poison, !19986, !DIExpression(), !20017)
    #dbg_value(i64 %i.b, !19987, !DIExpression(), !20018)
    #dbg_value(i64 %i.b, !20013, !DIExpression(), !20014)
  %i.g = icmp uge i64 %i.b, %i.f, !dbg !20019
    #dbg_value(i1 true, !20020, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20023)
  tail call void @llvm.assume(i1 %i.g), !dbg !20025
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #20, !dbg !20026
    #dbg_value(ptr poison, !19873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20027)
    #dbg_value(ptr poison, !19929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20028)
    #dbg_value(i64 poison, !19873, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20027)
    #dbg_value(i64 poison, !19929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20028)
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit, !dbg !20029

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !11016, !DIExpression(), !20030)
    #dbg_value(ptr poison, !11010, !DIExpression(), !20032)
    #dbg_value(i64 %2, !11017, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20030)
    #dbg_value(i64 %2, !11011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20032)
    #dbg_value(i64 %i.b, !11017, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20030)
    #dbg_value(i64 %i.b, !11011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20032)
    #dbg_value(i8 0, !11012, !DIExpression(), !20032)
    #dbg_value(i64 %2, !10958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20034)
    #dbg_value(i64 %2, !11027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20036)
    #dbg_value(i64 %i.b, !10958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20034)
    #dbg_value(i64 %i.b, !11027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20036)
    #dbg_value(i1 false, !10964, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20034)
    #dbg_value(i64 0, !20038, !DIExpression(), !20046)
    #dbg_value(i64 0, !20048, !DIExpression(), !20054)
    #dbg_value(i64 %i.b, !10965, !DIExpression(), !20056)
    #dbg_value(i64 %i.b, !20045, !DIExpression(), !20057)
    #dbg_value(i64 %i.b, !20053, !DIExpression(), !20059)
  %i.i = icmp eq i64 %i.b, 0, !dbg !20062
  br i1 %i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d, !dbg !20062

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
    #dbg_value(i64 %2, !20044, !DIExpression(), !20046)
    #dbg_value(i64 %2, !20052, !DIExpression(), !20054)
    #dbg_value(i64 %2, !20063, !DIExpression(), !20069)
  %i.j = inttoptr i64 %2 to ptr, !dbg !20071
    #dbg_value(ptr %i.j, !19929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20028)
    #dbg_value(ptr %i.j, !19873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20027)
    #dbg_value(i64 poison, !19929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20028)
    #dbg_value(i64 poison, !19873, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20027)
    #dbg_value(ptr poison, !19930, !DIExpression(), !20072)
  br label %bb.f, !dbg !20073

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !dbg !20074
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #20, !dbg !20075
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit, !dbg !20076

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
    #dbg_value(ptr %.pn8, !19929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20028)
    #dbg_value(ptr %.pn8, !19873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20027)
    #dbg_value(i64 poison, !19929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20028)
    #dbg_value(i64 poison, !19873, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20027)
    #dbg_value(ptr poison, !19930, !DIExpression(), !20072)
  %i.l = icmp eq ptr %.pn8, null, !dbg !20077
  br i1 %i.l, label %bb.e, label %bb.f, !dbg !20073

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20078
  store i64 %2, ptr %i.m, align 8, !dbg !20078
  br label %bb.g, !dbg !20079

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
    #dbg_value(i64 %i.b, !19873, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20027)
    #dbg_value(i64 %i.b, !19929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20028)
    #dbg_value(ptr %.pn810, !19931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20080)
    #dbg_value(i64 %i.b, !19931, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20080)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20081
  store ptr %.pn810, ptr %i.n, align 8, !dbg !20081
  br label %bb.g, !dbg !20082

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13, !dbg !19878
  store i64 %.sink11, ptr %i.o, align 8, !dbg !19878
  store i64 %.sink, ptr %0, align 8, !dbg !19878
  ret void, !dbg !20083
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscDgBWNIBxoJ_4bulk(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !10820 {
bb.a:
    #dbg_value(i64 %1, !10819, !DIExpression(), !20084)
    #dbg_value(i64 %1, !10876, !DIExpression(), !20085)
    #dbg_value(i64 %1, !10899, !DIExpression(), !20087)
    #dbg_value(i64 %1, !10928, !DIExpression(), !20089)
    #dbg_value(i64 %1, !20091, !DIExpression(), !20095)
    #dbg_value(i64 %1, !20097, !DIExpression(), !20100)
    #dbg_value(i1 %2, !10841, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20084)
    #dbg_declare(ptr poison, !10842, !DIExpression(), !20102)
    #dbg_value(i64 %3, !10843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20084)
    #dbg_value(i64 %4, !10843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20084)
    #dbg_declare(ptr poison, !20103, !DIExpression(), !20110)
    #dbg_value(i64 %4, !10896, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20085)
    #dbg_value(i64 %4, !10933, !DIExpression(), !20089)
    #dbg_value(i64 %4, !20094, !DIExpression(), !20095)
    #dbg_value(i64 %3, !10896, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20085)
    #dbg_value(i64 %3, !20109, !DIExpression(), !20112)
    #dbg_value(ptr poison, !10923, !DIExpression(), !20113)
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1), !dbg !20114 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0, !dbg !20114 ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1, !dbg !20114
    #dbg_value(i1 %i.c, !10936, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20115)
    #dbg_value(i1 %i.c, !10942, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20116)
    #dbg_value(i64 %i.b, !10924, !DIExpression(), !20118)
    #dbg_value(i64 %i.b, !10934, !DIExpression(), !20115)
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !dbg !20119, !prof !10953
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !20119, !prof !10953

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %3, !10844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20120)
    #dbg_value(i64 %i.b, !10844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20120)
  %i.e = icmp eq i64 %i.b, 0, !dbg !20121
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !20121

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20122
  store i64 0, ptr %i.f, align 8, !dbg !20122
  br label %bb.f, !dbg !20123

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr, !dbg !20125
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20137
  store i64 0, ptr %i.h, align 8, !dbg !20137
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !20137
  store ptr %i.g, ptr %i.i, align 8, !dbg !20137
  br label %bb.f, !dbg !20138

bb.e:                                             ; preds = %bb.b
    #dbg_value(i64 %3, !10958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20139)
    #dbg_value(i64 %3, !10958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20143)
    #dbg_value(i64 %i.b, !10958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20139)
    #dbg_value(i64 %i.b, !10958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20143)
    #dbg_value(i64 %i.b, !10965, !DIExpression(), !20147)
    #dbg_value(i64 %i.b, !10965, !DIExpression(), !20148)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !dbg !20120
    #dbg_value(ptr poison, !10848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20149)
    #dbg_value(ptr poison, !10848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20149)
    #dbg_value(i64 poison, !10848, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20149)
    #dbg_value(i64 poison, !10848, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20149)
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit, !dbg !20150

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8, !dbg !20084
  ret void, !dbg !20151

bb.g:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !11003, !DIExpression(), !20152)
    #dbg_value(ptr poison, !10995, !DIExpression(), !20153)
    #dbg_value(i64 %3, !11004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20152)
    #dbg_value(i64 %3, !10996, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20153)
    #dbg_value(i64 %i.b, !11004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20152)
    #dbg_value(i64 %i.b, !10996, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20153)
    #dbg_value(i8 1, !10997, !DIExpression(), !20153)
    #dbg_value(i64 %3, !20154, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20157)
    #dbg_value(i64 %i.b, !20154, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20157)
    #dbg_value(i1 true, !10964, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20139)
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20, !dbg !20159
  br label %bb.h, !dbg !20160

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
    #dbg_value(ptr poison, !11016, !DIExpression(), !20161)
    #dbg_value(ptr poison, !11010, !DIExpression(), !20162)
    #dbg_value(i64 %3, !11017, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20161)
    #dbg_value(i64 %3, !11011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20162)
    #dbg_value(i64 %i.b, !11017, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20161)
    #dbg_value(i64 %i.b, !11011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20162)
    #dbg_value(i8 0, !11012, !DIExpression(), !20162)
    #dbg_value(i64 %3, !11027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20163)
    #dbg_value(i64 %i.b, !11027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20163)
    #dbg_value(i1 false, !10964, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20143)
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20, !dbg !20165
  br label %bb.h, !dbg !20166

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn29 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
    #dbg_value(i64 poison, !10848, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20149)
    #dbg_value(ptr %.pn29, !10848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20149)
  %i.l = icmp eq ptr %.pn29, null, !dbg !20167
  br i1 %i.l, label %bb.i, label %bb.j, !dbg !20168

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20169
  store i64 %3, ptr %i.m, align 8, !dbg !20169
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !20169
  store i64 %i.b, ptr %i.n, align 8, !dbg !20169
  br label %bb.f, !dbg !20170

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %.pn29, !10870, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20172)
    #dbg_value(i64 poison, !10870, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20172)
  %i.o = icmp sgt i64 %1, -1, !dbg !20173
  tail call void @llvm.assume(i1 %i.o), !dbg !20173
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20174
  store i64 %1, ptr %i.p, align 8, !dbg !20174
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !20174
  store ptr %.pn29, ptr %i.q, align 8, !dbg !20174
  br label %bb.f, !dbg !20138
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtCskKLDkoKarTP_4core6result6ResultNtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEEE9drop_slowB26_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !20175 {
bb.a:
    #dbg_value(ptr %0, !20181, !DIExpression(), !20190)
  %i.a = load ptr, ptr %0, align 8, !dbg !20191, !nonnull !23, !noundef !23 ; 9 uses
    #dbg_value(ptr %i.a, !20182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20192)
    #dbg_value(ptr %0, !20182, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20192)
    #dbg_value(ptr %i.a, !20193, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !20200)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !20202 ; 3 uses
    #dbg_value(ptr %i.b, !20203, !DIExpression(), !20208)
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std6thread9lifecycleINtB5_6PacketINtNtCskKLDkoKarTP_4core6result6ResultNtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEENtNtNtBZ_3ops4drop4Drop4dropB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %i.b)
          to label %bb.e unwind label %bb.b, !dbg !20210

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 464, !dbg !20210 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20211), !dbg !20210
    #dbg_value(ptr %i.d, !20214, !DIExpression(), !20222)
  %i.e = load ptr, ptr %i.d, align 8, !dbg !20224, !alias.scope !20225, !noundef !23 ; 2 uses
  %i.f = icmp eq ptr %i.e, null, !dbg !20224
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit.i, label %bb.c, !dbg !20224

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %i.d, !20228, !DIExpression(), !20234)
    #dbg_value(ptr %i.d, !20236, !DIExpression(), !20239)
    #dbg_value(i64 1, !20241, !DIExpression(), !20246)
    #dbg_value(i8 1, !20245, !DIExpression(), !20246)
    #dbg_value(i64 1, !20248, !DIExpression(), !20253)
    #dbg_value(i8 1, !20252, !DIExpression(), !20253)
    #dbg_value(ptr %i.e, !20244, !DIExpression(), !20255)
    #dbg_value(ptr %i.e, !20251, !DIExpression(), !20253)
  %i.g = atomicrmw sub ptr %i.e, i64 1 release, align 8, !dbg !20256, !noalias !20257
  %i.h = icmp eq i64 %i.g, 1, !dbg !20262
  br i1 %i.h, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit.i, !dbg !20262

bb.d:                                             ; preds = %bb.c
    #dbg_value(i8 2, !10320, !DIExpression(), !20263)
  fence acquire, !dbg !20265
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCsar2VadbF9t7_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit.i unwind label %bb.i, !dbg !20266

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 464, !dbg !20210 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20267), !dbg !20210
    #dbg_value(ptr %i.i, !20214, !DIExpression(), !20270)
  %i.j = load ptr, ptr %i.i, align 8, !dbg !20272, !alias.scope !20273, !noundef !23 ; 2 uses
  %i.k = icmp eq ptr %i.j, null, !dbg !20272
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit4.i, label %bb.f, !dbg !20272

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr %i.i, !20228, !DIExpression(), !20274)
    #dbg_value(ptr %i.i, !20236, !DIExpression(), !20276)
    #dbg_value(i64 1, !20241, !DIExpression(), !20278)
    #dbg_value(i8 1, !20245, !DIExpression(), !20278)
    #dbg_value(i64 1, !20248, !DIExpression(), !20280)
    #dbg_value(i8 1, !20252, !DIExpression(), !20280)
    #dbg_value(ptr %i.j, !20244, !DIExpression(), !20282)
    #dbg_value(ptr %i.j, !20251, !DIExpression(), !20280)
  %i.l = atomicrmw sub ptr %i.j, i64 1 release, align 8, !dbg !20283, !noalias !20284
  %i.m = icmp eq i64 %i.l, 1, !dbg !20289
  br i1 %i.m, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit4.i, !dbg !20289

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 2, !10320, !DIExpression(), !20290)
  fence acquire, !dbg !20292
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCsar2VadbF9t7_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit4.i unwind label %bb.h, !dbg !20293

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit.i: ; preds = %bb.h, %bb.d, %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.c, %bb.d ], [ %i.c, %bb.b ], [ %i.c, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultIB1n_NtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %i.b) #21
          to label %.body unwind label %bb.i, !dbg !20210

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit4.i: ; preds = %bb.g, %bb.f, %bb.e
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultIB1n_NtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultNtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEEEB1L_.exit unwind label %bb.j, !dbg !20210

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit.i, %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !20210
  unreachable, !dbg !20210

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit4.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !20294

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.j ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit.i ]
    #dbg_value(ptr poison, !20295, !DIExpression(), !20303)
    #dbg_value(ptr poison, !20305, !DIExpression(), !20317)
    #dbg_value(ptr poison, !20319, !DIExpression(), !20342)
    #dbg_value(i64 1, !20344, !DIExpression(), !20349)
    #dbg_value(i8 1, !20348, !DIExpression(), !20349)
    #dbg_value(i64 1, !20351, !DIExpression(), !20356)
    #dbg_value(i8 1, !20355, !DIExpression(), !20356)
    #dbg_value(ptr %i.a, !20339, !DIExpression(), !20358)
    #dbg_value(ptr %i.a, !20359, !DIExpression(), !20366)
  %i.q = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr), !dbg !20368
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultNtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEERNtNtBG_5alloc6GlobalEEB2k_.exit, label %bb.k, !dbg !20369

bb.k:                                             ; preds = %.body
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !20370
    #dbg_value(ptr %i.r, !20309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20371)
    #dbg_value(ptr %i.r, !20315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20372)
    #dbg_value(ptr %i.r, !20347, !DIExpression(), !20349)
    #dbg_value(ptr %i.a, !20309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20371)
    #dbg_value(ptr %i.a, !20315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20372)
    #dbg_value(ptr %i.r, !20354, !DIExpression(), !20356)
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !dbg !20373
  %i.t = icmp eq i64 %i.s, 1, !dbg !20374
  br i1 %i.t, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultNtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEERNtNtBG_5alloc6GlobalEEB2k_.exit, !dbg !20374

bb.l:                                             ; preds = %bb.k
    #dbg_value(i8 2, !10320, !DIExpression(), !20375)
  fence acquire, !dbg !20377
    #dbg_value(ptr poison, !20378, !DIExpression(), !20388)
    #dbg_value(ptr %i.a, !20386, !DIExpression(), !20388)
    #dbg_value(i64 8, !20387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20388)
    #dbg_value(i64 472, !20387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20388)
    #dbg_value(ptr poison, !2551, !DIExpression(), !20390)
    #dbg_value(ptr poison, !2563, !DIExpression(), !20392)
    #dbg_value(ptr %i.a, !2559, !DIExpression(), !20390)
    #dbg_value(ptr %i.a, !2568, !DIExpression(), !20392)
    #dbg_value(ptr %i.a, !2572, !DIExpression(), !20394)
    #dbg_value(ptr %i.a, !2581, !DIExpression(), !20396)
    #dbg_value(i64 8, !2560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20390)
    #dbg_value(i64 8, !2569, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20392)
    #dbg_value(i64 8, !2578, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20394)
    #dbg_value(i64 8, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20396)
    #dbg_value(i64 472, !2560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20390)
    #dbg_value(i64 472, !2569, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20392)
    #dbg_value(i64 472, !2578, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20394)
    #dbg_value(i64 472, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20396)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 472, i64 noundef 8) #20, !dbg !20398
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultNtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEERNtNtBG_5alloc6GlobalEEB2k_.exit, !dbg !20399

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultNtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEEEB1L_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECscDgBWNIBxoJ_4bulk.exit4.i
    #dbg_value(ptr poison, !20295, !DIExpression(), !20400)
    #dbg_value(ptr poison, !20305, !DIExpression(), !20402)
    #dbg_value(ptr poison, !20319, !DIExpression(), !20404)
    #dbg_value(i64 1, !20344, !DIExpression(), !20406)
    #dbg_value(i8 1, !20348, !DIExpression(), !20406)
    #dbg_value(i64 1, !20351, !DIExpression(), !20408)
    #dbg_value(i8 1, !20355, !DIExpression(), !20408)
    #dbg_value(ptr %i.a, !20339, !DIExpression(), !20410)
    #dbg_value(ptr %i.a, !20359, !DIExpression(), !20411)
  %i.u = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr), !dbg !20413
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultNtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEERNtNtBG_5alloc6GlobalEEB2k_.exit4, label %bb.m, !dbg !20414

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultNtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEEEB1L_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !20415
    #dbg_value(ptr %i.v, !20309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20416)
    #dbg_value(ptr %i.v, !20315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20417)
    #dbg_value(ptr %i.v, !20347, !DIExpression(), !20406)
    #dbg_value(ptr %i.a, !20309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20416)
    #dbg_value(ptr %i.a, !20315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20417)
    #dbg_value(ptr %i.v, !20354, !DIExpression(), !20408)
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !dbg !20418
  %i.x = icmp eq i64 %i.w, 1, !dbg !20419
  br i1 %i.x, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultNtCscDgBWNIBxoJ_4bulk11ClientStatsNtCsbHiBx3jRrxb_6anyhow5ErrorEERNtNtBG_5alloc6GlobalEEB2k_.exit4, !dbg !20419

bb.n:                                             ; preds = %bb.m
    #dbg_value(i8 2, !10320, !DIExpression(), !20420)
  fence acquire, !dbg !20422
    #dbg_value(ptr poison, !20378, !DIExpression(), !20423)
    #dbg_value(ptr %i.a, !20386, !DIExpression(), !20423)
    #dbg_value(i64 8, !20387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20423)
    #dbg_value(i64 472, !20387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20423)
    #dbg_value(ptr poison, !2551, !DIExpression(), !20425)
    #dbg_value(ptr poison, !2563, !DIExpression(), !20427)
end_hunk_1
