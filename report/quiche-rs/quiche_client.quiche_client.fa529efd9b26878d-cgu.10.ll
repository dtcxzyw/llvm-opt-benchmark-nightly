Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_client.quiche_client.fa529efd9b26878d-cgu.10?download=true
inline.NumInlined: 224
inline.NumDeleted: 120
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNSNvYNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCslusEaBCZKLp_13quiche_client:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrE8as_sliceCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 !dbg !4613 {
bb.a:
    #dbg_value(ptr %0, !4636, !DIExpression(), !4637)
    #dbg_value(ptr %0, !4638, !DIExpression(), !4657)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4659
  %i.b = load ptr, ptr %i.a, align 8, !dbg !4659, !nonnull !23, !noundef !23 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4660
  %.val9 = load ptr, ptr %i.c, align 8, !dbg !4660, !nonnull !23, !noundef !23
    #dbg_value(ptr poison, !4661, !DIExpression(), !4673)
    #dbg_value(i64 32, !4675, !DIExpression(), !4686)
    #dbg_value(ptr %.val9, !4700, !DIExpression(), !4703)
    #dbg_value(ptr %i.b, !4701, !DIExpression(), !4703)
    #dbg_value(ptr %.val9, !4692, !DIExpression(), !4704)
    #dbg_value(ptr %i.b, !4693, !DIExpression(), !4704)
    #dbg_value(ptr %i.b, !4685, !DIExpression(), !4705)
    #dbg_value(ptr %.val9, !4684, !DIExpression(), !4705)
  %i.d = ptrtoint ptr %.val9 to i64, !dbg !4706
  %i.e = ptrtoint ptr %i.b to i64, !dbg !4706
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !4706
  %i.g = lshr exact i64 %i.f, 5, !dbg !4706
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.b, 0, !dbg !4707
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1, !dbg !4707
  ret { ptr, i64 } %i.i, !dbg !4707
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_E21reserve_one_uncheckedCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(136) %0) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !4708 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
    #dbg_value(ptr %0, !4714, !DIExpression(), !4724)
    #dbg_value(ptr %0, !4725, !DIExpression(), !4732)
    #dbg_value(i64 1, !4734, !DIExpression(), !4738)
    #dbg_declare(ptr poison, !4740, !DIExpression(), !4746)
    #dbg_value(i64 1, !4734, !DIExpression(), !4748)
    #dbg_value(ptr @2, !4756, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4765)
    #dbg_value(i64 17, !4756, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4765)
    #dbg_value(ptr %0, !4767, !DIExpression(), !4784)
    #dbg_value(ptr %0, !4786, !DIExpression(), !4792)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !4794 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !4794, !alias.scope !4795, !noalias !4798, !noundef !23 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1, !dbg !4794
  %i.e = load ptr, ptr %0, align 8, !dbg !4800, !alias.scope !4795, !noalias !4798, !nonnull !23 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4800 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !4800, !alias.scope !4795, !noalias !4798 ; 3 uses
  %.sink21.i = select i1 %i.d, i64 %i.g, i64 %i.c, !dbg !4800 ; 5 uses
    #dbg_value(i64 %.sink21.i, !4737, !DIExpression(), !4738)
  %i.h = icmp eq i64 %.sink21.i, -1, !dbg !4801
    #dbg_value(i1 %i.h, !4802, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4805)
  br i1 %i.h, label %bb.q, label %bb.b, !dbg !4807, !prof !3393

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %.sink21.i, !4743, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4808)
    #dbg_value(i64 1, !4743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4808)
    #dbg_value(i64 %.sink21.i, !4744, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4809)
    #dbg_value(i64 %.sink21.i, !4752, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4810)
    #dbg_value(i64 %.sink21.i, !4811, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4818)
  %i.i = icmp eq i64 %.sink21.i, 0, !dbg !4820    ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink21.i, i1 true), !dbg !4820
  %i.k = lshr i64 -1, %i.j, !dbg !4820            ; 2 uses
  %.sroa.03.0 = select i1 %i.i, i64 0, i64 %i.k, !dbg !4820 ; 2 uses
    #dbg_value(i64 %.sroa.03.0, !4737, !DIExpression(), !4748)
  %i.l = icmp eq i64 %.sroa.03.0, -1, !dbg !4821
    #dbg_value(i1 %i.l, !4802, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4822)
  br i1 %i.l, label %bb.q, label %bb.c, !dbg !4825, !prof !3393

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.03.0, 1, !dbg !4821   ; 4 uses
    #dbg_value(i64 %i.m, !4762, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4765)
    #dbg_value(i64 1, !4762, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4765)
    #dbg_value(i64 %i.m, !4722, !DIExpression(), !4826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4827), !dbg !4830
    #dbg_value(ptr %0, !4831, !DIExpression(), !4869)
    #dbg_value(ptr %0, !4871, !DIExpression(), !4874)
    #dbg_value(i64 %i.m, !4837, !DIExpression(), !4869)
  %i.n = icmp ult i64 %i.c, 2, !dbg !4876         ; 2 uses
    #dbg_value(i1 %i.n, !4838, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4877)
    #dbg_value(ptr %0, !4878, !DIExpression(), !4892)
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1), !dbg !4894 ; 2 uses
    #dbg_value(ptr poison, !4840, !DIExpression(), !4895)
    #dbg_value(i64 %.sink21.i, !4842, !DIExpression(), !4895)
    #dbg_value(i64 %.sink.i.i, !4843, !DIExpression(), !4895)
  %.not.i = icmp ult i64 %i.m, %.sink21.i, !dbg !4896
  br i1 %.not.i, label %bb.d, label %bb.e, !dbg !4896, !prof !3393

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #24, !dbg !4897, !noalias !4827
  unreachable, !dbg !4897

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f, !dbg !4898

bb.f:                                             ; preds = %bb.e
  %.not112.i = icmp eq i64 %i.c, %i.m, !dbg !4899
  br i1 %.not112.i, label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit, label %bb.h, !dbg !4899

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit, label %bb.m, !dbg !4900

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %i.m, !4901, !DIExpression(), !4929)
    #dbg_value(i64 %i.m, !4931, !DIExpression(), !4938)
    #dbg_value(i64 %i.m, !4940, !DIExpression(), !4950)
    #dbg_value(i64 128, !4934, !DIExpression(), !4938)
    #dbg_value(i64 128, !4949, !DIExpression(), !4950)
  %i.o = shl nuw nsw i64 %i.m, 7, !dbg !4952      ; 3 uses
    #dbg_value(i64 %i.m, !4937, !DIExpression(DW_OP_constu, 144115188075855872, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4953)
    #dbg_value(i64 %i.m, !4954, !DIExpression(DW_OP_constu, 144115188075855872, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4957)
    #dbg_value(i64 %i.o, !4935, !DIExpression(), !4953)
  %or.cond.i = icmp ult i64 %i.k, 72057594037927935, !dbg !4959
  br i1 %or.cond.i, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client.exit.i, label %bb.p, !dbg !4959, !prof !4960

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client.exit.i: ; preds = %bb.h
    #dbg_value(i64 8, !4844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4961)
    #dbg_value(i64 8, !4962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4968)
    #dbg_value(i64 %i.o, !4844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4961)
    #dbg_value(i64 %i.o, !4962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4968)
  br i1 %i.n, label %bb.j, label %bb.i, !dbg !4970

bb.i:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client.exit.i
    #dbg_value(i64 %.sink.i.i, !4901, !DIExpression(), !4971)
    #dbg_value(i64 %.sink.i.i, !4931, !DIExpression(), !4973)
    #dbg_value(i64 %.sink.i.i, !4940, !DIExpression(), !4975)
    #dbg_value(i64 128, !4934, !DIExpression(), !4973)
    #dbg_value(i64 128, !4949, !DIExpression(), !4975)
    #dbg_value(i64 %i.c, !4937, !DIExpression(DW_OP_constu, 144115188075855872, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4977)
    #dbg_value(i64 %i.c, !4954, !DIExpression(DW_OP_constu, 144115188075855872, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4978)
    #dbg_value(i64 %.sink.i.i, !4935, !DIExpression(DW_OP_constu, 7, DW_OP_shl, DW_OP_stack_value), !4977)
  %i.p = icmp ult i64 %i.c, 72057594037927936
  br i1 %i.p, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client.exit114.i, label %bb.p, !dbg !4980, !prof !4960

bb.j:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client.exit.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !4981, !noalias !4827
  %i.q = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #25, !dbg !4982, !noalias !4827 ; 3 uses
    #dbg_value(ptr %i.q, !4983, !DIExpression(), !5002)
    #dbg_value(ptr %i.q, !5004, !DIExpression(), !5009)
  %i.r = icmp eq ptr %i.q, null, !dbg !5012
  br i1 %i.r, label %bb.o, label %bb.l, !dbg !5024

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client.exit114.i: ; preds = %bb.i
  %i.s = shl nuw nsw i64 %.sink.i.i, 7, !dbg !5025
    #dbg_value(i64 %i.s, !4935, !DIExpression(), !4977)
    #dbg_value(i64 8, !4856, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5026)
    #dbg_value(i64 8, !5027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5034)
    #dbg_value(i64 8, !5036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5043)
    #dbg_value(i64 %i.s, !4856, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5026)
    #dbg_value(i64 %i.s, !5027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5034)
    #dbg_value(i64 %i.s, !5036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5043)
    #dbg_value(ptr poison, !5032, !DIExpression(), !5034)
    #dbg_value(i64 %i.o, !5033, !DIExpression(), !5034)
    #dbg_value(i64 %i.o, !5042, !DIExpression(), !5043)
    #dbg_value(ptr poison, !5041, !DIExpression(), !5043)
  %i.t = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.o) #25, !dbg !5045, !noalias !4827 ; 2 uses
    #dbg_value(ptr %i.t, !4862, !DIExpression(), !5046)
    #dbg_value(ptr %i.t, !4983, !DIExpression(), !5047)
    #dbg_value(ptr %i.t, !5004, !DIExpression(), !5049)
  %i.u = icmp eq ptr %i.t, null, !dbg !5052
  br i1 %i.u, label %bb.o, label %bb.k, !dbg !5057

bb.k:                                             ; preds = %bb.l, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client.exit114.i
  %.sroa.039.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client.exit114.i ], !dbg !5058
    #dbg_value(ptr %.sroa.039.0.i, !4850, !DIExpression(), !5068)
  store ptr %.sroa.039.0.i, ptr %0, align 8, !dbg !5069, !alias.scope !4827
  store i64 %.sink21.i, ptr %i.f, align 8, !dbg !5069, !alias.scope !4827
  store i64 %i.m, ptr %i.b, align 8, !dbg !5070, !alias.scope !4827
  br label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit, !dbg !5071

bb.l:                                             ; preds = %bb.j
    #dbg_value(ptr %i.q, !5066, !DIExpression(), !5072)
    #dbg_value(ptr %i.q, !4850, !DIExpression(), !5068)
    #dbg_value(ptr poison, !5074, !DIExpression(), !5082)
    #dbg_value(ptr %i.q, !5080, !DIExpression(), !5082)
    #dbg_value(i64 %.sink21.i, !5081, !DIExpression(), !5082)
  %i.v = shl nuw nsw i64 %i.c, 7, !dbg !5084
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 dereferenceable(136) %0, i64 %i.v, i1 false), !dbg !5084
  br label %bb.k, !dbg !5085

bb.m:                                             ; preds = %bb.g
    #dbg_value(ptr poison, !5074, !DIExpression(), !5086)
    #dbg_value(ptr %0, !5080, !DIExpression(), !5086)
    #dbg_value(i64 %.sink21.i, !5081, !DIExpression(), !5086)
  %i.w = shl nuw nsw i64 %i.g, 7, !dbg !5088
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(136) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false), !dbg !5088
  store i64 %i.g, ptr %i.b, align 8, !dbg !5089, !alias.scope !4827
    #dbg_value(ptr poison, !5090, !DIExpression(), !5098)
    #dbg_value(i64 %.sink.i.i, !5095, !DIExpression(), !5098)
    #dbg_value(i64 %.sink.i.i, !4901, !DIExpression(), !5100)
    #dbg_value(i64 %.sink.i.i, !4931, !DIExpression(), !5102)
    #dbg_value(i64 %.sink.i.i, !4940, !DIExpression(), !5104)
    #dbg_value(i64 128, !4934, !DIExpression(), !5102)
    #dbg_value(i64 128, !4949, !DIExpression(), !5104)
    #dbg_value(i64 %.sink.i.i, !4937, !DIExpression(DW_OP_constu, 144115188075855872, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5106)
    #dbg_value(i64 %.sink.i.i, !4954, !DIExpression(DW_OP_constu, 144115188075855872, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5107)
    #dbg_value(i64 %.sink.i.i, !4935, !DIExpression(DW_OP_constu, 7, DW_OP_shl, DW_OP_stack_value), !5106)
  %or.cond.i.i = icmp ult i64 %i.c, 72057594037927936, !dbg !5109
  br i1 %or.cond.i.i, label %_RINvCs5kGgRUzsVpH_8smallvec10deallocateNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client.exit.i, label %bb.n, !dbg !5109, !prof !4960

bb.n:                                             ; preds = %bb.m
    #dbg_value(i64 0, !5110, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5121)
    #dbg_value(i64 undef, !5110, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5121)
    #dbg_value(i64 1, !5110, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5121)
    #dbg_declare(ptr %i.a, !5119, !DIExpression(), !5123)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5124, !noalias !5125
  store i64 0, ptr %i.a, align 8, !dbg !5124, !noalias !5125
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !dbg !5128, !noalias !5125
  unreachable, !dbg !5128

_RINvCs5kGgRUzsVpH_8smallvec10deallocateNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client.exit.i: ; preds = %bb.m
  %i.x = shl nuw nsw i64 %.sink.i.i, 7, !dbg !5129
    #dbg_value(i64 %i.x, !4935, !DIExpression(), !5106)
    #dbg_value(i64 8, !5110, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5121)
    #dbg_value(i64 %i.x, !5110, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5121)
    #dbg_value(i64 0, !5110, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5121)
    #dbg_declare(ptr %i.a, !5119, !DIExpression(), !5123)
    #dbg_value(i64 8, !5096, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5130)
    #dbg_value(i64 8, !5131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5137)
    #dbg_value(i64 8, !5139, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5145)
    #dbg_value(i64 %i.x, !5096, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5130)
    #dbg_value(i64 %i.x, !5131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5137)
    #dbg_value(i64 %i.x, !5139, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5145)
    #dbg_value(ptr poison, !5136, !DIExpression(), !5137)
    #dbg_value(ptr poison, !5144, !DIExpression(), !5145)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #25, !dbg !5147, !noalias !4827
  br label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit, !dbg !5148

bb.o:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client.exit114.i, %bb.j
    #dbg_value(i64 8, !3658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5149)
    #dbg_value(i64 %i.o, !3658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5149)
    #dbg_value(i64 8, !3665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5151)
    #dbg_value(i64 %i.o, !3665, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5151)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.o) #23, !dbg !5152
  unreachable, !dbg !5152

bb.p:                                             ; preds = %bb.i, %bb.h
    #dbg_value(i64 0, !3658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5149)
    #dbg_value(i64 undef, !3658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5149)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24, !dbg !5153
  unreachable, !dbg !5153

_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit: ; preds = %_RINvCs5kGgRUzsVpH_8smallvec10deallocateNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client.exit.i, %bb.f, %bb.k, %bb.g
    #dbg_value(i64 -1, !3658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5149)
    #dbg_value(i64 undef, !3658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5149)
  ret void, !dbg !5154

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24, !dbg !5155
  unreachable, !dbg !5155
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E21reserve_one_uncheckedCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(264) %0) unnamed_addr #4 !dbg !5156 {
bb.a:
    #dbg_value(ptr %0, !5161, !DIExpression(), !5171)
    #dbg_value(ptr %0, !5172, !DIExpression(), !5178)
    #dbg_value(i64 1, !5180, !DIExpression(), !5184)
    #dbg_declare(ptr poison, !5186, !DIExpression(), !5192)
    #dbg_value(i64 1, !5180, !DIExpression(), !5194)
    #dbg_value(ptr @2, !5202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5208)
    #dbg_value(i64 17, !5202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5208)
    #dbg_value(ptr %0, !5210, !DIExpression(), !5227)
    #dbg_value(ptr %0, !5229, !DIExpression(), !5232)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !5234
  %i.b = load i64, ptr %i.a, align 8, !dbg !5234, !alias.scope !5235, !noalias !5238, !noundef !23 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8, !dbg !5234
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5240
  %i.e = load i64, ptr %i.d, align 8, !dbg !5240, !alias.scope !5235, !noalias !5238
  %.sink21.i = select i1 %i.c, i64 %i.e, i64 %i.b, !dbg !5240 ; 3 uses
    #dbg_value(i64 %.sink21.i, !5183, !DIExpression(), !5184)
  %i.f = icmp eq i64 %.sink21.i, -1, !dbg !5241
    #dbg_value(i1 %i.f, !5242, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5245)
  br i1 %i.f, label %bb.f, label %bb.b, !dbg !5247, !prof !3393

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %.sink21.i, !5189, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5248)
    #dbg_value(i64 1, !5189, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5248)
    #dbg_value(i64 %.sink21.i, !5190, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5249)
    #dbg_value(i64 %.sink21.i, !5198, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5250)
    #dbg_value(i64 %.sink21.i, !5251, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5258)
  %i.g = icmp eq i64 %.sink21.i, 0, !dbg !5260
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink21.i, i1 true), !dbg !5260
  %i.i = lshr i64 -1, %i.h, !dbg !5260
  %.sroa.03.0 = select i1 %i.g, i64 0, i64 %i.i, !dbg !5260 ; 2 uses
    #dbg_value(i64 %.sroa.03.0, !5183, !DIExpression(), !5194)
  %i.j = icmp eq i64 %.sroa.03.0, -1, !dbg !5261
    #dbg_value(i1 %i.j, !5242, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5262)
  br i1 %i.j, label %bb.f, label %bb.c, !dbg !5265, !prof !3393

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.03.0, 1, !dbg !5261
    #dbg_value(i64 %i.k, !5205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5208)
    #dbg_value(i64 1, !5205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5208)
    #dbg_value(i64 %i.k, !5169, !DIExpression(), !5266)
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E8try_growCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(264) %0, i64 noundef %i.k), !dbg !5267 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0, !dbg !5267 ; 2 uses
    #dbg_value(i64 %i.m, !3658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5268)
    #dbg_value(i64 poison, !3658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5268)
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit
    i64 0, label %bb.e
  ], !dbg !5270, !prof !5271

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1, !dbg !5267
    #dbg_value(i64 %i.n, !3658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5268)
    #dbg_value(i64 %i.m, !3665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5272)
    #dbg_value(i64 %i.n, !3665, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5272)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #23, !dbg !5273
  unreachable, !dbg !5273

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24, !dbg !5274
  unreachable, !dbg !5274

_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.c
  ret void, !dbg !5275

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24, !dbg !5276
  unreachable, !dbg !5276
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E8try_growCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(264) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5277 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
    #dbg_value(ptr %0, !5280, !DIExpression(), !5312)
    #dbg_value(ptr %0, !5313, !DIExpression(), !5316)
    #dbg_value(i64 %1, !5281, !DIExpression(), !5312)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !5318 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !5318, !noundef !23 ; 8 uses
  %i.d = icmp ult i64 %i.c, 9, !dbg !5318         ; 2 uses
    #dbg_value(i1 %i.d, !5282, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5319)
    #dbg_value(ptr %0, !2697, !DIExpression(), !5320)
    #dbg_value(ptr %0, !2713, !DIExpression(), !5322)
  %i.e = icmp ugt i64 %i.c, 8, !dbg !5324
  %i.f = load ptr, ptr %0, align 8, !dbg !5325, !alias.scope !5326, !noalias !5329, !nonnull !23 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5325 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8), !dbg !5325 ; 2 uses
    #dbg_value(ptr poison, !5284, !DIExpression(), !5331)
  %.val = load i64, ptr %i.g, align 8, !dbg !5332 ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c, !dbg !5325 ; 2 uses
    #dbg_value(i64 %i.h, !5286, !DIExpression(), !5331)
    #dbg_value(i64 %.sink.i, !5287, !DIExpression(), !5331)
  %.not = icmp ult i64 %1, %i.h, !dbg !5333
  br i1 %.not, label %bb.b, label %bb.c, !dbg !5333, !prof !3393

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #24, !dbg !5334
  unreachable, !dbg !5334

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 9, !dbg !5335
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !5335

bb.d:                                             ; preds = %bb.c
  %.not112 = icmp eq i64 %i.c, %1, !dbg !5336
  br i1 %.not112, label %bb.m, label %bb.f, !dbg !5336

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k, !dbg !5337

bb.f:                                             ; preds = %bb.d
    #dbg_value(i64 %1, !5338, !DIExpression(), !5349)
    #dbg_value(i64 %1, !5351, !DIExpression(), !5358)
    #dbg_value(i64 %1, !5360, !DIExpression(), !5364)
    #dbg_value(i64 32, !5354, !DIExpression(), !5358)
    #dbg_value(i64 32, !5363, !DIExpression(), !5364)
  %i.j = shl nuw nsw i64 %1, 5, !dbg !5366        ; 4 uses
    #dbg_value(i64 %1, !5357, !DIExpression(DW_OP_constu, 576460752303423488, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5367)
    #dbg_value(i64 %1, !5368, !DIExpression(DW_OP_constu, 576460752303423488, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5371)
    #dbg_value(i64 %i.j, !5355, !DIExpression(), !5367)
  %or.cond = icmp ult i64 %1, 288230376151711744, !dbg !5373
  br i1 %or.cond, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECslusEaBCZKLp_13quiche_client.exit, label %bb.m, !dbg !5373, !prof !4960

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.f
    #dbg_value(i64 4, !5288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5374)
    #dbg_value(i64 4, !5375, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5378)
    #dbg_value(i64 %i.j, !5288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5374)
    #dbg_value(i64 %i.j, !5375, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5378)
  br i1 %i.d, label %bb.h, label %bb.g, !dbg !5380

bb.g:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECslusEaBCZKLp_13quiche_client.exit
    #dbg_value(i64 %.sink.i, !5338, !DIExpression(), !5381)
    #dbg_value(i64 %.sink.i, !5351, !DIExpression(), !5383)
    #dbg_value(i64 %.sink.i, !5360, !DIExpression(), !5385)
    #dbg_value(i64 32, !5354, !DIExpression(), !5383)
    #dbg_value(i64 32, !5363, !DIExpression(), !5385)
    #dbg_value(i64 %i.c, !5357, !DIExpression(DW_OP_constu, 576460752303423488, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5387)
    #dbg_value(i64 %i.c, !5368, !DIExpression(DW_OP_constu, 576460752303423488, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5388)
    #dbg_value(i64 %.sink.i, !5355, !DIExpression(DW_OP_constu, 5, DW_OP_shl, DW_OP_stack_value), !5387)
  %i.k = icmp ult i64 %i.c, 288230376151711744
  br i1 %i.k, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECslusEaBCZKLp_13quiche_client.exit114, label %bb.m, !dbg !5390, !prof !4960

bb.h:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECslusEaBCZKLp_13quiche_client.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !5391
  %i.l = tail call noundef align 4 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #25, !dbg !5392 ; 3 uses
    #dbg_value(ptr %i.l, !5393, !DIExpression(), !5396)
    #dbg_value(ptr %i.l, !5398, !DIExpression(), !5401)
  %i.m = icmp eq ptr %i.l, null, !dbg !5404
  br i1 %i.m, label %bb.m, label %bb.j, !dbg !5413

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECslusEaBCZKLp_13quiche_client.exit114: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 5, !dbg !5414
    #dbg_value(i64 %i.n, !5355, !DIExpression(), !5387)
    #dbg_value(i64 4, !5300, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5415)
    #dbg_value(i64 4, !5416, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5421)
    #dbg_value(i64 4, !5423, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5428)
    #dbg_value(i64 %i.n, !5300, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5415)
    #dbg_value(i64 %i.n, !5416, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5421)
    #dbg_value(i64 %i.n, !5423, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5428)
    #dbg_value(ptr poison, !5419, !DIExpression(), !5421)
    #dbg_value(i64 %i.j, !5420, !DIExpression(), !5421)
    #dbg_value(i64 %i.j, !5427, !DIExpression(), !5428)
    #dbg_value(ptr poison, !5426, !DIExpression(), !5428)
  %i.o = tail call noundef align 4 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 4, i64 noundef %i.j) #25, !dbg !5430 ; 2 uses
    #dbg_value(ptr %i.o, !5306, !DIExpression(), !5431)
    #dbg_value(ptr %i.o, !5393, !DIExpression(), !5432)
    #dbg_value(ptr %i.o, !5398, !DIExpression(), !5434)
  %i.p = icmp eq ptr %i.o, null, !dbg !5437
  br i1 %i.p, label %bb.m, label %bb.i, !dbg !5442

bb.i:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECslusEaBCZKLp_13quiche_client.exit114, %bb.j
  %.sroa.039.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECslusEaBCZKLp_13quiche_client.exit114 ], !dbg !5443
    #dbg_value(ptr %.sroa.039.0, !5294, !DIExpression(), !5451)
  store ptr %.sroa.039.0, ptr %0, align 8, !dbg !5452
  store i64 %i.h, ptr %i.g, align 8, !dbg !5452
  store i64 %1, ptr %i.b, align 8, !dbg !5453
  br label %bb.m, !dbg !5454

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.l, !5450, !DIExpression(), !5455)
    #dbg_value(ptr %i.l, !5294, !DIExpression(), !5451)
    #dbg_value(ptr poison, !5457, !DIExpression(), !5464)
    #dbg_value(ptr %i.l, !5462, !DIExpression(), !5464)
    #dbg_value(i64 %i.h, !5463, !DIExpression(), !5464)
  %i.q = shl nuw nsw i64 %i.c, 5, !dbg !5466
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false), !dbg !5466
  br label %bb.i, !dbg !5467

bb.k:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !5457, !DIExpression(), !5468)
    #dbg_value(ptr %0, !5462, !DIExpression(), !5468)
    #dbg_value(i64 %i.h, !5463, !DIExpression(), !5468)
  %i.r = shl nuw nsw i64 %.val, 5, !dbg !5470
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.r, i1 false), !dbg !5470
  store i64 %.val, ptr %i.b, align 8, !dbg !5471
    #dbg_value(ptr poison, !5472, !DIExpression(), !5480)
    #dbg_value(i64 %.sink.i, !5477, !DIExpression(), !5480)
    #dbg_value(i64 %.sink.i, !5338, !DIExpression(), !5482)
    #dbg_value(i64 %.sink.i, !5351, !DIExpression(), !5484)
    #dbg_value(i64 %.sink.i, !5360, !DIExpression(), !5486)
    #dbg_value(i64 32, !5354, !DIExpression(), !5484)
    #dbg_value(i64 32, !5363, !DIExpression(), !5486)
    #dbg_value(i64 %.sink.i, !5357, !DIExpression(DW_OP_constu, 576460752303423488, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5488)
    #dbg_value(i64 %.sink.i, !5368, !DIExpression(DW_OP_constu, 576460752303423488, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5489)
    #dbg_value(i64 %.sink.i, !5355, !DIExpression(DW_OP_constu, 5, DW_OP_shl, DW_OP_stack_value), !5488)
  %or.cond.i = icmp ult i64 %i.c, 288230376151711744, !dbg !5491
  br i1 %or.cond.i, label %_RINvCs5kGgRUzsVpH_8smallvec10deallocateNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECslusEaBCZKLp_13quiche_client.exit, label %bb.l, !dbg !5491, !prof !4960

bb.l:                                             ; preds = %bb.k
    #dbg_value(i64 0, !5110, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5492)
    #dbg_value(i64 undef, !5110, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5492)
    #dbg_value(i64 1, !5110, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5492)
    #dbg_declare(ptr %i.a, !5119, !DIExpression(), !5494)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5495, !noalias !5496
  store i64 0, ptr %i.a, align 8, !dbg !5495, !noalias !5496
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !dbg !5499, !noalias !5496
  unreachable, !dbg !5499

_RINvCs5kGgRUzsVpH_8smallvec10deallocateNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 5, !dbg !5500
    #dbg_value(i64 %i.s, !5355, !DIExpression(), !5488)
    #dbg_value(i64 4, !5110, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5492)
    #dbg_value(i64 %i.s, !5110, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5492)
    #dbg_value(i64 0, !5110, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5492)
    #dbg_declare(ptr %i.a, !5119, !DIExpression(), !5494)
    #dbg_value(i64 4, !5478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5501)
    #dbg_value(i64 4, !5502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5506)
    #dbg_value(i64 4, !5508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5512)
    #dbg_value(i64 %i.s, !5478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5501)
    #dbg_value(i64 %i.s, !5502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5506)
    #dbg_value(i64 %i.s, !5508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5512)
    #dbg_value(ptr poison, !5505, !DIExpression(), !5506)
    #dbg_value(ptr poison, !5511, !DIExpression(), !5512)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 4) #25, !dbg !5514
  br label %bb.m, !dbg !5515

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECslusEaBCZKLp_13quiche_client.exit114, %bb.h, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECslusEaBCZKLp_13quiche_client.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECslusEaBCZKLp_13quiche_client.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECslusEaBCZKLp_13quiche_client.exit114 ], [ undef, %bb.g ], [ undef, %bb.f ], !dbg !5331
  %.sroa.0.1 = phi i64 [ -1, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECslusEaBCZKLp_13quiche_client.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrECslusEaBCZKLp_13quiche_client.exit114 ], [ 0, %bb.g ], [ 0, %bb.f ], !dbg !5331
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0, !dbg !5516
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1, !dbg !5516
  ret { i64, i64 } %i.u, !dbg !5516
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E10into_innerCslusEaBCZKLp_13quiche_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 72)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !5517 {
bb.a:
    #dbg_declare(ptr %1, !5537, !DIExpression(), !5540)
    #dbg_declare(ptr poison, !5538, !DIExpression(), !5541)
    #dbg_declare(ptr poison, !5542, !DIExpression(), !5548)
    #dbg_declare(ptr poison, !5550, !DIExpression(), !5557)
    #dbg_declare(ptr poison, !5559, !DIExpression(), !5567)
    #dbg_declare(ptr poison, !5569, !DIExpression(), !5575)
    #dbg_value(ptr %1, !5577, !DIExpression(), !5580)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !5582
  %i.b = load i64, ptr %i.a, align 8, !dbg !5582, !noundef !23
  %.not = icmp eq i64 %i.b, 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5583 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !dbg !5584

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !dbg !5585
  br label %bb.d, !dbg !5586

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5587, !DIExpression(), !5595)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !dbg !5597
  br label %bb.d, !dbg !5586

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 0, %bb.c ], [ 1, %bb.b ], !dbg !5583
  store i64 %.sink, ptr %0, align 8, !dbg !5583
  ret void, !dbg !5598
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E21reserve_one_uncheckedCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #4 !dbg !5599 {
bb.a:
    #dbg_value(ptr %0, !5602, !DIExpression(), !5612)
    #dbg_value(ptr %0, !5613, !DIExpression(), !5619)
    #dbg_value(i64 1, !5621, !DIExpression(), !5625)
    #dbg_declare(ptr poison, !5627, !DIExpression(), !5633)
    #dbg_value(i64 1, !5621, !DIExpression(), !5635)
    #dbg_value(ptr @2, !5643, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5649)
    #dbg_value(i64 17, !5643, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5649)
    #dbg_value(ptr %0, !5651, !DIExpression(), !5668)
    #dbg_value(ptr %0, !5670, !DIExpression(), !5673)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !5675
  %i.b = load i64, ptr %i.a, align 8, !dbg !5675, !alias.scope !5676, !noalias !5679, !noundef !23 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 4, !dbg !5675
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5681
  %i.e = load i64, ptr %i.d, align 8, !dbg !5681, !alias.scope !5676, !noalias !5679
  %.sink21.i = select i1 %i.c, i64 %i.e, i64 %i.b, !dbg !5681 ; 3 uses
    #dbg_value(i64 %.sink21.i, !5624, !DIExpression(), !5625)
  %i.f = icmp eq i64 %.sink21.i, -1, !dbg !5682
    #dbg_value(i1 %i.f, !5683, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5686)
  br i1 %i.f, label %bb.f, label %bb.b, !dbg !5688, !prof !3393

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %.sink21.i, !5630, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5689)
    #dbg_value(i64 1, !5630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5689)
    #dbg_value(i64 %.sink21.i, !5631, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5690)
    #dbg_value(i64 %.sink21.i, !5639, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5691)
    #dbg_value(i64 %.sink21.i, !5692, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5699)
  %i.g = icmp eq i64 %.sink21.i, 0, !dbg !5701
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink21.i, i1 true), !dbg !5701
  %i.i = lshr i64 -1, %i.h, !dbg !5701
  %.sroa.03.0 = select i1 %i.g, i64 0, i64 %i.i, !dbg !5701 ; 2 uses
    #dbg_value(i64 %.sroa.03.0, !5624, !DIExpression(), !5635)
  %i.j = icmp eq i64 %.sroa.03.0, -1, !dbg !5702
    #dbg_value(i1 %i.j, !5683, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5703)
  br i1 %i.j, label %bb.f, label %bb.c, !dbg !5706, !prof !3393

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.03.0, 1, !dbg !5702
    #dbg_value(i64 %i.k, !5646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5649)
    #dbg_value(i64 1, !5646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5649)
    #dbg_value(i64 %i.k, !5610, !DIExpression(), !5707)
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E8try_growCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i64 noundef %i.k), !dbg !5708 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0, !dbg !5708 ; 2 uses
    #dbg_value(i64 %i.m, !3658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5709)
    #dbg_value(i64 poison, !3658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5709)
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit
    i64 0, label %bb.e
  ], !dbg !5711, !prof !5271

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1, !dbg !5708
    #dbg_value(i64 %i.n, !3658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5709)
    #dbg_value(i64 %i.m, !3665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5712)
    #dbg_value(i64 %i.n, !3665, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5712)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #23, !dbg !5713
  unreachable, !dbg !5713

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24, !dbg !5714
  unreachable, !dbg !5714

_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.c
  ret void, !dbg !5715

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24, !dbg !5716
  unreachable, !dbg !5716
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E8try_growCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5717 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
    #dbg_value(ptr %0, !5720, !DIExpression(), !5752)
    #dbg_value(ptr %0, !5753, !DIExpression(), !5756)
    #dbg_value(i64 %1, !5721, !DIExpression(), !5752)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !5758 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !5758, !noundef !23 ; 8 uses
  %i.d = icmp ult i64 %i.c, 5, !dbg !5758         ; 2 uses
    #dbg_value(i1 %i.d, !5722, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5759)
    #dbg_value(ptr %0, !3591, !DIExpression(), !5760)
    #dbg_value(ptr %0, !3607, !DIExpression(), !5762)
  %i.e = icmp ugt i64 %i.c, 4, !dbg !5764
  %i.f = load ptr, ptr %0, align 8, !dbg !5765, !alias.scope !5766, !noalias !5769, !nonnull !23 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5765 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !5765 ; 2 uses
    #dbg_value(ptr poison, !5724, !DIExpression(), !5771)
  %.val = load i64, ptr %i.g, align 8, !dbg !5772 ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c, !dbg !5765 ; 2 uses
    #dbg_value(i64 %i.h, !5726, !DIExpression(), !5771)
    #dbg_value(i64 %.sink.i, !5727, !DIExpression(), !5771)
  %.not = icmp ult i64 %1, %i.h, !dbg !5773
  br i1 %.not, label %bb.b, label %bb.c, !dbg !5773, !prof !3393

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #24, !dbg !5774
  unreachable, !dbg !5774

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 5, !dbg !5775
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !5775

bb.d:                                             ; preds = %bb.c
  %.not112 = icmp eq i64 %i.c, %1, !dbg !5776
  br i1 %.not112, label %bb.m, label %bb.f, !dbg !5776

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k, !dbg !5777

bb.f:                                             ; preds = %bb.d
    #dbg_value(i64 %1, !5778, !DIExpression(), !5789)
    #dbg_value(i64 %1, !5791, !DIExpression(), !5798)
    #dbg_value(i64 %1, !5800, !DIExpression(), !5804)
    #dbg_value(i64 16, !5794, !DIExpression(), !5798)
    #dbg_value(i64 16, !5803, !DIExpression(), !5804)
  %i.j = shl nuw nsw i64 %1, 4, !dbg !5806        ; 4 uses
    #dbg_value(i64 %1, !5797, !DIExpression(DW_OP_constu, 1152921504606846976, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5807)
    #dbg_value(i64 %1, !5808, !DIExpression(DW_OP_constu, 1152921504606846976, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5811)
    #dbg_value(i64 %i.j, !5795, !DIExpression(), !5807)
  %or.cond = icmp ult i64 %1, 576460752303423488, !dbg !5813
  br i1 %or.cond, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECslusEaBCZKLp_13quiche_client.exit, label %bb.m, !dbg !5813, !prof !4960

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.f
    #dbg_value(i64 8, !5728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5814)
    #dbg_value(i64 8, !5815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5818)
    #dbg_value(i64 %i.j, !5728, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5814)
    #dbg_value(i64 %i.j, !5815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5818)
  br i1 %i.d, label %bb.h, label %bb.g, !dbg !5820

bb.g:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECslusEaBCZKLp_13quiche_client.exit
    #dbg_value(i64 %.sink.i, !5778, !DIExpression(), !5821)
    #dbg_value(i64 %.sink.i, !5791, !DIExpression(), !5823)
    #dbg_value(i64 %.sink.i, !5800, !DIExpression(), !5825)
    #dbg_value(i64 16, !5794, !DIExpression(), !5823)
    #dbg_value(i64 16, !5803, !DIExpression(), !5825)
    #dbg_value(i64 %i.c, !5797, !DIExpression(DW_OP_constu, 1152921504606846976, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5827)
    #dbg_value(i64 %i.c, !5808, !DIExpression(DW_OP_constu, 1152921504606846976, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5828)
    #dbg_value(i64 %.sink.i, !5795, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_stack_value), !5827)
  %i.k = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.k, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECslusEaBCZKLp_13quiche_client.exit114, label %bb.m, !dbg !5830, !prof !4960

bb.h:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECslusEaBCZKLp_13quiche_client.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !5831
  %i.l = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #25, !dbg !5832 ; 3 uses
    #dbg_value(ptr %i.l, !5833, !DIExpression(), !5836)
    #dbg_value(ptr %i.l, !5838, !DIExpression(), !5841)
  %i.m = icmp eq ptr %i.l, null, !dbg !5844
  br i1 %i.m, label %bb.m, label %bb.j, !dbg !5853

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECslusEaBCZKLp_13quiche_client.exit114: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 4, !dbg !5854
    #dbg_value(i64 %i.n, !5795, !DIExpression(), !5827)
    #dbg_value(i64 8, !5740, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5855)
    #dbg_value(i64 8, !5856, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5861)
    #dbg_value(i64 8, !5863, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5868)
    #dbg_value(i64 %i.n, !5740, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5855)
    #dbg_value(i64 %i.n, !5856, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5861)
    #dbg_value(i64 %i.n, !5863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5868)
    #dbg_value(ptr poison, !5859, !DIExpression(), !5861)
    #dbg_value(i64 %i.j, !5860, !DIExpression(), !5861)
    #dbg_value(i64 %i.j, !5867, !DIExpression(), !5868)
    #dbg_value(ptr poison, !5866, !DIExpression(), !5868)
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #25, !dbg !5870 ; 2 uses
    #dbg_value(ptr %i.o, !5746, !DIExpression(), !5871)
    #dbg_value(ptr %i.o, !5833, !DIExpression(), !5872)
    #dbg_value(ptr %i.o, !5838, !DIExpression(), !5874)
  %i.p = icmp eq ptr %i.o, null, !dbg !5877
  br i1 %i.p, label %bb.m, label %bb.i, !dbg !5882

bb.i:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECslusEaBCZKLp_13quiche_client.exit114, %bb.j
  %.sroa.039.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECslusEaBCZKLp_13quiche_client.exit114 ], !dbg !5883
    #dbg_value(ptr %.sroa.039.0, !5734, !DIExpression(), !5892)
  store ptr %.sroa.039.0, ptr %0, align 8, !dbg !5893
  store i64 %i.h, ptr %i.g, align 8, !dbg !5893
  store i64 %1, ptr %i.b, align 8, !dbg !5894
  br label %bb.m, !dbg !5895

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.l, !5891, !DIExpression(), !5896)
    #dbg_value(ptr %i.l, !5734, !DIExpression(), !5892)
    #dbg_value(ptr poison, !5898, !DIExpression(), !5905)
    #dbg_value(ptr %i.l, !5903, !DIExpression(), !5905)
    #dbg_value(i64 %i.h, !5904, !DIExpression(), !5905)
  %i.q = shl nuw nsw i64 %i.c, 4, !dbg !5907
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false), !dbg !5907
  br label %bb.i, !dbg !5908

bb.k:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !5898, !DIExpression(), !5909)
    #dbg_value(ptr %0, !5903, !DIExpression(), !5909)
    #dbg_value(i64 %i.h, !5904, !DIExpression(), !5909)
  %i.r = shl nuw nsw i64 %.val, 4, !dbg !5911
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false), !dbg !5911
  store i64 %.val, ptr %i.b, align 8, !dbg !5912
    #dbg_value(ptr poison, !5913, !DIExpression(), !5921)
    #dbg_value(i64 %.sink.i, !5918, !DIExpression(), !5921)
    #dbg_value(i64 %.sink.i, !5778, !DIExpression(), !5923)
    #dbg_value(i64 %.sink.i, !5791, !DIExpression(), !5925)
    #dbg_value(i64 %.sink.i, !5800, !DIExpression(), !5927)
    #dbg_value(i64 16, !5794, !DIExpression(), !5925)
    #dbg_value(i64 16, !5803, !DIExpression(), !5927)
    #dbg_value(i64 %.sink.i, !5797, !DIExpression(DW_OP_constu, 1152921504606846976, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5929)
    #dbg_value(i64 %.sink.i, !5808, !DIExpression(DW_OP_constu, 1152921504606846976, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5930)
    #dbg_value(i64 %.sink.i, !5795, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_stack_value), !5929)
  %or.cond.i = icmp ult i64 %i.c, 576460752303423488, !dbg !5932
  br i1 %or.cond.i, label %_RINvCs5kGgRUzsVpH_8smallvec10deallocateTyyEECslusEaBCZKLp_13quiche_client.exit, label %bb.l, !dbg !5932, !prof !4960

bb.l:                                             ; preds = %bb.k
    #dbg_value(i64 0, !5110, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5933)
    #dbg_value(i64 undef, !5110, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5933)
    #dbg_value(i64 1, !5110, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5933)
    #dbg_declare(ptr %i.a, !5119, !DIExpression(), !5935)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5936, !noalias !5937
  store i64 0, ptr %i.a, align 8, !dbg !5936, !noalias !5937
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !dbg !5940, !noalias !5937
  unreachable, !dbg !5940

_RINvCs5kGgRUzsVpH_8smallvec10deallocateTyyEECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 4, !dbg !5941
    #dbg_value(i64 %i.s, !5795, !DIExpression(), !5929)
    #dbg_value(i64 8, !5110, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5933)
    #dbg_value(i64 %i.s, !5110, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5933)
    #dbg_value(i64 0, !5110, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5933)
    #dbg_declare(ptr %i.a, !5119, !DIExpression(), !5935)
    #dbg_value(i64 8, !5919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5942)
    #dbg_value(i64 8, !5943, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5947)
    #dbg_value(i64 8, !5949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5953)
    #dbg_value(i64 %i.s, !5919, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5942)
    #dbg_value(i64 %i.s, !5943, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5947)
    #dbg_value(i64 %i.s, !5949, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5953)
    #dbg_value(ptr poison, !5946, !DIExpression(), !5947)
    #dbg_value(ptr poison, !5952, !DIExpression(), !5953)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #25, !dbg !5955
  br label %bb.m, !dbg !5956

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECslusEaBCZKLp_13quiche_client.exit114, %bb.h, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateTyyEECslusEaBCZKLp_13quiche_client.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateTyyEECslusEaBCZKLp_13quiche_client.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECslusEaBCZKLp_13quiche_client.exit114 ], [ undef, %bb.g ], [ undef, %bb.f ], !dbg !5771
  %.sroa.0.1 = phi i64 [ -1, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateTyyEECslusEaBCZKLp_13quiche_client.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayTyyEECslusEaBCZKLp_13quiche_client.exit114 ], [ 0, %bb.g ], [ 0, %bb.f ], !dbg !5771
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0, !dbg !5957
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1, !dbg !5957
  ret { i64, i64 } %i.u, !dbg !5957
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj8_E21reserve_one_uncheckedCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #4 !dbg !5958 {
bb.a:
    #dbg_value(ptr %0, !5963, !DIExpression(), !5973)
    #dbg_value(ptr %0, !5974, !DIExpression(), !5980)
    #dbg_value(i64 1, !5982, !DIExpression(), !5986)
    #dbg_declare(ptr poison, !5988, !DIExpression(), !5994)
    #dbg_value(i64 1, !5982, !DIExpression(), !5996)
    #dbg_value(ptr @2, !6004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6010)
    #dbg_value(i64 17, !6004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6010)
    #dbg_value(ptr %0, !6012, !DIExpression(), !6029)
    #dbg_value(ptr %0, !6031, !DIExpression(), !6034)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !6036
  %i.b = load i64, ptr %i.a, align 8, !dbg !6036, !alias.scope !6037, !noalias !6040, !noundef !23 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8, !dbg !6036
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6042
  %i.e = load i64, ptr %i.d, align 8, !dbg !6042, !alias.scope !6037, !noalias !6040
  %.sink21.i = select i1 %i.c, i64 %i.e, i64 %i.b, !dbg !6042 ; 3 uses
    #dbg_value(i64 %.sink21.i, !5985, !DIExpression(), !5986)
  %i.f = icmp eq i64 %.sink21.i, -1, !dbg !6043
    #dbg_value(i1 %i.f, !6044, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6047)
  br i1 %i.f, label %bb.f, label %bb.b, !dbg !6049, !prof !3393

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %.sink21.i, !5991, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !6050)
    #dbg_value(i64 1, !5991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6050)
    #dbg_value(i64 %.sink21.i, !5992, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6051)
    #dbg_value(i64 %.sink21.i, !6000, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6052)
    #dbg_value(i64 %.sink21.i, !6053, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6060)
  %i.g = icmp eq i64 %.sink21.i, 0, !dbg !6062
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink21.i, i1 true), !dbg !6062
  %i.i = lshr i64 -1, %i.h, !dbg !6062
  %.sroa.03.0 = select i1 %i.g, i64 0, i64 %i.i, !dbg !6062 ; 2 uses
    #dbg_value(i64 %.sroa.03.0, !5985, !DIExpression(), !5996)
  %i.j = icmp eq i64 %.sroa.03.0, -1, !dbg !6063
    #dbg_value(i1 %i.j, !6044, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6064)
  br i1 %i.j, label %bb.f, label %bb.c, !dbg !6067, !prof !3393

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.03.0, 1, !dbg !6063
    #dbg_value(i64 %i.k, !6007, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6010)
    #dbg_value(i64 1, !6007, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6010)
    #dbg_value(i64 %i.k, !5971, !DIExpression(), !6068)
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj8_E8try_growCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i64 noundef %i.k), !dbg !6069 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0, !dbg !6069 ; 2 uses
    #dbg_value(i64 %i.m, !3658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6070)
    #dbg_value(i64 poison, !3658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6070)
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit
    i64 0, label %bb.e
  ], !dbg !6072, !prof !5271

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1, !dbg !6069
    #dbg_value(i64 %i.n, !3658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6070)
    #dbg_value(i64 %i.m, !3665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6073)
    #dbg_value(i64 %i.n, !3665, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6073)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #23, !dbg !6074
  unreachable, !dbg !6074

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24, !dbg !6075
  unreachable, !dbg !6075

_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.c
  ret void, !dbg !6076

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24, !dbg !6077
  unreachable, !dbg !6077
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj8_E8try_growCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6078 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
    #dbg_value(ptr %0, !6081, !DIExpression(), !6113)
    #dbg_value(ptr %0, !6114, !DIExpression(), !6117)
    #dbg_value(i64 %1, !6082, !DIExpression(), !6113)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !6119 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !6119, !noundef !23 ; 8 uses
  %i.d = icmp ult i64 %i.c, 9, !dbg !6119         ; 2 uses
    #dbg_value(i1 %i.d, !6083, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6120)
    #dbg_value(ptr %0, !4371, !DIExpression(), !6121)
    #dbg_value(ptr %0, !4387, !DIExpression(), !6123)
  %i.e = icmp ugt i64 %i.c, 8, !dbg !6125
  %i.f = load ptr, ptr %0, align 8, !dbg !6126, !alias.scope !6127, !noalias !6130, !nonnull !23 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6126 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8), !dbg !6126 ; 2 uses
    #dbg_value(ptr poison, !6085, !DIExpression(), !6132)
  %.val = load i64, ptr %i.g, align 8, !dbg !6133 ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c, !dbg !6126 ; 2 uses
    #dbg_value(i64 %i.h, !6087, !DIExpression(), !6132)
    #dbg_value(i64 %.sink.i, !6088, !DIExpression(), !6132)
  %.not = icmp ult i64 %1, %i.h, !dbg !6134
  br i1 %.not, label %bb.b, label %bb.c, !dbg !6134, !prof !3393

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #24, !dbg !6135
  unreachable, !dbg !6135

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 9, !dbg !6136
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !6136

bb.d:                                             ; preds = %bb.c
  %.not112 = icmp eq i64 %i.c, %1, !dbg !6137
  br i1 %.not112, label %bb.m, label %bb.f, !dbg !6137

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k, !dbg !6138

bb.f:                                             ; preds = %bb.d
    #dbg_value(i64 %1, !6139, !DIExpression(), !6150)
    #dbg_value(i64 %1, !6152, !DIExpression(), !6159)
    #dbg_value(i64 %1, !6161, !DIExpression(), !6165)
    #dbg_value(i64 8, !6155, !DIExpression(), !6159)
    #dbg_value(i64 8, !6164, !DIExpression(), !6165)
  %i.j = shl nuw nsw i64 %1, 3, !dbg !6167        ; 4 uses
    #dbg_value(i64 %1, !6158, !DIExpression(DW_OP_constu, 2305843009213693952, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6168)
    #dbg_value(i64 %1, !6169, !DIExpression(DW_OP_constu, 2305843009213693952, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6172)
    #dbg_value(i64 %i.j, !6156, !DIExpression(), !6168)
  %or.cond = icmp ult i64 %1, 1152921504606846976, !dbg !6174
  br i1 %or.cond, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECslusEaBCZKLp_13quiche_client.exit, label %bb.m, !dbg !6174, !prof !4960

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.f
    #dbg_value(i64 8, !6089, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6175)
    #dbg_value(i64 8, !6176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6179)
    #dbg_value(i64 %i.j, !6089, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6175)
    #dbg_value(i64 %i.j, !6176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6179)
  br i1 %i.d, label %bb.h, label %bb.g, !dbg !6181

bb.g:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECslusEaBCZKLp_13quiche_client.exit
    #dbg_value(i64 %.sink.i, !6139, !DIExpression(), !6182)
    #dbg_value(i64 %.sink.i, !6152, !DIExpression(), !6184)
    #dbg_value(i64 %.sink.i, !6161, !DIExpression(), !6186)
    #dbg_value(i64 8, !6155, !DIExpression(), !6184)
    #dbg_value(i64 8, !6164, !DIExpression(), !6186)
    #dbg_value(i64 %i.c, !6158, !DIExpression(DW_OP_constu, 2305843009213693952, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6188)
    #dbg_value(i64 %i.c, !6169, !DIExpression(DW_OP_constu, 2305843009213693952, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6189)
    #dbg_value(i64 %.sink.i, !6156, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !6188)
  %i.k = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.k, label %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECslusEaBCZKLp_13quiche_client.exit114, label %bb.m, !dbg !6191, !prof !4960

bb.h:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECslusEaBCZKLp_13quiche_client.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !6192
  %i.l = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #25, !dbg !6193 ; 3 uses
    #dbg_value(ptr %i.l, !6194, !DIExpression(), !6197)
    #dbg_value(ptr %i.l, !6199, !DIExpression(), !6202)
  %i.m = icmp eq ptr %i.l, null, !dbg !6205
  br i1 %i.m, label %bb.m, label %bb.j, !dbg !6214

_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECslusEaBCZKLp_13quiche_client.exit114: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 3, !dbg !6215
    #dbg_value(i64 %i.n, !6156, !DIExpression(), !6188)
    #dbg_value(i64 8, !6101, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6216)
    #dbg_value(i64 8, !6217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6222)
    #dbg_value(i64 8, !6224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6229)
    #dbg_value(i64 %i.n, !6101, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6216)
    #dbg_value(i64 %i.n, !6217, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6222)
    #dbg_value(i64 %i.n, !6224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6229)
    #dbg_value(ptr poison, !6220, !DIExpression(), !6222)
    #dbg_value(i64 %i.j, !6221, !DIExpression(), !6222)
    #dbg_value(i64 %i.j, !6228, !DIExpression(), !6229)
    #dbg_value(ptr poison, !6227, !DIExpression(), !6229)
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #25, !dbg !6231 ; 2 uses
    #dbg_value(ptr %i.o, !6107, !DIExpression(), !6232)
    #dbg_value(ptr %i.o, !6194, !DIExpression(), !6233)
    #dbg_value(ptr %i.o, !6199, !DIExpression(), !6235)
  %i.p = icmp eq ptr %i.o, null, !dbg !6238
  br i1 %i.p, label %bb.m, label %bb.i, !dbg !6243

bb.i:                                             ; preds = %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECslusEaBCZKLp_13quiche_client.exit114, %bb.j
  %.sroa.039.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECslusEaBCZKLp_13quiche_client.exit114 ], !dbg !6244
    #dbg_value(ptr %.sroa.039.0, !6095, !DIExpression(), !6253)
  store ptr %.sroa.039.0, ptr %0, align 8, !dbg !6254
  store i64 %i.h, ptr %i.g, align 8, !dbg !6254
  store i64 %1, ptr %i.b, align 8, !dbg !6255
  br label %bb.m, !dbg !6256

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.l, !6252, !DIExpression(), !6257)
    #dbg_value(ptr %i.l, !6095, !DIExpression(), !6253)
    #dbg_value(ptr poison, !6259, !DIExpression(), !6266)
    #dbg_value(ptr %i.l, !6264, !DIExpression(), !6266)
    #dbg_value(i64 %i.h, !6265, !DIExpression(), !6266)
  %i.q = shl nuw nsw i64 %i.c, 3, !dbg !6268
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false), !dbg !6268
  br label %bb.i, !dbg !6269

bb.k:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !6259, !DIExpression(), !6270)
    #dbg_value(ptr %0, !6264, !DIExpression(), !6270)
    #dbg_value(i64 %i.h, !6265, !DIExpression(), !6270)
  %i.r = shl nuw nsw i64 %.val, 3, !dbg !6272
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false), !dbg !6272
  store i64 %.val, ptr %i.b, align 8, !dbg !6273
    #dbg_value(ptr poison, !6274, !DIExpression(), !6282)
    #dbg_value(i64 %.sink.i, !6279, !DIExpression(), !6282)
    #dbg_value(i64 %.sink.i, !6139, !DIExpression(), !6284)
    #dbg_value(i64 %.sink.i, !6152, !DIExpression(), !6286)
    #dbg_value(i64 %.sink.i, !6161, !DIExpression(), !6288)
    #dbg_value(i64 8, !6155, !DIExpression(), !6286)
    #dbg_value(i64 8, !6164, !DIExpression(), !6288)
    #dbg_value(i64 %.sink.i, !6158, !DIExpression(DW_OP_constu, 2305843009213693952, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6290)
    #dbg_value(i64 %.sink.i, !6169, !DIExpression(DW_OP_constu, 2305843009213693952, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6291)
    #dbg_value(i64 %.sink.i, !6156, !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value), !6290)
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976, !dbg !6293
  br i1 %or.cond.i, label %_RINvCs5kGgRUzsVpH_8smallvec10deallocateyECslusEaBCZKLp_13quiche_client.exit, label %bb.l, !dbg !6293, !prof !4960

bb.l:                                             ; preds = %bb.k
    #dbg_value(i64 0, !5110, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6294)
    #dbg_value(i64 undef, !5110, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6294)
    #dbg_value(i64 1, !5110, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6294)
    #dbg_declare(ptr %i.a, !5119, !DIExpression(), !6296)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6297, !noalias !6298
  store i64 0, ptr %i.a, align 8, !dbg !6297, !noalias !6298
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !dbg !6301, !noalias !6298
  unreachable, !dbg !6301

_RINvCs5kGgRUzsVpH_8smallvec10deallocateyECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 3, !dbg !6302
    #dbg_value(i64 %i.s, !6156, !DIExpression(), !6290)
    #dbg_value(i64 8, !5110, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6294)
    #dbg_value(i64 %i.s, !5110, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6294)
    #dbg_value(i64 0, !5110, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6294)
    #dbg_declare(ptr %i.a, !5119, !DIExpression(), !6296)
    #dbg_value(i64 8, !6280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6303)
    #dbg_value(i64 8, !6304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6308)
    #dbg_value(i64 8, !6310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6314)
    #dbg_value(i64 %i.s, !6280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6303)
    #dbg_value(i64 %i.s, !6304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6308)
    #dbg_value(i64 %i.s, !6310, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6314)
    #dbg_value(ptr poison, !6307, !DIExpression(), !6308)
    #dbg_value(ptr poison, !6313, !DIExpression(), !6314)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #25, !dbg !6316
  br label %bb.m, !dbg !6317

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECslusEaBCZKLp_13quiche_client.exit114, %bb.h, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateyECslusEaBCZKLp_13quiche_client.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateyECslusEaBCZKLp_13quiche_client.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECslusEaBCZKLp_13quiche_client.exit114 ], [ undef, %bb.g ], [ undef, %bb.f ], !dbg !6132
  %.sroa.0.1 = phi i64 [ -1, %_RINvCs5kGgRUzsVpH_8smallvec10deallocateyECslusEaBCZKLp_13quiche_client.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCs5kGgRUzsVpH_8smallvec12layout_arrayyECslusEaBCZKLp_13quiche_client.exit114 ], [ 0, %bb.g ], [ 0, %bb.f ], !dbg !6132
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0, !dbg !6318
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1, !dbg !6318
  ret { i64, i64 } %i.u, !dbg !6318
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtB6_5Debug3fmtCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !6319 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !6327, !DIExpression(), !6329)
    #dbg_value(ptr %1, !6328, !DIExpression(), !6329)
  %i.b = load ptr, ptr %0, align 8, !dbg !6330, !nonnull !23, !align !6331, !noundef !23 ; 2 uses
    #dbg_value(ptr %i.b, !6332, !DIExpression(), !6340)
    #dbg_value(ptr %1, !6339, !DIExpression(), !6340)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !6342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6343, !noalias !6344
  store ptr %i.b, ptr %i.a, align 8, !dbg !6343, !noalias !6344
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 25, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 2, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16), !dbg !6348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6349, !noalias !6344
  ret i1 %i.d, !dbg !6350
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs3f36owOmepS_6quiche16transport_params26UnknownTransportParametersNtB6_5Debug3fmtCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !6351 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !6361, !DIExpression(), !6365)
    #dbg_value(ptr %1, !6362, !DIExpression(), !6365)
  %i.b = load ptr, ptr %0, align 8, !dbg !6366, !nonnull !23, !align !6331, !noundef !23 ; 2 uses
    #dbg_value(ptr %i.b, !6367, !DIExpression(), !6374)
    #dbg_value(ptr %1, !6373, !DIExpression(), !6374)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !6376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6377, !noalias !6378
  store ptr %i.b, ptr %i.a, align 8, !dbg !6377, !noalias !6378
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 26, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 8, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24), !dbg !6382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6383, !noalias !6378
  ret i1 %i.d, !dbg !6384
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_5alloc6layout6LayoutNtB6_5Debug3fmtCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !6385 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !6390, !DIExpression(), !6393)
    #dbg_value(ptr %1, !6391, !DIExpression(), !6393)
  %i.b = load ptr, ptr %0, align 8, !dbg !6394, !nonnull !23, !align !6331, !noundef !23 ; 2 uses
    #dbg_value(ptr %i.b, !6395, !DIExpression(), !6403)
    #dbg_value(ptr %1, !6402, !DIExpression(), !6403)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !6405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6406, !noalias !6407
  store ptr %i.b, ptr %i.a, align 8, !dbg !6406, !noalias !6407
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11), !dbg !6411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6412, !noalias !6407
  ret i1 %i.d, !dbg !6413
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtCsexYYUdYSQU6_5alloc3vec3VechEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCslusEaBCZKLp_13quiche_client(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #6 !dbg !6414 {
bb.a:
    #dbg_value(ptr %0, !6422, !DIExpression(), !6430)
    #dbg_value(ptr %0, !6431, !DIExpression(), !6437)
    #dbg_value(ptr %1, !6423, !DIExpression(), !6430)
    #dbg_value(ptr %1, !6431, !DIExpression(), !6439)
    #dbg_value(i64 %2, !6424, !DIExpression(), !6430)
    #dbg_value(i64 0, !6425, !DIExpression(), !6441)
  %i.a = icmp eq i64 %2, 0, !dbg !6442
  br i1 %i.a, label %_RNvYINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCslusEaBCZKLp_13quiche_client.exit.thread, label %.lr.ph, !dbg !6442

bb.b:                                             ; preds = %_RNvYINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCslusEaBCZKLp_13quiche_client.exit
  %i.b = add nuw i64 %.sroa.01.011, 1, !dbg !6443 ; 2 uses
    #dbg_value(i64 %i.b, !6425, !DIExpression(), !6441)
  %exitcond.not = icmp eq i64 %i.b, %2, !dbg !6442
  br i1 %exitcond.not, label %_RNvYINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCslusEaBCZKLp_13quiche_client.exit.thread, label %.lr.ph, !dbg !6442

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.011 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
    #dbg_value(i64 %.sroa.01.011, !6425, !DIExpression(), !6441)
    #dbg_value(i64 %.sroa.01.011, !6436, !DIExpression(), !6437)
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.011, !dbg !6444 ; 3 uses
    #dbg_value(i64 %.sroa.01.011, !6436, !DIExpression(), !6439)
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.sroa.01.011, !dbg !6445 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6446), !dbg !6449
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6450), !dbg !6449
    #dbg_value(ptr %i.c, !6452, !DIExpression(), !6462)
    #dbg_value(ptr %i.d, !6458, !DIExpression(), !6462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6464), !dbg !6467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6468), !dbg !6467
    #dbg_value(ptr %i.c, !6470, !DIExpression(), !6475)
    #dbg_value(ptr %i.d, !6474, !DIExpression(), !6475)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !6477
  %i.f = load i64, ptr %i.e, align 8, !dbg !6477, !alias.scope !6478, !noalias !6479, !noundef !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !6477
  %i.h = load i64, ptr %i.g, align 8, !dbg !6477, !alias.scope !6479, !noalias !6478, !noundef !23
  %i.i = icmp eq i64 %i.f, %i.h, !dbg !6477
  br i1 %i.i, label %bb.c, label %_RNvYINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCslusEaBCZKLp_13quiche_client.exit.thread, !dbg !6477

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !6480
  %.val3.i.i = load i64, ptr %i.j, align 8, !dbg !6480, !alias.scope !6478, !noalias !6479, !noundef !23 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !6480
  %.val5.i.i = load i64, ptr %i.k, align 8, !dbg !6480, !alias.scope !6479, !noalias !6478, !noundef !23
    #dbg_value(ptr poison, !6481, !DIExpression(), !6494)
    #dbg_value(ptr poison, !6489, !DIExpression(), !6494)
    #dbg_value(i64 %.val3.i.i, !6496, !DIExpression(), !6514)
    #dbg_value(ptr poison, !6507, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6516)
    #dbg_value(i64 %.val3.i.i, !6507, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6516)
    #dbg_value(ptr poison, !6512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6516)
    #dbg_value(i64 %.val5.i.i, !6512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6516)
  %i.l = icmp eq i64 %.val3.i.i, %.val5.i.i, !dbg !6517
  br i1 %i.l, label %_RNvYINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCslusEaBCZKLp_13quiche_client.exit, label %_RNvYINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCslusEaBCZKLp_13quiche_client.exit.thread, !dbg !6517

_RNvYINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !6480
  %.val4.i.i = load ptr, ptr %i.m, align 8, !dbg !6480, !alias.scope !6479, !noalias !6478, !nonnull !23, !noundef !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !6480
  %.val.i.i = load ptr, ptr %i.n, align 8, !dbg !6480, !alias.scope !6478, !noalias !6479, !nonnull !23, !noundef !23
    #dbg_value(ptr %.val4.i.i, !6512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6516)
    #dbg_value(ptr %.val.i.i, !6507, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6516)
    #dbg_value(ptr %.val.i.i, !6518, !DIExpression(), !6531)
    #dbg_value(ptr %.val4.i.i, !6524, !DIExpression(), !6531)
    #dbg_value(i64 %.val3.i.i, !6525, !DIExpression(), !6531)
    #dbg_value(i64 %.val3.i.i, !6526, !DIExpression(), !6533)
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val4.i.i, i64 %.val3.i.i), !dbg !6534, !noalias !6535
  %.not = icmp eq i32 %bcmp.i.i.i.i, 0, !dbg !6534
    #dbg_value(i64 %.sroa.01.011, !6425, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6441)
  br i1 %.not, label %bb.b, label %_RNvYINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCslusEaBCZKLp_13quiche_client.exit.thread, !dbg !6536

_RNvYINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCslusEaBCZKLp_13quiche_client.exit.thread: ; preds = %bb.b, %_RNvYINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCslusEaBCZKLp_13quiche_client.exit, %.lr.ph, %bb.c, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ false, %.lr.ph ], [ false, %_RNvYINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCslusEaBCZKLp_13quiche_client.exit ], [ true, %bb.b ], !dbg !6442
  ret i1 %.lcssa, !dbg !6537
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsG_Cs5kGgRUzsVpH_8smallvecINtB5_8IntoIterATyjEj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #5 !dbg !6538 {
bb.a:
    #dbg_value(ptr %0, !6598, !DIExpression(), !6601)
    #dbg_value(ptr %0, !6599, !DIExpression(), !6602)
    #dbg_value(ptr %0, !6603, !DIExpression(), !6622)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !23 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8
    #dbg_value(ptr poison, !6630, !DIExpression(), !6635)
  %.not7 = icmp eq i64 %.promoted, %i.c, !dbg !6636
  br i1 %.not7, label %.critedge, label %.lr.ph.preheader, !dbg !6636

.lr.ph.preheader:                                 ; preds = %bb.a
    #dbg_value(i64 poison, !6620, !DIExpression(), !6637)
    #dbg_value(ptr poison, !6630, !DIExpression(), !6635)
  store i64 %i.c, ptr %i.a, align 8, !dbg !6638
  br label %.critedge, !dbg !6636

.critedge:                                        ; preds = %.lr.ph.preheader, %bb.a
  ret void, !dbg !6639
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsM_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyjEj1_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCslusEaBCZKLp_13quiche_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !6640 {
bb.a:
    #dbg_declare(ptr %1, !6645, !DIExpression(), !6648)
    #dbg_value(i64 0, !6649, !DIExpression(), !6659)
    #dbg_value(ptr %1, !6661, !DIExpression(), !6668)
    #dbg_value(ptr %1, !6670, !DIExpression(), !6687)
    #dbg_value(ptr %1, !6689, !DIExpression(), !6695)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !6697 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !6697, !alias.scope !6698, !noalias !6701, !noundef !23 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1, !dbg !6697         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6703 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !6703, !alias.scope !6698, !noalias !6701
  %.sink21.i = select i1 %i.c, i64 %i.e, i64 %i.b, !dbg !6703
    #dbg_value(i64 %.sink21.i, !6646, !DIExpression(), !6704)
    #dbg_value(ptr %1, !6656, !DIExpression(), !6659)
    #dbg_value(ptr %1, !6705, !DIExpression(), !6719)
  %.sink16.i = select i1 %i.c, ptr %i.d, ptr %i.a, !dbg !6721
    #dbg_value(ptr %.sink16.i, !6657, !DIExpression(), !6722)
  store i64 0, ptr %.sink16.i, align 8, !dbg !6723
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !6724
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6725
  store i64 0, ptr %i.f, align 8, !dbg !6725
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !6725
  store i64 %.sink21.i, ptr %i.g, align 8, !dbg !6725
  ret void, !dbg !6726
}

end_hunk_0
