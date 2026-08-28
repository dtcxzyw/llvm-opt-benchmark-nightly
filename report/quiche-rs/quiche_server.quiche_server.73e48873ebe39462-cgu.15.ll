Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_server.quiche_server.73e48873ebe39462-cgu.15?download=true
inline.NumInlined: 327
inline.NumDeleted: 135
begin_hunk_0_@_RINvXst_Cs5kGgRUzsVpH_8smallvecINtB6_8SmallVecAyj8_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendyE6extendINtNtNtBV_8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IteryEEECs9WTr9tUZcLm_13quiche_server:bb.a
  %i.av = extractvalue { i64, i64 } %i.ad, 1, !dbg !8945
    #dbg_value(i64 %i.av, !8672, !DIExpression(), !8947)
    #dbg_value(i64 %i.av, !8948, !DIExpression(), !8952)
    #dbg_value(i64 %storemerge37, !8858, !DIExpression(), !8859)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sink17.i, i64 %storemerge37, !dbg !8954
    #dbg_value(ptr %i.aw, !8951, !DIExpression(), !8952)
  store i64 %i.av, ptr %i.aw, align 8, !dbg !8955
    #dbg_value(ptr undef, !8680, !DIExpression(), !8684)
  %i.ax = add i64 %storemerge37, 1, !dbg !8956    ; 2 uses
    #dbg_value(i64 %i.ax, !8670, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8862)
  %exitcond.not = icmp eq i64 %i.ax, %.sink.i.pre-phi, !dbg !8863
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !8863

bb.i:                                             ; preds = %bb.g
    #dbg_value(ptr poison, !8083, !DIExpression(), !8957)
    #dbg_value(ptr poison, !8092, !DIExpression(), !8959)
  store i64 %storemerge37, ptr %.sink16.i, align 8, !dbg !8961
  br label %bb.f, !dbg !8943

bb.j:                                             ; preds = %.lr.ph
  %i.ay = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8083, !DIExpression(), !8962)
    #dbg_value(ptr poison, !8092, !DIExpression(), !8964)
  store i64 %storemerge37, ptr %.sink16.i, align 8, !dbg !8966
  resume { ptr, i32 } %i.ay, !dbg !8967
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_E21reserve_one_uncheckedCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef align 8 captures(none) dereferenceable(136) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !8968 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
    #dbg_value(ptr %0, !9019, !DIExpression(), !9030)
    #dbg_value(ptr %0, !9031, !DIExpression(), !9038)
    #dbg_value(i64 1, !9040, !DIExpression(), !9044)
    #dbg_declare(ptr poison, !9046, !DIExpression(), !9052)
    #dbg_value(i64 1, !9040, !DIExpression(), !9054)
    #dbg_value(ptr @2, !9062, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9071)
    #dbg_value(i64 17, !9062, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9071)
    #dbg_value(ptr %0, !9073, !DIExpression(), !9090)
    #dbg_value(ptr %0, !9092, !DIExpression(), !9098)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !9100 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !9100, !alias.scope !9101, !noalias !9104, !noundef !19 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1, !dbg !9100
  %i.e = load ptr, ptr %0, align 8, !dbg !9106, !alias.scope !9101, !noalias !9104, !nonnull !19 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9106 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !9106, !alias.scope !9101, !noalias !9104 ; 3 uses
  %.sink21.i = select i1 %i.d, i64 %i.g, i64 %i.c, !dbg !9106 ; 5 uses
    #dbg_value(i64 %.sink21.i, !9043, !DIExpression(), !9044)
  %i.h = icmp eq i64 %.sink21.i, -1, !dbg !9107
    #dbg_value(i1 %i.h, !9108, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9111)
  br i1 %i.h, label %bb.q, label %bb.b, !dbg !9113, !prof !7768

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %.sink21.i, !9049, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9114)
    #dbg_value(i64 1, !9049, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9114)
    #dbg_value(i64 %.sink21.i, !9050, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9115)
    #dbg_value(i64 %.sink21.i, !9058, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9116)
    #dbg_value(i64 %.sink21.i, !9117, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9124)
  %i.i = icmp eq i64 %.sink21.i, 0, !dbg !9126    ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink21.i, i1 true), !dbg !9126
  %i.k = lshr i64 -1, %i.j, !dbg !9126            ; 2 uses
  %.sroa.03.0 = select i1 %i.i, i64 0, i64 %i.k, !dbg !9126 ; 2 uses
    #dbg_value(i64 %.sroa.03.0, !9043, !DIExpression(), !9054)
  %i.l = icmp eq i64 %.sroa.03.0, -1, !dbg !9127
    #dbg_value(i1 %i.l, !9108, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9128)
  br i1 %i.l, label %bb.q, label %bb.c, !dbg !9131, !prof !7768

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.03.0, 1, !dbg !9127   ; 4 uses
    #dbg_value(i64 %i.m, !9068, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9071)
    #dbg_value(i64 1, !9068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9071)
    #dbg_value(i64 %i.m, !9028, !DIExpression(), !9132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9133), !dbg !9136
    #dbg_value(ptr %0, !9137, !DIExpression(), !9174)
    #dbg_value(ptr %0, !9176, !DIExpression(), !9179)
    #dbg_value(i64 %i.m, !9143, !DIExpression(), !9174)
  %i.n = icmp ult i64 %i.c, 2, !dbg !9181         ; 2 uses
    #dbg_value(i1 %i.n, !9144, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9182)
    #dbg_value(ptr %0, !9183, !DIExpression(), !9197)
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1), !dbg !9199 ; 2 uses
    #dbg_value(ptr poison, !9146, !DIExpression(), !9200)
    #dbg_value(i64 %.sink21.i, !9148, !DIExpression(), !9200)
    #dbg_value(i64 %.sink.i.i, !9149, !DIExpression(), !9200)
  %.not.i = icmp ult i64 %i.m, %.sink21.i, !dbg !9201
  br i1 %.not.i, label %bb.d, label %bb.e, !dbg !9201, !prof !7768

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23, !dbg !9202, !noalias !9133
  unreachable, !dbg !9202

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f, !dbg !9203

bb.f:                                             ; preds = %bb.e
  %.not112.i = icmp eq i64 %i.c, %i.m, !dbg !9204
  br i1 %.not112.i, label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECs9WTr9tUZcLm_13quiche_server.exit, label %bb.h, !dbg !9204

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECs9WTr9tUZcLm_13quiche_server.exit, label %bb.m, !dbg !9205

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %i.m, !9206, !DIExpression(), !9234)
    #dbg_value(i64 %i.m, !9236, !DIExpression(), !9243)
    #dbg_value(i64 %i.m, !9245, !DIExpression(), !9255)
    #dbg_value(i64 128, !9239, !DIExpression(), !9243)
    #dbg_value(i64 128, !9254, !DIExpression(), !9255)
  %i.o = shl nuw nsw i64 %i.m, 7, !dbg !9257      ; 3 uses
    #dbg_value(i64 %i.m, !9242, !DIExpression(DW_OP_constu, 144115188075855872, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9258)
    #dbg_value(i64 %i.m, !9259, !DIExpression(DW_OP_constu, 144115188075855872, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9262)
    #dbg_value(i64 %i.o, !9240, !DIExpression(), !9258)
  %or.cond.i = icmp ult i64 %i.k, 72057594037927935, !dbg !9264
  br i1 %or.cond.i, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECs9WTr9tUZcLm_13quiche_server.exit.i, label %bb.p, !dbg !9264, !prof !9265

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECs9WTr9tUZcLm_13quiche_server.exit.i: ; preds = %bb.h
    #dbg_value(i64 8, !9150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9266)
    #dbg_value(i64 8, !9267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9272)
    #dbg_value(i64 %i.o, !9150, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9266)
    #dbg_value(i64 %i.o, !9267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9272)
  br i1 %i.n, label %bb.j, label %bb.i, !dbg !9274

bb.i:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECs9WTr9tUZcLm_13quiche_server.exit.i
    #dbg_value(i64 %.sink.i.i, !9206, !DIExpression(), !9275)
    #dbg_value(i64 %.sink.i.i, !9236, !DIExpression(), !9277)
    #dbg_value(i64 %.sink.i.i, !9245, !DIExpression(), !9279)
    #dbg_value(i64 128, !9239, !DIExpression(), !9277)
    #dbg_value(i64 128, !9254, !DIExpression(), !9279)
    #dbg_value(i64 %i.c, !9242, !DIExpression(DW_OP_constu, 144115188075855872, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9281)
    #dbg_value(i64 %i.c, !9259, !DIExpression(DW_OP_constu, 144115188075855872, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9282)
    #dbg_value(i64 %.sink.i.i, !9240, !DIExpression(DW_OP_constu, 7, DW_OP_shl, DW_OP_stack_value), !9281)
  %i.p = icmp ult i64 %i.c, 72057594037927936
  br i1 %i.p, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECs9WTr9tUZcLm_13quiche_server.exit114.i, label %bb.p, !dbg !9284, !prof !9265

bb.j:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECs9WTr9tUZcLm_13quiche_server.exit.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !dbg !9285, !noalias !9133
  %i.q = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #21, !dbg !9286, !noalias !9133 ; 3 uses
    #dbg_value(ptr %i.q, !9287, !DIExpression(), !9306)
    #dbg_value(ptr %i.q, !9308, !DIExpression(), !9313)
  %i.r = icmp eq ptr %i.q, null, !dbg !9316
  br i1 %i.r, label %bb.o, label %bb.l, !dbg !9328

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECs9WTr9tUZcLm_13quiche_server.exit114.i: ; preds = %bb.i
  %i.s = shl nuw nsw i64 %.sink.i.i, 7, !dbg !9329
    #dbg_value(i64 %i.s, !9240, !DIExpression(), !9281)
    #dbg_value(i64 8, !9162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9330)
    #dbg_value(i64 8, !9331, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9338)
    #dbg_value(i64 8, !9340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9347)
    #dbg_value(i64 %i.s, !9162, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9330)
    #dbg_value(i64 %i.s, !9331, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9338)
    #dbg_value(i64 %i.s, !9340, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9347)
    #dbg_value(ptr poison, !9336, !DIExpression(), !9338)
    #dbg_value(i64 %i.o, !9337, !DIExpression(), !9338)
    #dbg_value(i64 %i.o, !9346, !DIExpression(), !9347)
    #dbg_value(ptr poison, !9345, !DIExpression(), !9347)
  %i.t = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.o) #21, !dbg !9349, !noalias !9133 ; 2 uses
    #dbg_value(ptr %i.t, !9168, !DIExpression(), !9350)
    #dbg_value(ptr %i.t, !9287, !DIExpression(), !9351)
    #dbg_value(ptr %i.t, !9308, !DIExpression(), !9353)
  %i.u = icmp eq ptr %i.t, null, !dbg !9356
  br i1 %i.u, label %bb.o, label %bb.k, !dbg !9361

bb.k:                                             ; preds = %bb.l, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECs9WTr9tUZcLm_13quiche_server.exit114.i
  %.sroa.039.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECs9WTr9tUZcLm_13quiche_server.exit114.i ], !dbg !9362
    #dbg_value(ptr %.sroa.039.0.i, !9156, !DIExpression(), !9372)
  store ptr %.sroa.039.0.i, ptr %0, align 8, !dbg !9373, !alias.scope !9133
  store i64 %.sink21.i, ptr %i.f, align 8, !dbg !9373, !alias.scope !9133
  store i64 %i.m, ptr %i.b, align 8, !dbg !9374, !alias.scope !9133
  br label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECs9WTr9tUZcLm_13quiche_server.exit, !dbg !9375

bb.l:                                             ; preds = %bb.j
    #dbg_value(ptr %i.q, !9370, !DIExpression(), !9376)
    #dbg_value(ptr %i.q, !9156, !DIExpression(), !9372)
    #dbg_value(ptr poison, !9378, !DIExpression(), !9386)
    #dbg_value(ptr %i.q, !9384, !DIExpression(), !9386)
    #dbg_value(i64 %.sink21.i, !9385, !DIExpression(), !9386)
  %i.v = shl nuw nsw i64 %i.c, 7, !dbg !9388
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 dereferenceable(136) %0, i64 %i.v, i1 false), !dbg !9388
  br label %bb.k, !dbg !9389

bb.m:                                             ; preds = %bb.g
    #dbg_value(ptr poison, !9378, !DIExpression(), !9390)
    #dbg_value(ptr %0, !9384, !DIExpression(), !9390)
    #dbg_value(i64 %.sink21.i, !9385, !DIExpression(), !9390)
  %i.w = shl nuw nsw i64 %i.g, 7, !dbg !9392
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(136) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false), !dbg !9392
  store i64 %i.g, ptr %i.b, align 8, !dbg !9393, !alias.scope !9133
    #dbg_value(ptr poison, !9394, !DIExpression(), !9402)
    #dbg_value(i64 %.sink.i.i, !9399, !DIExpression(), !9402)
    #dbg_value(i64 %.sink.i.i, !9206, !DIExpression(), !9404)
    #dbg_value(i64 %.sink.i.i, !9236, !DIExpression(), !9406)
    #dbg_value(i64 %.sink.i.i, !9245, !DIExpression(), !9408)
    #dbg_value(i64 128, !9239, !DIExpression(), !9406)
    #dbg_value(i64 128, !9254, !DIExpression(), !9408)
    #dbg_value(i64 %.sink.i.i, !9242, !DIExpression(DW_OP_constu, 144115188075855872, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9410)
    #dbg_value(i64 %.sink.i.i, !9259, !DIExpression(DW_OP_constu, 144115188075855872, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9411)
    #dbg_value(i64 %.sink.i.i, !9240, !DIExpression(DW_OP_constu, 7, DW_OP_shl, DW_OP_stack_value), !9410)
  %or.cond.i.i = icmp ult i64 %i.c, 72057594037927936, !dbg !9413
  br i1 %or.cond.i.i, label %_RINvCs5kGgRUzsVpH_8smallvec10deallocateNtNtCs3f36owOmepS_6quiche5frame5FrameECs9WTr9tUZcLm_13quiche_server.exit.i, label %bb.n, !dbg !9413, !prof !9265

bb.n:                                             ; preds = %bb.m
    #dbg_value(i64 0, !9414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9424)
    #dbg_value(i64 undef, !9414, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9424)
    #dbg_value(i64 1, !9414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9424)
    #dbg_declare(ptr %i.a, !9422, !DIExpression(), !9426)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9427, !noalias !9428
  store i64 0, ptr %i.a, align 8, !dbg !9427, !noalias !9428
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23, !dbg !9431, !noalias !9428
  unreachable, !dbg !9431

_RINvCs5kGgRUzsVpH_8smallvec10deallocateNtNtCs3f36owOmepS_6quiche5frame5FrameECs9WTr9tUZcLm_13quiche_server.exit.i: ; preds = %bb.m
  %i.x = shl nuw nsw i64 %.sink.i.i, 7, !dbg !9432
    #dbg_value(i64 %i.x, !9240, !DIExpression(), !9410)
    #dbg_value(i64 8, !9414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9424)
    #dbg_value(i64 %i.x, !9414, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9424)
    #dbg_value(i64 0, !9414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9424)
    #dbg_declare(ptr %i.a, !9422, !DIExpression(), !9426)
    #dbg_value(i64 8, !9400, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9433)
    #dbg_value(i64 8, !9434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9440)
    #dbg_value(i64 8, !9442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9446)
    #dbg_value(i64 %i.x, !9400, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9433)
    #dbg_value(i64 %i.x, !9434, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9440)
    #dbg_value(i64 %i.x, !9442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9446)
    #dbg_value(ptr poison, !9439, !DIExpression(), !9440)
    #dbg_value(ptr poison, !9445, !DIExpression(), !9446)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #21, !dbg !9448, !noalias !9133
  br label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECs9WTr9tUZcLm_13quiche_server.exit, !dbg !9449

bb.o:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECs9WTr9tUZcLm_13quiche_server.exit114.i, %bb.j
    #dbg_value(i64 8, !8035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9450)
    #dbg_value(i64 %i.o, !8035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9450)
    #dbg_value(i64 8, !8042, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9452)
    #dbg_value(i64 %i.o, !8042, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9452)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.o) #24, !dbg !9453
  unreachable, !dbg !9453

bb.p:                                             ; preds = %bb.i, %bb.h
    #dbg_value(i64 0, !8035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9450)
    #dbg_value(i64 undef, !8035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9450)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23, !dbg !9454
  unreachable, !dbg !9454

_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECs9WTr9tUZcLm_13quiche_server.exit: ; preds = %_RINvCs5kGgRUzsVpH_8smallvec10deallocateNtNtCs3f36owOmepS_6quiche5frame5FrameECs9WTr9tUZcLm_13quiche_server.exit.i, %bb.f, %bb.k, %bb.g
    #dbg_value(i64 -1, !8035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9450)
    #dbg_value(i64 undef, !8035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9450)
  ret void, !dbg !9455

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #23, !dbg !9456
  unreachable, !dbg !9456
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E10into_innerCs9WTr9tUZcLm_13quiche_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 72)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !9457 {
bb.a:
    #dbg_declare(ptr %1, !9477, !DIExpression(), !9480)
    #dbg_declare(ptr poison, !9478, !DIExpression(), !9481)
    #dbg_declare(ptr poison, !9482, !DIExpression(), !9488)
    #dbg_declare(ptr poison, !9490, !DIExpression(), !9497)
    #dbg_declare(ptr poison, !9499, !DIExpression(), !9507)
    #dbg_declare(ptr poison, !9509, !DIExpression(), !9515)
    #dbg_value(ptr %1, !9517, !DIExpression(), !9520)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !9522
  %i.b = load i64, ptr %i.a, align 8, !dbg !9522, !noundef !19
  %.not = icmp eq i64 %i.b, 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9523 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !dbg !9524

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !dbg !9525
  br label %bb.d, !dbg !9526

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !9527, !DIExpression(), !9535)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !dbg !9537
  br label %bb.d, !dbg !9526

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 0, %bb.c ], [ 1, %bb.b ], !dbg !9523
  store i64 %.sink, ptr %0, align 8, !dbg !9523
  ret void, !dbg !9538
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E21reserve_one_uncheckedCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #2 !dbg !9539 {
bb.a:
    #dbg_value(ptr %0, !9542, !DIExpression(), !9552)
    #dbg_value(ptr %0, !9553, !DIExpression(), !9559)
    #dbg_value(i64 1, !9561, !DIExpression(), !9565)
    #dbg_declare(ptr poison, !9567, !DIExpression(), !9573)
    #dbg_value(i64 1, !9561, !DIExpression(), !9575)
    #dbg_value(ptr @2, !9583, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9589)
    #dbg_value(i64 17, !9583, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9589)
    #dbg_value(ptr %0, !9591, !DIExpression(), !9608)
    #dbg_value(ptr %0, !9610, !DIExpression(), !9613)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !9615
  %i.b = load i64, ptr %i.a, align 8, !dbg !9615, !alias.scope !9616, !noalias !9619, !noundef !19 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 4, !dbg !9615
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9621
  %i.e = load i64, ptr %i.d, align 8, !dbg !9621, !alias.scope !9616, !noalias !9619
  %.sink21.i = select i1 %i.c, i64 %i.e, i64 %i.b, !dbg !9621 ; 3 uses
    #dbg_value(i64 %.sink21.i, !9564, !DIExpression(), !9565)
  %i.f = icmp eq i64 %.sink21.i, -1, !dbg !9622
    #dbg_value(i1 %i.f, !9623, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9626)
  br i1 %i.f, label %bb.f, label %bb.b, !dbg !9628, !prof !7768

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %.sink21.i, !9570, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9629)
    #dbg_value(i64 1, !9570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9629)
    #dbg_value(i64 %.sink21.i, !9571, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9630)
    #dbg_value(i64 %.sink21.i, !9579, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9631)
    #dbg_value(i64 %.sink21.i, !9632, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9639)
  %i.g = icmp eq i64 %.sink21.i, 0, !dbg !9641
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink21.i, i1 true), !dbg !9641
  %i.i = lshr i64 -1, %i.h, !dbg !9641
  %.sroa.03.0 = select i1 %i.g, i64 0, i64 %i.i, !dbg !9641 ; 2 uses
    #dbg_value(i64 %.sroa.03.0, !9564, !DIExpression(), !9575)
  %i.j = icmp eq i64 %.sroa.03.0, -1, !dbg !9642
    #dbg_value(i1 %i.j, !9623, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9643)
  br i1 %i.j, label %bb.f, label %bb.c, !dbg !9646, !prof !7768

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.03.0, 1, !dbg !9642
    #dbg_value(i64 %i.k, !9586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9589)
    #dbg_value(i64 1, !9586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9589)
    #dbg_value(i64 %i.k, !9550, !DIExpression(), !9647)
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E8try_growCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i64 noundef %i.k), !dbg !9648 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0, !dbg !9648 ; 2 uses
    #dbg_value(i64 %i.m, !8035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9649)
    #dbg_value(i64 poison, !8035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9649)
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECs9WTr9tUZcLm_13quiche_server.exit
    i64 0, label %bb.e
  ], !dbg !9651, !prof !9652

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1, !dbg !9648
    #dbg_value(i64 %i.n, !8035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9649)
    #dbg_value(i64 %i.m, !8042, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9653)
    #dbg_value(i64 %i.n, !8042, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9653)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #24, !dbg !9654
  unreachable, !dbg !9654

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23, !dbg !9655
  unreachable, !dbg !9655

_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECs9WTr9tUZcLm_13quiche_server.exit: ; preds = %bb.c
  ret void, !dbg !9656

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #23, !dbg !9657
  unreachable, !dbg !9657
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E8try_growCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9658 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
    #dbg_value(ptr %0, !9661, !DIExpression(), !9693)
    #dbg_value(ptr %0, !9694, !DIExpression(), !9697)
    #dbg_value(i64 %1, !9662, !DIExpression(), !9693)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !9699 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !9699, !noundef !19 ; 8 uses
  %i.d = icmp ult i64 %i.c, 5, !dbg !9699         ; 2 uses
    #dbg_value(i1 %i.d, !9663, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9700)
    #dbg_value(ptr %0, !7968, !DIExpression(), !9701)
    #dbg_value(ptr %0, !7984, !DIExpression(), !9703)
  %i.e = icmp ugt i64 %i.c, 4, !dbg !9705
  %i.f = load ptr, ptr %0, align 8, !dbg !9706, !alias.scope !9707, !noalias !9710, !nonnull !19 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9706 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !9706 ; 2 uses
    #dbg_value(ptr poison, !9665, !DIExpression(), !9712)
  %.val = load i64, ptr %i.g, align 8, !dbg !9713 ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c, !dbg !9706 ; 2 uses
    #dbg_value(i64 %i.h, !9667, !DIExpression(), !9712)
    #dbg_value(i64 %.sink.i, !9668, !DIExpression(), !9712)
  %.not = icmp ult i64 %1, %i.h, !dbg !9714
  br i1 %.not, label %bb.b, label %bb.c, !dbg !9714, !prof !7768

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23, !dbg !9715
  unreachable, !dbg !9715

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 5, !dbg !9716
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !9716

bb.d:                                             ; preds = %bb.c
  %.not112 = icmp eq i64 %i.c, %1, !dbg !9717
  br i1 %.not112, label %bb.m, label %bb.f, !dbg !9717

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k, !dbg !9718

bb.f:                                             ; preds = %bb.d
    #dbg_value(i64 %1, !9719, !DIExpression(), !9730)
    #dbg_value(i64 %1, !9732, !DIExpression(), !9739)
    #dbg_value(i64 %1, !9741, !DIExpression(), !9745)
    #dbg_value(i64 16, !9735, !DIExpression(), !9739)
    #dbg_value(i64 16, !9744, !DIExpression(), !9745)
  %i.j = shl nuw nsw i64 %1, 4, !dbg !9747        ; 4 uses
    #dbg_value(i64 %1, !9738, !DIExpression(DW_OP_constu, 1152921504606846976, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9748)
    #dbg_value(i64 %1, !9749, !DIExpression(DW_OP_constu, 1152921504606846976, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9752)
    #dbg_value(i64 %i.j, !9736, !DIExpression(), !9748)
  %or.cond = icmp ult i64 %1, 576460752303423488, !dbg !9754
  br i1 %or.cond, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECs9WTr9tUZcLm_13quiche_server.exit, label %bb.m, !dbg !9754, !prof !9265

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECs9WTr9tUZcLm_13quiche_server.exit: ; preds = %bb.f
    #dbg_value(i64 8, !9669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9755)
    #dbg_value(i64 8, !9756, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9759)
    #dbg_value(i64 %i.j, !9669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9755)
    #dbg_value(i64 %i.j, !9756, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9759)
  br i1 %i.d, label %bb.h, label %bb.g, !dbg !9761

bb.g:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECs9WTr9tUZcLm_13quiche_server.exit
    #dbg_value(i64 %.sink.i, !9719, !DIExpression(), !9762)
    #dbg_value(i64 %.sink.i, !9732, !DIExpression(), !9764)
    #dbg_value(i64 %.sink.i, !9741, !DIExpression(), !9766)
    #dbg_value(i64 16, !9735, !DIExpression(), !9764)
    #dbg_value(i64 16, !9744, !DIExpression(), !9766)
    #dbg_value(i64 %i.c, !9738, !DIExpression(DW_OP_constu, 1152921504606846976, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9768)
    #dbg_value(i64 %i.c, !9749, !DIExpression(DW_OP_constu, 1152921504606846976, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9769)
    #dbg_value(i64 %.sink.i, !9736, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_stack_value), !9768)
  %i.k = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.k, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECs9WTr9tUZcLm_13quiche_server.exit114, label %bb.m, !dbg !9771, !prof !9265

bb.h:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECs9WTr9tUZcLm_13quiche_server.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !dbg !9772
  %i.l = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #21, !dbg !9773 ; 3 uses
    #dbg_value(ptr %i.l, !9774, !DIExpression(), !9777)
    #dbg_value(ptr %i.l, !9779, !DIExpression(), !9782)
  %i.m = icmp eq ptr %i.l, null, !dbg !9785
  br i1 %i.m, label %bb.m, label %bb.j, !dbg !9794

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECs9WTr9tUZcLm_13quiche_server.exit114: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 4, !dbg !9795
    #dbg_value(i64 %i.n, !9736, !DIExpression(), !9768)
    #dbg_value(i64 8, !9681, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9796)
    #dbg_value(i64 8, !9797, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9802)
    #dbg_value(i64 8, !9804, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9809)
    #dbg_value(i64 %i.n, !9681, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9796)
    #dbg_value(i64 %i.n, !9797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9802)
    #dbg_value(i64 %i.n, !9804, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9809)
    #dbg_value(ptr poison, !9800, !DIExpression(), !9802)
    #dbg_value(i64 %i.j, !9801, !DIExpression(), !9802)
    #dbg_value(i64 %i.j, !9808, !DIExpression(), !9809)
    #dbg_value(ptr poison, !9807, !DIExpression(), !9809)
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #21, !dbg !9811 ; 2 uses
    #dbg_value(ptr %i.o, !9687, !DIExpression(), !9812)
    #dbg_value(ptr %i.o, !9774, !DIExpression(), !9813)
    #dbg_value(ptr %i.o, !9779, !DIExpression(), !9815)
  %i.p = icmp eq ptr %i.o, null, !dbg !9818
  br i1 %i.p, label %bb.m, label %bb.i, !dbg !9823

bb.i:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECs9WTr9tUZcLm_13quiche_server.exit114, %bb.j
  %.sroa.039.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECs9WTr9tUZcLm_13quiche_server.exit114 ], !dbg !9824
    #dbg_value(ptr %.sroa.039.0, !9675, !DIExpression(), !9833)
  store ptr %.sroa.039.0, ptr %0, align 8, !dbg !9834
  store i64 %i.h, ptr %i.g, align 8, !dbg !9834
  store i64 %1, ptr %i.b, align 8, !dbg !9835
  br label %bb.m, !dbg !9836

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.l, !9832, !DIExpression(), !9837)
    #dbg_value(ptr %i.l, !9675, !DIExpression(), !9833)
    #dbg_value(ptr poison, !9839, !DIExpression(), !9846)
    #dbg_value(ptr %i.l, !9844, !DIExpression(), !9846)
    #dbg_value(i64 %i.h, !9845, !DIExpression(), !9846)
  %i.q = shl nuw nsw i64 %i.c, 4, !dbg !9848
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false), !dbg !9848
  br label %bb.i, !dbg !9849

bb.k:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !9839, !DIExpression(), !9850)
    #dbg_value(ptr %0, !9844, !DIExpression(), !9850)
    #dbg_value(i64 %i.h, !9845, !DIExpression(), !9850)
  %i.r = shl nuw nsw i64 %.val, 4, !dbg !9852
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false), !dbg !9852
  store i64 %.val, ptr %i.b, align 8, !dbg !9853
    #dbg_value(ptr poison, !9854, !DIExpression(), !9862)
    #dbg_value(i64 %.sink.i, !9859, !DIExpression(), !9862)
    #dbg_value(i64 %.sink.i, !9719, !DIExpression(), !9864)
    #dbg_value(i64 %.sink.i, !9732, !DIExpression(), !9866)
    #dbg_value(i64 %.sink.i, !9741, !DIExpression(), !9868)
    #dbg_value(i64 16, !9735, !DIExpression(), !9866)
    #dbg_value(i64 16, !9744, !DIExpression(), !9868)
    #dbg_value(i64 %.sink.i, !9738, !DIExpression(DW_OP_constu, 1152921504606846976, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9870)
    #dbg_value(i64 %.sink.i, !9749, !DIExpression(DW_OP_constu, 1152921504606846976, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9871)
    #dbg_value(i64 %.sink.i, !9736, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_stack_value), !9870)
  %or.cond.i = icmp ult i64 %i.c, 576460752303423488, !dbg !9873
  br i1 %or.cond.i, label %_RINvCs5kGgRUzsVpH_8smallvec10deallocateTyyEECs9WTr9tUZcLm_13quiche_server.exit, label %bb.l, !dbg !9873, !prof !9265

bb.l:                                             ; preds = %bb.k
    #dbg_value(i64 0, !9414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9874)
    #dbg_value(i64 undef, !9414, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9874)
    #dbg_value(i64 1, !9414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9874)
    #dbg_declare(ptr %i.a, !9422, !DIExpression(), !9876)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9877, !noalias !9878
  store i64 0, ptr %i.a, align 8, !dbg !9877, !noalias !9878
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23, !dbg !9881, !noalias !9878
  unreachable, !dbg !9881

_RINvCs5kGgRUzsVpH_8smallvec10deallocateTyyEECs9WTr9tUZcLm_13quiche_server.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 4, !dbg !9882
    #dbg_value(i64 %i.s, !9736, !DIExpression(), !9870)
    #dbg_value(i64 8, !9414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9874)
    #dbg_value(i64 %i.s, !9414, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9874)
    #dbg_value(i64 0, !9414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9874)
    #dbg_declare(ptr %i.a, !9422, !DIExpression(), !9876)
    #dbg_value(i64 8, !9860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9883)
    #dbg_value(i64 8, !9884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9888)
    #dbg_value(i64 8, !9890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9894)
    #dbg_value(i64 %i.s, !9860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9883)
    #dbg_value(i64 %i.s, !9884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9888)
    #dbg_value(i64 %i.s, !9890, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9894)
    #dbg_value(ptr poison, !9887, !DIExpression(), !9888)
    #dbg_value(ptr poison, !9893, !DIExpression(), !9894)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #21, !dbg !9896
  br label %bb.m, !dbg !9897

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECs9WTr9tUZcLm_13quiche_server.exit114, %bb.h, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateTyyEECs9WTr9tUZcLm_13quiche_server.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateTyyEECs9WTr9tUZcLm_13quiche_server.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECs9WTr9tUZcLm_13quiche_server.exit114 ], [ undef, %bb.g ], [ undef, %bb.f ], !dbg !9712
  %.sroa.0.1 = phi i64 [ -1, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateTyyEECs9WTr9tUZcLm_13quiche_server.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECs9WTr9tUZcLm_13quiche_server.exit114 ], [ 0, %bb.g ], [ 0, %bb.f ], !dbg !9712
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0, !dbg !9898
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1, !dbg !9898
  ret { i64, i64 } %i.u, !dbg !9898
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj8_E21reserve_one_uncheckedCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #2 !dbg !9899 {
bb.a:
    #dbg_value(ptr %0, !9904, !DIExpression(), !9914)
    #dbg_value(ptr %0, !9915, !DIExpression(), !9921)
    #dbg_value(i64 1, !9923, !DIExpression(), !9927)
    #dbg_declare(ptr poison, !9929, !DIExpression(), !9935)
    #dbg_value(i64 1, !9923, !DIExpression(), !9937)
    #dbg_value(ptr @2, !9945, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9951)
    #dbg_value(i64 17, !9945, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9951)
    #dbg_value(ptr %0, !9953, !DIExpression(), !9970)
    #dbg_value(ptr %0, !9972, !DIExpression(), !9975)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !9977
  %i.b = load i64, ptr %i.a, align 8, !dbg !9977, !alias.scope !9978, !noalias !9981, !noundef !19 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8, !dbg !9977
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9983
  %i.e = load i64, ptr %i.d, align 8, !dbg !9983, !alias.scope !9978, !noalias !9981
  %.sink21.i = select i1 %i.c, i64 %i.e, i64 %i.b, !dbg !9983 ; 3 uses
    #dbg_value(i64 %.sink21.i, !9926, !DIExpression(), !9927)
  %i.f = icmp eq i64 %.sink21.i, -1, !dbg !9984
    #dbg_value(i1 %i.f, !9985, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9988)
  br i1 %i.f, label %bb.f, label %bb.b, !dbg !9990, !prof !7768

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %.sink21.i, !9932, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9991)
    #dbg_value(i64 1, !9932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9991)
    #dbg_value(i64 %.sink21.i, !9933, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9992)
    #dbg_value(i64 %.sink21.i, !9941, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9993)
    #dbg_value(i64 %.sink21.i, !9994, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !10001)
  %i.g = icmp eq i64 %.sink21.i, 0, !dbg !10003
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink21.i, i1 true), !dbg !10003
  %i.i = lshr i64 -1, %i.h, !dbg !10003
  %.sroa.03.0 = select i1 %i.g, i64 0, i64 %i.i, !dbg !10003 ; 2 uses
    #dbg_value(i64 %.sroa.03.0, !9926, !DIExpression(), !9937)
  %i.j = icmp eq i64 %.sroa.03.0, -1, !dbg !10004
    #dbg_value(i1 %i.j, !9985, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10005)
  br i1 %i.j, label %bb.f, label %bb.c, !dbg !10008, !prof !7768

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.03.0, 1, !dbg !10004
    #dbg_value(i64 %i.k, !9948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9951)
    #dbg_value(i64 1, !9948, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9951)
    #dbg_value(i64 %i.k, !9912, !DIExpression(), !10009)
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj8_E8try_growCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i64 noundef %i.k), !dbg !10010 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0, !dbg !10010 ; 2 uses
    #dbg_value(i64 %i.m, !8035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10011)
    #dbg_value(i64 poison, !8035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10011)
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECs9WTr9tUZcLm_13quiche_server.exit
    i64 0, label %bb.e
  ], !dbg !10013, !prof !9652

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1, !dbg !10010
    #dbg_value(i64 %i.n, !8035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10011)
    #dbg_value(i64 %i.m, !8042, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10014)
    #dbg_value(i64 %i.n, !8042, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10014)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #24, !dbg !10015
  unreachable, !dbg !10015

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23, !dbg !10016
  unreachable, !dbg !10016

_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECs9WTr9tUZcLm_13quiche_server.exit: ; preds = %bb.c
  ret void, !dbg !10017

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #23, !dbg !10018
  unreachable, !dbg !10018
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj8_E8try_growCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10019 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
    #dbg_value(ptr %0, !10022, !DIExpression(), !10054)
    #dbg_value(ptr %0, !10055, !DIExpression(), !10058)
    #dbg_value(i64 %1, !10023, !DIExpression(), !10054)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !10060 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !10060, !noundef !19 ; 8 uses
  %i.d = icmp ult i64 %i.c, 9, !dbg !10060        ; 2 uses
    #dbg_value(i1 %i.d, !10024, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10061)
    #dbg_value(ptr %0, !8764, !DIExpression(), !10062)
    #dbg_value(ptr %0, !8780, !DIExpression(), !10064)
  %i.e = icmp ugt i64 %i.c, 8, !dbg !10066
  %i.f = load ptr, ptr %0, align 8, !dbg !10067, !alias.scope !10068, !noalias !10071, !nonnull !19 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10067 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8), !dbg !10067 ; 2 uses
    #dbg_value(ptr poison, !10026, !DIExpression(), !10073)
  %.val = load i64, ptr %i.g, align 8, !dbg !10074 ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c, !dbg !10067 ; 2 uses
    #dbg_value(i64 %i.h, !10028, !DIExpression(), !10073)
    #dbg_value(i64 %.sink.i, !10029, !DIExpression(), !10073)
  %.not = icmp ult i64 %1, %i.h, !dbg !10075
  br i1 %.not, label %bb.b, label %bb.c, !dbg !10075, !prof !7768

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23, !dbg !10076
  unreachable, !dbg !10076

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 9, !dbg !10077
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !10077

bb.d:                                             ; preds = %bb.c
  %.not112 = icmp eq i64 %i.c, %1, !dbg !10078
  br i1 %.not112, label %bb.m, label %bb.f, !dbg !10078

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k, !dbg !10079

bb.f:                                             ; preds = %bb.d
    #dbg_value(i64 %1, !10080, !DIExpression(), !10091)
    #dbg_value(i64 %1, !10093, !DIExpression(), !10100)
    #dbg_value(i64 %1, !10102, !DIExpression(), !10106)
    #dbg_value(i64 8, !10096, !DIExpression(), !10100)
    #dbg_value(i64 8, !10105, !DIExpression(), !10106)
  %i.j = shl nuw nsw i64 %1, 3, !dbg !10108       ; 4 uses
    #dbg_value(i64 %1, !10099, !DIExpression(DW_OP_constu, 2305843009213693952, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10109)
    #dbg_value(i64 %1, !10110, !DIExpression(DW_OP_constu, 2305843009213693952, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10113)
    #dbg_value(i64 %i.j, !10097, !DIExpression(), !10109)
  %or.cond = icmp ult i64 %1, 1152921504606846976, !dbg !10115
  br i1 %or.cond, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECs9WTr9tUZcLm_13quiche_server.exit, label %bb.m, !dbg !10115, !prof !9265

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECs9WTr9tUZcLm_13quiche_server.exit: ; preds = %bb.f
    #dbg_value(i64 8, !10030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10116)
    #dbg_value(i64 8, !10117, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10120)
    #dbg_value(i64 %i.j, !10030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10116)
    #dbg_value(i64 %i.j, !10117, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10120)
  br i1 %i.d, label %bb.h, label %bb.g, !dbg !10122

bb.g:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECs9WTr9tUZcLm_13quiche_server.exit
    #dbg_value(i64 %.sink.i, !10080, !DIExpression(), !10123)
    #dbg_value(i64 %.sink.i, !10093, !DIExpression(), !10125)
    #dbg_value(i64 %.sink.i, !10102, !DIExpression(), !10127)
    #dbg_value(i64 8, !10096, !DIExpression(), !10125)
    #dbg_value(i64 8, !10105, !DIExpression(), !10127)
    #dbg_value(i64 %i.c, !10099, !DIExpression(DW_OP_constu, 2305843009213693952, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10129)
    #dbg_value(i64 %i.c, !10110, !DIExpression(DW_OP_constu, 2305843009213693952, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10130)
    #dbg_value(i64 %.sink.i, !10097, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !10129)
  %i.k = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.k, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECs9WTr9tUZcLm_13quiche_server.exit114, label %bb.m, !dbg !10132, !prof !9265

bb.h:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECs9WTr9tUZcLm_13quiche_server.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !dbg !10133
  %i.l = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #21, !dbg !10134 ; 3 uses
    #dbg_value(ptr %i.l, !10135, !DIExpression(), !10138)
    #dbg_value(ptr %i.l, !10140, !DIExpression(), !10143)
  %i.m = icmp eq ptr %i.l, null, !dbg !10146
  br i1 %i.m, label %bb.m, label %bb.j, !dbg !10155

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECs9WTr9tUZcLm_13quiche_server.exit114: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 3, !dbg !10156
    #dbg_value(i64 %i.n, !10097, !DIExpression(), !10129)
    #dbg_value(i64 8, !10042, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10157)
    #dbg_value(i64 8, !10158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10163)
    #dbg_value(i64 8, !10165, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10170)
    #dbg_value(i64 %i.n, !10042, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10157)
    #dbg_value(i64 %i.n, !10158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10163)
    #dbg_value(i64 %i.n, !10165, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10170)
    #dbg_value(ptr poison, !10161, !DIExpression(), !10163)
    #dbg_value(i64 %i.j, !10162, !DIExpression(), !10163)
    #dbg_value(i64 %i.j, !10169, !DIExpression(), !10170)
    #dbg_value(ptr poison, !10168, !DIExpression(), !10170)
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #21, !dbg !10172 ; 2 uses
    #dbg_value(ptr %i.o, !10048, !DIExpression(), !10173)
    #dbg_value(ptr %i.o, !10135, !DIExpression(), !10174)
    #dbg_value(ptr %i.o, !10140, !DIExpression(), !10176)
  %i.p = icmp eq ptr %i.o, null, !dbg !10179
  br i1 %i.p, label %bb.m, label %bb.i, !dbg !10184

bb.i:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECs9WTr9tUZcLm_13quiche_server.exit114, %bb.j
  %.sroa.039.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECs9WTr9tUZcLm_13quiche_server.exit114 ], !dbg !10185
    #dbg_value(ptr %.sroa.039.0, !10036, !DIExpression(), !10194)
  store ptr %.sroa.039.0, ptr %0, align 8, !dbg !10195
  store i64 %i.h, ptr %i.g, align 8, !dbg !10195
  store i64 %1, ptr %i.b, align 8, !dbg !10196
  br label %bb.m, !dbg !10197

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.l, !10193, !DIExpression(), !10198)
    #dbg_value(ptr %i.l, !10036, !DIExpression(), !10194)
    #dbg_value(ptr poison, !10200, !DIExpression(), !10207)
    #dbg_value(ptr %i.l, !10205, !DIExpression(), !10207)
    #dbg_value(i64 %i.h, !10206, !DIExpression(), !10207)
  %i.q = shl nuw nsw i64 %i.c, 3, !dbg !10209
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false), !dbg !10209
  br label %bb.i, !dbg !10210

bb.k:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !10200, !DIExpression(), !10211)
    #dbg_value(ptr %0, !10205, !DIExpression(), !10211)
    #dbg_value(i64 %i.h, !10206, !DIExpression(), !10211)
  %i.r = shl nuw nsw i64 %.val, 3, !dbg !10213
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false), !dbg !10213
  store i64 %.val, ptr %i.b, align 8, !dbg !10214
    #dbg_value(ptr poison, !10215, !DIExpression(), !10223)
    #dbg_value(i64 %.sink.i, !10220, !DIExpression(), !10223)
    #dbg_value(i64 %.sink.i, !10080, !DIExpression(), !10225)
    #dbg_value(i64 %.sink.i, !10093, !DIExpression(), !10227)
    #dbg_value(i64 %.sink.i, !10102, !DIExpression(), !10229)
    #dbg_value(i64 8, !10096, !DIExpression(), !10227)
    #dbg_value(i64 8, !10105, !DIExpression(), !10229)
    #dbg_value(i64 %.sink.i, !10099, !DIExpression(DW_OP_constu, 2305843009213693952, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10231)
    #dbg_value(i64 %.sink.i, !10110, !DIExpression(DW_OP_constu, 2305843009213693952, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10232)
    #dbg_value(i64 %.sink.i, !10097, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !10231)
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976, !dbg !10234
  br i1 %or.cond.i, label %_RINvCs5kGgRUzsVpH_8smallvec10deallocateyECs9WTr9tUZcLm_13quiche_server.exit, label %bb.l, !dbg !10234, !prof !9265

bb.l:                                             ; preds = %bb.k
    #dbg_value(i64 0, !9414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10235)
    #dbg_value(i64 undef, !9414, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10235)
    #dbg_value(i64 1, !9414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10235)
    #dbg_declare(ptr %i.a, !9422, !DIExpression(), !10237)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10238, !noalias !10239
  store i64 0, ptr %i.a, align 8, !dbg !10238, !noalias !10239
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23, !dbg !10242, !noalias !10239
  unreachable, !dbg !10242

_RINvCs5kGgRUzsVpH_8smallvec10deallocateyECs9WTr9tUZcLm_13quiche_server.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 3, !dbg !10243
    #dbg_value(i64 %i.s, !10097, !DIExpression(), !10231)
    #dbg_value(i64 8, !9414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10235)
    #dbg_value(i64 %i.s, !9414, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10235)
    #dbg_value(i64 0, !9414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10235)
    #dbg_declare(ptr %i.a, !9422, !DIExpression(), !10237)
    #dbg_value(i64 8, !10221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10244)
    #dbg_value(i64 8, !10245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10249)
    #dbg_value(i64 8, !10251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10255)
    #dbg_value(i64 %i.s, !10221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10244)
    #dbg_value(i64 %i.s, !10245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10249)
    #dbg_value(i64 %i.s, !10251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10255)
    #dbg_value(ptr poison, !10248, !DIExpression(), !10249)
    #dbg_value(ptr poison, !10254, !DIExpression(), !10255)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #21, !dbg !10257
  br label %bb.m, !dbg !10258

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECs9WTr9tUZcLm_13quiche_server.exit114, %bb.h, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateyECs9WTr9tUZcLm_13quiche_server.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateyECs9WTr9tUZcLm_13quiche_server.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECs9WTr9tUZcLm_13quiche_server.exit114 ], [ undef, %bb.g ], [ undef, %bb.f ], !dbg !10073
  %.sroa.0.1 = phi i64 [ -1, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateyECs9WTr9tUZcLm_13quiche_server.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECs9WTr9tUZcLm_13quiche_server.exit114 ], [ 0, %bb.g ], [ 0, %bb.f ], !dbg !10073
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0, !dbg !10259
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1, !dbg !10259
  ret { i64, i64 } %i.u, !dbg !10259
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !10260 {
switch.lookup:
    #dbg_value(ptr %0, !10305, !DIExpression(), !10309)
    #dbg_value(ptr %1, !10306, !DIExpression(), !10309)
  %i.a = load ptr, ptr %0, align 8, !dbg !10310, !nonnull !19, !noundef !19
  %.val = load i8, ptr %i.a, align 1, !dbg !10311, !range !10312, !noundef !19 ; 2 uses
    #dbg_value(ptr poison, !10313, !DIExpression(), !10321)
    #dbg_value(ptr %1, !10320, !DIExpression(), !10321)
  %i.b = zext nneg i8 %.val to i64, !dbg !10323
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9WTr9tUZcLm_13quiche_server, i64 %i.b, !dbg !10323
  %switch.load = load i8, ptr %switch.gep, align 1, !dbg !10323
  %switch.ext = zext i8 %switch.load to i64, !dbg !10323
  %i.c = zext nneg i8 %.val to i64, !dbg !10323
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9WTr9tUZcLm_13quiche_server.50, i64 %i.c, !dbg !10323
  %switch.load3 = load ptr, ptr %switch.gep2, align 8, !dbg !10323
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext), !dbg !10323
  ret i1 %i.d, !dbg !10324
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRReNtB6_5Debug3fmtCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !10325 {
bb.a:
    #dbg_value(ptr %0, !10331, !DIExpression(), !10333)
    #dbg_value(ptr %1, !10332, !DIExpression(), !10333)
  %i.a = load ptr, ptr %0, align 8, !dbg !10334, !nonnull !19, !align !3146, !noundef !19 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !dbg !10335, !nonnull !19, !noundef !19
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !10335
  %.val2 = load i64, ptr %i.b, align 8, !dbg !10335, !noundef !19
    #dbg_value(ptr poison, !10336, !DIExpression(), !10342)
    #dbg_value(ptr %1, !10341, !DIExpression(), !10342)
  %i.c = tail call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !10344
  ret i1 %i.c, !dbg !10345
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRTyyENtB6_5Debug3fmtCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !10346 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !10351, !DIExpression(), !10353)
    #dbg_value(ptr %1, !10352, !DIExpression(), !10353)
  %i.d = load ptr, ptr %0, align 8, !dbg !10354, !nonnull !19, !align !3146, !noundef !19 ; 2 uses
    #dbg_value(ptr %i.d, !10355, !DIExpression(), !10375)
    #dbg_value(ptr %1, !10361, !DIExpression(), !10375)
    #dbg_declare(ptr %i.c, !10362, !DIExpression(), !10377)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10378, !noalias !10379
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !dbg !10383, !noalias !10384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10385, !noalias !10379
    #dbg_value(ptr %i.d, !10371, !DIExpression(), !10386)
  store ptr %i.d, ptr %i.b, align 8, !dbg !10385, !noalias !10379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10385, !noalias !10379
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !10385
    #dbg_value(ptr %i.e, !10373, !DIExpression(), !10386)
  store ptr %i.e, ptr %i.a, align 8, !dbg !10385, !noalias !10379
    #dbg_value(ptr %i.b, !10371, !DIExpression(DW_OP_deref), !10386)
  %i.f = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16), !dbg !10387 ; 0 uses
    #dbg_value(ptr %i.a, !10373, !DIExpression(DW_OP_deref), !10386)
  %i.g = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16), !dbg !10387 ; 0 uses
  %i.h = call noundef zeroext i1 @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !10388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10389, !noalias !10379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10389, !noalias !10379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10390, !noalias !10379
  ret i1 %i.h, !dbg !10391
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !10392 {
bb.a:
    #dbg_value(ptr %0, !10398, !DIExpression(), !10400)
    #dbg_value(ptr %1, !10399, !DIExpression(), !10400)
  %i.a = load ptr, ptr %0, align 8, !dbg !10401, !nonnull !19, !noundef !19 ; 3 uses
    #dbg_value(ptr %i.a, !10402, !DIExpression(), !10411)
    #dbg_value(ptr %1, !10410, !DIExpression(), !10411)
    #dbg_value(ptr %1, !10413, !DIExpression(), !10420)
    #dbg_value(ptr %1, !10422, !DIExpression(), !10426)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10428
  %i.c = load i32, ptr %i.b, align 8, !dbg !10428, !alias.scope !10429, !noalias !10432, !noundef !19 ; 2 uses
  %i.d = and i32 %i.c, 33554432, !dbg !10428
  %.not.i = icmp eq i32 %i.d, 0, !dbg !10428
  br i1 %.not.i, label %bb.b, label %bb.c, !dbg !10434

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864, !dbg !10435
  %.not3.i = icmp eq i32 %i.e, 0, !dbg !10435
  br i1 %.not3.i, label %bb.d, label %bb.e, !dbg !10436

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !10437
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit, !dbg !10437

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !10438
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit, !dbg !10438

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsg_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !10439
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit, !dbg !10439

_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i, !dbg !10440
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !10441 {
bb.a:
    #dbg_value(ptr %0, !10446, !DIExpression(), !10448)
    #dbg_value(ptr %1, !10447, !DIExpression(), !10448)
  %i.a = load ptr, ptr %0, align 8, !dbg !10449, !nonnull !19, !align !3146, !noundef !19 ; 3 uses
    #dbg_value(ptr %i.a, !10450, !DIExpression(), !10457)
    #dbg_value(ptr %1, !10456, !DIExpression(), !10457)
    #dbg_value(ptr %1, !10459, !DIExpression(), !10462)
    #dbg_value(ptr %1, !10464, !DIExpression(), !10467)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10469
  %i.c = load i32, ptr %i.b, align 8, !dbg !10469, !alias.scope !10470, !noalias !10473, !noundef !19 ; 2 uses
  %i.d = and i32 %i.c, 33554432, !dbg !10469
  %.not.i = icmp eq i32 %i.d, 0, !dbg !10469
  br i1 %.not.i, label %bb.b, label %bb.c, !dbg !10475

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864, !dbg !10476
  %.not3.i = icmp eq i32 %i.e, 0, !dbg !10476
  br i1 %.not3.i, label %bb.d, label %bb.e, !dbg !10477

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !10478
  br label %_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt.exit, !dbg !10478

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !10479
  br label %_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt.exit, !dbg !10479

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !10480
  br label %_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt.exit, !dbg !10480

_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i, !dbg !10481
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRoNtB6_5Debug3fmtCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !10482 {
bb.a:
    #dbg_value(ptr %0, !10489, !DIExpression(), !10493)
    #dbg_value(ptr %1, !10490, !DIExpression(), !10493)
  %i.a = load ptr, ptr %0, align 8, !dbg !10494, !nonnull !19, !align !10495, !noundef !19 ; 3 uses
    #dbg_value(ptr %i.a, !10496, !DIExpression(), !10503)
    #dbg_value(ptr %1, !10502, !DIExpression(), !10503)
    #dbg_value(ptr %1, !10505, !DIExpression(), !10508)
    #dbg_value(ptr %1, !10510, !DIExpression(), !10513)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10515
  %i.c = load i32, ptr %i.b, align 8, !dbg !10515, !alias.scope !10516, !noalias !10519, !noundef !19 ; 2 uses
  %i.d = and i32 %i.c, 33554432, !dbg !10515
  %.not.i = icmp eq i32 %i.d, 0, !dbg !10515
  br i1 %.not.i, label %bb.b, label %bb.c, !dbg !10521

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864, !dbg !10522
  %.not3.i = icmp eq i32 %i.e, 0, !dbg !10522
  br i1 %.not3.i, label %bb.d, label %bb.e, !dbg !10523

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXsK_NtNtCskKLDkoKarTP_4core3fmt3numoNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !10524
  br label %_RNvXsY_NtNtCskKLDkoKarTP_4core3fmt3numoNtB7_5Debug3fmt.exit, !dbg !10524

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core3fmt3numoNtB4_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !10525
  br label %_RNvXsY_NtNtCskKLDkoKarTP_4core3fmt3numoNtB7_5Debug3fmt.exit, !dbg !10525

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsM_NtNtCskKLDkoKarTP_4core3fmt3numoNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !10526
  br label %_RNvXsY_NtNtCskKLDkoKarTP_4core3fmt3numoNtB7_5Debug3fmt.exit, !dbg !10526

_RNvXsY_NtNtCskKLDkoKarTP_4core3fmt3numoNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i, !dbg !10527
end_hunk_0
