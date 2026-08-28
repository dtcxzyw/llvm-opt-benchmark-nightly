Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i-bf848a31a08909a0.h3i.e031f187eee866af-cgu.13?download=true
inline.NumInlined: 469
inline.NumDeleted: 165
begin_hunk_0_@_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE9remove_kvCsjfnSKV9Rz3v_3h3i:bb.a
    #dbg_value(i64 1, !6124, !DIExpression(), !12844)
    #dbg_value(i8 1, !6130, !DIExpression(), !12844)
  %i.n = load ptr, ptr %i.m, align 8, !dbg !12846, !alias.scope !12848, !nonnull !18, !noundef !18
    #dbg_value(ptr %i.n, !6120, !DIExpression(), !12849)
    #dbg_value(ptr %i.n, !6129, !DIExpression(), !12844)
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !dbg !12850, !noalias !12848
  %i.p = icmp eq i64 %i.o, 1, !dbg !12851
  br i1 %i.p, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEECsjfnSKV9Rz3v_3h3i.exit, !dbg !12851

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 2, !6145, !DIExpression(), !12852)
  fence acquire, !dbg !12854
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEECsjfnSKV9Rz3v_3h3i.exit unwind label %bb.i, !dbg !12855

bb.h:                                             ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !12856
  unreachable, !dbg !12856

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.l, !dbg !12856
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_E21reserve_one_uncheckedCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 captures(none) dereferenceable(136) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !12857 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
    #dbg_value(ptr %0, !12863, !DIExpression(), !12873)
    #dbg_value(ptr %0, !12874, !DIExpression(), !12881)
    #dbg_value(i64 1, !12883, !DIExpression(), !12887)
    #dbg_declare(ptr poison, !12889, !DIExpression(), !12895)
    #dbg_value(i64 1, !12883, !DIExpression(), !12897)
    #dbg_value(ptr @2, !12905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12914)
    #dbg_value(i64 17, !12905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12914)
    #dbg_value(ptr %0, !12916, !DIExpression(), !12933)
    #dbg_value(ptr %0, !12935, !DIExpression(), !12941)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !12943 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !12943, !alias.scope !12944, !noalias !12947, !noundef !18 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1, !dbg !12943
  %i.e = load ptr, ptr %0, align 8, !dbg !12949, !alias.scope !12944, !noalias !12947, !nonnull !18 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12949 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !12949, !alias.scope !12944, !noalias !12947 ; 3 uses
  %.sink21.i = select i1 %i.d, i64 %i.g, i64 %i.c, !dbg !12949 ; 5 uses
    #dbg_value(i64 %.sink21.i, !12886, !DIExpression(), !12887)
  %i.h = icmp eq i64 %.sink21.i, -1, !dbg !12950
    #dbg_value(i1 %i.h, !12951, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12954)
  br i1 %i.h, label %bb.q, label %bb.b, !dbg !12956, !prof !7542

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %.sink21.i, !12892, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12957)
    #dbg_value(i64 1, !12892, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12957)
    #dbg_value(i64 %.sink21.i, !12893, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12958)
    #dbg_value(i64 %.sink21.i, !12901, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12959)
    #dbg_value(i64 %.sink21.i, !12960, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12967)
  %i.i = icmp eq i64 %.sink21.i, 0, !dbg !12969   ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink21.i, i1 true), !dbg !12969
  %i.k = lshr i64 -1, %i.j, !dbg !12969           ; 2 uses
  %.sroa.03.0 = select i1 %i.i, i64 0, i64 %i.k, !dbg !12969 ; 2 uses
    #dbg_value(i64 %.sroa.03.0, !12886, !DIExpression(), !12897)
  %i.l = icmp eq i64 %.sroa.03.0, -1, !dbg !12970
    #dbg_value(i1 %i.l, !12951, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12971)
  br i1 %i.l, label %bb.q, label %bb.c, !dbg !12974, !prof !7542

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.03.0, 1, !dbg !12970  ; 4 uses
    #dbg_value(i64 %i.m, !12911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12914)
    #dbg_value(i64 1, !12911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12914)
    #dbg_value(i64 %i.m, !12871, !DIExpression(), !12975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12976), !dbg !12979
    #dbg_value(ptr %0, !12980, !DIExpression(), !13017)
    #dbg_value(ptr %0, !13019, !DIExpression(), !13022)
    #dbg_value(i64 %i.m, !12986, !DIExpression(), !13017)
  %i.n = icmp ult i64 %i.c, 2, !dbg !13024        ; 2 uses
    #dbg_value(i1 %i.n, !12987, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13025)
    #dbg_value(ptr %0, !13026, !DIExpression(), !13040)
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1), !dbg !13042 ; 2 uses
    #dbg_value(ptr poison, !12989, !DIExpression(), !13043)
    #dbg_value(i64 %.sink21.i, !12991, !DIExpression(), !13043)
    #dbg_value(i64 %.sink.i.i, !12992, !DIExpression(), !13043)
  %.not.i = icmp ult i64 %i.m, %.sink21.i, !dbg !13044
  br i1 %.not.i, label %bb.d, label %bb.e, !dbg !13044, !prof !7542

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27, !dbg !13045, !noalias !12976
  unreachable, !dbg !13045

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f, !dbg !13046

bb.f:                                             ; preds = %bb.e
  %.not112.i = icmp eq i64 %i.c, %i.m, !dbg !13047
  br i1 %.not112.i, label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECsjfnSKV9Rz3v_3h3i.exit, label %bb.h, !dbg !13047

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECsjfnSKV9Rz3v_3h3i.exit, label %bb.m, !dbg !13048

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %i.m, !13049, !DIExpression(), !13077)
    #dbg_value(i64 %i.m, !13079, !DIExpression(), !13086)
    #dbg_value(i64 %i.m, !13088, !DIExpression(), !13098)
    #dbg_value(i64 128, !13082, !DIExpression(), !13086)
    #dbg_value(i64 128, !13097, !DIExpression(), !13098)
  %i.o = shl nuw nsw i64 %i.m, 7, !dbg !13100     ; 3 uses
    #dbg_value(i64 %i.m, !13085, !DIExpression(DW_OP_constu, 144115188075855872, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13101)
    #dbg_value(i64 %i.m, !13102, !DIExpression(DW_OP_constu, 144115188075855872, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13105)
    #dbg_value(i64 %i.o, !13083, !DIExpression(), !13101)
  %or.cond.i = icmp ult i64 %i.k, 72057594037927935, !dbg !13107
  br i1 %or.cond.i, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECsjfnSKV9Rz3v_3h3i.exit.i, label %bb.p, !dbg !13107, !prof !13108

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECsjfnSKV9Rz3v_3h3i.exit.i: ; preds = %bb.h
    #dbg_value(i64 8, !12993, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13109)
    #dbg_value(i64 8, !13110, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13116)
    #dbg_value(i64 %i.o, !12993, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13109)
    #dbg_value(i64 %i.o, !13110, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13116)
  br i1 %i.n, label %bb.j, label %bb.i, !dbg !13118

bb.i:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECsjfnSKV9Rz3v_3h3i.exit.i
    #dbg_value(i64 %.sink.i.i, !13049, !DIExpression(), !13119)
    #dbg_value(i64 %.sink.i.i, !13079, !DIExpression(), !13121)
    #dbg_value(i64 %.sink.i.i, !13088, !DIExpression(), !13123)
    #dbg_value(i64 128, !13082, !DIExpression(), !13121)
    #dbg_value(i64 128, !13097, !DIExpression(), !13123)
    #dbg_value(i64 %i.c, !13085, !DIExpression(DW_OP_constu, 144115188075855872, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13125)
    #dbg_value(i64 %i.c, !13102, !DIExpression(DW_OP_constu, 144115188075855872, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13126)
    #dbg_value(i64 %.sink.i.i, !13083, !DIExpression(DW_OP_constu, 7, DW_OP_shl, DW_OP_stack_value), !13125)
  %i.p = icmp ult i64 %i.c, 72057594037927936
  br i1 %i.p, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECsjfnSKV9Rz3v_3h3i.exit114.i, label %bb.p, !dbg !13128, !prof !13108

bb.j:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECsjfnSKV9Rz3v_3h3i.exit.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !dbg !13129, !noalias !12976
  %i.q = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #28, !dbg !13130, !noalias !12976 ; 3 uses
    #dbg_value(ptr %i.q, !13131, !DIExpression(), !13150)
    #dbg_value(ptr %i.q, !13152, !DIExpression(), !13157)
  %i.r = icmp eq ptr %i.q, null, !dbg !13160
  br i1 %i.r, label %bb.o, label %bb.l, !dbg !13172

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECsjfnSKV9Rz3v_3h3i.exit114.i: ; preds = %bb.i
  %i.s = shl nuw nsw i64 %.sink.i.i, 7, !dbg !13173
    #dbg_value(i64 %i.s, !13083, !DIExpression(), !13125)
    #dbg_value(i64 8, !13005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13174)
    #dbg_value(i64 8, !13175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13182)
    #dbg_value(i64 8, !13184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13191)
    #dbg_value(i64 %i.s, !13005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13174)
    #dbg_value(i64 %i.s, !13175, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13182)
    #dbg_value(i64 %i.s, !13184, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13191)
    #dbg_value(ptr poison, !13180, !DIExpression(), !13182)
    #dbg_value(i64 %i.o, !13181, !DIExpression(), !13182)
    #dbg_value(i64 %i.o, !13190, !DIExpression(), !13191)
    #dbg_value(ptr poison, !13189, !DIExpression(), !13191)
  %i.t = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.o) #28, !dbg !13193, !noalias !12976 ; 2 uses
    #dbg_value(ptr %i.t, !13011, !DIExpression(), !13194)
    #dbg_value(ptr %i.t, !13131, !DIExpression(), !13195)
    #dbg_value(ptr %i.t, !13152, !DIExpression(), !13197)
  %i.u = icmp eq ptr %i.t, null, !dbg !13200
  br i1 %i.u, label %bb.o, label %bb.k, !dbg !13205

bb.k:                                             ; preds = %bb.l, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECsjfnSKV9Rz3v_3h3i.exit114.i
  %.sroa.039.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECsjfnSKV9Rz3v_3h3i.exit114.i ], !dbg !13206
    #dbg_value(ptr %.sroa.039.0.i, !12999, !DIExpression(), !13216)
  store ptr %.sroa.039.0.i, ptr %0, align 8, !dbg !13217, !alias.scope !12976
  store i64 %.sink21.i, ptr %i.f, align 8, !dbg !13217, !alias.scope !12976
  store i64 %i.m, ptr %i.b, align 8, !dbg !13218, !alias.scope !12976
  br label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECsjfnSKV9Rz3v_3h3i.exit, !dbg !13219

bb.l:                                             ; preds = %bb.j
    #dbg_value(ptr %i.q, !13214, !DIExpression(), !13220)
    #dbg_value(ptr %i.q, !12999, !DIExpression(), !13216)
    #dbg_value(ptr poison, !13222, !DIExpression(), !13230)
    #dbg_value(ptr %i.q, !13228, !DIExpression(), !13230)
    #dbg_value(i64 %.sink21.i, !13229, !DIExpression(), !13230)
  %i.v = shl nuw nsw i64 %i.c, 7, !dbg !13232
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 dereferenceable(136) %0, i64 %i.v, i1 false), !dbg !13232
  br label %bb.k, !dbg !13233

bb.m:                                             ; preds = %bb.g
    #dbg_value(ptr poison, !13222, !DIExpression(), !13234)
    #dbg_value(ptr %0, !13228, !DIExpression(), !13234)
    #dbg_value(i64 %.sink21.i, !13229, !DIExpression(), !13234)
  %i.w = shl nuw nsw i64 %i.g, 7, !dbg !13236
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(136) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false), !dbg !13236
  store i64 %i.g, ptr %i.b, align 8, !dbg !13237, !alias.scope !12976
    #dbg_value(ptr poison, !13238, !DIExpression(), !13246)
    #dbg_value(i64 %.sink.i.i, !13243, !DIExpression(), !13246)
    #dbg_value(i64 %.sink.i.i, !13049, !DIExpression(), !13248)
    #dbg_value(i64 %.sink.i.i, !13079, !DIExpression(), !13250)
    #dbg_value(i64 %.sink.i.i, !13088, !DIExpression(), !13252)
    #dbg_value(i64 128, !13082, !DIExpression(), !13250)
    #dbg_value(i64 128, !13097, !DIExpression(), !13252)
    #dbg_value(i64 %.sink.i.i, !13085, !DIExpression(DW_OP_constu, 144115188075855872, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13254)
    #dbg_value(i64 %.sink.i.i, !13102, !DIExpression(DW_OP_constu, 144115188075855872, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13255)
    #dbg_value(i64 %.sink.i.i, !13083, !DIExpression(DW_OP_constu, 7, DW_OP_shl, DW_OP_stack_value), !13254)
  %or.cond.i.i = icmp ult i64 %i.c, 72057594037927936, !dbg !13257
  br i1 %or.cond.i.i, label %_RINvCs5kGgRUzsVpH_8smallvec10deallocateNtNtCs3f36owOmepS_6quiche5frame5FrameECsjfnSKV9Rz3v_3h3i.exit.i, label %bb.n, !dbg !13257, !prof !13108

bb.n:                                             ; preds = %bb.m
    #dbg_value(i64 0, !13258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13268)
    #dbg_value(i64 undef, !13258, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13268)
    #dbg_value(i64 1, !13258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13268)
    #dbg_declare(ptr %i.a, !13266, !DIExpression(), !13270)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13271, !noalias !13272
  store i64 0, ptr %i.a, align 8, !dbg !13271, !noalias !13272
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27, !dbg !13275, !noalias !13272
  unreachable, !dbg !13275

_RINvCs5kGgRUzsVpH_8smallvec10deallocateNtNtCs3f36owOmepS_6quiche5frame5FrameECsjfnSKV9Rz3v_3h3i.exit.i: ; preds = %bb.m
  %i.x = shl nuw nsw i64 %.sink.i.i, 7, !dbg !13276
    #dbg_value(i64 %i.x, !13083, !DIExpression(), !13254)
    #dbg_value(i64 8, !13258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13268)
    #dbg_value(i64 %i.x, !13258, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13268)
    #dbg_value(i64 0, !13258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13268)
    #dbg_declare(ptr %i.a, !13266, !DIExpression(), !13270)
    #dbg_value(i64 8, !13244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13277)
    #dbg_value(i64 8, !13278, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13284)
    #dbg_value(i64 8, !13286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13292)
    #dbg_value(i64 %i.x, !13244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13277)
    #dbg_value(i64 %i.x, !13278, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13284)
    #dbg_value(i64 %i.x, !13286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13292)
    #dbg_value(ptr poison, !13283, !DIExpression(), !13284)
    #dbg_value(ptr poison, !13291, !DIExpression(), !13292)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #28, !dbg !13294, !noalias !12976
  br label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECsjfnSKV9Rz3v_3h3i.exit, !dbg !13295

bb.o:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECsjfnSKV9Rz3v_3h3i.exit114.i, %bb.j
    #dbg_value(i64 8, !10493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13296)
    #dbg_value(i64 %i.o, !10493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13296)
    #dbg_value(i64 8, !10500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13298)
    #dbg_value(i64 %i.o, !10500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13298)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.o) #26, !dbg !13299
  unreachable, !dbg !13299

bb.p:                                             ; preds = %bb.i, %bb.h
    #dbg_value(i64 0, !10493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13296)
    #dbg_value(i64 undef, !10493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13296)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27, !dbg !13300
  unreachable, !dbg !13300

_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECsjfnSKV9Rz3v_3h3i.exit: ; preds = %_RINvCs5kGgRUzsVpH_8smallvec10deallocateNtNtCs3f36owOmepS_6quiche5frame5FrameECsjfnSKV9Rz3v_3h3i.exit.i, %bb.f, %bb.k, %bb.g
    #dbg_value(i64 -1, !10493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13296)
    #dbg_value(i64 undef, !10493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13296)
  ret void, !dbg !13301

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #27, !dbg !13302
  unreachable, !dbg !13302
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E21reserve_one_uncheckedCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(264) %0) unnamed_addr #1 !dbg !13303 {
bb.a:
    #dbg_value(ptr %0, !13308, !DIExpression(), !13318)
    #dbg_value(ptr %0, !13319, !DIExpression(), !13325)
    #dbg_value(i64 1, !13327, !DIExpression(), !13331)
    #dbg_declare(ptr poison, !13333, !DIExpression(), !13339)
    #dbg_value(i64 1, !13327, !DIExpression(), !13341)
    #dbg_value(ptr @2, !13349, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13355)
    #dbg_value(i64 17, !13349, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13355)
    #dbg_value(ptr %0, !13357, !DIExpression(), !13374)
    #dbg_value(ptr %0, !13376, !DIExpression(), !13379)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !13381
  %i.b = load i64, ptr %i.a, align 8, !dbg !13381, !alias.scope !13382, !noalias !13385, !noundef !18 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8, !dbg !13381
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13387
  %i.e = load i64, ptr %i.d, align 8, !dbg !13387, !alias.scope !13382, !noalias !13385
  %.sink21.i = select i1 %i.c, i64 %i.e, i64 %i.b, !dbg !13387 ; 3 uses
    #dbg_value(i64 %.sink21.i, !13330, !DIExpression(), !13331)
  %i.f = icmp eq i64 %.sink21.i, -1, !dbg !13388
    #dbg_value(i1 %i.f, !13389, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13392)
  br i1 %i.f, label %bb.f, label %bb.b, !dbg !13394, !prof !7542

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %.sink21.i, !13336, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13395)
    #dbg_value(i64 1, !13336, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13395)
    #dbg_value(i64 %.sink21.i, !13337, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13396)
    #dbg_value(i64 %.sink21.i, !13345, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13397)
    #dbg_value(i64 %.sink21.i, !13398, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13405)
  %i.g = icmp eq i64 %.sink21.i, 0, !dbg !13407
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink21.i, i1 true), !dbg !13407
  %i.i = lshr i64 -1, %i.h, !dbg !13407
  %.sroa.03.0 = select i1 %i.g, i64 0, i64 %i.i, !dbg !13407 ; 2 uses
    #dbg_value(i64 %.sroa.03.0, !13330, !DIExpression(), !13341)
  %i.j = icmp eq i64 %.sroa.03.0, -1, !dbg !13408
    #dbg_value(i1 %i.j, !13389, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13409)
  br i1 %i.j, label %bb.f, label %bb.c, !dbg !13412, !prof !7542

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.03.0, 1, !dbg !13408
    #dbg_value(i64 %i.k, !13352, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13355)
    #dbg_value(i64 1, !13352, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13355)
    #dbg_value(i64 %i.k, !13316, !DIExpression(), !13413)
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E8try_growCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(264) %0, i64 noundef %i.k), !dbg !13414 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0, !dbg !13414 ; 2 uses
    #dbg_value(i64 %i.m, !10493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13415)
    #dbg_value(i64 poison, !10493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13415)
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECsjfnSKV9Rz3v_3h3i.exit
    i64 0, label %bb.e
  ], !dbg !13417, !prof !13418

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1, !dbg !13414
    #dbg_value(i64 %i.n, !10493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13415)
    #dbg_value(i64 %i.m, !10500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13419)
    #dbg_value(i64 %i.n, !10500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13419)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #26, !dbg !13420
  unreachable, !dbg !13420

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27, !dbg !13421
  unreachable, !dbg !13421

_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.c
  ret void, !dbg !13422

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #27, !dbg !13423
  unreachable, !dbg !13423
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E8try_growCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(264) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13424 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
    #dbg_value(ptr %0, !13427, !DIExpression(), !13459)
    #dbg_value(ptr %0, !13460, !DIExpression(), !13463)
    #dbg_value(i64 %1, !13428, !DIExpression(), !13459)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !13465 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !13465, !noundef !18 ; 8 uses
  %i.d = icmp ult i64 %i.c, 9, !dbg !13465        ; 2 uses
    #dbg_value(i1 %i.d, !13429, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13466)
    #dbg_value(ptr %0, !9541, !DIExpression(), !13467)
    #dbg_value(ptr %0, !9557, !DIExpression(), !13469)
  %i.e = icmp ugt i64 %i.c, 8, !dbg !13471
  %i.f = load ptr, ptr %0, align 8, !dbg !13472, !alias.scope !13473, !noalias !13476, !nonnull !18 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13472 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8), !dbg !13472 ; 2 uses
    #dbg_value(ptr poison, !13431, !DIExpression(), !13478)
  %.val = load i64, ptr %i.g, align 8, !dbg !13479 ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c, !dbg !13472 ; 2 uses
    #dbg_value(i64 %i.h, !13433, !DIExpression(), !13478)
    #dbg_value(i64 %.sink.i, !13434, !DIExpression(), !13478)
  %.not = icmp ult i64 %1, %i.h, !dbg !13480
  br i1 %.not, label %bb.b, label %bb.c, !dbg !13480, !prof !7542

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27, !dbg !13481
  unreachable, !dbg !13481

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 9, !dbg !13482
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !13482

bb.d:                                             ; preds = %bb.c
  %.not112 = icmp eq i64 %i.c, %1, !dbg !13483
  br i1 %.not112, label %bb.m, label %bb.f, !dbg !13483

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k, !dbg !13484

bb.f:                                             ; preds = %bb.d
    #dbg_value(i64 %1, !13485, !DIExpression(), !13496)
    #dbg_value(i64 %1, !13498, !DIExpression(), !13505)
    #dbg_value(i64 %1, !13507, !DIExpression(), !13511)
    #dbg_value(i64 32, !13501, !DIExpression(), !13505)
    #dbg_value(i64 32, !13510, !DIExpression(), !13511)
  %i.j = shl nuw nsw i64 %1, 5, !dbg !13513       ; 4 uses
    #dbg_value(i64 %1, !13504, !DIExpression(DW_OP_constu, 576460752303423488, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13514)
    #dbg_value(i64 %1, !13515, !DIExpression(DW_OP_constu, 576460752303423488, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13518)
    #dbg_value(i64 %i.j, !13502, !DIExpression(), !13514)
  %or.cond = icmp ult i64 %1, 288230376151711744, !dbg !13520
  br i1 %or.cond, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECsjfnSKV9Rz3v_3h3i.exit, label %bb.m, !dbg !13520, !prof !13108

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.f
    #dbg_value(i64 4, !13435, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13521)
    #dbg_value(i64 4, !13522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13525)
    #dbg_value(i64 %i.j, !13435, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13521)
    #dbg_value(i64 %i.j, !13522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13525)
  br i1 %i.d, label %bb.h, label %bb.g, !dbg !13527

bb.g:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECsjfnSKV9Rz3v_3h3i.exit
    #dbg_value(i64 %.sink.i, !13485, !DIExpression(), !13528)
    #dbg_value(i64 %.sink.i, !13498, !DIExpression(), !13530)
    #dbg_value(i64 %.sink.i, !13507, !DIExpression(), !13532)
    #dbg_value(i64 32, !13501, !DIExpression(), !13530)
    #dbg_value(i64 32, !13510, !DIExpression(), !13532)
    #dbg_value(i64 %i.c, !13504, !DIExpression(DW_OP_constu, 576460752303423488, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13534)
    #dbg_value(i64 %i.c, !13515, !DIExpression(DW_OP_constu, 576460752303423488, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13535)
    #dbg_value(i64 %.sink.i, !13502, !DIExpression(DW_OP_constu, 5, DW_OP_shl, DW_OP_stack_value), !13534)
  %i.k = icmp ult i64 %i.c, 288230376151711744
  br i1 %i.k, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECsjfnSKV9Rz3v_3h3i.exit114, label %bb.m, !dbg !13537, !prof !13108

bb.h:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECsjfnSKV9Rz3v_3h3i.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !dbg !13538
  %i.l = tail call noundef align 4 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #28, !dbg !13539 ; 3 uses
    #dbg_value(ptr %i.l, !13540, !DIExpression(), !13543)
    #dbg_value(ptr %i.l, !13545, !DIExpression(), !13548)
  %i.m = icmp eq ptr %i.l, null, !dbg !13551
  br i1 %i.m, label %bb.m, label %bb.j, !dbg !13560

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECsjfnSKV9Rz3v_3h3i.exit114: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 5, !dbg !13561
    #dbg_value(i64 %i.n, !13502, !DIExpression(), !13534)
    #dbg_value(i64 4, !13447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13562)
    #dbg_value(i64 4, !13563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13568)
    #dbg_value(i64 4, !13570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13575)
    #dbg_value(i64 %i.n, !13447, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13562)
    #dbg_value(i64 %i.n, !13563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13568)
    #dbg_value(i64 %i.n, !13570, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13575)
    #dbg_value(ptr poison, !13566, !DIExpression(), !13568)
    #dbg_value(i64 %i.j, !13567, !DIExpression(), !13568)
    #dbg_value(i64 %i.j, !13574, !DIExpression(), !13575)
    #dbg_value(ptr poison, !13573, !DIExpression(), !13575)
  %i.o = tail call noundef align 4 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 4, i64 noundef %i.j) #28, !dbg !13577 ; 2 uses
    #dbg_value(ptr %i.o, !13453, !DIExpression(), !13578)
    #dbg_value(ptr %i.o, !13540, !DIExpression(), !13579)
    #dbg_value(ptr %i.o, !13545, !DIExpression(), !13581)
  %i.p = icmp eq ptr %i.o, null, !dbg !13584
  br i1 %i.p, label %bb.m, label %bb.i, !dbg !13589

bb.i:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECsjfnSKV9Rz3v_3h3i.exit114, %bb.j
  %.sroa.039.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECsjfnSKV9Rz3v_3h3i.exit114 ], !dbg !13590
    #dbg_value(ptr %.sroa.039.0, !13441, !DIExpression(), !13598)
  store ptr %.sroa.039.0, ptr %0, align 8, !dbg !13599
  store i64 %i.h, ptr %i.g, align 8, !dbg !13599
  store i64 %1, ptr %i.b, align 8, !dbg !13600
  br label %bb.m, !dbg !13601

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.l, !13597, !DIExpression(), !13602)
    #dbg_value(ptr %i.l, !13441, !DIExpression(), !13598)
    #dbg_value(ptr poison, !13604, !DIExpression(), !13611)
    #dbg_value(ptr %i.l, !13609, !DIExpression(), !13611)
    #dbg_value(i64 %i.h, !13610, !DIExpression(), !13611)
  %i.q = shl nuw nsw i64 %i.c, 5, !dbg !13613
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false), !dbg !13613
  br label %bb.i, !dbg !13614

bb.k:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !13604, !DIExpression(), !13615)
    #dbg_value(ptr %0, !13609, !DIExpression(), !13615)
    #dbg_value(i64 %i.h, !13610, !DIExpression(), !13615)
  %i.r = shl nuw nsw i64 %.val, 5, !dbg !13617
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.r, i1 false), !dbg !13617
  store i64 %.val, ptr %i.b, align 8, !dbg !13618
    #dbg_value(ptr poison, !13619, !DIExpression(), !13627)
    #dbg_value(i64 %.sink.i, !13624, !DIExpression(), !13627)
    #dbg_value(i64 %.sink.i, !13485, !DIExpression(), !13629)
    #dbg_value(i64 %.sink.i, !13498, !DIExpression(), !13631)
    #dbg_value(i64 %.sink.i, !13507, !DIExpression(), !13633)
    #dbg_value(i64 32, !13501, !DIExpression(), !13631)
    #dbg_value(i64 32, !13510, !DIExpression(), !13633)
    #dbg_value(i64 %.sink.i, !13504, !DIExpression(DW_OP_constu, 576460752303423488, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13635)
    #dbg_value(i64 %.sink.i, !13515, !DIExpression(DW_OP_constu, 576460752303423488, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13636)
    #dbg_value(i64 %.sink.i, !13502, !DIExpression(DW_OP_constu, 5, DW_OP_shl, DW_OP_stack_value), !13635)
  %or.cond.i = icmp ult i64 %i.c, 288230376151711744, !dbg !13638
  br i1 %or.cond.i, label %_RINvCs5kGgRUzsVpH_8smallvec10deallocateNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECsjfnSKV9Rz3v_3h3i.exit, label %bb.l, !dbg !13638, !prof !13108

bb.l:                                             ; preds = %bb.k
    #dbg_value(i64 0, !13258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13639)
    #dbg_value(i64 undef, !13258, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13639)
    #dbg_value(i64 1, !13258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13639)
    #dbg_declare(ptr %i.a, !13266, !DIExpression(), !13641)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13642, !noalias !13643
  store i64 0, ptr %i.a, align 8, !dbg !13642, !noalias !13643
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27, !dbg !13646, !noalias !13643
  unreachable, !dbg !13646

_RINvCs5kGgRUzsVpH_8smallvec10deallocateNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 5, !dbg !13647
    #dbg_value(i64 %i.s, !13502, !DIExpression(), !13635)
    #dbg_value(i64 4, !13258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13639)
    #dbg_value(i64 %i.s, !13258, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13639)
    #dbg_value(i64 0, !13258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13639)
    #dbg_declare(ptr %i.a, !13266, !DIExpression(), !13641)
    #dbg_value(i64 4, !13625, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13648)
    #dbg_value(i64 4, !13649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13653)
    #dbg_value(i64 4, !13655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13659)
    #dbg_value(i64 %i.s, !13625, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13648)
    #dbg_value(i64 %i.s, !13649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13653)
    #dbg_value(i64 %i.s, !13655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13659)
    #dbg_value(ptr poison, !13652, !DIExpression(), !13653)
    #dbg_value(ptr poison, !13658, !DIExpression(), !13659)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 4) #28, !dbg !13661
  br label %bb.m, !dbg !13662

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECsjfnSKV9Rz3v_3h3i.exit114, %bb.h, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECsjfnSKV9Rz3v_3h3i.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECsjfnSKV9Rz3v_3h3i.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECsjfnSKV9Rz3v_3h3i.exit114 ], [ undef, %bb.g ], [ undef, %bb.f ], !dbg !13478
  %.sroa.0.1 = phi i64 [ -1, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECsjfnSKV9Rz3v_3h3i.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECsjfnSKV9Rz3v_3h3i.exit114 ], [ 0, %bb.g ], [ 0, %bb.f ], !dbg !13478
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0, !dbg !13663
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1, !dbg !13663
  ret { i64, i64 } %i.u, !dbg !13663
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E10into_innerCsjfnSKV9Rz3v_3h3i(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 72)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !13664 {
bb.a:
    #dbg_declare(ptr %1, !13684, !DIExpression(), !13687)
    #dbg_declare(ptr poison, !13685, !DIExpression(), !13688)
    #dbg_declare(ptr poison, !13689, !DIExpression(), !13695)
    #dbg_declare(ptr poison, !13697, !DIExpression(), !13704)
    #dbg_declare(ptr poison, !13706, !DIExpression(), !13714)
    #dbg_declare(ptr poison, !13716, !DIExpression(), !13722)
    #dbg_value(ptr %1, !13724, !DIExpression(), !13727)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !13729
  %i.b = load i64, ptr %i.a, align 8, !dbg !13729, !noundef !18
  %.not = icmp eq i64 %i.b, 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13730 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !dbg !13731

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !dbg !13732
  br label %bb.d, !dbg !13733

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !13734, !DIExpression(), !13742)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !dbg !13744
  br label %bb.d, !dbg !13733

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 0, %bb.c ], [ 1, %bb.b ], !dbg !13730
  store i64 %.sink, ptr %0, align 8, !dbg !13730
  ret void, !dbg !13745
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E21reserve_one_uncheckedCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 !dbg !13746 {
bb.a:
    #dbg_value(ptr %0, !13749, !DIExpression(), !13759)
    #dbg_value(ptr %0, !13760, !DIExpression(), !13766)
    #dbg_value(i64 1, !13768, !DIExpression(), !13772)
    #dbg_declare(ptr poison, !13774, !DIExpression(), !13780)
    #dbg_value(i64 1, !13768, !DIExpression(), !13782)
    #dbg_value(ptr @2, !13790, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13796)
    #dbg_value(i64 17, !13790, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13796)
    #dbg_value(ptr %0, !13798, !DIExpression(), !13815)
    #dbg_value(ptr %0, !13817, !DIExpression(), !13820)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !13822
  %i.b = load i64, ptr %i.a, align 8, !dbg !13822, !alias.scope !13823, !noalias !13826, !noundef !18 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 4, !dbg !13822
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13828
  %i.e = load i64, ptr %i.d, align 8, !dbg !13828, !alias.scope !13823, !noalias !13826
  %.sink21.i = select i1 %i.c, i64 %i.e, i64 %i.b, !dbg !13828 ; 3 uses
    #dbg_value(i64 %.sink21.i, !13771, !DIExpression(), !13772)
  %i.f = icmp eq i64 %.sink21.i, -1, !dbg !13829
    #dbg_value(i1 %i.f, !13830, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13833)
  br i1 %i.f, label %bb.f, label %bb.b, !dbg !13835, !prof !7542

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %.sink21.i, !13777, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13836)
    #dbg_value(i64 1, !13777, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13836)
    #dbg_value(i64 %.sink21.i, !13778, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13837)
    #dbg_value(i64 %.sink21.i, !13786, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13838)
    #dbg_value(i64 %.sink21.i, !13839, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13846)
  %i.g = icmp eq i64 %.sink21.i, 0, !dbg !13848
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink21.i, i1 true), !dbg !13848
  %i.i = lshr i64 -1, %i.h, !dbg !13848
  %.sroa.03.0 = select i1 %i.g, i64 0, i64 %i.i, !dbg !13848 ; 2 uses
    #dbg_value(i64 %.sroa.03.0, !13771, !DIExpression(), !13782)
  %i.j = icmp eq i64 %.sroa.03.0, -1, !dbg !13849
    #dbg_value(i1 %i.j, !13830, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13850)
  br i1 %i.j, label %bb.f, label %bb.c, !dbg !13853, !prof !7542

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.03.0, 1, !dbg !13849
    #dbg_value(i64 %i.k, !13793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13796)
    #dbg_value(i64 1, !13793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13796)
    #dbg_value(i64 %i.k, !13757, !DIExpression(), !13854)
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E8try_growCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i64 noundef %i.k), !dbg !13855 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0, !dbg !13855 ; 2 uses
    #dbg_value(i64 %i.m, !10493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13856)
    #dbg_value(i64 poison, !10493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13856)
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECsjfnSKV9Rz3v_3h3i.exit
    i64 0, label %bb.e
  ], !dbg !13858, !prof !13418

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1, !dbg !13855
    #dbg_value(i64 %i.n, !10493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13856)
    #dbg_value(i64 %i.m, !10500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13859)
    #dbg_value(i64 %i.n, !10500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13859)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #26, !dbg !13860
  unreachable, !dbg !13860

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27, !dbg !13861
  unreachable, !dbg !13861

_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.c
  ret void, !dbg !13862

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #27, !dbg !13863
  unreachable, !dbg !13863
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E8try_growCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13864 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
    #dbg_value(ptr %0, !13867, !DIExpression(), !13899)
    #dbg_value(ptr %0, !13900, !DIExpression(), !13903)
    #dbg_value(i64 %1, !13868, !DIExpression(), !13899)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !13905 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !13905, !noundef !18 ; 8 uses
  %i.d = icmp ult i64 %i.c, 5, !dbg !13905        ; 2 uses
    #dbg_value(i1 %i.d, !13869, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13906)
    #dbg_value(ptr %0, !10426, !DIExpression(), !13907)
    #dbg_value(ptr %0, !10442, !DIExpression(), !13909)
  %i.e = icmp ugt i64 %i.c, 4, !dbg !13911
  %i.f = load ptr, ptr %0, align 8, !dbg !13912, !alias.scope !13913, !noalias !13916, !nonnull !18 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13912 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !13912 ; 2 uses
    #dbg_value(ptr poison, !13871, !DIExpression(), !13918)
  %.val = load i64, ptr %i.g, align 8, !dbg !13919 ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c, !dbg !13912 ; 2 uses
    #dbg_value(i64 %i.h, !13873, !DIExpression(), !13918)
    #dbg_value(i64 %.sink.i, !13874, !DIExpression(), !13918)
  %.not = icmp ult i64 %1, %i.h, !dbg !13920
  br i1 %.not, label %bb.b, label %bb.c, !dbg !13920, !prof !7542

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27, !dbg !13921
  unreachable, !dbg !13921

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 5, !dbg !13922
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !13922

bb.d:                                             ; preds = %bb.c
  %.not112 = icmp eq i64 %i.c, %1, !dbg !13923
  br i1 %.not112, label %bb.m, label %bb.f, !dbg !13923

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k, !dbg !13924

bb.f:                                             ; preds = %bb.d
    #dbg_value(i64 %1, !13925, !DIExpression(), !13936)
    #dbg_value(i64 %1, !13938, !DIExpression(), !13945)
    #dbg_value(i64 %1, !13947, !DIExpression(), !13951)
    #dbg_value(i64 16, !13941, !DIExpression(), !13945)
    #dbg_value(i64 16, !13950, !DIExpression(), !13951)
  %i.j = shl nuw nsw i64 %1, 4, !dbg !13953       ; 4 uses
    #dbg_value(i64 %1, !13944, !DIExpression(DW_OP_constu, 1152921504606846976, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13954)
    #dbg_value(i64 %1, !13955, !DIExpression(DW_OP_constu, 1152921504606846976, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13958)
    #dbg_value(i64 %i.j, !13942, !DIExpression(), !13954)
  %or.cond = icmp ult i64 %1, 576460752303423488, !dbg !13960
  br i1 %or.cond, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECsjfnSKV9Rz3v_3h3i.exit, label %bb.m, !dbg !13960, !prof !13108

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.f
    #dbg_value(i64 8, !13875, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13961)
    #dbg_value(i64 8, !13962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13965)
    #dbg_value(i64 %i.j, !13875, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13961)
    #dbg_value(i64 %i.j, !13962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13965)
  br i1 %i.d, label %bb.h, label %bb.g, !dbg !13967

bb.g:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECsjfnSKV9Rz3v_3h3i.exit
    #dbg_value(i64 %.sink.i, !13925, !DIExpression(), !13968)
    #dbg_value(i64 %.sink.i, !13938, !DIExpression(), !13970)
    #dbg_value(i64 %.sink.i, !13947, !DIExpression(), !13972)
    #dbg_value(i64 16, !13941, !DIExpression(), !13970)
    #dbg_value(i64 16, !13950, !DIExpression(), !13972)
    #dbg_value(i64 %i.c, !13944, !DIExpression(DW_OP_constu, 1152921504606846976, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13974)
    #dbg_value(i64 %i.c, !13955, !DIExpression(DW_OP_constu, 1152921504606846976, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13975)
    #dbg_value(i64 %.sink.i, !13942, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_stack_value), !13974)
  %i.k = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.k, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECsjfnSKV9Rz3v_3h3i.exit114, label %bb.m, !dbg !13977, !prof !13108

bb.h:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECsjfnSKV9Rz3v_3h3i.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !dbg !13978
  %i.l = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #28, !dbg !13979 ; 3 uses
    #dbg_value(ptr %i.l, !13980, !DIExpression(), !13983)
    #dbg_value(ptr %i.l, !13985, !DIExpression(), !13988)
  %i.m = icmp eq ptr %i.l, null, !dbg !13991
  br i1 %i.m, label %bb.m, label %bb.j, !dbg !14000

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECsjfnSKV9Rz3v_3h3i.exit114: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 4, !dbg !14001
    #dbg_value(i64 %i.n, !13942, !DIExpression(), !13974)
    #dbg_value(i64 8, !13887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14002)
    #dbg_value(i64 8, !14003, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14008)
    #dbg_value(i64 8, !14010, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14015)
    #dbg_value(i64 %i.n, !13887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14002)
    #dbg_value(i64 %i.n, !14003, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14008)
    #dbg_value(i64 %i.n, !14010, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14015)
    #dbg_value(ptr poison, !14006, !DIExpression(), !14008)
    #dbg_value(i64 %i.j, !14007, !DIExpression(), !14008)
    #dbg_value(i64 %i.j, !14014, !DIExpression(), !14015)
    #dbg_value(ptr poison, !14013, !DIExpression(), !14015)
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #28, !dbg !14017 ; 2 uses
    #dbg_value(ptr %i.o, !13893, !DIExpression(), !14018)
    #dbg_value(ptr %i.o, !13980, !DIExpression(), !14019)
    #dbg_value(ptr %i.o, !13985, !DIExpression(), !14021)
  %i.p = icmp eq ptr %i.o, null, !dbg !14024
  br i1 %i.p, label %bb.m, label %bb.i, !dbg !14029

bb.i:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECsjfnSKV9Rz3v_3h3i.exit114, %bb.j
  %.sroa.039.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECsjfnSKV9Rz3v_3h3i.exit114 ], !dbg !14030
    #dbg_value(ptr %.sroa.039.0, !13881, !DIExpression(), !14039)
  store ptr %.sroa.039.0, ptr %0, align 8, !dbg !14040
  store i64 %i.h, ptr %i.g, align 8, !dbg !14040
  store i64 %1, ptr %i.b, align 8, !dbg !14041
  br label %bb.m, !dbg !14042

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.l, !14038, !DIExpression(), !14043)
    #dbg_value(ptr %i.l, !13881, !DIExpression(), !14039)
    #dbg_value(ptr poison, !14045, !DIExpression(), !14052)
    #dbg_value(ptr %i.l, !14050, !DIExpression(), !14052)
    #dbg_value(i64 %i.h, !14051, !DIExpression(), !14052)
  %i.q = shl nuw nsw i64 %i.c, 4, !dbg !14054
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false), !dbg !14054
  br label %bb.i, !dbg !14055

bb.k:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !14045, !DIExpression(), !14056)
    #dbg_value(ptr %0, !14050, !DIExpression(), !14056)
    #dbg_value(i64 %i.h, !14051, !DIExpression(), !14056)
  %i.r = shl nuw nsw i64 %.val, 4, !dbg !14058
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false), !dbg !14058
  store i64 %.val, ptr %i.b, align 8, !dbg !14059
    #dbg_value(ptr poison, !14060, !DIExpression(), !14068)
    #dbg_value(i64 %.sink.i, !14065, !DIExpression(), !14068)
    #dbg_value(i64 %.sink.i, !13925, !DIExpression(), !14070)
    #dbg_value(i64 %.sink.i, !13938, !DIExpression(), !14072)
    #dbg_value(i64 %.sink.i, !13947, !DIExpression(), !14074)
    #dbg_value(i64 16, !13941, !DIExpression(), !14072)
    #dbg_value(i64 16, !13950, !DIExpression(), !14074)
    #dbg_value(i64 %.sink.i, !13944, !DIExpression(DW_OP_constu, 1152921504606846976, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14076)
    #dbg_value(i64 %.sink.i, !13955, !DIExpression(DW_OP_constu, 1152921504606846976, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14077)
    #dbg_value(i64 %.sink.i, !13942, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_stack_value), !14076)
  %or.cond.i = icmp ult i64 %i.c, 576460752303423488, !dbg !14079
  br i1 %or.cond.i, label %_RINvCs5kGgRUzsVpH_8smallvec10deallocateTyyEECsjfnSKV9Rz3v_3h3i.exit, label %bb.l, !dbg !14079, !prof !13108

bb.l:                                             ; preds = %bb.k
    #dbg_value(i64 0, !13258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14080)
    #dbg_value(i64 undef, !13258, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14080)
    #dbg_value(i64 1, !13258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14080)
    #dbg_declare(ptr %i.a, !13266, !DIExpression(), !14082)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14083, !noalias !14084
  store i64 0, ptr %i.a, align 8, !dbg !14083, !noalias !14084
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27, !dbg !14087, !noalias !14084
  unreachable, !dbg !14087

_RINvCs5kGgRUzsVpH_8smallvec10deallocateTyyEECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 4, !dbg !14088
    #dbg_value(i64 %i.s, !13942, !DIExpression(), !14076)
    #dbg_value(i64 8, !13258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14080)
    #dbg_value(i64 %i.s, !13258, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14080)
    #dbg_value(i64 0, !13258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14080)
    #dbg_declare(ptr %i.a, !13266, !DIExpression(), !14082)
    #dbg_value(i64 8, !14066, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14089)
    #dbg_value(i64 8, !14090, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14094)
    #dbg_value(i64 8, !14096, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14100)
    #dbg_value(i64 %i.s, !14066, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14089)
    #dbg_value(i64 %i.s, !14090, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14094)
    #dbg_value(i64 %i.s, !14096, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14100)
    #dbg_value(ptr poison, !14093, !DIExpression(), !14094)
    #dbg_value(ptr poison, !14099, !DIExpression(), !14100)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #28, !dbg !14102
  br label %bb.m, !dbg !14103

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECsjfnSKV9Rz3v_3h3i.exit114, %bb.h, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateTyyEECsjfnSKV9Rz3v_3h3i.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateTyyEECsjfnSKV9Rz3v_3h3i.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECsjfnSKV9Rz3v_3h3i.exit114 ], [ undef, %bb.g ], [ undef, %bb.f ], !dbg !13918
  %.sroa.0.1 = phi i64 [ -1, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateTyyEECsjfnSKV9Rz3v_3h3i.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECsjfnSKV9Rz3v_3h3i.exit114 ], [ 0, %bb.g ], [ 0, %bb.f ], !dbg !13918
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0, !dbg !14104
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1, !dbg !14104
  ret { i64, i64 } %i.u, !dbg !14104
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj8_E21reserve_one_uncheckedCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 !dbg !14105 {
bb.a:
    #dbg_value(ptr %0, !14110, !DIExpression(), !14120)
    #dbg_value(ptr %0, !14121, !DIExpression(), !14127)
    #dbg_value(i64 1, !14129, !DIExpression(), !14133)
    #dbg_declare(ptr poison, !14135, !DIExpression(), !14141)
    #dbg_value(i64 1, !14129, !DIExpression(), !14143)
    #dbg_value(ptr @2, !14151, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14157)
    #dbg_value(i64 17, !14151, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14157)
    #dbg_value(ptr %0, !14159, !DIExpression(), !14176)
    #dbg_value(ptr %0, !14178, !DIExpression(), !14181)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !14183
  %i.b = load i64, ptr %i.a, align 8, !dbg !14183, !alias.scope !14184, !noalias !14187, !noundef !18 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8, !dbg !14183
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14189
  %i.e = load i64, ptr %i.d, align 8, !dbg !14189, !alias.scope !14184, !noalias !14187
  %.sink21.i = select i1 %i.c, i64 %i.e, i64 %i.b, !dbg !14189 ; 3 uses
    #dbg_value(i64 %.sink21.i, !14132, !DIExpression(), !14133)
  %i.f = icmp eq i64 %.sink21.i, -1, !dbg !14190
    #dbg_value(i1 %i.f, !14191, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14194)
  br i1 %i.f, label %bb.f, label %bb.b, !dbg !14196, !prof !7542

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %.sink21.i, !14138, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14197)
    #dbg_value(i64 1, !14138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14197)
    #dbg_value(i64 %.sink21.i, !14139, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !14198)
    #dbg_value(i64 %.sink21.i, !14147, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !14199)
    #dbg_value(i64 %.sink21.i, !14200, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !14207)
  %i.g = icmp eq i64 %.sink21.i, 0, !dbg !14209
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink21.i, i1 true), !dbg !14209
  %i.i = lshr i64 -1, %i.h, !dbg !14209
  %.sroa.03.0 = select i1 %i.g, i64 0, i64 %i.i, !dbg !14209 ; 2 uses
    #dbg_value(i64 %.sroa.03.0, !14132, !DIExpression(), !14143)
  %i.j = icmp eq i64 %.sroa.03.0, -1, !dbg !14210
    #dbg_value(i1 %i.j, !14191, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14211)
  br i1 %i.j, label %bb.f, label %bb.c, !dbg !14214, !prof !7542

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.03.0, 1, !dbg !14210
    #dbg_value(i64 %i.k, !14154, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14157)
    #dbg_value(i64 1, !14154, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14157)
    #dbg_value(i64 %i.k, !14118, !DIExpression(), !14215)
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj8_E8try_growCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i64 noundef %i.k), !dbg !14216 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0, !dbg !14216 ; 2 uses
    #dbg_value(i64 %i.m, !10493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14217)
    #dbg_value(i64 poison, !10493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14217)
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECsjfnSKV9Rz3v_3h3i.exit
    i64 0, label %bb.e
  ], !dbg !14219, !prof !13418

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1, !dbg !14216
    #dbg_value(i64 %i.n, !10493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14217)
    #dbg_value(i64 %i.m, !10500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14220)
    #dbg_value(i64 %i.n, !10500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14220)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #26, !dbg !14221
  unreachable, !dbg !14221

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27, !dbg !14222
  unreachable, !dbg !14222

_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.c
  ret void, !dbg !14223

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #27, !dbg !14224
  unreachable, !dbg !14224
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj8_E8try_growCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14225 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
    #dbg_value(ptr %0, !14228, !DIExpression(), !14260)
    #dbg_value(ptr %0, !14261, !DIExpression(), !14264)
    #dbg_value(i64 %1, !14229, !DIExpression(), !14260)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !14266 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !14266, !noundef !18 ; 8 uses
  %i.d = icmp ult i64 %i.c, 9, !dbg !14266        ; 2 uses
    #dbg_value(i1 %i.d, !14230, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14267)
    #dbg_value(ptr %0, !11226, !DIExpression(), !14268)
    #dbg_value(ptr %0, !11242, !DIExpression(), !14270)
  %i.e = icmp ugt i64 %i.c, 8, !dbg !14272
  %i.f = load ptr, ptr %0, align 8, !dbg !14273, !alias.scope !14274, !noalias !14277, !nonnull !18 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14273 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8), !dbg !14273 ; 2 uses
    #dbg_value(ptr poison, !14232, !DIExpression(), !14279)
  %.val = load i64, ptr %i.g, align 8, !dbg !14280 ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c, !dbg !14273 ; 2 uses
    #dbg_value(i64 %i.h, !14234, !DIExpression(), !14279)
    #dbg_value(i64 %.sink.i, !14235, !DIExpression(), !14279)
  %.not = icmp ult i64 %1, %i.h, !dbg !14281
  br i1 %.not, label %bb.b, label %bb.c, !dbg !14281, !prof !7542

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27, !dbg !14282
  unreachable, !dbg !14282

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 9, !dbg !14283
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !14283

bb.d:                                             ; preds = %bb.c
  %.not112 = icmp eq i64 %i.c, %1, !dbg !14284
  br i1 %.not112, label %bb.m, label %bb.f, !dbg !14284

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k, !dbg !14285

bb.f:                                             ; preds = %bb.d
    #dbg_value(i64 %1, !14286, !DIExpression(), !14297)
    #dbg_value(i64 %1, !14299, !DIExpression(), !14306)
    #dbg_value(i64 %1, !14308, !DIExpression(), !14312)
    #dbg_value(i64 8, !14302, !DIExpression(), !14306)
    #dbg_value(i64 8, !14311, !DIExpression(), !14312)
  %i.j = shl nuw nsw i64 %1, 3, !dbg !14314       ; 4 uses
    #dbg_value(i64 %1, !14305, !DIExpression(DW_OP_constu, 2305843009213693952, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14315)
    #dbg_value(i64 %1, !14316, !DIExpression(DW_OP_constu, 2305843009213693952, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14319)
    #dbg_value(i64 %i.j, !14303, !DIExpression(), !14315)
  %or.cond = icmp ult i64 %1, 1152921504606846976, !dbg !14321
  br i1 %or.cond, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECsjfnSKV9Rz3v_3h3i.exit, label %bb.m, !dbg !14321, !prof !13108

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.f
    #dbg_value(i64 8, !14236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14322)
    #dbg_value(i64 8, !14323, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14326)
    #dbg_value(i64 %i.j, !14236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14322)
    #dbg_value(i64 %i.j, !14323, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14326)
  br i1 %i.d, label %bb.h, label %bb.g, !dbg !14328

bb.g:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECsjfnSKV9Rz3v_3h3i.exit
    #dbg_value(i64 %.sink.i, !14286, !DIExpression(), !14329)
    #dbg_value(i64 %.sink.i, !14299, !DIExpression(), !14331)
    #dbg_value(i64 %.sink.i, !14308, !DIExpression(), !14333)
    #dbg_value(i64 8, !14302, !DIExpression(), !14331)
    #dbg_value(i64 8, !14311, !DIExpression(), !14333)
    #dbg_value(i64 %i.c, !14305, !DIExpression(DW_OP_constu, 2305843009213693952, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14335)
    #dbg_value(i64 %i.c, !14316, !DIExpression(DW_OP_constu, 2305843009213693952, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14336)
    #dbg_value(i64 %.sink.i, !14303, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !14335)
  %i.k = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.k, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECsjfnSKV9Rz3v_3h3i.exit114, label %bb.m, !dbg !14338, !prof !13108

bb.h:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECsjfnSKV9Rz3v_3h3i.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !dbg !14339
  %i.l = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #28, !dbg !14340 ; 3 uses
    #dbg_value(ptr %i.l, !14341, !DIExpression(), !14344)
    #dbg_value(ptr %i.l, !14346, !DIExpression(), !14349)
  %i.m = icmp eq ptr %i.l, null, !dbg !14352
  br i1 %i.m, label %bb.m, label %bb.j, !dbg !14361

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECsjfnSKV9Rz3v_3h3i.exit114: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 3, !dbg !14362
    #dbg_value(i64 %i.n, !14303, !DIExpression(), !14335)
    #dbg_value(i64 8, !14248, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14363)
    #dbg_value(i64 8, !14364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14369)
    #dbg_value(i64 8, !14371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14376)
    #dbg_value(i64 %i.n, !14248, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14363)
    #dbg_value(i64 %i.n, !14364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14369)
    #dbg_value(i64 %i.n, !14371, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14376)
    #dbg_value(ptr poison, !14367, !DIExpression(), !14369)
    #dbg_value(i64 %i.j, !14368, !DIExpression(), !14369)
    #dbg_value(i64 %i.j, !14375, !DIExpression(), !14376)
    #dbg_value(ptr poison, !14374, !DIExpression(), !14376)
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #28, !dbg !14378 ; 2 uses
    #dbg_value(ptr %i.o, !14254, !DIExpression(), !14379)
    #dbg_value(ptr %i.o, !14341, !DIExpression(), !14380)
    #dbg_value(ptr %i.o, !14346, !DIExpression(), !14382)
  %i.p = icmp eq ptr %i.o, null, !dbg !14385
  br i1 %i.p, label %bb.m, label %bb.i, !dbg !14390

bb.i:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECsjfnSKV9Rz3v_3h3i.exit114, %bb.j
  %.sroa.039.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECsjfnSKV9Rz3v_3h3i.exit114 ], !dbg !14391
    #dbg_value(ptr %.sroa.039.0, !14242, !DIExpression(), !14399)
  store ptr %.sroa.039.0, ptr %0, align 8, !dbg !14400
  store i64 %i.h, ptr %i.g, align 8, !dbg !14400
  store i64 %1, ptr %i.b, align 8, !dbg !14401
  br label %bb.m, !dbg !14402

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.l, !14398, !DIExpression(), !14403)
    #dbg_value(ptr %i.l, !14242, !DIExpression(), !14399)
    #dbg_value(ptr poison, !14405, !DIExpression(), !14412)
    #dbg_value(ptr %i.l, !14410, !DIExpression(), !14412)
    #dbg_value(i64 %i.h, !14411, !DIExpression(), !14412)
  %i.q = shl nuw nsw i64 %i.c, 3, !dbg !14414
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false), !dbg !14414
  br label %bb.i, !dbg !14415

bb.k:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !14405, !DIExpression(), !14416)
    #dbg_value(ptr %0, !14410, !DIExpression(), !14416)
    #dbg_value(i64 %i.h, !14411, !DIExpression(), !14416)
  %i.r = shl nuw nsw i64 %.val, 3, !dbg !14418
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false), !dbg !14418
  store i64 %.val, ptr %i.b, align 8, !dbg !14419
    #dbg_value(ptr poison, !14420, !DIExpression(), !14428)
    #dbg_value(i64 %.sink.i, !14425, !DIExpression(), !14428)
    #dbg_value(i64 %.sink.i, !14286, !DIExpression(), !14430)
    #dbg_value(i64 %.sink.i, !14299, !DIExpression(), !14432)
    #dbg_value(i64 %.sink.i, !14308, !DIExpression(), !14434)
    #dbg_value(i64 8, !14302, !DIExpression(), !14432)
    #dbg_value(i64 8, !14311, !DIExpression(), !14434)
    #dbg_value(i64 %.sink.i, !14305, !DIExpression(DW_OP_constu, 2305843009213693952, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14436)
    #dbg_value(i64 %.sink.i, !14316, !DIExpression(DW_OP_constu, 2305843009213693952, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14437)
    #dbg_value(i64 %.sink.i, !14303, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !14436)
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976, !dbg !14439
  br i1 %or.cond.i, label %_RINvCs5kGgRUzsVpH_8smallvec10deallocateyECsjfnSKV9Rz3v_3h3i.exit, label %bb.l, !dbg !14439, !prof !13108

bb.l:                                             ; preds = %bb.k
    #dbg_value(i64 0, !13258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14440)
    #dbg_value(i64 undef, !13258, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14440)
    #dbg_value(i64 1, !13258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14440)
    #dbg_declare(ptr %i.a, !13266, !DIExpression(), !14442)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14443, !noalias !14444
  store i64 0, ptr %i.a, align 8, !dbg !14443, !noalias !14444
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27, !dbg !14447, !noalias !14444
  unreachable, !dbg !14447

_RINvCs5kGgRUzsVpH_8smallvec10deallocateyECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 3, !dbg !14448
    #dbg_value(i64 %i.s, !14303, !DIExpression(), !14436)
    #dbg_value(i64 8, !13258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14440)
    #dbg_value(i64 %i.s, !13258, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14440)
    #dbg_value(i64 0, !13258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14440)
    #dbg_declare(ptr %i.a, !13266, !DIExpression(), !14442)
    #dbg_value(i64 8, !14426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14449)
    #dbg_value(i64 8, !14450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14454)
    #dbg_value(i64 8, !14456, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14460)
    #dbg_value(i64 %i.s, !14426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14449)
    #dbg_value(i64 %i.s, !14450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14454)
    #dbg_value(i64 %i.s, !14456, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14460)
    #dbg_value(ptr poison, !14453, !DIExpression(), !14454)
    #dbg_value(ptr poison, !14459, !DIExpression(), !14460)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #28, !dbg !14462
  br label %bb.m, !dbg !14463

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECsjfnSKV9Rz3v_3h3i.exit114, %bb.h, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateyECsjfnSKV9Rz3v_3h3i.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateyECsjfnSKV9Rz3v_3h3i.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECsjfnSKV9Rz3v_3h3i.exit114 ], [ undef, %bb.g ], [ undef, %bb.f ], !dbg !14279
  %.sroa.0.1 = phi i64 [ -1, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateyECsjfnSKV9Rz3v_3h3i.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECsjfnSKV9Rz3v_3h3i.exit114 ], [ 0, %bb.g ], [ 0, %bb.f ], !dbg !14279
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0, !dbg !14464
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1, !dbg !14464
  ret { i64, i64 } %i.u, !dbg !14464
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsenfyI6F4F2A_10serde_json5value5ValueNtB6_5Debug3fmtCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !14465 {
bb.a:
    #dbg_value(ptr %0, !14472, !DIExpression(), !14474)
    #dbg_value(ptr %1, !14473, !DIExpression(), !14474)
  %i.a = load ptr, ptr %0, align 8, !dbg !14475, !nonnull !18, !align !7533, !noundef !18
  %i.b = tail call noundef zeroext i1 @_RNvXNtCsenfyI6F4F2A_10serde_json5valueNtB2_5ValueNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !14476
  ret i1 %i.b, !dbg !14477
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs6_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapyINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h311StreamEventEENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1G_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !14478 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !14523, !DIExpression(), !14525)
    #dbg_value(ptr %0, !14526, !DIExpression(), !14565)
    #dbg_value(ptr %1, !14524, !DIExpression(), !14525)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14567
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9debug_map(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !14568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14569
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h311StreamEventENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterB1r_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0), !dbg !14570
  %i.c = call noundef nonnull align 8 ptr @_RINvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugMap7entriesRyRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjfnSKV9Rz3v_3h3i7actions2h311StreamEventEINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IteryB15_EEB1I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !dbg !14571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14572
  %i.d = call noundef zeroext i1 @_RNvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !14573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14574
  ret i1 %i.d, !dbg !14575
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsG_Cs5kGgRUzsVpH_8smallvecINtB5_8IntoIterATyjEj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #7 !dbg !14576 {
bb.a:
    #dbg_value(ptr %0, !14636, !DIExpression(), !14639)
    #dbg_value(ptr %0, !14637, !DIExpression(), !14640)
    #dbg_value(ptr %0, !14641, !DIExpression(), !14660)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !18 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8
    #dbg_value(ptr poison, !14668, !DIExpression(), !14673)
  %.not7 = icmp eq i64 %.promoted, %i.c, !dbg !14674
  br i1 %.not7, label %.critedge, label %.lr.ph.preheader, !dbg !14674

.lr.ph.preheader:                                 ; preds = %bb.a
    #dbg_value(i64 poison, !14658, !DIExpression(), !14675)
    #dbg_value(ptr poison, !14668, !DIExpression(), !14673)
  store i64 %i.c, ptr %i.a, align 8, !dbg !14676
  br label %.critedge, !dbg !14674

.critedge:                                        ; preds = %.lr.ph.preheader, %bb.a
  ret void, !dbg !14677
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsM_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyjEj1_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsjfnSKV9Rz3v_3h3i(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !14678 {
bb.a:
    #dbg_declare(ptr %1, !14683, !DIExpression(), !14686)
    #dbg_value(i64 0, !14687, !DIExpression(), !14697)
    #dbg_value(ptr %1, !14699, !DIExpression(), !14706)
    #dbg_value(ptr %1, !14708, !DIExpression(), !14725)
    #dbg_value(ptr %1, !14727, !DIExpression(), !14733)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14735 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !14735, !alias.scope !14736, !noalias !14739, !noundef !18 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1, !dbg !14735        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14741 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !14741, !alias.scope !14736, !noalias !14739
  %.sink21.i = select i1 %i.c, i64 %i.e, i64 %i.b, !dbg !14741
    #dbg_value(i64 %.sink21.i, !14684, !DIExpression(), !14742)
    #dbg_value(ptr %1, !14694, !DIExpression(), !14697)
    #dbg_value(ptr %1, !14743, !DIExpression(), !14757)
  %.sink16.i = select i1 %i.c, ptr %i.d, ptr %i.a, !dbg !14759
    #dbg_value(ptr %.sink16.i, !14695, !DIExpression(), !14760)
  store i64 0, ptr %.sink16.i, align 8, !dbg !14761
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !14762
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14763
  store i64 0, ptr %i.f, align 8, !dbg !14763
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14763
  store i64 %.sink21.i, ptr %i.g, align 8, !dbg !14763
  ret void, !dbg !14764
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvXsO_Cs5kGgRUzsVpH_8smallvecQINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(136) %0) unnamed_addr #8 !dbg !14765 {
bb.a:
    #dbg_value(ptr %0, !14778, !DIExpression(), !14779)
    #dbg_value(ptr %0, !14780, !DIExpression(), !14794)
    #dbg_value(ptr %0, !13026, !DIExpression(), !14796)
    #dbg_value(ptr %0, !14798, !DIExpression(), !14801)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !14803
  %i.b = load i64, ptr %i.a, align 8, !dbg !14803, !alias.scope !14804, !noalias !14807, !noundef !18 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1, !dbg !14803        ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !dbg !14809, !alias.scope !14804, !noalias !14807, !nonnull !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14809
  %.sink17.i = select i1 %i.c, ptr %i.d, ptr %0, !dbg !14809 ; 2 uses
  %.val = load i64, ptr %i.e, align 8, !dbg !14810
  %i.f = select i1 %i.c, i64 %.val, i64 %i.b, !dbg !14809
    #dbg_value(i64 %i.f, !14811, !DIExpression(), !14823)
    #dbg_value(i64 %i.f, !14829, !DIExpression(), !14835)
    #dbg_value(ptr %.sink17.i, !14827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14837)
    #dbg_value(ptr %.sink17.i, !14818, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14838)
    #dbg_value(i64 %i.f, !14827, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14837)
    #dbg_value(i64 %i.f, !14818, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14838)
    #dbg_value(ptr %.sink17.i, !14819, !DIExpression(), !14839)
    #dbg_value(ptr %.sink17.i, !14834, !DIExpression(), !14835)
  %i.g = getelementptr inbounds nuw [128 x i8], ptr %.sink17.i, i64 %i.f, !dbg !14840
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sink17.i, 0, !dbg !14841
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %i.g, 1, !dbg !14841
  ret { ptr, ptr } %i.i, !dbg !14841
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_Cs5kGgRUzsVpH_8smallvecNtB5_18CollectionAllocErrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #9 !dbg !14842 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !14848, !DIExpression(), !14852)
    #dbg_value(ptr %1, !14849, !DIExpression(), !14852)
  %i.b = load i64, ptr %0, align 8, !dbg !14853, !range !14854, !noundef !18
  %.not = icmp eq i64 %i.b, 0, !dbg !14853
  br i1 %.not, label %bb.c, label %bb.b, !dbg !14853

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14855
    #dbg_value(ptr %0, !14850, !DIExpression(), !14856)
  store ptr %0, ptr %i.a, align 8, !dbg !14855
    #dbg_value(ptr %i.a, !14850, !DIExpression(DW_OP_deref), !14856)
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26), !dbg !14857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14858
  br label %bb.d, !dbg !14858

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 16), !dbg !14853
  br label %bb.d, !dbg !14853

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in, !dbg !14859
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsu_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !14860 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !14865, !DIExpression(), !14867)
    #dbg_value(ptr %0, !14868, !DIExpression(), !14882)
    #dbg_value(ptr %1, !14866, !DIExpression(), !14867)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14884
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !14885
    #dbg_value(ptr %0, !13798, !DIExpression(), !14886)
    #dbg_value(ptr %0, !13817, !DIExpression(), !14888)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !14890
  %i.c = load i64, ptr %i.b, align 8, !dbg !14890, !alias.scope !14891, !noalias !14894, !noundef !18 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4, !dbg !14890        ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !14896, !alias.scope !14891, !noalias !14894, !nonnull !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14896
  %i.g = load i64, ptr %i.f, align 8, !dbg !14896, !alias.scope !14891, !noalias !14894
  %.sink22.i = select i1 %i.d, ptr %i.e, ptr %0, !dbg !14896 ; 2 uses
  %.sink21.i = select i1 %i.d, i64 %i.g, i64 %i.c, !dbg !14896
    #dbg_value(i64 %.sink21.i, !14897, !DIExpression(), !14913)
    #dbg_value(i64 %.sink21.i, !14919, !DIExpression(), !14923)
    #dbg_value(ptr %.sink22.i, !14917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14925)
    #dbg_value(ptr %.sink22.i, !14904, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14926)
    #dbg_value(i64 %.sink21.i, !14917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14925)
    #dbg_value(i64 %.sink21.i, !14904, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14926)
    #dbg_value(ptr %.sink22.i, !14909, !DIExpression(), !14927)
    #dbg_value(ptr %.sink22.i, !14922, !DIExpression(), !14923)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.sink22.i, i64 %.sink21.i, !dbg !14928
  %i.i = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRTyyEINtNtNtBa_5slice4iter4IterB14_EECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %.sink22.i, ptr noundef nonnull %i.h), !dbg !14929
  %i.j = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i), !dbg !14930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14931
  ret i1 %i.j, !dbg !14932
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14933 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !14935, !DIExpression(), !14939)
    #dbg_value(ptr %0, !14940, !DIExpression(), !14943)
    #dbg_declare(ptr %i.a, !14945, !DIExpression(), !14952)
end_hunk_0
